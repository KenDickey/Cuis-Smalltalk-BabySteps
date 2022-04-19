'From Cuis 6.0 [latest update: #5107] on 19 April 2022 at 8:05:23 am'!
'Description Just enough here to read/write basic Tonel file format'!
!provides: 'ExchangeFormat-Tonel-Lite' 1 1!
!requires: 'ExchangeFormat-STON' 1 31 nil!
SystemOrganization addCategory: 'ExchangeFormat-Tonel-Lite'!


!classDefinition: #TonelReader category: 'ExchangeFormat-Tonel-Lite'!
Object subclass: #TonelReader
	instanceVariableNames: 'class methods stream'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ExchangeFormat-Tonel-Lite'!
!classDefinition: 'TonelReader class' category: 'ExchangeFormat-Tonel-Lite'!
TonelReader class
	instanceVariableNames: ''!


!TonelReader methodsFor: 'accessing' stamp: 'KenD 4/19/2022 07:52:39'!
definition 

	^ class! !

!TonelReader methodsFor: 'accessing' stamp: 'KenD 4/19/2022 07:53:22'!
methods

	^ methods! !

!TonelReader methodsFor: 'accessing' stamp: 'KenD 4/19/2022 08:05:10'!
stream: aReadStream 

	stream := aReadStream! !

!TonelReader methodsFor: 'initialization' stamp: 'KenD 4/19/2022 07:53:04'!
initialize 

	class      := OrderedDictionary new.
	methods := OrderedCollection new! !

!TonelReader methodsFor: 'private' stamp: 'KenD 4/19/2022 08:04:55'!
skipToMatch: aCharacter 
	[| found |
		found := stream skipTo: aCharacter.
		found ifFalse: [self error: aCharacter storeString , ' end expected'].
		stream peek = aCharacter ifTrue: [
			stream next.
			found := false].
		found] whileFalse! !

!TonelReader methodsFor: 'reading' stamp: 'KenD 4/19/2022 07:54:33'!
nextBlock 
	| nested char start eol prev |
	nested := 0.
	prev := nil.
	char := $[.
	start := stream skipLine; position.
	[
		(char == $[ andNot: [prev == $$]) ifTrue: [nested := nested + 1].
		(char = $] andNot: [prev == $$]) ifTrue: [nested := nested - 1].
		prev := char.
		char = $' ifTrue: [self skipString].
		char = $" ifTrue: [self skipComment].
		nested = 0]
		whileFalse: [char := stream next].
	eol := stream eol size. 
	
	^ stream copyFrom: start + eol - 1 to: stream position - 1
! !

!TonelReader methodsFor: 'reading' stamp: 'KenD 4/19/2022 07:55:02'!
read

	self
		readComments;
		readType;
		readDefinition;
		readMethods! !

!TonelReader methodsFor: 'reading' stamp: 'KenD 4/19/2022 07:55:34'!
readComments 

	stream skipSeparators.
	stream peek = $" ifTrue: [
		stream next.
		self skipComment
	]
! !

!TonelReader methodsFor: 'reading' stamp: 'KenD 4/19/2022 07:57:20'!
readDefinition 

	STONReader new
		on: stream skipSeparators;
		parseMapDo: [:key :value | class at: key put: value]! !

!TonelReader methodsFor: 'reading' stamp: 'KenD 4/19/2022 08:02:53'!
readMethod 
	| metadata classname signature selector method |
	metadata := STON fromStream: stream.
	classname := stream skipSeparators; upToAll: '>>'.
	signature := stream upTo: $[.
	selector := Parser parseSelector: signature.
	method := OrderedDictionary new.
	method
		addAll: metadata;
		at: #class put: classname withoutSeparators;
		at: #signature put: signature withoutSeparators;
		at: #selector put: selector;
		at: #body put: self nextBlock.
	methods add: method! !

!TonelReader methodsFor: 'reading' stamp: 'KenD 4/19/2022 08:03:23'!
readMethods 

	[stream skipSeparators; atEnd] 
		whileFalse: [self readMethod]! !

!TonelReader methodsFor: 'reading' stamp: 'KenD 4/19/2022 08:03:37'!
readType 
	| type |
	type := stream skipSeparators; nextWordOrNumber.
	(type = 'Class' or: [type = 'Extension'])
		ifFalse: [self error: 'unsupported type']! !

!TonelReader class methodsFor: 'instance creation' stamp: 'KenD 4/19/2022 07:51:29'!
new 

	^ super new initialize! !

!TonelReader class methodsFor: 'instance creation' stamp: 'KenD 4/19/2022 07:51:56'!
on: aStream 

	^ self new stream: aStream! !
