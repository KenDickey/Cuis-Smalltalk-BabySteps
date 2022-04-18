'From Cuis 6.0 [latest update: #5096] on 18 April 2022 at 2:54:58 pm'!
'Description '!
!provides: 'ExchangeFormat-Tonel' 1 0!
!requires: 'ExchangeFormat-STON' 1 31 nil!
SystemOrganization addCategory: 'ExchangeFormat-Tonel'!


!classDefinition: #TonelParseError category: 'ExchangeFormat-Tonel'!
Error subclass: #TonelParseError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ExchangeFormat-Tonel'!
!classDefinition: 'TonelParseError class' category: 'ExchangeFormat-Tonel'!
TonelParseError class
	instanceVariableNames: ''!

!classDefinition: #TonelWriteError category: 'ExchangeFormat-Tonel'!
Error subclass: #TonelWriteError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ExchangeFormat-Tonel'!
!classDefinition: 'TonelWriteError class' category: 'ExchangeFormat-Tonel'!
TonelWriteError class
	instanceVariableNames: ''!

!classDefinition: #TonelParser category: 'ExchangeFormat-Tonel'!
Object subclass: #TonelParser
	instanceVariableNames: 'stream'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ExchangeFormat-Tonel'!
!classDefinition: 'TonelParser class' category: 'ExchangeFormat-Tonel'!
TonelParser class
	instanceVariableNames: ''!

!classDefinition: #TonelScanner category: 'ExchangeFormat-Tonel'!
Object subclass: #TonelScanner
	instanceVariableNames: 'stream'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ExchangeFormat-Tonel'!
!classDefinition: 'TonelScanner class' category: 'ExchangeFormat-Tonel'!
TonelScanner class
	instanceVariableNames: ''!

!classDefinition: #TonelCommentScanner category: 'ExchangeFormat-Tonel'!
TonelScanner subclass: #TonelCommentScanner
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ExchangeFormat-Tonel'!
!classDefinition: 'TonelCommentScanner class' category: 'ExchangeFormat-Tonel'!
TonelCommentScanner class
	instanceVariableNames: ''!

!classDefinition: #TonelSourceScanner category: 'ExchangeFormat-Tonel'!
TonelScanner subclass: #TonelSourceScanner
	instanceVariableNames: 'char prevChar result count isFinished'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ExchangeFormat-Tonel'!
!classDefinition: 'TonelSourceScanner class' category: 'ExchangeFormat-Tonel'!
TonelSourceScanner class
	instanceVariableNames: ''!

!classDefinition: #TonelSTONWriter category: 'ExchangeFormat-Tonel'!
STONWriter subclass: #TonelSTONWriter
	instanceVariableNames: 'aliases'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ExchangeFormat-Tonel'!
!classDefinition: 'TonelSTONWriter class' category: 'ExchangeFormat-Tonel'!
TonelSTONWriter class
	instanceVariableNames: ''!


!TonelParseError commentStamp: '<historical>' prior: 0!
I'm a parsing error. 

I happen whenever the parsing of a tonel file is broken in someway.!

!TonelWriteError commentStamp: '<historical>' prior: 0!
I'm a writing error.

I happen whenever an unrecoverable problem was encountered during writing of tonel.!

!TonelParser commentStamp: '<historical>' prior: 0!
I'm a parser for tonel files. 
I parse a class with the following format: 

Tonel spec
====

    [comment]
    type { typeDefinition }
    (
        [{ methodMetadata }]
        method [
            methodBody ] 
    )*


comment
---
"
comment string
"
is optional (but it should be there, in good design ;)

type
---
Class|Trait|Extension

typeDefinition
---
a STON file with class/trait/extension metadata

methodMetadata
---
a STON file with method metadata
is optional (but also, recommended)

method
---
method declaration as this: 

Class[ class] >> selector

methodBody 
---
the method body (we do not parse contents, that's class builder task)!

!TonelScanner commentStamp: '<historical>' prior: 0!
I'm a generic scanner to help on parsing tonel files.!

!TonelCommentScanner commentStamp: '<historical>' prior: 0!
I scan comments.!

!TonelSourceScanner commentStamp: '<historical>' prior: 0!
I'm a scanner to get correct sources from method definitions in Tonel format.

Implementation details:

Method body is delineated by square brackets in Tonel format, thus I just have to detect enclosing square brackets [].

Since a method body can include nested blocks and ByteArray literals, I have to maintain a count of opened and closed brackets in order to correctly detect the end of method body.

But method body can also contain isolated brackets (which are not necessarily paired) in following patterns:
		- comments like "["
		- strings like ']'
		- array literals like #( [ )
		- literal characters like $] 
Therefore, I need to be aware of syntax for the four cases above, in order to correctly skip those potentially isolated brackets.
!

!TonelSTONWriter commentStamp: '<historical>' prior: 0!
I'm a modified STON writer to make tonel metadata look as we want.

- it accept aliasses for classes, so I can say OrderedDictionary -> nil (then I do not have an extra information I do not want). Btw, tonel needs to use ordered dictionaries instead plain dictionaries because output needs to be deterministic, and we want to control the order of attributes we publish.
- if dictionary has just one element, it prints it in just one line, to have a more compact view.!

!TonelParser methodsFor: 'parsing' stamp: 'KenD 4/18/2022 14:19:21'!
comment

	^ (TonelCommentScanner on: stream) scan! !

!TonelParser methodsFor: 'accessing' stamp: 'KenD 4/18/2022 14:27:14'!
start

	^ self document! !

!TonelParser methodsFor: 'accessing' stamp: 'KenD 4/18/2022 14:27:24'!
stream: aStream 

	stream := aStream! !

!TonelParser methodsFor: 'parsing' stamp: 'KenD 4/18/2022 14:21:18'!
document

	^ { 
		self typeDef.
		self methodDefList.
	 } 
	flattened
	select: #notNil! !

!TonelParser methodsFor: 'parsing' stamp: 'KenD 4/18/2022 14:22:40'!
metadata
	| result ch count |
	
	result := String new writeStream.

	count := 0.
	stream peek = ${ ifFalse: [ TonelParseError signal: 'Can''t parse metadata' ].	
	[ stream atEnd ]
	whileFalse: [ 
		ch := stream next.
		result nextPut: ch.
		ch = ${ ifTrue: [ count := count +1 ].
		ch = $} ifTrue: [ count := count -1 ].
		count = 0 ifTrue: [ ^ STON fromString: result contents ]].

	TonelParseError signal: 'Can''t parse metadata'! !

!TonelParser methodsFor: 'parsing' stamp: 'KenD 4/18/2022 14:22:59'!
method
	| type selector |
	
	type := self untilIncluding: '>>'.
	selector := self cleanSelector: (self untilExcluding: '[').
	type := type withBlanksTrimmed subStrings: ' '.
	type size = 1 ifTrue: [ type := type copyWith: nil ].
	^ { 
		type.
		selector.
	}! !

!TonelParser methodsFor: 'parsing' stamp: 'KenD 4/18/2022 14:23:21'!
methodBody

	"I read a methodbody (what is inside [ ... ])"
	^ (TonelSourceScanner on: stream) scan! !

!TonelParser methodsFor: 'parsing' stamp: 'KenD 4/18/2022 14:23:39'!
methodDef

	^ self newMethodDefinitionFrom: { 
		self separator.
		self try: [ self metadata ]. 
		self separator. 
		self method. 
		self methodBody 
	}! !

!TonelParser methodsFor: 'parsing' stamp: 'KenD 4/18/2022 14:23:54'!
methodDefList
	| result |
	
	self separator. "to arrive to the end of the file in case there are no methods"
	result := Array new writeStream.
	[ stream atEnd ]
	whileFalse: [ 
		result nextPut: self methodDef.
		"skip possible spaces at the end"
		self separator ].
	
	^ result contents! !

!TonelParser methodsFor: 'parsing' stamp: 'KenD 4/18/2022 14:26:56'!
separator

	[ stream atEnd not and: [ self isSeparator: stream peek ] ]
		whileTrue: [ stream next ].
	^ nil! !

!TonelParser methodsFor: 'parsing' stamp: 'KenD 4/18/2022 14:28:54'!
type

	self try: [ self word: 'Class' ] onSuccess: [ :word | ^ word  ].
	self try: [ self word: 'Trait' ] onSuccess: [ :word | ^ word  ].
	self try: [ self word: 'Extension' ] onSuccess: [ :word | ^ word  ].
	
	"at end"
	TonelParseError signal: 'Can''t parse type.'	! !

!TonelParser methodsFor: 'parsing' stamp: 'KenD 4/18/2022 14:29:17'!
typeDef

	^ self newTypeDefinitionFrom: { 
		self separator.
		self try: [ self comment ]. 
		self separator. 
		self type. 
		self separator. 
		self try: [ self metadata ] 
	} 
! !

!TonelParser methodsFor: 'private' stamp: 'KenD 4/18/2022 14:03:12'!
cleanSelector: aString
	"BEWARE: I'm doing some heave assumptions here: I'm removing just ONE space (in case there 
	 is one) because I expect this to be a file generated by tonel, and tonel adds one space 
	 before start with the method body to make the format more readable. 
	 But of course this is not very good :("
	^ (aString last = Character space
		ifTrue: [ aString allButLast ]
		ifFalse: [ aString ]) 
		withoutLeadingBlanks! !

!TonelParser methodsFor: 'private' stamp: 'KenD 4/18/2022 14:21:48'!
extractSelector: aString
	| separators selectorStream keywords |
	
	separators := { 
		Character space. 
		Character tab. 
		Character lf. 
		Character newPage. 
		Character cr. 
		$:}.

	keywords := Array new writeStream.
	selectorStream := (self removeComments: aString) readStream.

	[ selectorStream atEnd ]
	whileFalse: [ | word ch |
		word := String new writeStream.
		[ selectorStream atEnd not and: [ (separators includes: (ch := selectorStream next)) not ] ]
		whileTrue: [ word nextPut: ch ].
		ch = $: ifTrue: [ word nextPut: ch ]. 
		word contents withBlanksTrimmed ifNotEmpty: [ :v | keywords nextPut: v ] ].
	keywords := keywords contents.

	^ (keywords size <= 2 
		ifTrue: [ keywords first]
		ifFalse: [ (keywords pairsCollect: [ :keyword :argument | keyword ]) join ])
		asSymbol
! !

!TonelParser methodsFor: 'private' stamp: 'KenD 4/18/2022 14:26:23'!
removeComments: original
	| newStream readStream inComment |
	
	newStream := original copy writeStream.
	readStream := original readStream.
	inComment := false.
	
	[ readStream atEnd ] whileFalse: [ | ch |
		
		ch := readStream next.
		
		(ch = $") ifTrue:[
			inComment := inComment not.
			ch := readStream next.
		].
		
		(inComment or:[ ch isNil]) ifFalse: [ newStream nextPut: ch	 ]
	].
	
	^ newStream contents! !

!TonelParser methodsFor: 'private factory' stamp: 'KenD 4/18/2022 14:20:32'!
definitionForType: aString 
	aString = TonelWriter classLabel ifTrue: [ ^ MCClassDefinition ].
	aString = TonelWriter traitLabel ifTrue: [ ^ MCTraitDefinition ].	
	aString = TonelWriter extensionLabel ifTrue: [ ^ nil ].
	
	TonelParseError signal: 'Unknown type declaration.'! !

!TonelParser methodsFor: 'private factory' stamp: 'KenD 4/18/2022 14:24:12'!
newClassDefinitionFrom: anArray

	| metadata |

	metadata := anArray sixth.
	^ MCClassDefinition
		name: (metadata at: #name)
		superclassName: (metadata at: #superclass)
		traitComposition: (metadata at: #traits ifAbsent: [ '{}' ])
		classTraitComposition: (metadata at: #classTraits ifAbsent: [ '{}' ])
		category: (metadata at: #category)
		instVarNames: (metadata at: #instVars ifAbsent: [ #() ])
		classVarNames: (metadata at: 'classVars' ifAbsent: [ #() ])
		poolDictionaryNames: (metadata at: 'pools' ifAbsent: [ #() ])
		classInstVarNames: (metadata at: 'classInstVars' ifAbsent: [ #() ])
		type: (metadata at: #type ifAbsent: [ #normal ]) asSymbol
		comment: (anArray second ifNil: [ '' ])
		commentStamp: (metadata at: TonelWriter squeakChangestamp ifAbsent: [ nil ])! !

!TonelParser methodsFor: 'private factory' stamp: 'KenD 4/18/2022 14:25:06'!
newMethodDefinitionFrom: anArray
	| metadata className meta selector source  |
	
	metadata := anArray second ifNil: [ Dictionary new ].
	className := anArray fourth first first.
	meta := anArray fourth first second notNil.
	selector := self extractSelector: anArray fourth second withBlanksTrimmed.
	source := String streamContents: [ :s | 
		s << anArray fourth second.
		anArray fifth ifNotEmpty: [ :src | s << src ] ].
	
	^ MCMethodDefinition
		className: className
		classIsMeta: meta
		selector: selector
		category: (metadata at: #category ifAbsent: [ '' ]) 
		timeStamp: (metadata at: TonelWriter squeakChangestamp ifAbsent: [ nil ])
		source: source! !

!TonelParser methodsFor: 'private factory' stamp: 'KenD 4/18/2022 14:26:08'!
newTraitDefinitionFrom: anArray
"	| metadata traitDefs |
	
	metadata := anArray sixth.
	traitDefs := { self basicNewTraitDefinitionFrom: anArray }.
			
	traitDefs first hasClassTraitComposition ifTrue: [
			traitDefs := traitDefs copyWith: (MCClassTraitDefinition
 				baseTraitName: (metadata at: #name)
 				classTraitComposition: (metadata at: #classTraits)) ].
			
	^ traitDefs"
	self error: 'Cuis does  NOT support Traits'! !

!TonelParser methodsFor: 'private factory' stamp: 'KenD 4/18/2022 14:25:21'!
newTypeDefinitionFrom: anArray
	| typeClass |
	
	typeClass := self definitionForType: anArray fourth.
	typeClass = MCClassDefinition ifTrue: [ ^ self newClassDefinitionFrom: anArray ].
	typeClass = MCTraitDefinition ifTrue: [ ^ self newTraitDefinitionFrom: anArray ].	
	"is extension, no type"
	^ nil! !

!TonelParser methodsFor: 'private parsing' stamp: 'KenD 4/18/2022 14:27:56'!
try: aBlock

	^ self 
		try: aBlock 
		onSuccess: [ :parsedValue | parsedValue ] 
		onFailure: [ nil ]! !

!TonelParser methodsFor: 'private parsing' stamp: 'KenD 4/18/2022 14:28:10'!
try: aBlock onFailure: failureBlock

	^ self 
		try: aBlock 
		onSuccess: [ :parsedValue |  parsedValue ] 
		onFailure: failureBlock! !

!TonelParser methodsFor: 'private parsing' stamp: 'KenD 4/18/2022 14:28:22'!
try: aBlock onSuccess: successBlock

	^ self 
		try: aBlock 
		onSuccess: successBlock 
		onFailure: [ nil ]! !

!TonelParser methodsFor: 'private parsing' stamp: 'KenD 4/18/2022 14:28:36'!
try: aBlock onSuccess: successBlock onFailure: failureBlock
	| pos |
	
	pos := stream position.
	[ ^ successBlock value: aBlock value ]
	on: TonelParseError 
	do: [ :e | 
		stream position: pos.
		^ failureBlock value ]. ! !

!TonelParser methodsFor: 'private parsing' stamp: 'KenD 4/18/2022 14:29:32'!
untilExcluding: aCollection

	| result |
	result := stream upToAll: aCollection.
	stream position: stream position - aCollection size.
	^ result! !

!TonelParser methodsFor: 'private parsing' stamp: 'KenD 4/18/2022 14:29:43'!
untilIncluding: aCollection

	^ stream upToAll: aCollection! !

!TonelParser methodsFor: 'private parsing' stamp: 'KenD 4/18/2022 14:29:55'!
word: aString
	| result |
	result := stream next: aString size.
	result = aString
		ifFalse: [ TonelParseError signal: 'Can''t parse ', aString ].
	^ result! !

!TonelParser methodsFor: 'private testing' stamp: 'KenD 4/18/2022 14:22:21'!
isSeparator: aCharacter 

	^ aCharacter isSeparator! !

!TonelParser class methodsFor: 'instance creation' stamp: 'KenD 4/18/2022 14:01:25'!
on: aStream 

	^ self new 
		stream: aStream;
		yourself! !

!TonelParser class methodsFor: 'parsing' stamp: 'KenD 4/18/2022 14:01:57'!
parseStream: aStream 

	^ (self on: aStream) start! !

!TonelParser class methodsFor: 'parsing' stamp: 'KenD 4/18/2022 14:02:23'!
parseString: aString 

	^ self parseStream: aString readStream! !

!TonelScanner methodsFor: 'initialization' stamp: 'KenD 4/18/2022 14:07:15'!
initializeStream: aStream

	self initialize.
	stream := aStream! !

!TonelScanner methodsFor: 'private' stamp: 'KenD 4/18/2022 14:08:49'!
removeFrom: aString enclosingStart: startChar end: endChar

	^ self 
		removeFrom: aString 
		enclosingStart: startChar 
		end: endChar
		clean: #both! !

!TonelScanner methodsFor: 'private' stamp: 'KenD 4/18/2022 14:09:40'!
removeFrom: aString 
enclosingStart: startChar 
end: endChar 
clean: cleanSymbol

	"cleanSymbol can be #left, #right and #both" 
	| nl result stop ch start end |
	
	nl := String cr.
	result := (aString withBlanksTrimmed withLineEndings: nl) readStream.
	(result peek = startChar) 
		ifFalse: [ TonelParseError signal: 'I cannot remove enclosing start' ].
	result skip: 1.
	
	(#(both left) includes: cleanSymbol) 
		ifTrue: [ 
			stop := nl size.
			[ (stop > 0) and: [ self isSeparator: (ch := result peek) ] ]
			whileTrue: [ 
				(self isEnter: ch) ifTrue: [ stop := stop - 1 ].
				result skip: 1 ] ].
	start := result position.
	
	result setToEnd.
	result skip: -1.
	(result peek = endChar) 
		ifFalse: [ TonelParseError signal: 'I cannot remove enclosing end' ].
	result skip: -1.
	(#(both right) includes: cleanSymbol)
		ifTrue: [ 
			stop := nl size.
			[ (stop > 0) and: [ self isSeparator: (ch := result peek) ] ]
			whileTrue: [ 
				(self isEnter: ch) ifTrue: [ stop := stop - 1 ].
				result skip: -1. ] ].
	end := result position.
	
	^ result originalContents
		copyFrom: start + 1 
		to: end + 1! !

!TonelScanner methodsFor: 'scanning' stamp: 'KenD 4/18/2022 14:10:11'!
scan 
	self subclassResponsibility! !

!TonelScanner methodsFor: 'testing' stamp: 'KenD 4/18/2022 14:07:49'!
isEnter: aCharacter

	^ #(13 10) includes: aCharacter asciiValue! !

!TonelScanner methodsFor: 'testing' stamp: 'KenD 4/18/2022 14:08:10'!
isSeparator: aCharacter
	^ aCharacter isSeparator! !

!TonelScanner class methodsFor: 'instance creation' stamp: 'KenD 4/18/2022 14:06:20'!
new

	self error: 'Use #on:'! !

!TonelScanner class methodsFor: 'instance creation' stamp: 'KenD 4/18/2022 14:06:39'!
on: aStream

	^ self basicNew 
		initializeStream: aStream;
		yourself! !

!TonelCommentScanner methodsFor: 'scanning' stamp: 'KenD 4/18/2022 14:13:10'!
scan
	| result ch eatNext |
	
	result := String new writeStream.

	eatNext := false.
	stream next = $" ifFalse: [ TonelParseError signal: 'Can''t parse comment' ].	
	[ stream atEnd not 
		and: [ 
				(ch := stream next) ~= $" 
				or: [ eatNext := (stream peek = $") ] ] ]
	whileTrue: [ 
		result nextPut: ch.
		eatNext ifTrue: [ 
			stream skip: 1.
			eatNext := false ] ].
	
	self flag: #todo. "This is a hack to make my clean algoritm for bodies work also for 
	comments. I need to refactor the 'eat enter' part out to use just that."
	^ self 
		removeFrom: '"',result contents,'"' withInternalLineEndings
		enclosingStart: $" 
		end: $"! !

!TonelSourceScanner methodsFor: 'private' stamp: 'KenD 4/18/2022 14:43:30'!
prepareToScan

	result := String new writeStream.
	isFinished := false.
	char := prevChar := nil.
	count := 0
	! !

!TonelSourceScanner methodsFor: 'private' stamp: 'KenD 4/18/2022 14:43:42'!
readNext

	prevChar := char.
	result nextPut: (char := stream next)! !

!TonelSourceScanner methodsFor: 'private' stamp: 'KenD 4/18/2022 14:44:20'!
readUntil: aBlock

	[ stream atEnd ]
	whileFalse: [
		self readNext.
		aBlock value ifTrue: [ ^ self ] 
	]! !

!TonelSourceScanner methodsFor: 'private' stamp: 'KenD 4/18/2022 14:44:35'!
readUntilTermination: matchChar
	| terminationCount |
	"This is used to read sequences that start and finish with same character termination. 
	 tipically, this is for strings and comments, but who knows what comes in the future."
	terminationCount := 1.
	self readUntil: [ 
		char = matchChar ifTrue: [ terminationCount := terminationCount + 1 ].
		terminationCount even and: [ stream peek ~= matchChar ] ]! !

!TonelSourceScanner methodsFor: 'scanning' stamp: 'KenD 4/18/2022 14:45:22'!
scan

	self prepareToScan.	
	stream peek = $[ 
		ifFalse: [ TonelParseError signal: 'Can''t parse method body' ].
		
	[ stream atEnd or: [ isFinished ] ]
	whileFalse: [ self scanNextChunk ].
	
	isFinished ifTrue: [ 
		"clean up to return"
		^ self 
			removeFrom: result contents withInternalLineEndings
			enclosingStart: $[ 
			end: $]
			clean: #right ].

	TonelParseError signal: 'Can''t parse method body'! !

!TonelSourceScanner methodsFor: 'scanning' stamp: 'KenD 4/18/2022 14:45:37'!
scanForBlock
	| match |
	match := false.
	char = $[ ifTrue: [ 
		count := count + 1.
		match := true ].
	char = $] ifTrue: [ 
		count := count - 1.
		match := true ].
	isFinished := count = 0.
	^match! !

!TonelSourceScanner methodsFor: 'scanning' stamp: 'KenD 4/18/2022 14:45:48'!
scanForComment

	self isStartingComment ifFalse: [ ^ false ]. 
	self readUntilTermination: $".
	^true! !

!TonelSourceScanner methodsFor: 'scanning' stamp: 'KenD 4/18/2022 14:45:57'!
scanForLiteralArray
	| literalCount |
	self isStartingLiteralArray ifFalse: [ ^ false ]. 
	literalCount := 1.
	self readUntil: [
		self scanForLiteralCharacter
			or: [ self scanForString
			or: [ self scanForComment
			or: [ char = $( ifTrue: [ literalCount := literalCount + 1 ].
					char = $) ifTrue: [ literalCount := literalCount - 1 ]]]].
		literalCount = 0 ].
	^true! !

!TonelSourceScanner methodsFor: 'scanning' stamp: 'KenD 4/18/2022 14:46:14'!
scanForLiteralCharacter

	self isStartingLiteralCharacter ifFalse: [ ^ false ]. 
	self readNext.
	^true! !

!TonelSourceScanner methodsFor: 'scanning' stamp: 'KenD 4/18/2022 14:46:24'!
scanForString

	self isStartingString ifFalse: [ ^ false ].
	self readUntilTermination: $'.
	^true! !

!TonelSourceScanner methodsFor: 'scanning' stamp: 'KenD 4/18/2022 14:47:01'!
scanNextChunk

	self readNext.	
	self scanForBlock or: [
	  self scanForComment or: [
	    self scanForString or: [
	      self scanForLiteralCharacter or: [
	        self scanForLiteralArray ]]]]! !

!TonelSourceScanner methodsFor: 'testing' stamp: 'KenD 4/18/2022 14:42:21'!
isStartingComment
	"Comment start with a double quote in Smalltalk syntax"
	^ char = $"! !

!TonelSourceScanner methodsFor: 'testing' stamp: 'KenD 4/18/2022 14:42:33'!
isStartingLiteralArray
	"Literal array starts with a sharp sign followed by parenthesis in Smalltalk syntax"
	^ char = $( and: [ prevChar = $# ]! !

!TonelSourceScanner methodsFor: 'testing' stamp: 'KenD 4/18/2022 14:42:42'!
isStartingLiteralCharacter
	"A literal Character start with a dollar sign in Smalltalk syntax"  
	^ char = $$! !

!TonelSourceScanner methodsFor: 'testing' stamp: 'KenD 4/18/2022 14:42:51'!
isStartingString
	"String start with single quote in Smalltalk syntax"
	^ char = $'! !

!TonelSTONWriter methodsFor: 'accessing' stamp: 'KenD 4/18/2022 14:49:45'!
aliases

	^ aliases! !

!TonelSTONWriter methodsFor: 'accessing' stamp: 'KenD 4/18/2022 14:49:27'!
aliases: aDictionary

	aliases := aDictionary! !

!TonelSTONWriter methodsFor: 'accessing' stamp: 'KenD 4/18/2022 14:49:58'!
encodeMap: pairs
	| first |
	first := true.
	writeStream nextPut: ${.
	pairs isEmpty
		ifTrue: [
			self prettyPrintSpace ]
		ifFalse: [
			self indentedDo: [
				pairs size = 1 
					ifTrue: [ self prettyPrintSpace ]
					ifFalse: [ self newlineIndent ].
				pairs keysAndValuesDo: [ :key :value |
					first 
						ifTrue: [ first := false ] 
						ifFalse: [ self mapElementSeparator ].
					self encodeKey: key value: value ] ].
				pairs size = 1 
					ifTrue: [ self prettyPrintSpace ]
					ifFalse: [ self newlineIndent ] ].
	writeStream nextPut: $}! !

!TonelSTONWriter methodsFor: 'accessing' stamp: 'KenD 4/18/2022 14:51:26'!
stonNameFor: aClass

	^ self aliases 
		at: aClass 
		ifAbsent: [ aClass stonName ]! !

!TonelSTONWriter methodsFor: 'initialization' stamp: 'KenD 4/18/2022 14:50:28'!
initialize

	super initialize.
	self prettyPrint: true.
	aliases := ({ OrderedDictionary -> nil } as: Dictionary)! !

!TonelSTONWriter methodsFor: 'private testing' stamp: 'KenD 4/18/2022 14:51:08'!
isSimpleSymbol: symbol
	"Customize STON to only consider very clean symbols as literal, 
	for all others err on the safe side and quote them."
	
	symbol isEmpty ifTrue: [ ^ false ].
	('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ' includes: symbol first)
		ifFalse: [ ^ false ].
	^ symbol allSatisfy: [ :each | 
		'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789' includes: each ]! !

!TonelSTONWriter methodsFor: 'writing' stamp: 'KenD 4/18/2022 14:52:04'!
writeObject: anObject do: block

	(jsonMode 
		and: [ anObject class ~= STON listClass 
			and: [ anObject class ~= STON mapClass ] ])
		ifTrue: [ self error: 'wrong object class for JSON mode' ].
		
	self with: anObject do: [
		(self stonNameFor: anObject class) ifNotNil: [ :stonName | 
			writeStream nextPutAll: stonName.
			self prettyPrintSpace ].
		block value ]! !

!String methodsFor: '*ExchangeFormat-Tonel' stamp: 'KenD 4/18/2022 14:17:29'!
withInternalLineEndings
	"Answer a new instance where all occurrences of CRLF and LF 
	 are substituted Cuis' Character newLineCharacter, i.e. linefeed"

	^ self withLineEndings: String newLineString ! !
