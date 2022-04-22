'From Cuis 6.0 [latest update: #5107] on 21 April 2022 at 6:10:21 pm'!
'Description Just enough here to read/write basic Tonel file format.
Ported from  https://github.com/aucerna/bee-dmr/tree/master/Tonel
Copyright (c) 2021 Quorum Software.
	See (MIT) license in LICENCES directory.'!
!provides: 'ExchangeFormat-Tonel-Lite' 1 9!
!requires: 'BeeCompatibility' 1 4 nil!
!requires: 'ExchangeFormat-STON' 1 31 nil!
SystemOrganization addCategory: 'ExchangeFormat-Tonel-Lite'!


!classDefinition: #TonelTest category: 'ExchangeFormat-Tonel-Lite'!
TestCase subclass: #TonelTest
	instanceVariableNames: 'streams'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ExchangeFormat-Tonel-Lite'!
!classDefinition: 'TonelTest class' category: 'ExchangeFormat-Tonel-Lite'!
TonelTest class
	instanceVariableNames: ''!

!classDefinition: #TonelReader category: 'ExchangeFormat-Tonel-Lite'!
Object subclass: #TonelReader
	instanceVariableNames: 'class methods stream'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ExchangeFormat-Tonel-Lite'!
!classDefinition: 'TonelReader class' category: 'ExchangeFormat-Tonel-Lite'!
TonelReader class
	instanceVariableNames: ''!

!classDefinition: #TonelWriter category: 'ExchangeFormat-Tonel-Lite'!
Object subclass: #TonelWriter
	instanceVariableNames: 'stream class category methods'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ExchangeFormat-Tonel-Lite'!
!classDefinition: 'TonelWriter class' category: 'ExchangeFormat-Tonel-Lite'!
TonelWriter class
	instanceVariableNames: ''!


!TonelReader methodsFor: 'accessing' stamp: 'KenD 4/19/2022 07:52:39'!
definition 

	^ class! !

!TonelReader methodsFor: 'accessing' stamp: 'KenD 4/19/2022 07:53:22'!
methods

	^ methods! !

!TonelWriter methodsFor: 'accessing' stamp: 'KenD 4/19/2022 08:11:43'!
category: aString 

	category := aString! !

!TonelWriter methodsFor: 'accessing' stamp: 'KenD 4/19/2022 10:36:31'!
methods 

	methods notNil ifTrue: [ ^methods ].
	class isNil ifTrue: [ ^#() ].
	^ class class methodDictionary asArray & class methodDictionary asArray! !

!TonelWriter methodsFor: 'private' stamp: 'KenD 4/19/2022 10:34:29'!
definition 
	| map supername |
	map := OrderedDictionary new.
	self isExtension
		ifTrue: [^ map
			at: #name put: methods anyOne classBinding name asSymbol;
			yourself].
	supername := (class respondsTo: #supername)
		ifTrue: [class supername]
		ifFalse: [class superclass ifNotNil: [:c | c name]].
	map
		at: #name put: class name asSymbol;
		at: #superclass put: supername asSymbol.
	class _instancesHavePointers
		ifTrue: [class _instancesAreArrayed ifTrue: [map at: #type put: #variable]]
		ifFalse: [map at: #type put: #bytes].
	map
		at: #instVars put: class instVarNames;
		at: #classVars put: class classVarNames asSortedCollection asArray.
	category notNil ifTrue: [map at: #category put: category asSymbol].
	
	^ map! !

!TonelTest methodsFor: 'private' stamp: 'KenD 4/19/2022 12:39:07'!
fileEntryFor: aClassSpec 

	^ (aClassSpec name , '.class.st') asFileEntry ! !

!TonelTest methodsFor: 'private' stamp: 'KenD 4/19/2022 12:43:58'!
readerFor: aClass 
	
	^ TonelReader on: (self fileEntryFor: aClass) readStream! !

!TonelTest methodsFor: 'private' stamp: 'KenD 4/19/2022 12:52:38'!
writerFor: aClass 
	"Create new file for aClass"
	^ TonelWriter on: (self fileEntryFor: aClass) forceWriteStream ! !

!TonelTest methodsFor: 'set up' stamp: 'KenD 4/19/2022 12:21:11'!
setUp 

	streams := Dictionary new! !

!TonelTest methodsFor: 'testing' stamp: 'KenD 4/19/2022 12:21:39'!
test010writeObjectDefinition 
	| writer definition reader |
	writer := self writerFor: Object.
	writer writeClass: Object category: #Kernel.
	reader := self readerFor: Object.
	definition := reader read; definition.
	self
		assert: (definition at: #name) = #Object;
		assert: (definition at: #superclass) = #ProtoObject;
		assert: (definition at: #category) = #Kernel! !

!TonelTest methodsFor: 'testing' stamp: 'KenD 4/19/2022 12:22:32'!
test014writeDefinitionWithClassVars 
	| writer definition reader |
	writer := self writerFor: SmallInteger.
	writer writeClass: SmallInteger category: #Kernel.
	reader := self readerFor: SmallInteger.
	definition := reader read; definition.
	self
		assert: (definition at: #name) = #SmallInteger;
		assert: (definition at: #superclass) = #Integer;
		assert: (definition at: #classVars) = #('Maximum' 'Minimum');
		assert: (definition at: #category) = #Kernel
		! !

!TonelTest methodsFor: 'testing' stamp: 'KenD 4/19/2022 12:22:55'!
test016writeDefinitionWithInstAndClassVars 
	| writer definition reader |
	writer := self writerFor: CompiledMethod.
	writer writeClass: CompiledMethod category: #Kernel.
	reader := self readerFor: CompiledMethod.
	definition := reader read; definition.
	self
		assert: (definition at: #name) = #CompiledMethod;
		assert: (definition at: #superclass) = CompiledMethod superclass symbol;
		assert: (definition at: #instVars) = CompiledMethod instVarNames;
		assert: (definition at: #classVars) = #('Flags');
		assert: (definition at: #category) = #Kernel! !

!TonelTest methodsFor: 'testing' stamp: 'KenD 4/21/2022 14:58:58'!
test020writeOneMethod 
	| writer reader methods cm |
	writer := self writerFor: Object.
	cm := Object >> #species.
	writer writeMethod: cm.
	reader := self readerFor: Object.
	methods := reader readMethods; methods.
	self
		assert: methods size = 1;
		assert: (methods first at: #class) = 'Object';
		assert: (methods first at: #selector) = #species;
		assert: cm source lines size = 8;
		assert: (methods first at: #body) lines last withBlanksTrimmed = cm source lines last withBlanksTrimmed! !

!TonelTest methodsFor: 'testing' stamp: 'KenD 4/19/2022 12:26:22'!
test025writeOneMethodWithArguments 
	| writer reader methods cm |
	writer := self writerFor: Object.
	cm := Object >> #byteAt:put:.
	writer writeMethod: cm.
	reader := self readerFor: Object.
	methods := reader readMethods; methods.
	self
		assert: methods size = 1;
		assert: (methods first at: #class) = 'Object';
		assert: cm source lines size = 2;
		assert: (methods first at: #selector) = cm selector;
		assert: (methods first at: #body) trimBlanks = cm source lines last! !

!TonelTest methodsFor: 'testing' stamp: 'KenD 4/19/2022 12:26:46'!
test030writeTwoMethods 
	| cm1 cm2 writer reader methods |
	cm1 := Object >> #species.
	cm2 := Object >> #value.
	writer := self writerFor: Object.
	writer writeMethod: cm1; writeMethod: cm2.
	reader := self readerFor: Object.
	methods := reader readMethods; methods.
	self
		assert: methods size = 2;
		assert: (methods first at: #class) = 'Object';
		assert: (methods first at: #selector) = #species;
		assert: cm1 source lines size = 2;
		assert: (methods first at: #body) trimBlanks = cm1 source lines last;
		assert: (methods second at: #class) = 'Object';
		assert: (methods second at: #selector) = #value;
		assert: cm2 source lines size = 2;
		assert: (methods second at: #body) trimBlanks = cm2 source lines last! !

!TonelTest methodsFor: 'testing' stamp: 'KenD 4/19/2022 12:27:10'!
testClassDefinition 
	| tonel writer reader definition |
	tonel := '' writeStream.
	writer := TonelWriter on: tonel.
	writer writeClass: Point.
	reader := TonelReader on: tonel contents readStream.
	reader read.
	definition := reader definition.
	self
		assert: (definition at: #name) = #Point;
		assert: (definition at: #instVars) = #('x' 'y')! !

!TonelTest methodsFor: 'testing' stamp: 'KenD 4/19/2022 12:28:01'!
testExtension 
	| tonel writer reader method |
	tonel := '' writeStream.
	writer := TonelWriter on: tonel.
	writer writeMethods: {TonelTest >> #testExtension}.
	reader := TonelReader on: tonel contents readStream.
	reader read.
	self assert: reader methods size = 1.
	method := reader methods anyOne.
	self
		assert: (method at: #class) = 'TonelTest';
		assert: (method at: #selector) == #testExtension! !

!TonelTest methodsFor: 'testing' stamp: 'KenD 4/19/2022 12:33:33'!
testReadMethodWithLiteralBracket 
	| tonel reader |
	tonel := 'Extension { #name : #TonelTest }
{
	#category : #accessing
}
TestClass >> m [
	$]]'.

	reader := TonelReader on: tonel readStream.
	reader read.
	self
		assert: reader methods size = 1;
		assert: (reader methods anyOne at: #body) trimBlanks = '$]' ! !

!TonelReader methodsFor: 'accessing' stamp: 'KenD 4/19/2022 08:05:10'!
stream: aReadStream 

	stream := aReadStream! !

!TonelReader methodsFor: 'initialization' stamp: 'KenD 4/19/2022 07:53:04'!
initialize 

	class      := OrderedDictionary new.
	methods := OrderedCollection new! !

!TonelReader methodsFor: 'private' stamp: 'KenD 4/20/2022 14:18:18'!
skipComment 

	self skipToMatch: $"! !

!TonelReader methodsFor: 'private' stamp: 'KenD 4/20/2022 14:29:43'!
skipLine

	[stream atEnd]
		whileFalse:
		[stream next isLineSeparator ifTrue: [^ self ]]! !

!TonelReader methodsFor: 'private' stamp: 'KenD 4/20/2022 14:18:33'!
skipString 

	self skipToMatch: $'! !

!TonelReader methodsFor: 'private' stamp: 'KenD 4/20/2022 14:18:51'!
skipToMatch: aCharacter 
	[| found |
		found := stream skipTo: aCharacter.
		found ifFalse: [self error: aCharacter storeString , ' end expected'].
		stream peek = aCharacter ifTrue: [
			stream next.
			found := false].
		found] whileFalse! !

!TonelReader methodsFor: 'reading' stamp: 'KenD 4/21/2022 14:25:10'!
nextBlock 
	| nested char start  prev |
	nested := 0.
	prev := nil.
	char := $[.
	self skipLine.
	start := stream position.
	[
		(char == $[ andNot: [prev == $$]) ifTrue: [nested := nested + 1].
		(char = $] andNot: [prev == $$]) ifTrue: [nested := nested - 1].
		prev := char.
		char = $' ifTrue: [self skipString].
		char = $" ifTrue: [self skipComment].
		nested = 0]
		whileFalse: [char := stream next].
	"eol := stream eol size. "
	self skipLine.
	
	^ stream copyFrom: start "+ eol - 1" to: stream position - 2 "Elide $]"
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

!TonelReader methodsFor: 'reading' stamp: 'KenD 4/21/2022 12:33:06'!
readMethod 
	| metadata classname signature selector method |
	metadata := STON fromStream: stream.
	classname := (stream skipSeparators; upToAll: '>>') withBlanksTrimmed.
	signature := stream upTo: $[.
	selector := Parser selectorFrom: signature.
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

!TonelWriter methodsFor: 'accessing' stamp: 'KenD 4/19/2022 10:31:50'!
class: aClass 

	class := aClass! !

!TonelWriter methodsFor: 'accessing' stamp: 'KenD 4/19/2022 10:36:59'!
methods: aCollection 

	methods := aCollection.
	self assert: (methods isEmptyOrNil or: [| classes |
		classes := methods collect: #classBinding in: Set new.
		classes size = 1 or: [
			classes size = 2 and: [| meta |
				meta := classes detect: [:cls | cls isMetaclass] ifNone: nil.
				meta notNil and: [classes anySatisfy: [:cls | cls = meta instanceClass]]]]])! !

!TonelWriter methodsFor: 'accessing' stamp: 'KenD 4/19/2022 11:05:27'!
stream: aWriteStream 

	stream := aWriteStream! !

!TonelWriter methodsFor: 'private' stamp: 'KenD 4/19/2022 10:32:20'!
crtab 

	stream crtab! !

!TonelWriter methodsFor: 'private' stamp: 'KenD 4/20/2022 14:03:20'!
flush

	stream flush! !

!TonelWriter methodsFor: 'private' stamp: 'KenD 4/19/2022 10:40:19'!
position: aStream afterSelector: aSymbol 
	| c |
	aSymbol arity = 0
		ifTrue: [aStream skipSeparators; skip: aSymbol size]
		ifFalse: [
			aSymbol keywords do: [:part | 
				aStream
					skipSeparators;
					skip: part size;
					skipSeparators;
					nextKeyword
			]
		].
	[aStream atEnd ifTrue: [^self].
	 c := aStream peek.
	 c isSeparator andNot: [c isLineSeparator]]
		whileTrue: [aStream next].
	c isLineSeparator ifTrue: [aStream next]
! !

!TonelWriter methodsFor: 'private' stamp: 'KenD 4/19/2022 11:06:04'!
type 

	^ class notNil ifTrue: [ 'Class' ] ifFalse: [ 'Extension' ]! !

!TonelWriter methodsFor: 'testing' stamp: 'KenD 4/19/2022 10:35:06'!
isExtension 

	^ self type = 'Extension'! !

!TonelWriter methodsFor: 'writing' stamp: 'KenD 4/20/2022 14:03:40'!
write 

	self
		writeComments;
		writeType;
		writeDefinition;
		writeMethods;
		flush! !

!TonelWriter methodsFor: 'writing' stamp: 'KenD 4/19/2022 11:07:34'!
writeClass: aClass 

	self writeClass: aClass category: nil! !

!TonelWriter methodsFor: 'writing' stamp: 'KenD 4/19/2022 11:07:47'!
writeClass: aClass category: aString 

	self
		class: aClass;
		category: aString;
		methods: nil;
		write! !

!TonelWriter methodsFor: 'writing' stamp: 'KenD 4/19/2022 11:08:26'!
writeComments

	"ignore comments"! !

!TonelWriter methodsFor: 'writing' stamp: 'KenD 4/21/2022 12:52:21'!
writeDefinition 

	(STONWriter on: stream) writeMap: self definition.
	stream newLine ; newLine! !

!TonelWriter methodsFor: 'writing' stamp: 'KenD 4/21/2022 08:46:02'!
writeMethod: method 
	| source head body metadata |
	source := method sourceCode readStream.
	self position: source afterSelector: method selector.
	head := source copyFrom: 1 to: source position.
	body := source upToEnd.
	metadata := OrderedDictionary new.
	metadata at: #category put: method category.
	(STONWriter on: stream) prettyPrint: true; writeMap: metadata.
	stream newLine; nextPutAll: method classBinding name asString; nextPutAll: ' >> '.
	head lines
		do: [:line | stream nextPutAll: line asUtf8]
		separatedBy: [stream newLine].
	stream nextPutAll: ' ['.
	body := body readStream.
	[
		stream newLine; nextPutAll: body nextLine asUtf8.
		body atEnd] whileFalse.
	stream nextPutAll: ']'; newLine; newLine;
		flush! !

!TonelWriter methodsFor: 'writing' stamp: 'KenD 4/19/2022 11:10:19'!
writeMethods 

	self methods do: [:m | self writeMethod: m]! !

!TonelWriter methodsFor: 'writing' stamp: 'KenD 4/19/2022 11:10:30'!
writeMethods: aCollection 

	self class: nil; methods: aCollection; write! !

!TonelWriter methodsFor: 'writing' stamp: 'KenD 4/19/2022 11:10:43'!
writeType 

	stream nextPutAll: self type; space! !

!TonelWriter class methodsFor: 'instance creation' stamp: 'KenD 4/19/2022 08:09:27'!
on: aWriteStream 

	^ self new stream: aWriteStream! !

!TonelWriter class methodsFor: 'instance creation' stamp: 'KenD 4/19/2022 08:09:47'!
writeClass: aClass 
	"
	TonelWriter writeClass: Point
	"
	^self writeClass: aClass category: nil! !

!TonelWriter class methodsFor: 'instance creation' stamp: 'KenD 4/19/2022 08:10:14'!
writeClass: aClass category: aString 
	"
	TonelWriter writeClass: Point category: 'Kernel'
	"
	| tonel |
	tonel := '' writeStream.
	(self on: tonel) writeClass: aClass category: aString.
	^tonel contents! !

!TonelWriter class methodsFor: 'instance creation' stamp: 'KenD 4/19/2022 08:10:43'!
writeMethods: aCollection 
	"
	TonelWriter writeMethods: Point methodDictionary asArray
	"
	| tonel |
	tonel := '' writeStream.
	(self on: tonel) writeMethods: aCollection.
	
	^ tonel contents! !
