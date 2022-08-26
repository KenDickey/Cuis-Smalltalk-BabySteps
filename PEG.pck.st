'From Cuis 6.0 [latest update: #5467] on 25 August 2022 at 7:43:53 pm'!
'Description Parsing Expression Grammar -- yet another parser..'!
!provides: 'PEG' 1 15!
SystemOrganization addCategory: 'PEG'!


!classDefinition: #PEGStringScanner category: 'PEG'!
ReadStream subclass: #PEGStringScanner
	instanceVariableNames: 'separator cache stack longestMatch'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PEG'!
!classDefinition: 'PEGStringScanner class' category: 'PEG'!
PEGStringScanner class
	instanceVariableNames: ''!

!classDefinition: #PEGException category: 'PEG'!
Exception subclass: #PEGException
	instanceVariableNames: 'environment'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PEG'!
!classDefinition: 'PEGException class' category: 'PEG'!
PEGException class
	instanceVariableNames: ''!

!classDefinition: #PEGParsingFailure category: 'PEG'!
PEGException subclass: #PEGParsingFailure
	instanceVariableNames: 'input'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PEG'!
!classDefinition: 'PEGParsingFailure class' category: 'PEG'!
PEGParsingFailure class
	instanceVariableNames: ''!

!classDefinition: #PEGTest category: 'PEG'!
TestCase subclass: #PEGTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PEG'!
!classDefinition: 'PEGTest class' category: 'PEG'!
PEGTest class
	instanceVariableNames: ''!

!classDefinition: #PEGExpression category: 'PEG'!
Object subclass: #PEGExpression
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PEG'!
!classDefinition: 'PEGExpression class' category: 'PEG'!
PEGExpression class
	instanceVariableNames: ''!

!classDefinition: #PEGAtEnd category: 'PEG'!
PEGExpression subclass: #PEGAtEnd
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PEG'!
!classDefinition: 'PEGAtEnd class' category: 'PEG'!
PEGAtEnd class
	instanceVariableNames: 'instance'!

!classDefinition: #PEGBlock category: 'PEG'!
PEGExpression subclass: #PEGBlock
	instanceVariableNames: 'block'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PEG'!
!classDefinition: 'PEGBlock class' category: 'PEG'!
PEGBlock class
	instanceVariableNames: ''!

!classDefinition: #PEGMemo category: 'PEG'!
PEGExpression subclass: #PEGMemo
	instanceVariableNames: 'parser'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PEG'!
!classDefinition: 'PEGMemo class' category: 'PEG'!
PEGMemo class
	instanceVariableNames: ''!

!classDefinition: #PEGNotTerminal category: 'PEG'!
PEGExpression subclass: #PEGNotTerminal
	instanceVariableNames: 'char'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PEG'!
!classDefinition: 'PEGNotTerminal class' category: 'PEG'!
PEGNotTerminal class
	instanceVariableNames: ''!

!classDefinition: #PEGConsumingNotTerminal category: 'PEG'!
PEGNotTerminal subclass: #PEGConsumingNotTerminal
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PEG'!
!classDefinition: 'PEGConsumingNotTerminal class' category: 'PEG'!
PEGConsumingNotTerminal class
	instanceVariableNames: ''!

!classDefinition: #PEGConsumingNotTerminalStrongTimes category: 'PEG'!
PEGConsumingNotTerminal subclass: #PEGConsumingNotTerminalStrongTimes
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PEG'!
!classDefinition: 'PEGConsumingNotTerminalStrongTimes class' category: 'PEG'!
PEGConsumingNotTerminalStrongTimes class
	instanceVariableNames: ''!

!classDefinition: #PEGOmit category: 'PEG'!
PEGExpression subclass: #PEGOmit
	instanceVariableNames: 'parser'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PEG'!
!classDefinition: 'PEGOmit class' category: 'PEG'!
PEGOmit class
	instanceVariableNames: ''!

!classDefinition: #PEGOptionalExpression category: 'PEG'!
PEGExpression subclass: #PEGOptionalExpression
	instanceVariableNames: 'child'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PEG'!
!classDefinition: 'PEGOptionalExpression class' category: 'PEG'!
PEGOptionalExpression class
	instanceVariableNames: ''!

!classDefinition: #PEGOrderedChoiceExpression category: 'PEG'!
PEGExpression subclass: #PEGOrderedChoiceExpression
	instanceVariableNames: 'children'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PEG'!
!classDefinition: 'PEGOrderedChoiceExpression class' category: 'PEG'!
PEGOrderedChoiceExpression class
	instanceVariableNames: ''!

!classDefinition: #PEGParser category: 'PEG'!
PEGExpression subclass: #PEGParser
	instanceVariableNames: 'expression semantics scopeClass separator name'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PEG'!
!classDefinition: 'PEGParser class' category: 'PEG'!
PEGParser class
	instanceVariableNames: 'separator separators stream'!

!classDefinition: #PEGMultiParser category: 'PEG'!
PEGParser subclass: #PEGMultiParser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PEG'!
!classDefinition: 'PEGMultiParser class' category: 'PEG'!
PEGMultiParser class
	instanceVariableNames: ''!

!classDefinition: #PEGRange category: 'PEG'!
PEGExpression subclass: #PEGRange
	instanceVariableNames: 'start stop'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PEG'!
!classDefinition: 'PEGRange class' category: 'PEG'!
PEGRange class
	instanceVariableNames: ''!

!classDefinition: #PEGSequenceExpression category: 'PEG'!
PEGExpression subclass: #PEGSequenceExpression
	instanceVariableNames: 'children'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PEG'!
!classDefinition: 'PEGSequenceExpression class' category: 'PEG'!
PEGSequenceExpression class
	instanceVariableNames: ''!

!classDefinition: #PEGStrongSequenceExpression category: 'PEG'!
PEGSequenceExpression subclass: #PEGStrongSequenceExpression
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PEG'!
!classDefinition: 'PEGStrongSequenceExpression class' category: 'PEG'!
PEGStrongSequenceExpression class
	instanceVariableNames: ''!

!classDefinition: #PEGTerminal category: 'PEG'!
PEGExpression subclass: #PEGTerminal
	instanceVariableNames: 'terminal'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PEG'!
!classDefinition: 'PEGTerminal class' category: 'PEG'!
PEGTerminal class
	instanceVariableNames: ''!

!classDefinition: #PEGCharacterTerminal category: 'PEG'!
PEGTerminal subclass: #PEGCharacterTerminal
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PEG'!
!classDefinition: 'PEGCharacterTerminal class' category: 'PEG'!
PEGCharacterTerminal class
	instanceVariableNames: ''!

!classDefinition: #PEGPushCharacterTerminal category: 'PEG'!
PEGCharacterTerminal subclass: #PEGPushCharacterTerminal
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PEG'!
!classDefinition: 'PEGPushCharacterTerminal class' category: 'PEG'!
PEGPushCharacterTerminal class
	instanceVariableNames: ''!

!classDefinition: #PEGTerminalChoice category: 'PEG'!
PEGTerminal subclass: #PEGTerminalChoice
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PEG'!
!classDefinition: 'PEGTerminalChoice class' category: 'PEG'!
PEGTerminalChoice class
	instanceVariableNames: ''!

!classDefinition: #PEGTerminalChoiceStrongTimes category: 'PEG'!
PEGTerminalChoice subclass: #PEGTerminalChoiceStrongTimes
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PEG'!
!classDefinition: 'PEGTerminalChoiceStrongTimes class' category: 'PEG'!
PEGTerminalChoiceStrongTimes class
	instanceVariableNames: ''!

!classDefinition: #PEGZeroOrMoreExpression category: 'PEG'!
PEGExpression subclass: #PEGZeroOrMoreExpression
	instanceVariableNames: 'child'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PEG'!
!classDefinition: 'PEGZeroOrMoreExpression class' category: 'PEG'!
PEGZeroOrMoreExpression class
	instanceVariableNames: ''!

!classDefinition: #PEGOneOrMoreExpression category: 'PEG'!
PEGZeroOrMoreExpression subclass: #PEGOneOrMoreExpression
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PEG'!
!classDefinition: 'PEGOneOrMoreExpression class' category: 'PEG'!
PEGOneOrMoreExpression class
	instanceVariableNames: ''!

!classDefinition: #PEGStrongZeroOrMoreExpression category: 'PEG'!
PEGZeroOrMoreExpression subclass: #PEGStrongZeroOrMoreExpression
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PEG'!
!classDefinition: 'PEGStrongZeroOrMoreExpression class' category: 'PEG'!
PEGStrongZeroOrMoreExpression class
	instanceVariableNames: ''!

!classDefinition: #PEGStrongOneOrMoreExpression category: 'PEG'!
PEGStrongZeroOrMoreExpression subclass: #PEGStrongOneOrMoreExpression
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PEG'!
!classDefinition: 'PEGStrongOneOrMoreExpression class' category: 'PEG'!
PEGStrongOneOrMoreExpression class
	instanceVariableNames: ''!

!classDefinition: #PEGOptionalResult category: 'PEG'!
Object subclass: #PEGOptionalResult
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PEG'!
!classDefinition: 'PEGOptionalResult class' category: 'PEG'!
PEGOptionalResult class
	instanceVariableNames: ''!

!classDefinition: #PEGFailedOptionalResult category: 'PEG'!
PEGOptionalResult subclass: #PEGFailedOptionalResult
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PEG'!
!classDefinition: 'PEGFailedOptionalResult class' category: 'PEG'!
PEGFailedOptionalResult class
	instanceVariableNames: ''!

!classDefinition: #PEGSucceededOptionalResult category: 'PEG'!
PEGOptionalResult subclass: #PEGSucceededOptionalResult
	instanceVariableNames: 'result'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PEG'!
!classDefinition: 'PEGSucceededOptionalResult class' category: 'PEG'!
PEGSucceededOptionalResult class
	instanceVariableNames: ''!

!classDefinition: #PEGStack category: 'PEG'!
Object subclass: #PEGStack
	instanceVariableNames: 'array size position mark'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PEG'!
!classDefinition: 'PEGStack class' category: 'PEG'!
PEGStack class
	instanceVariableNames: ''!


!PEGTest commentStamp: 'tv 3/25/2009 17:56' prior: 0!
TestExpression tests all SpyCam pegs.!

!PEGStringScanner methodsFor: 'accessing' stamp: 'ToonVerwaest 7/27/2010 16:56'!
backward
	position := position -1! !

!PEGStringScanner methodsFor: 'accessing' stamp: 'ToonVerwaest 7/29/2010 10:53'!
forward
	position := position + 1! !

!PEGStringScanner methodsFor: 'accessing' stamp: 'ToonVerwaest 7/31/2010 09:47'!
omitSkipWhitespace
	separator omitMatch: self! !

!PEGStringScanner methodsFor: 'accessing' stamp: 'ToonVerwaest 7/27/2010 17:34'!
peek
	"An improved version of peek, that is slightly faster than the built in version."
	^ self atEnd ifFalse: [ collection at: position + 1 ]! !

!PEGStringScanner methodsFor: 'accessing' stamp: 'ToonVerwaest 7/27/2010 15:28'!
position: anInteger 
	"Copied down for performance"
	position := anInteger! !

!PEGStringScanner methodsFor: 'accessing' stamp: 'ToonVerwaest 8/19/2010 12:58'!
sample
	| result sampleSize |
	sampleSize := readLimit - position min: 20.
	result := collection species new: sampleSize.
	position to: position + sampleSize - 1 do:
			[ :i | result at: 1 + i - position put: (collection at: i + 1) ].
	^ result! !

!PEGStringScanner methodsFor: 'accessing' stamp: 'ToonVerwaest 7/31/2010 09:47'!
skipWhitespace
	separator omitMatch: self! !

!PEGStringScanner methodsFor: 'accessing' stamp: 'ToonVerwaest 7/28/2010 00:27'!
stack
	^ stack! !

!PEGStringScanner methodsFor: 'accessing' stamp: 'ToonVerwaest 7/28/2010 00:27'!
stack: anObject
	stack := anObject! !

!PEGStringScanner methodsFor: 'initialization' stamp: 'ToonVerwaest 5/5/2011 19:35'!
bucket
	(cache at: position + 1) ifNotNil: [ :bucket | ^ bucket ].
	^ cache at: position + 1 put: IdentityDictionary new! !

!PEGStringScanner methodsFor: 'initialization' stamp: 'ToonVerwaest 8/19/2010 15:51'!
on: aString separator: aSeparator
	super on: aString asString.
	separator := aSeparator withoutOmit.
	cache := Array new: aString size + 1.
	longestMatch := 0.
	stack := PEGStack new.! !

!PEGStringScanner methodsFor: 'matching' stamp: 'ToonVerwaest 8/19/2010 17:02'!
memoizeMatch: parser
	| result bucket |
	bucket := self bucket.
	result := bucket at: parser ifAbsent: [
		(parser parseOn: self)
			ifTrue: [
				longestMatch := longestMatch max: position.
				bucket at: parser put: position@(stack peek).
				^ true ]
			ifFalse: [
				longestMatch := longestMatch max: position.
				bucket at: parser put: nil.
				^ false ]].
	result ifNil: [ ^ false ].
	position := result x.
	stack push: result y.
	^ true
	! !

!PEGStringScanner methodsFor: 'matching' stamp: 'KenD 8/25/2022 15:44:52'!
push: aChar
	"@@KenD@@"
	stack push: aChar! !

!PEGStringScanner methodsFor: 'matching' stamp: 'ToonVerwaest 8/19/2010 15:26'!
pushAllIn: subCollection
	position + 1 to: collection size do: [ :index |
		(subCollection indexOf: (collection at: index)) = 0 ifTrue: [
			stack push: collection from: position to: index - 1.
			position := index - 1.
			^ true ]].
	stack push: collection from:  position to: collection size.
	position := collection size! !

!PEGStringScanner methodsFor: 'matching' stamp: 'ToonVerwaest 8/19/2010 16:26'!
pushUntil: char
	| s |
	s := collection indexOf: char startingAt: position + 1 ifAbsent: [ collection size + 1 ].
	s := s - 1.
	stack push: collection from: position to: s.
	position := s! !

!PEGStringScanner methodsFor: 'matching' stamp: 'ToonVerwaest 8/19/2010 16:55'!
scan: subCollection
	(collection contains: subCollection at: position) ifFalse: [ ^ false ].
	position := position + subCollection size.
	^ true! !

!PEGStringScanner methodsFor: 'matching' stamp: 'ToonVerwaest 7/31/2010 09:47'!
scanAllIn: subCollection
	position + 1 to: collection size do: [ :index |
		(subCollection indexOf: (collection at: index)) = 0 ifTrue: [ position := index - 1. ^ true ]
	].
	position := collection size! !

!PEGStringScanner methodsFor: 'matching' stamp: 'KenD 8/25/2022 14:39:05'!
scanCharacter: character
	self atEnd ifTrue: [ ^ false ].
	(collection at: position + 1) asInteger = character asInteger ifFalse: [ ^ false ].
	position := position + 1.
	^ true! !

!PEGStringScanner methodsFor: 'matching' stamp: 'ToonVerwaest 8/19/2010 16:46'!
scanPush: subCollection
	| s |
	(collection contains: subCollection at: position) ifFalse: [ ^ false ].
	s := subCollection size.
	stack push: collection from: position to: position + s.
	position := position + s.
	^ true! !

!PEGStringScanner methodsFor: 'matching' stamp: 'KenD 8/25/2022 17:05:18'!
scanPushCharacter: character
	self atEnd ifTrue: [ ^ false ].
	(collection at: position + 1) asInteger = character asInteger ifFalse: [ ^ false ].
	stack push: character asCharacter.
	position := position + 1.
	^ true! !

!PEGStringScanner methodsFor: 'matching' stamp: 'ToonVerwaest 8/19/2010 16:26'!
scanUntil: char
	position := collection indexOf: char startingAt: position + 1 ifAbsent: [ collection size + 1 ].
	position := position - 1! !

!PEGStringScanner methodsFor: 'failure' stamp: 'ToonVerwaest 8/19/2010 14:57'!
parsingFailed
	position := longestMatch.
	PEGParsingFailure new
		input: self;
		signal! !

!PEGStringScanner methodsFor: 'printing' stamp: 'ToonVerwaest 8/19/2010 13:01'!
printOn: aStream
	aStream << 'PEGStringScanner('.
	collection printOn: aStream.
	aStream << $)! !

!PEGStringScanner class methodsFor: 'instance creation' stamp: 'ToonVerwaest 3/25/2010 12:44'!
on: aString
	^ self on: aString separator: PEGParser separator! !

!PEGStringScanner class methodsFor: 'instance creation' stamp: 'ToonVerwaest 7/26/2010 18:53'!
on: aString separator: aSeparator
	^ self basicNew on: aString separator: aSeparator! !

!PEGParsingFailure methodsFor: 'accessing' stamp: 'KenD 8/24/2022 17:50:49'!
input
	^ input! !

!PEGParsingFailure methodsFor: 'accessing' stamp: 'KenD 8/24/2022 17:50:58'!
input: anObject
	input := anObject! !

!PEGParsingFailure methodsFor: 'printing' stamp: 'KenD 8/24/2022 17:50:24'!
warnOn: aStream
	input atEnd ifTrue: [
		aStream << 'Parsing failure. Expected more input at end: '.
		input printOn: aStream.
		^ self ].
	aStream << 'Parsing failure at '.
	aStream << input position.
	aStream << ': '.
	aStream << input sample! !

!PEGTest methodsFor: 'tests' stamp: 'ToonVerwaest 3/25/2010 12:44'!
setUp
	! !

!PEGTest methodsFor: 'tests' stamp: 'KenD 8/25/2022 15:12:01'!
testExpression
	| string exp1 exp2 exp3 |
	string := PEGStringScanner on: 'teest'.
	exp1 := PEGTerminal on: 'te'.
	exp2 := PEGTerminal on: 'es'.
	exp3 := PEGTerminal on: 't'.	" test string which occurs later on. "
	
	self assert: string position equals: 0.
	(exp1 match: string).
	self assert: string position equals: 2.
	(exp2 match: string).
	self assert: string position equals: 4.
	(exp3 match: string).
	self assert: string position equals: 5! !

!PEGTest methodsFor: 'tests' stamp: 'KenD 8/25/2022 15:15:07'!
testMemoizeEquals
	| string exp1 result exp2 |
	string := PEGStringScanner on: 'te'.
	exp1 := PEGTerminal on: 'te'.
	exp2 := PEGParser named: '' parsing: (PEGZeroOrMoreExpression on: exp1).
	result := exp2 match: string.
	self deny: result isNil.
	self assert: string position equals: 2.
	string position: 0.
	self assert: (exp2 match: string) equals: result! !

!PEGTest methodsFor: 'tests' stamp: 'KenD 8/25/2022 15:26:23'!
testNotExpression
	| string exp exp3 |
	string := PEGStringScanner on: 'teesest'.
	exp := PEGConsumingNotTerminal on: $t.
	self should: [exp match: string] raise: PEGParsingFailure.
	self assert: string position equals: 0.
	exp := PEGConsumingNotTerminal on: $e.
	self assert: (exp match: string) equals: $t.
	self assert: string position equals: 1.	" Fail on end of string. "
	string := PEGStringScanner on: ''.
	self should: [exp match: string] raise: PEGParsingFailure.
	string := PEGStringScanner on: 'test'.
	exp3 := 'x' asParser not omit.
	self deny: (exp3 match: string) isNil.
	self assert: string position equals: 0.
	exp3 := 'x' asParser not consume.
	self assert: (exp3 match: string) equals: $t.
	self assert: string position equals: 1.
	string := PEGStringScanner on: ''.
	exp3 := 'x' asParser not.
	self deny: (exp3 match: string) isNil.
	self assert: string position equals: 0! !

!PEGTest methodsFor: 'tests' stamp: 'KenD 8/25/2022 16:15:29'!
testOneOrMoreExpression
	| string exp1 exp2 exp3 exp |
	string := PEGStringScanner on: 'teesest'.
	exp1 := PEGTerminal on: 'te'.
	exp2 := PEGTerminal on: 'es'.
	exp3 := PEGTerminal on: 't'.
	exp := PEGOneOrMoreExpression on: exp1.
	self assert: (exp match: string) isNil not.
	self assert: string position equals: 2.
	exp := PEGOneOrMoreExpression on: exp2.
	self deny: (exp match: string) isNil.
	self assert: string position equals: 6.
	self deny: (exp3 match: string) isNil.
	self assert: string position equals: 7.
	exp := PEGOneOrMoreExpression on: exp3.
	self should: [exp match: string] raise: PEGParsingFailure.! !

!PEGTest methodsFor: 'tests' stamp: 'KenD 8/25/2022 16:20:04'!
testOptionalExpression
	| string exp1 exp2 exp |
	string := PEGStringScanner on: 'teesest'.
	exp1 := PEGTerminal on: 'te'.
	exp2 := PEGTerminal on: 'es'.
	exp := PEGOptionalExpression on: exp1.
	((exp match: string) resultIfFailed: [ 10 ]).
	self assert: string position equals: 2.
	self assert: ((exp match: string) resultIfFailed: [ 10 ]) equals: 10.
	self assert: string position equals: 2.
	exp := PEGOptionalExpression on: exp2.
	((exp match: string) resultIfFailed: [ 10 ]).
	self assert: string position equals: 4! !

!PEGTest methodsFor: 'tests' stamp: 'KenD 8/25/2022 16:26:25'!
testOrderedChoiceExpression
	| string exp1 exp2  seq1 |
	string := PEGStringScanner on: 'teest'.
	exp1 := PEGTerminal on: 'te'.
	exp2 := PEGTerminal on: 'es'.

	seq1 := PEGOrderedChoiceExpression new.
	seq1 <= exp1 <= exp2.
	seq1 match: string.
	self assert: string position equals: 2.
	seq1 match: string.
	self assert: string position equals: 4.
	self should: [seq1 match: string] raise: PEGParsingFailure.! !

!PEGTest methodsFor: 'tests' stamp: 'KenD 8/25/2022 16:29:39'!
testRange
	| string |
	string := PEGStringScanner on: 'p'.
	self assert: ((PEGRange between: $a and: $z) match: string) equals: $p.
	self assert: string position equals: 1.
	string := PEGStringScanner on: 'a'.
	self assert: ((PEGRange between: $a and: $z) match: string) equals: $a.
	self assert: string position equals: 1.
	string := PEGStringScanner on: 'z'.
	self assert: ((PEGRange between: $a and: $z) match: string) equals: $z.
	self assert: string position equals: 1.
	string := PEGStringScanner on: ' '.
	self should: [(PEGRange between: $a and: $z) match: string] raise: PEGParsingFailure.
	self assert: string position equals: 0.
	string := PEGStringScanner on: ''.
	self should: [(PEGRange between: $a and: $z) match: string] raise: PEGParsingFailure.
	self assert: string position equals: 0! !

!PEGTest methodsFor: 'tests' stamp: 'KenD 8/25/2022 16:31:32'!
testResultEquals
	| string exp1 result exp2 |
	string := PEGStringScanner on: 'te'.
	exp1 := PEGTerminal on: 'te'.
	exp2 := PEGZeroOrMoreExpression on: exp1.
	result := exp2 match: string.
	self deny: result isNil.
	self assert: string position equals: 2.
	string position: 0.
	self assert: (exp2 match: string) equals: result! !

!PEGTest methodsFor: 'tests' stamp: 'KenD 8/25/2022 16:32:54'!
testSeparator
	| string |
	string := PEGStringScanner on: ' a'.
	self deny: (PEGParser separator match: string) isNil.
	self assert: string position equals: 1.
	string := PEGStringScanner on: ' 	 a'.
	self deny: (PEGParser separator match: string) isNil.
	self assert: string position equals: 3! !

!PEGTest methodsFor: 'tests' stamp: 'KenD 8/25/2022 16:39:19'!
testSequenceExpression
	| string exp1 exp2 exp3 seq1 seq2 seq3 |
	string := PEGStringScanner on: 'teest'.
	exp1 := PEGTerminal on: 'te'.
	exp2 := PEGTerminal on: 'es'.
	exp3 := PEGTerminal on: 't'.
	seq1 := PEGSequenceExpression new.
	seq1 <& exp1 <& exp2.
	seq1 match: string.
	self assert: string position equals: 4.
	
	string := PEGStringScanner on: 'test'.
	seq2 := PEGSequenceExpression new.
	seq2 <& exp3 <& exp2.
	seq2 match: string.
	self assert: string position equals: 3.
	seq3 := PEGSequenceExpression new.
	seq3 <& exp3.
	seq3 match: string.
	self assert: string position equals: 4! !

!PEGTest methodsFor: 'tests' stamp: 'KenD 8/25/2022 16:40:11'!
testSequenceOmit
	| string exp1 exp2 seq1 |
	string := PEGStringScanner on: 'abc'.
	exp1 := 'a' asParser omit.
	exp2 := 'b' asParser.
	seq1 := exp1 && exp2.
	self assert: (seq1 match: string) equals: $b.
	self assert: string position equals: 2! !

!PEGTest methodsFor: 'tests' stamp: 'KenD 8/25/2022 17:06:11'!
testSingleCharacterParse
	| string exp1 |
	string := PEGStringScanner on: 'abc'.
	exp1 := 'a' asParser.
	self assert: (exp1 match: string) equals: $a.
	self assert: string position equals: 1! !

!PEGTest methodsFor: 'tests' stamp: 'KenD 8/25/2022 17:09:01'!
testZeroOrMoreExpression
	| string exp1 exp2 exp3 exp |
	string := PEGStringScanner on: 'teesest'.
	exp1 := PEGTerminal on: 'te'.
	exp2 := PEGTerminal on: 'es'.
	exp3 := PEGTerminal on: 't'.
	exp := PEGZeroOrMoreExpression on: exp1.
	self deny: (exp match: string) isNil.
	self assert: string position equals: 2.
	exp := PEGZeroOrMoreExpression on: exp2.
	self deny: (exp match: string) isNil.
	self assert: string position equals: 6.
	self deny: (exp match: string) isNil.
	self assert: string position equals: 6! !

!PEGExpression methodsFor: 'logical operations' stamp: 'ToonVerwaest 7/27/2010 11:17'!
& expression
	^ PEGSequenceExpression new <& self <& expression! !

!PEGExpression methodsFor: 'logical operations' stamp: 'ToonVerwaest 7/27/2010 12:03'!
&& expression
	^ PEGStrongSequenceExpression new <& self <& expression! !

!PEGExpression methodsFor: 'logical operations' stamp: 'ToonVerwaest 3/25/2010 12:44'!
| expression
	^ PEGOrderedChoiceExpression new <= self <= expression! !

!PEGExpression methodsFor: 'logical operations' stamp: 'ToonVerwaest 8/2/2010 11:18'!
end
	^ self & PEGAtEnd instance! !

!PEGExpression methodsFor: 'logical operations' stamp: 'ToonVerwaest 7/29/2010 23:17'!
optional
	^ PEGOptionalExpression on: self! !

!PEGExpression methodsFor: 'logical operations' stamp: 'ToonVerwaest 7/29/2010 23:17'!
plus
	^ PEGOneOrMoreExpression on: self! !

!PEGExpression methodsFor: 'logical operations' stamp: 'ToonVerwaest 7/29/2010 23:17'!
strongPlus
	^ PEGStrongOneOrMoreExpression on: self! !

!PEGExpression methodsFor: 'logical operations' stamp: 'ToonVerwaest 7/29/2010 23:16'!
strongTimes
	^ PEGStrongZeroOrMoreExpression on: self! !

!PEGExpression methodsFor: 'logical operations' stamp: 'ToonVerwaest 7/29/2010 23:17'!
times
	^ PEGZeroOrMoreExpression on: self! !

!PEGExpression methodsFor: 'converting' stamp: 'ToonVerwaest 7/27/2010 11:27'!
asChildParser! !

!PEGExpression methodsFor: 'converting' stamp: 'ToonVerwaest 9/30/2010 15:08'!
asParser
	" ^ self "

	! !

!PEGExpression methodsFor: 'hashing' stamp: 'ToonVerwaest 8/4/2010 15:24'!
identityHash
	<preventExport>
	^ super basicIdentityHash! !

!PEGExpression methodsFor: 'matching' stamp: 'KenD 8/25/2022 15:22:37'!
match: input
	(self parseOn: input) ifFalse: [ input parsingFailed ].
	input stack isEmpty ifTrue: [ ^ true ].
	^ input stack pop! !

!PEGExpression methodsFor: 'omitting' stamp: 'ToonVerwaest 7/27/2010 13:15'!
omit 
	^ PEGOmit on: self! !

!PEGExpression methodsFor: 'parse' stamp: 'CamilloBruni 8/27/2010 21:03'!
parse: input
	^ self match: (PEGStringScanner on: input)! !

!PEGExpression methodsFor: 'optimizing' stamp: 'ToonVerwaest 7/27/2010 14:21'!
withoutOmit! !

!PEGExpression class methodsFor: 'instance creation' stamp: 'ToonVerwaest 7/29/2010 23:18'!
on: argument
	^ super basicNew initialize: argument! !

!PEGAtEnd methodsFor: 'matching' stamp: 'ToonVerwaest 8/2/2010 11:17'!
omitMatch: input
	^ input atEnd! !

!PEGAtEnd methodsFor: 'matching' stamp: 'ToonVerwaest 8/2/2010 11:17'!
parseOn: input
	^ input atEnd! !

!PEGAtEnd class methodsFor: 'instance creation' stamp: 'ToonVerwaest 8/2/2010 11:19'!
instance
	instance isNil ifTrue: [ ^ instance := super new ].
	^ instance! !

!PEGBlock methodsFor: 'initialize-release' stamp: 'ToonVerwaest 8/16/2010 14:27'!
initialize: b
	block := b! !

!PEGBlock methodsFor: 'matching' stamp: 'ToonVerwaest 8/16/2010 14:24'!
omitMatch: input
	^ true! !

!PEGBlock methodsFor: 'matching' stamp: 'ToonVerwaest 8/16/2010 14:26'!
parseOn: input
	input stack push: (block value: input).
	^ true! !

!PEGMemo methodsFor: 'accessing' stamp: 'ToonVerwaest 7/31/2010 09:39'!
<= child
	parser ifNil: [ ^ parser := child asChildParser ].
	parser <= child! !

!PEGMemo methodsFor: 'accessing' stamp: 'ToonVerwaest 8/18/2010 14:32'!
expression
	^ parser expression! !

!PEGMemo methodsFor: 'accessing' stamp: 'ToonVerwaest 8/18/2010 12:02'!
semantics: aBlock
	parser semantics: aBlock! !

!PEGMemo methodsFor: 'matching' stamp: 'ToonVerwaest 7/31/2010 09:40'!
omitMatch: input
	"self omit."
	^ parser omitMatch: input! !

!PEGMemo methodsFor: 'matching' stamp: 'ToonVerwaest 7/31/2010 09:40'!
parseOn: input
	^ input memoizeMatch: parser "for: self"! !

!PEGMemo methodsFor: 'initialization' stamp: 'ToonVerwaest 7/31/2010 09:48'!
on: p
	parser := p! !

!PEGMemo class methodsFor: 'instance creation' stamp: 'ToonVerwaest 7/30/2010 23:15'!
on: p
	^ super basicNew on: p! !

!PEGNotTerminal methodsFor: 'consuming' stamp: 'ToonVerwaest 7/29/2010 11:02'!
consume
	^ PEGConsumingNotTerminal on: char! !

!PEGNotTerminal methodsFor: 'accessing' stamp: 'ToonVerwaest 7/30/2010 21:57'!
initialize: aCharacter
	char := aCharacter! !

!PEGNotTerminal methodsFor: 'matching' stamp: 'ToonVerwaest 7/30/2010 23:11'!
omitMatch: input
	input peek = char ifTrue: [ ^ false ].
	^ true! !

!PEGNotTerminal methodsFor: 'matching' stamp: 'ToonVerwaest 7/30/2010 21:57'!
parseOn: input
	input peek = char ifTrue: [ ^ false ].
	^ true! !

!PEGConsumingNotTerminal methodsFor: 'matching' stamp: 'ToonVerwaest 8/20/2010 11:46'!
omitMatch: input
	char = input peek ifTrue: [ ^ false ].
	input forward.
	^ true! !

!PEGConsumingNotTerminal methodsFor: 'matching' stamp: 'KenD 8/25/2022 15:53:03'!
parseOn: input
	| next |
	next := input peek.
	next isNil ifTrue: [ ^ false ].
	char = next ifTrue: [ ^ false ].
	input push: next "char @@KenD@@".
	input forward.
	^ true! !

!PEGConsumingNotTerminal methodsFor: 'logical operations' stamp: 'ToonVerwaest 7/29/2010 11:02'!
strongTimes
	^ PEGConsumingNotTerminalStrongTimes on: char! !

!PEGConsumingNotTerminalStrongTimes methodsFor: 'matching' stamp: 'ToonVerwaest 7/29/2010 09:34'!
omitMatch: input
	input scanUntil: char.
	^ true! !

!PEGConsumingNotTerminalStrongTimes methodsFor: 'matching' stamp: 'ToonVerwaest 7/30/2010 22:08'!
parseOn: input
	input pushUntil: char.
	^ true! !

!PEGOmit methodsFor: 'logical operations' stamp: 'ToonVerwaest 7/27/2010 13:16'!
not
	^ parser not! !

!PEGOmit methodsFor: 'omitting' stamp: 'ToonVerwaest 7/27/2010 14:21'!
omit! !

!PEGOmit methodsFor: 'matching' stamp: 'ToonVerwaest 7/27/2010 13:14'!
omitMatch: input
	^ parser omitMatch: input! !

!PEGOmit methodsFor: 'matching' stamp: 'ToonVerwaest 7/28/2010 00:38'!
parseOn: input
	^ parser omitMatch: input! !

!PEGOmit methodsFor: 'accessing' stamp: 'ToonVerwaest 7/27/2010 13:14'!
parser: aParser 
	parser := aParser! !

!PEGOmit methodsFor: 'optimizing' stamp: 'ToonVerwaest 7/27/2010 14:21'!
withoutOmit
	^ parser! !

!PEGOmit class methodsFor: 'as yet unclassified' stamp: 'ToonVerwaest 7/27/2010 13:14'!
on: parser
	^ self new parser: parser! !

!PEGOptionalExpression methodsFor: 'initialization' stamp: 'ToonVerwaest 7/28/2010 01:02'!
initialize: expression
	child := expression asChildParser.! !

!PEGOptionalExpression methodsFor: 'matching' stamp: 'ToonVerwaest 7/29/2010 12:14'!
omitMatch: input
	child omitMatch: input.
	^ true! !

!PEGOptionalExpression methodsFor: 'matching' stamp: 'ToonVerwaest 3/25/2010 12:44'!
optional
	"^ self"

	! !

!PEGOptionalExpression methodsFor: 'matching' stamp: 'ToonVerwaest 7/29/2010 23:15'!
parseOn: input
	(child parseOn: input) ifFalse: [
		input stack push: PEGFailedOptionalResult.
		^ true ].
	input stack poke: (PEGSucceededOptionalResult on: (input stack peek)).
	^ true! !

!PEGOrderedChoiceExpression methodsFor: 'adding' stamp: 'ToonVerwaest 9/30/2010 15:08'!
<= child
	| new convert |
	(children isKindOf: Array)
		ifTrue: [
			children := children asOrderedCollection.
			convert := true ].
	new := child asParser.
	new class = self class
		ifTrue: [ new children do: [ :c | children add: c asChildParser ] ]
		ifFalse: [ children add: new asChildParser ].
	convert isNil ifFalse: [ children := children asArray ]! !

!PEGOrderedChoiceExpression methodsFor: 'converting' stamp: 'ToonVerwaest 7/27/2010 11:31'!
asChildParser
	children := children asArray! !

!PEGOrderedChoiceExpression methodsFor: 'accessing' stamp: 'ToonVerwaest 6/24/2010 13:30'!
children
	^ children! !

!PEGOrderedChoiceExpression methodsFor: 'initialization' stamp: 'ToonVerwaest 7/31/2010 09:56'!
initialize
	children := OrderedCollection new! !

!PEGOrderedChoiceExpression methodsFor: 'matching' stamp: 'ToonVerwaest 7/29/2010 10:59'!
omitMatch: input
	1 to: children size do: [ :index |
		((children at: index) omitMatch: input) ifTrue: [ ^ true ] ].
	^ false! !

!PEGOrderedChoiceExpression methodsFor: 'matching' stamp: 'ToonVerwaest 7/29/2010 11:51'!
parseOn: input
	1 to: children size do: [ :index |
		((children at: index) parseOn: input) ifTrue: [ ^ true ] ].
	^ false! !

!PEGParser methodsFor: 'adding' stamp: 'ToonVerwaest 7/31/2010 09:39'!
<= theExpression
	expression := theExpression asChildParser! !

!PEGParser methodsFor: 'adding' stamp: 'ToonVerwaest 3/25/2010 12:44'!
separator: aSeparator
	separator := aSeparator! !

!PEGParser methodsFor: 'accessing' stamp: 'ToonVerwaest 8/18/2010 14:32'!
expression
	^ expression! !

!PEGParser methodsFor: 'accessing' stamp: 'ToonVerwaest 7/27/2010 13:56'!
name: aName
	name := aName! !

!PEGParser methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:44'!
semantics: aBlock
	semantics := aBlock! !

!PEGParser methodsFor: 'initialization' stamp: 'ToonVerwaest 7/31/2010 09:26'!
initialize
	separator := self class separator.
	semantics := nil.! !

!PEGParser methodsFor: 'converting' stamp: 'ToonVerwaest 8/18/2010 14:33'!
memo
	^ PEGMemo on: self! !

!PEGParser methodsFor: 'matching' stamp: 'ToonVerwaest 6/26/2010 11:57'!
omitMatch: input
	^ expression omitMatch: input! !

!PEGParser methodsFor: 'matching' stamp: 'ToonVerwaest 7/31/2010 09:27'!
parseOn: input
	(expression parseOn: input) ifFalse: [ ^ false ].
	semantics ifNil: [ ^ true ].
	input stack poke: (semantics value: input stack peek).
	^ true! !

!PEGParser methodsFor: 'api' stamp: 'ToonVerwaest 5/16/2011 13:49'!
parse: input
	^ self match: (PEGStringScanner on: input separator: separator)! !

!PEGParser class methodsFor: 'instance creation' stamp: 'ToonVerwaest 8/19/2010 12:41'!
basicSeparator
	" separator := nil "
	^ separator ifNil: [ separator := self basicSeparators strongTimes omit ]! !

!PEGParser class methodsFor: 'instance creation' stamp: 'ToonVerwaest 8/19/2010 12:50'!
basicSeparators
	" separator := nil. separators := nil "
	^ separators ifNil: [
		separators := ((String new: 4)
							at: 1 put: Character space;
							at: 2 put: Character cr;
							at: 3 put: Character lf;
							at: 4 put: Character tab;
							yourself) asPEGChoice ]! !

!PEGParser class methodsFor: 'instance creation' stamp: 'ToonVerwaest 3/25/2010 12:44'!
named: theName
	^ self new name: theName! !

!PEGParser class methodsFor: 'instance creation' stamp: 'ToonVerwaest 3/25/2010 12:44'!
named: theName parsing: expression
	^ (self named: theName) <= expression! !

!PEGParser class methodsFor: 'instance creation' stamp: 'ToonVerwaest 3/25/2010 12:44'!
named: theName parsing: expression semantics: semantics
	^ (self named: theName parsing: expression) semantics: semantics! !

!PEGParser class methodsFor: 'instance creation' stamp: 'ToonVerwaest 3/25/2010 12:44'!
separator
	^ PEGParser basicSeparator! !

!PEGParser class methodsFor: 'instance creation' stamp: 'ToonVerwaest 3/25/2010 12:44'!
separators
	^ PEGParser basicSeparators! !

!PEGParser class methodsFor: 'as yet unclassified' stamp: 'ToonVerwaest 6/26/2010 11:57'!
reset
	separator := nil.
	separators := nil.! !

!PEGMultiParser methodsFor: 'initialization' stamp: 'ToonVerwaest 8/19/2010 13:23'!
initialize
	separator := self class separator.
	semantics := [ :result | ]! !

!PEGMultiParser methodsFor: 'matching' stamp: 'ToonVerwaest 8/19/2010 12:06'!
parseOn: input
	| outputPosition result stack |
	stack := input stack.
	outputPosition := stack position.
	(expression parseOn: input) ifFalse: [ ^ false ].
	result := semantics value: (stack mark: outputPosition).
	stack zapTo: outputPosition + 1.
	stack poke: result.
	^ true! !

!PEGRange methodsFor: 'matching' stamp: 'ToonVerwaest 7/30/2010 23:19'!
omitMatch: input
	| char charValue |
	char := input peek.
	char ifNil: [ ^ false ].
	charValue := char asInteger.
	(charValue < start or: [ charValue > stop ]) ifTrue: [ ^ false ].
	input forward.
	^ true! !

!PEGRange methodsFor: 'matching' stamp: 'ToonVerwaest 7/29/2010 10:57'!
parseOn: input
	| char charValue |
	char := input peek.
	char ifNil: [ ^ false ].
	charValue := char asInteger.
	(charValue < start or: [ charValue > stop ]) ifTrue: [ ^ false ].
	input stack push: char.
	input forward.
	^ true! !

!PEGRange methodsFor: 'printing' stamp: 'ToonVerwaest 9/7/2010 15:59'!
printOn: stream
	stream << $[ << start asCharacter << $- << stop asCharacter << $]! !

!PEGRange methodsFor: 'accessing' stamp: 'ToonVerwaest 7/27/2010 17:08'!
start: int
	start := int asInteger! !

!PEGRange methodsFor: 'accessing' stamp: 'ToonVerwaest 7/27/2010 17:08'!
stop: int
	stop := int asInteger! !

!PEGRange class methodsFor: 'initialize-release' stamp: 'ToonVerwaest 3/25/2010 12:44'!
between: start and: stop
	^ (self new)
		start: (start min: stop);
		stop: (start max: stop)! !

!PEGSequenceExpression methodsFor: 'adding' stamp: 'ToonVerwaest 9/30/2010 15:08'!
<& child
	| new |
	new := child asParser.
	new class = self class
		ifTrue: [ new children do: [ :c | children add: c asChildParser ] ]
		ifFalse: [ children add: new asChildParser ].! !

!PEGSequenceExpression methodsFor: 'converting' stamp: 'ToonVerwaest 7/27/2010 11:50'!
asChildParser
	children := children asArray! !

!PEGSequenceExpression methodsFor: 'accessing' stamp: 'ToonVerwaest 6/24/2010 13:30'!
children
	^ children! !

!PEGSequenceExpression methodsFor: 'initialization' stamp: 'ToonVerwaest 7/31/2010 09:56'!
initialize
	children := OrderedCollection new! !

!PEGSequenceExpression methodsFor: 'matching' stamp: 'ToonVerwaest 7/30/2010 10:08'!
omitMatch: input
	| position |
	position := input position.
	((children at: 1) omitMatch: input) ifFalse: [ ^ false ].
	2 to: children size do: [ :index | 
		input skipWhitespace.
		((children at: index) omitMatch: input)
			ifFalse: [
				input position: position.
				^ false ]].
	^ true! !

!PEGSequenceExpression methodsFor: 'matching' stamp: 'ToonVerwaest 7/30/2010 10:08'!
parseOn: input
	| position outputPosition |
	position := input position.
	outputPosition := input stack position.
	((children at: 1) parseOn: input) ifFalse: [ ^ false ].
	2 to: children size do: [ :index | 
		input skipWhitespace.
		((children at: index) parseOn: input)
			ifFalse: [
				input position: position.
				input stack zapTo: outputPosition.
				^ false ] ].
	^ true! !

!PEGStrongSequenceExpression methodsFor: 'matching' stamp: 'ToonVerwaest 7/29/2010 13:41'!
omitMatch: input
	| position |
	position := input position.
	((children at: 1) omitMatch: input) ifFalse: [ ^ false ].
	2 to: children size do: [ :index |
		((children at: index) omitMatch: input) ifFalse: [
			 input position: position.
			^ false ]].
	^ true! !

!PEGStrongSequenceExpression methodsFor: 'matching' stamp: 'ToonVerwaest 7/29/2010 13:42'!
parseOn: input
	| position outputPosition |
	outputPosition := input stack position.
	position := input position.
	((children at: 1) parseOn: input) ifFalse: [ ^ false ].
	2 to: children size do: [ :index |
		((children at: index) parseOn: input) ifFalse: [
			input position: position.
			input stack zapTo: outputPosition.
			^ false ] ].
	^ true! !

!PEGTerminal methodsFor: 'initialization' stamp: 'CamilloBruni 8/23/2010 17:02'!
initialize: aTerminal
	terminal := aTerminal.! !

!PEGTerminal methodsFor: 'matching' stamp: 'ToonVerwaest 8/20/2010 11:38'!
omitMatch: input
	^ input scan: terminal! !

!PEGTerminal methodsFor: 'matching' stamp: 'ToonVerwaest 8/20/2010 11:38'!
parseOn: input
	^ input scanPush: terminal! !

!PEGCharacterTerminal methodsFor: 'initialization' stamp: 'ToonVerwaest 8/20/2010 11:38'!
consume
	^ PEGPushCharacterTerminal on: terminal! !

!PEGCharacterTerminal methodsFor: 'initialization' stamp: 'KenD 8/21/2022 14:22:14'!
initialize: aCharacter

	terminal := aCharacter! !

!PEGCharacterTerminal methodsFor: 'initialization' stamp: 'ToonVerwaest 8/20/2010 11:38'!
not
	^ PEGNotTerminal on: terminal asCharacter! !

!PEGCharacterTerminal methodsFor: 'matching' stamp: 'ToonVerwaest 8/20/2010 11:38'!
omitMatch: input
	^ input scanCharacter: terminal! !

!PEGCharacterTerminal methodsFor: 'matching' stamp: 'ToonVerwaest 8/20/2010 11:38'!
parseOn: input
	^ input scanCharacter: terminal! !

!PEGPushCharacterTerminal methodsFor: 'matching' stamp: 'ToonVerwaest 8/20/2010 11:38'!
parseOn: input
	^ input scanPushCharacter: terminal! !

!PEGTerminalChoice methodsFor: 'initialization' stamp: 'ToonVerwaest 7/28/2010 17:45'!
not
	self halt! !

!PEGTerminalChoice methodsFor: 'matching' stamp: 'ToonVerwaest 8/20/2010 11:38'!
omitMatch: input
	(terminal indexOf: input peek) = 0 ifTrue: [ ^ false ].
	input forward.
	^ true! !

!PEGTerminalChoice methodsFor: 'matching' stamp: 'ToonVerwaest 8/20/2010 11:38'!
parseOn: input
	| char |
	(terminal indexOf: (char := input peek)) = 0 ifTrue: [ ^ false ].
	input stack push: char.
	input forward.
	^ true! !

!PEGTerminalChoice methodsFor: 'logical operations' stamp: 'ToonVerwaest 7/29/2010 09:09'!
strongPlus
	^ PEGStrongOneOrMoreExpression on: self! !

!PEGTerminalChoice methodsFor: 'logical operations' stamp: 'ToonVerwaest 8/20/2010 11:38'!
strongTimes
	^ PEGTerminalChoiceStrongTimes on: terminal! !

!PEGTerminalChoiceStrongTimes methodsFor: 'matching' stamp: 'ToonVerwaest 8/20/2010 11:38'!
omitMatch: input
	input scanAllIn: terminal.
	^ true! !

!PEGTerminalChoiceStrongTimes methodsFor: 'matching' stamp: 'ToonVerwaest 8/20/2010 11:38'!
parseOn: input
	input pushAllIn: terminal.
	^ true! !

!PEGZeroOrMoreExpression methodsFor: 'accessing' stamp: 'ToonVerwaest 6/24/2010 13:30'!
child
	^ child! !

!PEGZeroOrMoreExpression methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:44'!
optional
	" ^ self since we are zero or more, thus already optional."

	! !

!PEGZeroOrMoreExpression methodsFor: 'initialization' stamp: 'ToonVerwaest 7/28/2010 01:03'!
initialize: expression
	child := expression asChildParser! !

!PEGZeroOrMoreExpression methodsFor: 'matching' stamp: 'ToonVerwaest 7/30/2010 23:22'!
omitMatch: input
	[ input omitSkipWhitespace.
	child omitMatch: input ] whileTrue.
	^ true! !

!PEGZeroOrMoreExpression methodsFor: 'matching' stamp: 'ToonVerwaest 7/29/2010 11:58'!
parseOn: input
	[ input skipWhitespace.
	child parseOn: input ] whileTrue.
	^ true! !

!PEGOneOrMoreExpression methodsFor: 'matching' stamp: 'ToonVerwaest 7/30/2010 23:21'!
omitMatch: input
	(child omitMatch: input) ifFalse: [ ^ false ].
	[ input omitSkipWhitespace.
	child omitMatch: input ] whileTrue.
	^ true! !

!PEGOneOrMoreExpression methodsFor: 'matching' stamp: 'ToonVerwaest 7/30/2010 23:23'!
parseOn: input
	(child parseOn: input) ifFalse: [ ^ false ].
	[ input skipWhitespace.
	child parseOn: input ] whileTrue.
	^ true! !

!PEGStrongZeroOrMoreExpression methodsFor: 'matching' stamp: 'ToonVerwaest 7/29/2010 10:51'!
omitMatch: input
	[ child omitMatch: input ] whileTrue.
	^ true! !

!PEGStrongZeroOrMoreExpression methodsFor: 'matching' stamp: 'ToonVerwaest 7/30/2010 15:39'!
parseOn: input
	[ (child parseOn: input) ] whileTrue.
	^ true! !

!PEGStrongOneOrMoreExpression methodsFor: 'matching' stamp: 'ToonVerwaest 7/30/2010 23:22'!
omitMatch: input
	(child omitMatch: input) ifFalse: [ ^ false ].
	[ child omitMatch: input ] whileTrue.
	^ true! !

!PEGStrongOneOrMoreExpression methodsFor: 'matching' stamp: 'ToonVerwaest 7/30/2010 23:22'!
parseOn: input
	(child parseOn: input) ifFalse: [ ^ false ].
	[ child parseOn: input ] whileTrue.
	^ true! !

!PEGOptionalResult methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:44'!
resultIfFailed: alternative
	self subclassResponsibility! !

!PEGFailedOptionalResult class methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:44'!
ifMatched: block
	! !

!PEGFailedOptionalResult class methodsFor: 'accessing' stamp: 'ToonVerwaest 6/25/2010 18:16'!
ifMatched: block ifFailed: alternative
	^ alternative value! !

!PEGFailedOptionalResult class methodsFor: 'accessing' stamp: 'CamilloBruni 6/23/2010 21:04'!
resultIfFailed: alternative
	^ alternative value! !

!PEGFailedOptionalResult class methodsFor: 'instance creation' stamp: 'ToonVerwaest 3/25/2010 12:44'!
new
	" never create instances. "

	! !

!PEGSucceededOptionalResult methodsFor: 'accessing' stamp: 'ToonVerwaest 6/25/2010 22:19'!
ifMatched: block
	^ block value: result! !

!PEGSucceededOptionalResult methodsFor: 'accessing' stamp: 'ToonVerwaest 6/25/2010 23:01'!
ifMatched: block ifFailed: alternative
	^ block value: result! !

!PEGSucceededOptionalResult methodsFor: 'accessing' stamp: 'CamilloBruni 6/23/2010 21:07'!
result
	^ result! !

!PEGSucceededOptionalResult methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:44'!
result: newResult
	result := newResult! !

!PEGSucceededOptionalResult methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:44'!
resultIfFailed: alternative
	^ result! !

!PEGSucceededOptionalResult class methodsFor: 'instance creation' stamp: 'ToonVerwaest 5/6/2011 22:30'!
on: aResult
	^ self new result: aResult! !

!PEGStack methodsFor: 'accessing' stamp: 'ToonVerwaest 8/18/2010 20:08'!
add: value
	self push: value! !

!PEGStack methodsFor: 'accessing' stamp: 'ToonVerwaest 6/25/2010 23:55'!
at: index
	^ array at: mark + index! !

!PEGStack methodsFor: 'accessing' stamp: 'ToonVerwaest 6/25/2010 23:58'!
at: index put: value
	array at: mark + index put: value! !

!PEGStack methodsFor: 'accessing' stamp: 'ToonVerwaest 6/26/2010 00:09'!
first
	^ array at: mark + 1! !

!PEGStack methodsFor: 'accessing' stamp: 'ToonVerwaest 7/27/2010 15:44'!
last
	position > 0 ifFalse: [ self stackUnderflow ].
	^ array at: position! !

!PEGStack methodsFor: 'accessing' stamp: 'ToonVerwaest 6/25/2010 23:36'!
position
	^ position! !

!PEGStack methodsFor: 'accessing' stamp: 'ToonVerwaest 6/26/2010 00:29'!
second
	^ array at: mark + 2! !

!PEGStack methodsFor: 'accessing' stamp: 'ToonVerwaest 6/25/2010 23:53'!
size
	^ position - mark! !

!PEGStack methodsFor: 'converting' stamp: 'ToonVerwaest 7/29/2010 12:43'!
asArray
	| newArray s |
	s := position - mark.
	newArray := Array new: s.
	1 to: s do: [ :i | newArray at: i put: (array at: i + mark)].
	^ newArray! !

!PEGStack methodsFor: 'converting' stamp: 'ToonVerwaest 7/29/2010 12:44'!
asOrderedCollection
	| collection s |
	s := position - mark.
	collection := OrderedCollection new: s.
	1 to: s do: [ :i | collection add: (array at: i + mark) ].
	^ collection! !

!PEGStack methodsFor: 'converting' stamp: 'ToonVerwaest 7/29/2010 12:43'!
asString
	| newArray s |
	s := position - mark.
	newArray := String new: s.
	1 to: s do: [ :i | newArray at: i put: (array at: i + mark)].
	^ newArray! !

!PEGStack methodsFor: 'converting' stamp: 'ToonVerwaest 9/30/2010 16:22'!
asSymbol
	^ self asString asSymbol! !

!PEGStack methodsFor: 'enumerating' stamp: 'ToonVerwaest 6/26/2010 00:29'!
collect: aBlock 
	| newCollection |
	newCollection := Array new: (self size).
	mark + 1 to: position do: [ :i | newCollection at: (i - mark) put: (aBlock value: (array at: i)) ].
	^ newCollection! !

!PEGStack methodsFor: 'enumerating' stamp: 'ToonVerwaest 6/26/2010 00:09'!
do: block
	mark + 1 to: position do: [ :i | block value: (array at: i) ]! !

!PEGStack methodsFor: 'enumerating' stamp: 'ToonVerwaest 6/26/2010 00:24'!
inject: thisValue into: binaryBlock
	"Accumulate a running value associated with evaluating the argument, 
	binaryBlock, with the current value of the argument, thisValue, and the 
	receiver as block arguments. For instance, to sum the numeric elements 
	of a collection, aCollection inject: 0 into: [:subTotal :next | subTotal + 
	next]."

	| nextValue |
	nextValue := thisValue.
	self do: [ :each | nextValue := binaryBlock value: nextValue value: each ].
	^ nextValue! !

!PEGStack methodsFor: 'private' stamp: 'ToonVerwaest 8/19/2010 15:08'!
grow: addition
	| newArray |
	newArray := Array new: ((size * 2) max: (position + addition)).
	newArray replaceFrom: 1 to: size with: array startingAt: 1.
	array := newArray.
	size := newArray size.! !

!PEGStack methodsFor: 'initialization' stamp: 'ToonVerwaest 8/19/2010 15:18'!
initialize
	size := 128.
	array := Array new: size.
	position := 0! !

!PEGStack methodsFor: 'testing' stamp: 'ToonVerwaest 6/25/2010 23:46'!
isEmpty
	^ position = 0! !

!PEGStack methodsFor: 'testing' stamp: 'ToonVerwaest 9/30/2010 16:18'!
isOctetString
	<preventExport>
	^ true! !

!PEGStack methodsFor: 'stack operations' stamp: 'ToonVerwaest 6/26/2010 00:09'!
mark: m 
	mark := m! !

!PEGStack methodsFor: 'stack operations' stamp: 'ToonVerwaest 7/30/2010 23:26'!
peek
	^ array at: position! !

!PEGStack methodsFor: 'stack operations' stamp: 'ToonVerwaest 7/30/2010 23:26'!
poke: object
	array at: position put: object! !

!PEGStack methodsFor: 'stack operations' stamp: 'ToonVerwaest 7/30/2010 23:26'!
pop
	| result |
	result := array at: position.
	position := position - 1.
	^ result.! !

!PEGStack methodsFor: 'stack operations' stamp: 'ToonVerwaest 7/27/2010 17:30'!
push: o
	size < (position := position + 1) ifTrue: [ self grow: 1 ].
	array at: position put: o! !

!PEGStack methodsFor: 'stack operations' stamp: 'ToonVerwaest 8/19/2010 15:13'!
push: collection from: start to: end
	| amount |
	amount := end - start.
	(size < (position + amount)) ifTrue: [ self grow: amount ].
	1 to: amount do: [ :i | array at: position + i put: (collection at: start + i) ].
	position := position + amount.! !

!PEGStack methodsFor: 'stack operations' stamp: 'ToonVerwaest 7/30/2010 23:27'!
zap
	position := position - 1! !

!PEGStack methodsFor: 'stack operations' stamp: 'ToonVerwaest 6/25/2010 23:39'!
zapTo: index
	position := index! !

!PEGStack methodsFor: 'removing' stamp: 'ToonVerwaest 6/26/2010 02:23'!
removeFirst
	mark := mark + 1.
	^ array at: mark! !

!PEGStack methodsFor: 'removing' stamp: 'ToonVerwaest 6/26/2010 00:01'!
removeLast
	^ self pop! !

!PEGStack class methodsFor: 'exporting' stamp: 'ToonVerwaest 6/26/2010 01:46'!
pMethods
	<preventExport>
	^ #all! !

!Object methodsFor: '*PEG' stamp: 'KenD 8/25/2022 19:10:33'!
hasReturnExpression

	^false! !

!Character methodsFor: '*PEG' stamp: 'KenD 8/25/2022 14:42:46'!
asInteger

	^self codePoint ! !

!Character methodsFor: '*PEG' stamp: 'KenD 8/25/2022 16:56:42'!
asParser
	^ PEGPushCharacterTerminal on: self! !

!Character methodsFor: '*PEG' stamp: 'KenD 8/21/2022 14:28:24'!
max: other

	^self asciiValue max: other asciiValue ! !

!Character methodsFor: '*PEG' stamp: 'KenD 8/21/2022 14:28:15'!
min: other

	^self asciiValue min: other asciiValue ! !

!Character methodsFor: '*PEG' stamp: 'KenD 8/24/2022 16:46:33'!
putOn: aStream

	^aStream nextPut: self! !

!BlockClosure methodsFor: '*PEG' stamp: 'ToonVerwaest 9/30/2010 15:08'!
asParser
	^ PEGBlock on: self! !

!String methodsFor: '*PEG' stamp: 'ToonVerwaest 7/29/2010 23:17'!
asPEGChoice
	^ PEGTerminalChoice on: self.! !

!String methodsFor: '*PEG' stamp: 'KenD 8/21/2022 13:55:58'!
asPEGRange
	(self size = 3 and: [ (self at: 2) = $- ])
		ifFalse: [ self error: 'Cannot convert ' , self , ' to PEG range. Expected format: beginchar-endchar' ].
	^ PEGRange between: (self at: 1) asciiValue and: (self at: 3) asciiValue ! !

!String methodsFor: '*PEG' stamp: 'ToonVerwaest 9/30/2010 15:08'!
asParser
	self size = 1 ifTrue: [ ^ (self at: 1) asParser ].
	^ PEGTerminal on: self! !

!String methodsFor: '*PEG' stamp: 'ToonVerwaest 8/19/2010 16:58'!
contains: substring at: position
	| size |
	size := substring size.
	position + size > self size ifTrue: [ ^ false ].
	1 to: size do: [ :i | (self at: position + i) = (substring at: i) ifFalse: [ ^ false ]].
	^ true! !

!Symbol methodsFor: '*PEG' stamp: 'KenD 8/25/2022 19:40:39'!
value: item
	"For  Collection anySatisfy: #boolTest"
	^ item perform: self! !
