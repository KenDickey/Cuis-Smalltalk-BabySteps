'From Cuis 6.0 [latest update: #5096] on 4 April 2022 at 10:46:23 am'!
'Description STON implements serialization and materialization using the Smalltalk Object Notation format.

Ported from:
  https://github.com/svenvc/ston

-------------------------------------------------------
MIT License

Copyright (C) 2012 Sven Van Caekenberghe

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.'!
!provides: 'ExchangeFormat-STON' 1 7!
!requires: 'Cuis-Base' 60 5096 nil!
SystemOrganization addCategory: 'ExchangeFormat-STON'!


!classDefinition: #STONReaderError category: 'ExchangeFormat-STON'!
Error subclass: #STONReaderError
	instanceVariableNames: 'streamPosition'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ExchangeFormat-STON'!
!classDefinition: 'STONReaderError class' category: 'ExchangeFormat-STON'!
STONReaderError class
	instanceVariableNames: ''!

!classDefinition: #STONWriterError category: 'ExchangeFormat-STON'!
Error subclass: #STONWriterError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ExchangeFormat-STON'!
!classDefinition: 'STONWriterError class' category: 'ExchangeFormat-STON'!
STONWriterError class
	instanceVariableNames: ''!

!classDefinition: #STONFileReference category: 'ExchangeFormat-STON'!
FileEntry subclass: #STONFileReference
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ExchangeFormat-STON'!
!classDefinition: 'STONFileReference class' category: 'ExchangeFormat-STON'!
STONFileReference class
	instanceVariableNames: ''!

!classDefinition: #STON category: 'ExchangeFormat-STON'!
Object subclass: #STON
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ExchangeFormat-STON'!
!classDefinition: 'STON class' category: 'ExchangeFormat-STON'!
STON class
	instanceVariableNames: ''!

!classDefinition: #STONCStyleCommentsSkipStream category: 'ExchangeFormat-STON'!
Object subclass: #STONCStyleCommentsSkipStream
	instanceVariableNames: 'stream peekedCharacter delimiter escape'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ExchangeFormat-STON'!
!classDefinition: 'STONCStyleCommentsSkipStream class' category: 'ExchangeFormat-STON'!
STONCStyleCommentsSkipStream class
	instanceVariableNames: ''!

!classDefinition: #STONJSON category: 'ExchangeFormat-STON'!
Object subclass: #STONJSON
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ExchangeFormat-STON'!
!classDefinition: 'STONJSON class' category: 'ExchangeFormat-STON'!
STONJSON class
	instanceVariableNames: ''!

!classDefinition: #STONReader category: 'ExchangeFormat-STON'!
Object subclass: #STONReader
	instanceVariableNames: 'readStream objects classes unresolvedReferences stringStream acceptUnknownClasses newLine convertNewLines'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ExchangeFormat-STON'!
!classDefinition: 'STONReader class' category: 'ExchangeFormat-STON'!
STONReader class
	instanceVariableNames: ''!

!classDefinition: #STONReference category: 'ExchangeFormat-STON'!
Object subclass: #STONReference
	instanceVariableNames: 'index'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ExchangeFormat-STON'!
!classDefinition: 'STONReference class' category: 'ExchangeFormat-STON'!
STONReference class
	instanceVariableNames: ''!

!classDefinition: #STONStreamWriter category: 'ExchangeFormat-STON'!
Object subclass: #STONStreamWriter
	instanceVariableNames: 'writer first'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ExchangeFormat-STON'!
!classDefinition: 'STONStreamWriter class' category: 'ExchangeFormat-STON'!
STONStreamWriter class
	instanceVariableNames: ''!

!classDefinition: #STONWriter category: 'ExchangeFormat-STON'!
Object subclass: #STONWriter
	instanceVariableNames: 'writeStream prettyPrint stonCharacters newLine asciiOnly jsonMode keepNewLines referencePolicy level objects'
	classVariableNames: 'STONCharacters STONSimpleSymbolCharacters'
	poolDictionaries: ''
	category: 'ExchangeFormat-STON'!
!classDefinition: 'STONWriter class' category: 'ExchangeFormat-STON'!
STONWriter class
	instanceVariableNames: ''!


!STONReaderError commentStamp: '<historical>' prior: 0!
STONReaderError is the error/exception signalled by STONReader when illegal/incorrect input is seen. 
!

!STONWriterError commentStamp: '<historical>' prior: 0!
STONWriterError is the error/exception signalled by STONWriter when illegal/incorrect input is seen. !

!STONFileReference commentStamp: '<historical>' prior: 0!
I am STONFileReference, I am an implementation artifact to help reading objects with class tag equal to my #stonName.

I am a FileEntry.!

!STON commentStamp: '<historical>' prior: 0!
STON implements serialization and materialization using the Smalltalk Object Notation format.

I am a class side facade offering a high level API to write and read objects using STON.

U s a g e

Basic operations

  #toString:
  #fromString:

  STON toString: DisplayScreen boundingBox.
  STON fromString:  'Rectangle{#origin:Point[0,0],#corner:Point[1920,1030]}'.

  STON toString: { DateAndTime now. Float pi. 1 to: 10 by: 2. 3 days }.
  STON fromString:  '[DateAndTime[''2016-03-15T13:57:59.462422+01:00''],3.141592653589793,Interval{#start:1,#stop:10,#step:2},Duration{#nanos:0,#seconds:259200}]'

You can also read from or write to streams

  #fromStream:
  #put:onStream:

There is also the option to do pretty printing (indenting, multi line output) 

  #toStringPretty:
  #put:onStreamPretty:

STON is more or less a superset of JSON and is backwards compatible with JSON while parsing, and can be compatible with it while writing. The important differences (and the whole reason why STON exists in the first place) are 

  - class information (except for lists (Array) and maps (Dictionary))
  - proper handling of shared and circular references
  - more Smalltalk like syntax (Symbols with #, single quoted Strings, nil instead of null)
  - more defined special types (Date, Time, DataAndTime, ByteArray, Point)

Parsing JSON is done using #fromString: or #fromStream: with the results being composed of Arrays and Dictionaries.

Writing objects as JSON is done using: 

  #toJsonString[Pretty]:
  #put:asJsonOnStream[Pretty]:

Note that you can only write Arrays and Dictionaries !!

For a much more sophisticated JSON parser/writer implementation, have a look at NeoJSON.

Like JSON, STON does not allow for comments. However, a preprocessor option can skip C style comments before parsing.

I also define some constants used in the implementation: the class used as list, map and association, as well as the optional class name key (used when reading objects using an unknown class).


I m p l e m e n t a t i o n

The 2 key methods are

  #stonOn:
  #fromSton:

which work together with STONWriter and STONReader; read their class comments for all configuration options (you can use the #reader and #writer methods to avoid referring to these classes directly).

Several methods are used to support and/or control the implementation

  #stonName - defines the external name for a class
  #stonAllInstVarNames - defines which instance variable to write
  #stonContainSubObjects - shortcut looking into objects for subobjects
  #stonShouldWriteNilInstVars - option to skip writing nil valued instance variables


S y n t a x

	value
	  primitive-value
	  object-value
	  reference
	  nil
	primitive-value
	  number
	  true
	  false
	  symbol
	  string
	object-value
	  object
	  map
	  list
	object
	  classname map
	  classname list
	reference
	  @ int-index-previous-object-value
	map
	  {}
	  { members }
	members
	  pair
	  pair , members
	pair
	  string : value
	  symbol : value
	  number : value
	list
	  []
	  [ elements ]
	elements
	  value 
	  value , elements
	string
	  ''
	  ' chars '
	chars
	  char
	  char chars
	char
	  any-printable-ASCII-character-
	    except-'-"-or-\
	  \'
	  \"
	  \\
	  \/
	  \b
	  \f
	  \n
	  \r
	  \t
	  \u four-hex-digits
	symbol
	  # chars-limited
	  # ' chars '
	chars-limited
	  char-limited
	  char-limited chars-limited
	char-limited
	  a-z A-Z 0-9 - _ . /
	classname
	  uppercase-alpha-char alphanumeric-char
	number
	  int
	  int denominator
	  int denominator scale
	  int frac
	  int exp
	  int frac exp
	int
	  digit
	  digit1-9 digits 
	  - digit
	  - digit1-9 digits
	denominator
	  / digits
	scale
	  s digits
	frac
	  . digits
	exp
	  e digits
	digits
	  digit
	  digit digits
	e
	  e
	  e+
	  e-
	  E
	  E+
	  E-
!

!STONCStyleCommentsSkipStream commentStamp: '<historical>' prior: 0!
I am STONCStyleCommentsSkipStream, a character ReadStream wrapping another character ReadStream. I skip C style comments, much like a classic C preprocessor.

C, C++, Java, JavaScript style comments are either the multiline

	/* a comment */
	
or the single line, up to end of line

	// a comment 
	
I deal with any end of line convention. Multiline comments cannot be nested. 

You create me #on: another character ReadStream. 

Here is an example:

	(STONCStyleCommentsSkipStream on: 'abc/*comment*/def' readStream) upToEnd.
	
Comments inside single and double quote delimited strings are ignored. Backslash escapes for single and double quotes inside strings are honored.
!

!STONJSON commentStamp: '<historical>' prior: 0!
I am STONJSON, a class side facade to use STON as a simple JSON parser/writer.

STON is more or less a superset of JSON and is backwards compatible with JSON while parsing, and can be compatible with it while writing. The important differences (and the whole reason why STON exists in the first place) are 

  - class information (except for lists (Array) and maps (Dictionary))
  - proper handling of shared and circular references
  - more Smalltalk like syntax (Symbols with #, single quoted Strings, nil instead of null)
  - more defined special types (Date, Time, DataAndTime, ByteArray, Point)

Parsing JSON is done using

  #fromString:
  #fromStream: 

with the results being composed of Arrays and Dictionaries.

Writing objects as JSON is done using

  #toString[Pretty]:
  #put:onStream[Pretty]:

Note that you can only write Arrays and Dictionaries !! Shared and circular references will be noted and signalled using an exception.

E x a m p l e s

  STONJSON toString: { 1. -1. Float pi. true. 'JSON' }.
  STONJSON fromString: '[1,-1,3.141592653589793,true,"JSON"]'.

  STONJSON toStringPretty: { #foo->1. #bar->2 } asDictionary.
  STONJSON fromString: '{"foo":1,"bar":2,"sub":{"a":true,"b":false},"flags":[1,8,32]}'.
 
For a much more sophisticated JSON parser/writer implementation, have a look at NeoJSON.!

!STONReader commentStamp: '<historical>' prior: 0!
STONReader materializes objects using the Smalltalk Object Notation format.

This parser is backwards compatible with standard JSON.

Customization options are:

- acceptUnknownClasses <Boolean> default is false
	if true, unknown class names are allowed, the standard #mapClass (Dictionary) is instanciated and the class name is added under #classNameKey (#className)
	if false, unknown class names result in a NotFound error
- convertNewLines <Boolean> default is false
	if true, any unescaped EOL sequence CR, LF or CRLF inside strings or symbols is read and converted as the chosen EOL sequence
	if false, CR, LF and CRLF are read unmodified
- newLine <String> default is String cr
	sequence to use as EOL!

!STONReference commentStamp: '<historical>' prior: 0!
STONReference holds a forward reference to another object during materialization.
!

!STONStreamWriter commentStamp: '<historical>' prior: 0!
STONStreamWriter helps in streaming writing STON representations.
This is an abstract class.!

!STONWriter commentStamp: '<historical>' prior: 0!
STONWriter serializes objects using the Smalltalk Object Notation format. 

Customization options are:

- prettyPrint <Boolean> default is false
	if true, produce pretty printed output
- newLine <String> default is String newLineString
- asciiOnly <Boolean> default is false
   if true, use \u escapes for all non-ASCII characters
   most common control characters are still escaped
- jsonMode <Boolean> default is false
	if true, the follow changes occur
	- strings are delimited with double quotes
	- nil is encoded as null
	- symbols are treated as strings
	- only STON listClass and STON mapClass instances are allowed as composite objects
	it is wise to also use either #error or #ignore as referencePolicy to avoid references
- referencePolicy <#normal|#ignore|#error> default is #normal
	if #normal, track and count object references and use references to implement sharing and break cycles
	if #error, track object references and signal STONWriterError when a shared reference is encountered
	if #ignore, don't track object references which might loop forever on cycles
 - keepNewLines <Boolean> default is false
	if true, any newline sequence CR, LF or CRLF inside strings or symbols will not be escaped 
	but will be written as the newline EOF convention
	
Note that in default STON mode I only use the following named character escapes: \b \t \n \f \' and \\ while in JSON mode \' is replaced by \"
!

!STONReference methodsFor: 'printing' stamp: 'KenD 4/3/2022 18:38:05'!
printOn: stream

	super printOn: stream.
	stream nextPut: $(; print: index; nextPut: $)! !

!STONReaderError methodsFor: 'accessing' stamp: 'KenD 4/3/2022 18:35:54'!
messageText

	self flag: #Formatting.
	^ streamPosition 
		ifNil: [ 
			super messageText ] 
		ifNotNil: [ :pos | 
			'At character <1P>: <2P>' 
			  expandMacrosWith: pos 
			  with: super messageText 
		]! !

!STONReaderError methodsFor: 'accessing' stamp: 'KenD 4/3/2022 18:34:23'!
streamPosition

	^ streamPosition! !

!STONReaderError methodsFor: 'accessing' stamp: 'KenD 4/3/2022 18:34:36'!
streamPosition: aNumber

	streamPosition := aNumber! !

!STONReaderError class methodsFor: 'instance creation' stamp: 'KenD 4/3/2022 18:33:42'!
signal: aString streamPosition: streamPosition 
	^ self new ::
		streamPosition: streamPosition;
		signal: aString;
		yourself! !

!STONFileReference class methodsFor: 'accessing' stamp: 'KenD 4/3/2022 16:50:28'!
stonName

	^ #FILE! !

!STONFileReference class methodsFor: 'instance creation' stamp: 'KenD 4/3/2022 16:49:52'!
fromSton: stonReader

	^ stonReader parseListSingleton asFileEntry! !

!STON class methodsFor: 'accessing' stamp: 'KenD 4/3/2022 16:13:28'!
associationClass

	^ Association! !

!STON class methodsFor: 'accessing' stamp: 'KenD 4/3/2022 16:13:34'!
classNameKey

	^ #className! !

!STON class methodsFor: 'accessing' stamp: 'KenD 4/3/2022 16:14:13'!
jsonWriter

	^ STONWriter new ::
			jsonMode: true;
			referencePolicy: #error;
			yourself! !

!STON class methodsFor: 'accessing' stamp: 'KenD 4/3/2022 16:13:49'!
listClass

	^ Array! !

!STON class methodsFor: 'accessing' stamp: 'KenD 4/3/2022 16:14:42'!
mapClass

	^ Dictionary! !

!STON class methodsFor: 'convenience' stamp: 'KenD 4/3/2022 16:16:42'!
put: object asJsonOnStream: stream

	(self jsonWriter on: stream) nextPut: object! !

!STON class methodsFor: 'convenience' stamp: 'KenD 4/3/2022 16:16:49'!
put: object asJsonOnStreamPretty: stream

	(self jsonWriter on: stream)
		prettyPrint: true; 
		nextPut: object! !

!STON class methodsFor: 'convenience' stamp: 'KenD 4/3/2022 16:16:58'!
put: object onStream: stream

	(self writer on: stream) nextPut: object! !

!STON class methodsFor: 'convenience' stamp: 'KenD 4/3/2022 16:17:05'!
put: object onStreamPretty: stream

	(self writer on: stream)
		prettyPrint: true; 
		nextPut: object! !

!STON class methodsFor: 'convenience' stamp: 'KenD 4/3/2022 16:17:13'!
toJsonString: object

	^ String streamContents: [ :stream |
		self put: object asJsonOnStream: stream ]! !

!STON class methodsFor: 'convenience' stamp: 'KenD 4/3/2022 16:17:18'!
toJsonStringPretty: object

	^ String streamContents: [ :stream |
		self put: object asJsonOnStreamPretty: stream ]! !

!STON class methodsFor: 'convenience' stamp: 'KenD 4/3/2022 16:17:24'!
toString: object

	^ String streamContents: [ :stream |
		self put: object onStream: stream ]! !

!STON class methodsFor: 'convenience' stamp: 'KenD 4/3/2022 16:17:30'!
toStringPretty: object

	^ String streamContents: [ :stream |
		self put: object onStreamPretty: stream ]! !

!STON class methodsFor: 'instance creation' stamp: 'KenD 4/3/2022 16:16:15'!
fromStream: readStream

	^ (self reader on: readStream) next! !

!STON class methodsFor: 'instance creation' stamp: 'KenD 4/3/2022 16:16:22'!
fromStreamWithComments: readStream

	^ (self reader 
		on: (STONCStyleCommentsSkipStream 
				on: readStream)) next! !

!STON class methodsFor: 'instance creation' stamp: 'KenD 4/3/2022 16:16:30'!
fromString: string

	^ self fromStream: string readStream! !

!STON class methodsFor: 'instance creation' stamp: 'KenD 4/3/2022 16:16:36'!
fromStringWithComments: string

	^ self fromStreamWithComments: string readStream! !

!STON class methodsFor: 'instance creation' stamp: 'KenD 4/3/2022 16:14:49'!
reader

	^ STONReader new! !

!STON class methodsFor: 'instance creation' stamp: 'KenD 4/3/2022 16:15:15'!
writer

	^ STONWriter new! !

!STONCStyleCommentsSkipStream methodsFor: 'accessing' stamp: 'KenD 4/3/2022 16:36:26'!
collectionSpecies

	^ String! !

!STONCStyleCommentsSkipStream methodsFor: 'accessing' stamp: 'KenD 4/3/2022 16:25:51'!
position

	^ stream position! !

!STONCStyleCommentsSkipStream methodsFor: 'accessing' stamp: 'KenD 4/3/2022 16:21:12'!
wrappedStream

	^ stream! !

!STONCStyleCommentsSkipStream methodsFor: 'initialization' stamp: 'KenD 4/3/2022 16:27:18'!
on: readStream

	stream := readStream! !

!STONCStyleCommentsSkipStream methodsFor: 'private' stamp: 'KenD 4/3/2022 16:36:11'!
consumeComment

	stream peek = $/ ifTrue: [ self consumeToEOL ].
	stream peek = $* ifTrue: [ self consumeToCommentEnd ]! !

!STONCStyleCommentsSkipStream methodsFor: 'private' stamp: 'KenD 4/3/2022 16:35:48'!
consumeToCommentEnd

	[ stream atEnd or: [ stream next = $* and: [ stream peekFor: $/ ] ] ] whileFalse! !

!STONCStyleCommentsSkipStream methodsFor: 'private' stamp: 'KenD 4/3/2022 16:35:29'!
consumeToEOL
	| eol char |
	eol := false.
	[ eol ] whileFalse: [ 
		char := stream next.
		(char isNil or: [ char = Character lf ])
			ifTrue: [ eol := true ]
			ifFalse: [ 
				char = Character cr
					ifTrue: [ 
						eol := true.
						stream peekFor: Character lf ] ] ]! !

!STONCStyleCommentsSkipStream methodsFor: 'private' stamp: 'KenD 4/3/2022 16:35:01'!
escape
	"Return true when we previously read a backslash escape inside a string, 
	so that the next string delimiter should be returned as is"
	
	^ escape = true! !

!STONCStyleCommentsSkipStream methodsFor: 'private' stamp: 'KenD 4/3/2022 16:34:50'!
handleStringDelimiter: char
	self escape
		ifTrue: [ escape := false ]
		ifFalse: [ 
			self insideString
				ifTrue: [ 
					char = delimiter
						ifTrue: [ delimiter := nil ] ]
				ifFalse: [ delimiter := char ] ].
	^ char! !

!STONCStyleCommentsSkipStream methodsFor: 'private' stamp: 'KenD 4/3/2022 16:34:35'!
insideString
	"Return true when we are currently inside a string where comments should be ignored."
	
	^ (delimiter = $') | (delimiter = $")! !

!STONCStyleCommentsSkipStream methodsFor: 'private' stamp: 'KenD 4/3/2022 16:28:04'!
nextNonCommentChar
	| char |
	char := stream next.
	(self insideString and: [ char = $\ ])
		ifTrue: [ 
			escape := true. 
			^ char ].
	(char = $') | (char = $")
		ifTrue: [ 
			^ self handleStringDelimiter: char ].
	escape := false. 
	^ (char = $/ and: [ self insideString not and: [ (stream peek = $/) | (stream peek = $*) ] ])
		ifTrue: [ 
			self consumeComment.
			stream next ]
		ifFalse: [ char ]! !

!STONCStyleCommentsSkipStream methodsFor: 'reading' stamp: 'KenD 4/3/2022 16:31:28'!
next
	^ peekedCharacter
		ifNil: [ 
			stream atEnd
				ifFalse: [ self nextNonCommentChar ] ]
		ifNotNil: [ | character |
			character := peekedCharacter.
			peekedCharacter := nil.
			character ]! !

!STONCStyleCommentsSkipStream methodsFor: 'reading' stamp: 'KenD 4/3/2022 16:32:06'!
next: requestedCount 
	"Read requestedCount elements into new collection and return it,
	 it could be that less elements were available"

	^ self 
		next: requestedCount 
		into: (self collectionSpecies new: requestedCount)! !

!STONCStyleCommentsSkipStream methodsFor: 'reading' stamp: 'KenD 4/3/2022 16:31:53'!
next: requestedCount into: collection
	"Read requestedCount elements into collection,
	returning a copy if less elements are available"
	
	^ self
		next: requestedCount
		into: collection
		startingAt: 1! !

!STONCStyleCommentsSkipStream methodsFor: 'reading' stamp: 'KenD 4/3/2022 16:31:42'!
next: requestedCount into: collection startingAt: offset
	"Read requestedCount elements into collection starting at offset,
	returning a copy if less elements are available"
	
	| readCount |
	readCount := self 
		readInto: collection 
		startingAt: offset 
		count: requestedCount.
	^ requestedCount = readCount
		ifTrue: [ collection ]
		ifFalse: [ collection copyFrom: 1 to: offset + readCount - 1 ]! !

!STONCStyleCommentsSkipStream methodsFor: 'reading' stamp: 'KenD 4/3/2022 16:31:01'!
nextLine
	"Read a CR, LF or CRLF terminated line, returning the contents of the line without the EOL. Return nil when the receiver is #atEnd."
	
	self atEnd ifTrue: [ ^ nil ].
	^ self collectionSpecies streamContents: [ :out | | eol char |
		eol := false.
		[ eol ] whileFalse: [ 
			char := self next.
			(char isNil or: [ char = Character lf ])
				ifTrue: [ eol := true ]
				ifFalse: [ 
					char = Character cr 
						ifTrue: [ eol := true. self peekFor: Character lf ]
						ifFalse: [  out nextPut: char ] ] ] ]! !

!STONCStyleCommentsSkipStream methodsFor: 'reading' stamp: 'KenD 4/3/2022 16:26:37'!
peek

	^ peekedCharacter
		ifNil: [
			stream atEnd
				ifFalse: [ 
					peekedCharacter := self nextNonCommentChar ] ]! !

!STONCStyleCommentsSkipStream methodsFor: 'reading' stamp: 'KenD 4/3/2022 16:26:10'!
peekFor: object

	^ self peek = object
		ifTrue: [ 
			self next.
			true ]
		ifFalse: [ false ]! !

!STONCStyleCommentsSkipStream methodsFor: 'reading' stamp: 'KenD 4/3/2022 16:25:30'!
readInto: collection startingAt: offset count: requestedCount 
	"Read count elements and place them in collection starting at offset.
	Return the number of elements actually read."
	
	^ peekedCharacter 
		ifNil: [
			0 to: requestedCount - 1 do: [ :count | | object |
				(object := self nextNonCommentChar) ifNil: [ ^ count ].  
				collection at: offset + count put: object ].
			^ requestedCount 
		]
		ifNotNil: [ 
			collection at: offset put: peekedCharacter.
			peekedCharacter := nil.
			(self 
				readInto: collection 
				startingAt: offset + 1
				count: requestedCount - 1) + 1 
		]
	! !

!STONCStyleCommentsSkipStream methodsFor: 'reading' stamp: 'KenD 4/3/2022 16:24:33'!
skip: count

	count timesRepeat: [ self next ]! !

!STONCStyleCommentsSkipStream methodsFor: 'reading' stamp: 'KenD 4/3/2022 16:24:17'!
upTo: anObject 	
	^ self collectionSpecies 
		streamContents: [ :out | | element |
			[ self atEnd or: [ (element := self next) = anObject ] 
			] whileFalse: [ out nextPut: element ] 
		]! !

!STONCStyleCommentsSkipStream methodsFor: 'reading' stamp: 'KenD 4/3/2022 16:22:09'!
upToEnd

	^ self collectionSpecies
		streamContents: [ :collectionStream | 
			[ self atEnd ] whileFalse: [ collectionStream nextPut: self next ]
		]! !

!STONCStyleCommentsSkipStream methodsFor: 'testing' stamp: 'KenD 4/3/2022 16:37:46'!
atEnd
	^ self peek isNil! !

!STONCStyleCommentsSkipStream methodsFor: 'testing' stamp: 'KenD 4/3/2022 16:32:40'!
isBinary

	^ false! !

!STONCStyleCommentsSkipStream methodsFor: 'other' stamp: 'KenD 4/3/2022 16:37:30'!
close
	stream close! !

!STONCStyleCommentsSkipStream class methodsFor: 'instance creation' stamp: 'KenD 4/3/2022 16:20:36'!
on: readStream

	^ self new
		on: readStream;
		yourself! !

!STONJSON class methodsFor: 'convenience' stamp: 'KenD 4/3/2022 18:29:06'!
fromStream: stream

	^ STON fromStream: stream! !

!STONJSON class methodsFor: 'convenience' stamp: 'KenD 4/3/2022 18:28:53'!
fromString: string

	^ STON fromString: string! !

!STONJSON class methodsFor: 'convenience' stamp: 'KenD 4/3/2022 18:28:34'!
put: object onStream: stream

	STON put: object asJsonOnStream: stream! !

!STONJSON class methodsFor: 'convenience' stamp: 'KenD 4/3/2022 18:28:21'!
put: object onStreamPretty: stream

	STON put: object asJsonOnStreamPretty: stream! !

!STONJSON class methodsFor: 'convenience' stamp: 'KenD 4/3/2022 18:28:08'!
toString: object

	^ STON toJsonString: object! !

!STONJSON class methodsFor: 'convenience' stamp: 'KenD 4/3/2022 18:27:55'!
toStringPretty: object

	^ STON toJsonStringPretty: object! !

!STONReader methodsFor: 'error handling' stamp: 'KenD 4/4/2022 10:41:47'!
error: aString
	| streamPosition |
	"Remain compatible with streams that don't understand #position"
	streamPosition := [ readStream position ]
		on: MessageNotUnderstood do: [ nil ].
	^ STONReaderError signal: aString streamPosition: streamPosition! !

!STONReader methodsFor: 'initialize-release' stamp: 'KenD 4/4/2022 10:45:41'!
acceptUnknownClasses: boolean

	acceptUnknownClasses := boolean! !

!STONReader methodsFor: 'initialize-release' stamp: 'KenD 4/4/2022 10:45:24'!
allowComplexMapKeys: boolean
	"This is a no-op, this used to be an option, but it is now always enabled"! !

!STONReader methodsFor: 'initialize-release' stamp: 'KenD 4/4/2022 10:43:07'!
close

	readStream ifNotNil: [
		readStream close.
		readStream := nil ]! !

!STONReader methodsFor: 'initialize-release' stamp: 'KenD 4/4/2022 10:42:22'!
convertNewLines: boolean
	"When true, any newline CR, LF or CRLF read unescaped inside strings or symbols 
	will be converted to the newline convention chosen, see #newLine:
	The default is false, not doing any conversions."
	
	convertNewLines := boolean! !

!STONReader methodsFor: 'initialize-release' stamp: 'KenD 4/4/2022 10:38:32'!
newLine: string
	"Set the newline convention to be used when converting newlines, see #convertNewLines"
	
	newLine := string! !

!STONReader methodsFor: 'initialize-release' stamp: 'KenD 4/4/2022 10:37:23'!
on: aReadStream

	readStream := aReadStream! !

!STONReader methodsFor: 'initialize-release' stamp: 'KenD 4/4/2022 10:37:04'!
optimizeForLargeStructures
	self class environment
		at: #FLLargeIdentityDictionary
		ifPresent: [ :identityDictionaryClass | 
			objects := identityDictionaryClass new ]! !

!STONReader methodsFor: 'initialize-release' stamp: 'KenD 4/4/2022 10:26:46'!
reset

	unresolvedReferences := 0.
	objects removeAll! !

!STONReader methodsFor: 'parsing' stamp: 'KenD 4/4/2022 10:35:13'!
parseEscapedCharacter
	| char |
	char := readStream next.
	(#($' $" $/ $\) includes: char)
		ifTrue: [ ^ char ].
	char = $b
		ifTrue: [ ^ Character backspace ].
	char = $f
		ifTrue: [ ^ Character newPage ].
	char = $n
		ifTrue: [ ^ Character lf ].
	char = $r
		ifTrue: [ ^ Character cr ].
	char = $t
		ifTrue: [ ^ Character tab ].
	char = $u
		ifTrue: [ ^ self parseCharacterHex ].
	self error: 'invalid escape character \' , (String with: char).
	^ char! !

!STONReader methodsFor: 'parsing' stamp: 'KenD 4/4/2022 10:35:00'!
parseList
	| reference array |
	reference := self newReference.
	array := STON listClass streamContents: [ :stream |
		self parseListDo: [ :each | stream nextPut: each ] ].
	self setReference: reference to: array.
	^ array! !

!STONReader methodsFor: 'parsing' stamp: 'KenD 4/4/2022 10:34:48'!
parseListDo: block
	| index |
	self expectChar: $[.
	(self matchChar: $]) ifTrue: [ ^ self ]. "short cut for empty lists"
	index := 1.
	[ readStream atEnd ] whileFalse: [
		block cull: self parseValue cull: index.
		(self matchChar: $]) ifTrue: [ ^ self ].
		index := index + 1.
		self expectChar: $, ].
	self error: 'end of list expected'! !

!STONReader methodsFor: 'parsing' stamp: 'KenD 4/4/2022 10:34:39'!
parseListSingleton
	| value |
	value := nil.
	self parseListDo: [ :each :index |
		index = 1 ifTrue: [ value := each ] ].
	^ value! !

!STONReader methodsFor: 'parsing' stamp: 'KenD 4/4/2022 10:34:29'!
parseMap
	| map |
	map := STON mapClass new.
	self storeReference: map.
	self parseMapDo: [ :key :value |
		map at: key put: value ].
	^ map! !

!STONReader methodsFor: 'parsing' stamp: 'KenD 4/4/2022 10:34:16'!
parseMapDo: block

	self expectChar: ${.
	(self matchChar: $}) ifTrue: [ ^ self ]. "short cut for empty maps"
	[ readStream atEnd ] whileFalse: [ | name value |
		name := self parseSimpleValue.
		self expectChar: $:.
		value := self parseValue.
		block value: name value: value.
		"The above is a more efficient way to say 'self parseValue' and using the returned association"
		(self matchChar: $}) ifTrue: [ ^ self ].
		self expectChar: $, ].
	self error: 'end of map expected'! !

!STONReader methodsFor: 'parsing' stamp: 'KenD 4/4/2022 10:33:59'!
parseMapOrListRepresentation
	"Parse either a map or list to be used as a representation, not considering it as a referenceable object"
	readStream atEnd 
		ifFalse: [ 
			readStream peek = ${
				ifTrue: [ | map |
					map := STON mapClass new.
					self parseMapDo: [ :key :value |
						map at: key put: value ].
					^ map ].
			readStream peek = $[
				ifTrue: [ 
					^ STON listClass streamContents: [ :stream |
						self parseListDo: [ :each | stream nextPut: each ] ] ] ].
	self error: 'invalid input'! !

!STONReader methodsFor: 'parsing' stamp: 'KenD 4/4/2022 10:33:43'!
parseNamedInstVarsFor: anObject
	self parseMapDo: [ :instVarName :value |
		anObject instVarNamed: instVarName asString put: value ]! !

!STONReader methodsFor: 'parsing' stamp: 'KenD 4/4/2022 10:32:17'!
parseObject
	| targetClass reference object |
	[
		reference := self newReference.
		targetClass := self parseClass.
		object := targetClass fromSton: self .
		self setReference: reference to: object ]
		on: NotFound 
		do: [ :notFound |
			acceptUnknownClasses 
				ifTrue: [ 
					object := STON mapClass new.
					self storeReference: object.
					self parseMapDo: [ :key :value |
						object at: key put: value ].
					object at: STON classNameKey put: notFound object ]
				ifFalse: [ self error: 'Cannot resolve class named ', notFound object printString ] ].
	^ object! !

!STONReader methodsFor: 'parsing' stamp: 'KenD 4/4/2022 10:31:36'!
parseSimpleValue
	| char |
	readStream atEnd ifFalse: [ 
		(self isClassStartChar: (char := readStream peek)) 
			ifTrue: [ ^ self parseObject ].
		char = ${
			ifTrue: [ ^ self parseMap ].
		char = $[
			ifTrue: [ ^ self parseList ].
		(char = $' or: [ char = $" ])
			ifTrue: [ ^ self parseString ].
		char = $#
			ifTrue: [ ^ self parseSymbol ].
		char = $@
			ifTrue: [ ^ self parseReference ].
		(char = $- or: [ char isDigit ])
			ifTrue: [ ^ self parseNumber ].
		self parseConstantDo: [ :value | ^ value ] ].
	self error: 'invalid input'! !

!STONReader methodsFor: 'parsing' stamp: 'KenD 4/4/2022 10:30:06'!
parseValue
	| value |
	value := self parseSimpleValue.
	^ (self matchChar: $:)
		ifTrue: [ STON associationClass key: value value: self parseValue ]
		ifFalse: [ value ]! !

!STONReader methodsFor: 'parsing-internal' stamp: 'KenD 4/4/2022 10:41:13'!
initialize
	super initialize.
	objects := IdentityDictionary new.
	classes := IdentityDictionary new.
	acceptUnknownClasses := convertNewLines := false.
	newLine := String newLineString  "OS independent; Cuis specific".
	unresolvedReferences := 0! !

!STONReader methodsFor: 'parsing-internal' stamp: 'KenD 4/4/2022 10:36:43'!
parseCharacter
	| char |
	^ (char := readStream next) = $\
		ifTrue: [ self parseEscapedCharacter ]
		ifFalse: [ char ]! !

!STONReader methodsFor: 'parsing-internal' stamp: 'KenD 4/4/2022 10:36:33'!
parseCharacterConvertingNewLinesOn: writeStream
	| char |
	(char := readStream next) = $\
		ifTrue: [ writeStream nextPut: self parseEscapedCharacter ]
		ifFalse: [ 
			char = Character lf 
				ifTrue: [ writeStream nextPutAll: newLine ]
				ifFalse: [ 
					char = Character cr 
						ifTrue: [ 
							readStream peekFor: Character lf.
							writeStream nextPutAll: newLine ]
						ifFalse: [ writeStream nextPut: char ] ] ]! !

!STONReader methodsFor: 'parsing-internal' stamp: 'KenD 4/4/2022 10:36:21'!
parseCharacterHex
	| value codePoint |
	value := self parseCharacterHex4Value.
	(value < 16rD800 or: [ value > 16rDBFF ])
		ifTrue: [ codePoint := value ]
		ifFalse: [ | leadSurrogate trailSurrogate |
			"Characters not in the Basic Multilingual Plane are encoded as a UTF-16 surrogate pair"
			"See https://tools.ietf.org/html/rfc7159#section-7"
			leadSurrogate := value.
			trailSurrogate := self parseTrailingSurrogateHexEscape.
			codePoint := (leadSurrogate - 16rD800) * 16r400 + (trailSurrogate - 16rDC00).
			codePoint := 16r10000 + codePoint ].
	^ Character codePoint: codePoint! !

!STONReader methodsFor: 'parsing-internal' stamp: 'KenD 4/4/2022 10:36:11'!
parseCharacterHex4Value
	| value |
	value := self parseCharacterHexDigit.
	3 timesRepeat: [ 
		value := (value << 4) + self parseCharacterHexDigit ].
	^ value! !

!STONReader methodsFor: 'parsing-internal' stamp: 'KenD 4/4/2022 10:35:58'!
parseCharacterHexDigit
	| digit |
	readStream atEnd ifFalse: [ 
		digit := readStream next asInteger.
		(digit between: "$0" 48 and: "$9" 57)
			ifTrue: [ ^ digit - 48 ].
		(digit between: "$A" 65 and: "$F" 70)
			ifTrue: [ ^ digit - 55 ].
		(digit between: "$a" 97 and: "$f" 102)
			ifTrue: [ ^ digit - 87 ] ].
	self error: 'hex-digit expected'! !

!STONReader methodsFor: 'parsing-internal' stamp: 'KenD 4/4/2022 10:35:45'!
parseClass
	| className |
	className := self stringStreamContents: [ :stream |
		[ readStream atEnd not and: [ self isClassChar: readStream peek ] ] whileTrue: [ 
			stream nextPut: readStream next ] ].
	self consumeWhitespace.
	^ self lookupClass: className asSymbol! !

!STONReader methodsFor: 'parsing-internal' stamp: 'KenD 4/4/2022 10:35:29'!
parseConstantDo: block
	"Parse and consume either true|false|nil|null and execute block 
	or else do nothing (but do not back up).
	Hand written implementation to avoid the use of #position:"
	
	(readStream peek = $t)
		ifTrue: [
			^ self match: 'true' do: [ block value: true ] ].
	(readStream peek = $f)
		ifTrue: [
			^ self match: 'false' do: [ block value: false ] ].
	(readStream peek = $n)
		ifTrue: [
			readStream next.
			(readStream peek = $i)
				ifTrue: [
					self match: 'il' do: [ block value: nil ] ].
			(readStream peek = $u)
				ifTrue: [
					self match: 'ull' do: [ block value: nil ] ] ]! !

!STONReader methodsFor: 'parsing-internal' stamp: 'KenD 4/4/2022 10:33:17'!
parseNumber
	| negated number |
	negated := readStream peekFor: $-.
	number := self parseNumberInteger.
	(readStream peekFor: $/)
		ifTrue: [ 
			number := Fraction numerator: number denominator: self parseNumberInteger.
			(readStream peekFor: $s)
				ifTrue: [ number := ScaledDecimal newFromNumber: number scale: self parseNumberInteger ] ]
		ifFalse: [ 
			(readStream peekFor: $.)
				ifTrue: [ number := number + self parseNumberFraction ].
			((readStream peekFor: $e) or: [ readStream peekFor: $E ])
				ifTrue: [ number := number * self parseNumberExponent ] ].
	negated
		ifTrue: [ number := number negated ].
	self consumeWhitespace.
	^ number! !

!STONReader methodsFor: 'parsing-internal' stamp: 'KenD 4/4/2022 10:33:03'!
parseNumberExponent
	| number negated |
	number := 0.
	(negated := readStream peekFor: $-)
		ifFalse: [ readStream peekFor: $+ ].
	[ readStream atEnd not and: [ readStream peek isDigit ] ]
		whileTrue: [ number := 10 * number + readStream next digitValue ].
	negated
		ifTrue: [ number := number negated ].
	^ 10 raisedTo: number! !

!STONReader methodsFor: 'parsing-internal' stamp: 'KenD 4/4/2022 10:32:52'!
parseNumberFraction
	| number power |
	number := 0.
	power := 1.0.
	[ readStream atEnd not and: [ readStream peek isDigit ] ] whileTrue: [
		number := 10 * number + readStream next digitValue.
		power := power * 10.0 ].
	^ number / power! !

!STONReader methodsFor: 'parsing-internal' stamp: 'KenD 4/4/2022 10:32:43'!
parseNumberInteger
	| number |
	number := 0.
	[ readStream atEnd not and: [ readStream peek isDigit ] ] whileTrue: [ 
		number := 10 * number + readStream next digitValue ].
	^ number! !

!STONReader methodsFor: 'parsing-internal' stamp: 'KenD 4/4/2022 10:31:58'!
parseReference
	| index |
	self expectChar: $@.
	index := self parseNumberInteger.
	self consumeWhitespace.
	unresolvedReferences := unresolvedReferences + 1.
	^ STONReference index: index! !

!STONReader methodsFor: 'parsing-internal' stamp: 'KenD 4/4/2022 10:31:09'!
parseString

	^ self parseStringInternal! !

!STONReader methodsFor: 'parsing-internal' stamp: 'KenD 4/4/2022 10:28:30'!
parseStringInternal
	| result delimiter |
	delimiter := readStream next.
	(delimiter = $' or: [ delimiter = $" ])
		ifFalse: [ self error: ''' or " expected' ].
	result := self
		stringStreamContents: [ :stream | 
			convertNewLines
				ifTrue: [ 
					[ readStream atEnd or: [ readStream peek = delimiter ] ] 
						whileFalse: [ self parseCharacterConvertingNewLinesOn: stream ] ]
				ifFalse: [ 
					[ readStream atEnd or: [ readStream peek = delimiter ] ] 
						whileFalse: [ stream nextPut: self parseCharacter ] ] ].
	self expectChar: delimiter.
	^ result! !

!STONReader methodsFor: 'parsing-internal' stamp: 'KenD 4/4/2022 10:28:12'!
parseSymbol
	| string |
	self expectChar: $#.
	readStream peek = $'
		ifTrue: [ ^ self parseStringInternal asSymbol ].
	string := self stringStreamContents: [ :stream |
		[ readStream atEnd not and: [ self isSimpleSymbolChar: readStream peek ] ] whileTrue: [
			stream nextPut: readStream next ] ].
	string isEmpty
		ifFalse: [ 
			self consumeWhitespace.
			^ string asSymbol ].
	self error: 'unexpected input'! !

!STONReader methodsFor: 'parsing-internal' stamp: 'KenD 4/4/2022 10:27:55'!
parseTrailingSurrogateHexEscape

	(readStream next = $\ and: [ readStream next = $u ])
		ifTrue: [ ^ self parseCharacterHex4Value ]
		ifFalse: [ self error: 'trailing surrogate hex escape expected' ]! !

!STONReader methodsFor: 'private' stamp: 'KenD 4/4/2022 10:42:49'!
consumeWhitespace
	"Strip whitespaces from the input stream."

	[ readStream atEnd not and: [ readStream peek isSeparator ] ]
		whileTrue: [ readStream next ]! !

!STONReader methodsFor: 'private' stamp: 'KenD 4/4/2022 10:41:25'!
expectChar: character
	"Expect character and consume input and optional whitespace at the end,
	 throw an error otherwise."

	(self matchChar: character)
		ifFalse: [ self error: character asString, ' expected' ]! !

!STONReader methodsFor: 'private' stamp: 'KenD 4/4/2022 10:40:13'!
isClassChar: char

	^ char isAlphaNumeric or: [ char = $_ ]! !

!STONReader methodsFor: 'private' stamp: 'KenD 4/4/2022 10:40:01'!
isClassStartChar: char

	^ char isLetter and: [ char isUppercase ]! !

!STONReader methodsFor: 'private' stamp: 'KenD 4/4/2022 10:39:47'!
isSimpleSymbolChar: char

	^char isLetter or: ['0123456789-_./' includes: char]! !

!STONReader methodsFor: 'private' stamp: 'KenD 4/4/2022 10:39:24'!
lookupClass: name
	"name is a symbol at this point"
	Smalltalk globals 
		at: name 
		ifPresent: [ :class | ^ class ].
	"note that classes is an identity dictionary"
	^ classes 
		at: name 
		ifAbsentPut: [
			Object allSubclasses 
				detect: [ :class | class isMeta not and: [ class stonName = name ]  ]
				ifNone: [ NotFound signalFor: name ] ]! !

!STONReader methodsFor: 'private' stamp: 'KenD 4/4/2022 10:39:13'!
match: string do: block
	"Try to read and consume string and execute block if successful.
	Else do nothing (but do not back up)"

	(string allSatisfy: [ :each | readStream peekFor: each ])
		ifTrue: [ 
			self consumeWhitespace.
			block value ]! !

!STONReader methodsFor: 'private' stamp: 'KenD 4/4/2022 10:39:03'!
matchChar: character
	"Tries to match character, consume input and 
	answer true if successful and consumes whitespace at the end."

	^ (readStream peekFor: character)
		ifTrue: [ 
			self consumeWhitespace.
			true ]
		ifFalse: [ false ]! !

!STONReader methodsFor: 'private' stamp: 'KenD 4/4/2022 10:38:09'!
newReference
	| index reference |
	index := objects size + 1.
	reference := STONReference index: index.
	objects at: index put: reference.
	^ reference! !

!STONReader methodsFor: 'private' stamp: 'KenD 4/4/2022 10:27:39'!
processSubObjectsOf: object
	| unresolvedReferencesCount |
	unresolvedReferencesCount := unresolvedReferences.
	object stonProcessSubObjects: [ :each | 
		each isStonReference
			ifTrue: [ self resolveReference: each ]
			ifFalse: [ 
				each stonContainSubObjects
					ifTrue: [ self processSubObjectsOf: each ]
					ifFalse: [ each ] ] ].
	unresolvedReferencesCount > unresolvedReferences
		ifTrue: [ object stonPostReferenceResolution ].
	^ object! !

!STONReader methodsFor: 'private' stamp: 'KenD 4/4/2022 10:26:15'!
resolveReference: reference

	unresolvedReferences := unresolvedReferences - 1.
	^ self resolveReferenceIndex: reference index! !

!STONReader methodsFor: 'private' stamp: 'KenD 4/4/2022 10:26:03'!
resolveReferenceIndex: index

	^ objects at: index! !

!STONReader methodsFor: 'private' stamp: 'KenD 4/4/2022 10:25:51'!
setReference: reference to: object

	objects at: reference index put: object! !

!STONReader methodsFor: 'private' stamp: 'KenD 4/4/2022 10:25:39'!
storeReference: object
	| index |
	index := objects size + 1.
	objects at: index put: object.
	^ index! !

!STONReader methodsFor: 'private' stamp: 'KenD 4/4/2022 10:25:27'!
stringStreamContents: block

	stringStream ifNil: [ 
		stringStream := (String new: 32) writeStream ].
	stringStream reset.
	block value: stringStream.
	^ stringStream contents! !

!STONReader methodsFor: 'reading' stamp: 'KenD 4/4/2022 10:37:56'!
next
	| object |
	self consumeWhitespace.
	object := self parseValue.
	unresolvedReferences > 0
		ifTrue: [ self processSubObjectsOf: object ].
	unresolvedReferences = 0
		ifFalse: [ self error: 'Inconsistent reference resolution' ].
	^ object! !

!STONReader methodsFor: 'testing' stamp: 'KenD 4/4/2022 10:43:57'!
atEnd

	^ readStream atEnd! !

!STONReader class methodsFor: 'instance creation' stamp: 'KenD 4/4/2022 10:24:47'!
on: readStream

	^ self new ::
		on: readStream;
		yourself! !

!STONReference methodsFor: 'accessing' stamp: 'KenD 4/3/2022 18:38:57'!
index

	^ index! !

!STONReference methodsFor: 'accessing' stamp: 'KenD 4/3/2022 18:39:31'!
index: integer

	index := integer! !

!STONReference methodsFor: 'comparing' stamp: 'KenD 4/3/2022 18:40:06'!
= anObject

	^ self class == anObject class and: [ self index = anObject index ]! !

!STONReference methodsFor: 'comparing' stamp: 'KenD 4/3/2022 18:39:51'!
hash

	^ index hash! !

!STONReference class methodsFor: 'instance creation' stamp: 'KenD 4/3/2022 18:37:30'!
index: integer

	^ self new ::
 		index: integer;
		yourself! !

!STONStreamWriter methodsFor: 'initialization' stamp: 'KenD 4/3/2022 18:44:08'!
initialize

	super initialize.
	first := true! !

!STONStreamWriter methodsFor: 'initialization' stamp: 'KenD 4/3/2022 18:44:22'!
on: stonWriter

	writer := stonWriter! !

!STONStreamWriter class methodsFor: 'instance creation' stamp: 'KenD 4/3/2022 18:43:24'!
on: stonWriter

	^ self new ::
		on: stonWriter;
		yourself! !

!STONWriter methodsFor: 'accessing' stamp: 'KenD 4/3/2022 19:06:22'!
jsonMode

	^ jsonMode! !

!STONWriter methodsFor: 'error handling' stamp: 'KenD 4/3/2022 19:10:15'!
error: aString

	^ STONWriterError signal: aString! !

!STONWriter methodsFor: 'other' stamp: 'KenD 4/3/2022 19:12:17'!
close
	writeStream ifNotNil: [
		writeStream close.
		writeStream := nil ]! !

!STONWriter methodsFor: 'other' stamp: 'KenD 4/3/2022 19:06:38'!
jsonMode: boolean

	(jsonMode := boolean)
		ifTrue: [ 
			self
				escape: $' with: #pass;
				escape: $" with: '\"' ]
		ifFalse: [ 
			self
				escape: $" with: #pass;
				escape: $' with: '\''' ]! !

!STONWriter methodsFor: 'other' stamp: 'KenD 4/3/2022 19:02:42'!
reset

	objects removeAll! !

!STONWriter methodsFor: 'initialization' stamp: 'KenD 4/3/2022 19:12:30'!
asciiOnly: boolean

	asciiOnly := boolean! !

!STONWriter methodsFor: 'initialization' stamp: 'KenD 4/3/2022 19:09:41'!
escape: char with: anObject
	"Instruct me to escape char with object, either a replacement string or #pass"
	
	"self escape: $/ with: '\/'."
	
	self assert: (anObject isString | (anObject == #pass)).
	"self assert: char isOctetCharacter."
	self writeableStonCharacters at: char codePoint + 1 put: anObject! !

!STONWriter methodsFor: 'initialization' stamp: 'KenD 4/3/2022 18:53:58'!
initialize

	super initialize.
	stonCharacters := STONCharacters.
	prettyPrint := false.
	newLine := Character newLineCharacter.
	 "OSPlatform current lineEnding."
	level := 0.
	referencePolicy := #normal.
	jsonMode := keepNewLines := asciiOnly := false.
	objects := IdentityDictionary new! !

!STONWriter methodsFor: 'initialization' stamp: 'KenD 4/3/2022 19:05:55'!
keepNewLines: boolean
	"If true, any newline CR, LF or CRLF inside strings or symbols will not be escaped
	but will instead be converted to the newline convention chosen, see #newLine:
	The default is false, where CR, LF or CRLF will be enscaped unchanged."
	
	keepNewLines := boolean! !

!STONWriter methodsFor: 'initialization' stamp: 'KenD 4/3/2022 19:05:05'!
newLine: string
	"The sequence to use when ending a line, either CR, LF or CRLF"
	
	newLine := string! !

!STONWriter methodsFor: 'initialization' stamp: 'KenD 4/3/2022 18:54:31'!
on: aWriteStream

	writeStream := aWriteStream! !

!STONWriter methodsFor: 'initialization' stamp: 'KenD 4/3/2022 19:03:50'!
optimizeForLargeStructures

	self class environment
		at: #FLLargeIdentityDictionary
		ifPresent: [ :identityDictionaryClass | objects := identityDictionaryClass new ].! !

!STONWriter methodsFor: 'initialization' stamp: 'KenD 4/3/2022 19:03:34'!
prettyPrint: boolean

	prettyPrint := boolean! !

!STONWriter methodsFor: 'initialization' stamp: 'KenD 4/3/2022 19:03:03'!
referencePolicy: policy

	self assert: ( #(#normal #ignore #error) includes: policy ).
	referencePolicy := policy! !

!STONWriter methodsFor: 'private' stamp: 'KenD 4/3/2022 19:11:58'!
encodeCharacter: char
	| code encoding |
	"STONCharacters contains for the lower 127 characters (codes 0 to 126) either nil (unknown), 
	#pass (output as is, clean ASCII characters) or a full escape string"
	((code := char codePoint) < 127 and: [ (encoding := self stonCharacters at: code + 1) notNil ])
		ifTrue: [ 
			(encoding = #pass or: [ jsonMode and: [ char = $' ] ])
				ifTrue: [ writeStream nextPut: char ]
				ifFalse: [ writeStream nextPutAll: encoding ] ]
		ifFalse: [
			"always escape Latin1 C1 controls, or when asciiOnly is true" 
			(code > 16r9F and: [ asciiOnly not ])
				ifTrue: [ writeStream nextPut: char ]
				ifFalse: [ self escapeUnicode: code ] ]! !

!STONWriter methodsFor: 'private' stamp: 'KenD 4/3/2022 19:11:44'!
encodeKey: key value: value
	(jsonMode and: [ key isString not ])
		ifTrue: [ self error: 'JSON key names in objects must be strings' ].
	self nextPut: key.
	self prettyPrintSpace.
	writeStream nextPut: $:.
	self prettyPrintSpace.
	self nextPut: value! !

!STONWriter methodsFor: 'private' stamp: 'KenD 4/3/2022 19:11:29'!
encodeList: elements
	writeStream nextPut: $[.
	elements isEmpty
		ifTrue: [
			self prettyPrintSpace ]
		ifFalse: [
			self indentedDo: [
				self newlineIndent.
				elements 
					do: [ :each | self nextPut: each ]
					separatedBy: [ self listElementSeparator ] ].
			self newlineIndent ].
	writeStream nextPut: $]! !

!STONWriter methodsFor: 'private' stamp: 'KenD 4/3/2022 19:11:14'!
encodeMap: pairs
	| first |
	first := true.
	writeStream nextPut: ${.
	pairs isEmpty
		ifTrue: [
			self prettyPrintSpace ]
		ifFalse: [
			self indentedDo: [
				self newlineIndent.
				pairs keysAndValuesDo: [ :key :value |
					first 
						ifTrue: [ first := false ] 
						ifFalse: [ self mapElementSeparator ].
					self encodeKey: key value: value ] ].
			self newlineIndent ].
	writeStream nextPut: $}! !

!STONWriter methodsFor: 'private' stamp: 'KenD 4/3/2022 19:11:01'!
encodeString: string

	writeStream nextPut: (jsonMode ifTrue: [ $" ] ifFalse: [ $' ]).
	keepNewLines
		ifTrue: [ 
			self encodeStringKeepingNewLines: string ]
		ifFalse: [ 
			string do: [ :each | self encodeCharacter: each ] ].
	writeStream nextPut: (jsonMode ifTrue: [ $" ] ifFalse: [ $' ])! !

!STONWriter methodsFor: 'private' stamp: 'KenD 4/3/2022 19:10:42'!
encodeStringKeepingNewLines: string
	| input char |
	input := string readStream.
	[ input atEnd ]
		whileFalse: [ 
			char := input next.
			char = Character lf
				ifTrue: [ writeStream nextPutAll: newLine ]
				ifFalse: [ 
					char = Character cr
						ifTrue: [ 
							input peekFor: Character lf.
							writeStream nextPutAll: newLine ]
						ifFalse: [ self encodeCharacter: char ] ] ]! !

!STONWriter methodsFor: 'private' stamp: 'KenD 4/3/2022 19:08:30'!
escapeUnicode4: codePoint

	writeStream nextPutAll: '\u'.
	codePoint printOn: writeStream base: 16 nDigits: 4! !

!STONWriter methodsFor: 'private' stamp: 'KenD 4/3/2022 19:08:57'!
escapeUnicode: codePoint

	self flag: #Unicode.
	codePoint <= 16rFFFF
		ifTrue: [ self escapeUnicode4: codePoint ]
		ifFalse: [ 
			codePoint <= 16r10FFFF
				ifTrue: [ | leadSurrogate trailSurrogate shifted |
					"Characters not in the Basic Multilingual Plane are encoded as a UTF-16 surrogate pair"
					"See https://tools.ietf.org/html/rfc7159#section-7"
					shifted := codePoint - 16r10000.
					leadSurrogate := 16rD800 + (shifted // 16r400).
					trailSurrogate := 16rDC00 + (shifted \\ 16r400).
					self escapeUnicode4: leadSurrogate.
					self escapeUnicode4: trailSurrogate ]
				ifFalse: [ self error: 'Character Unicode code point outside encoder range' ] ]! !

!STONWriter methodsFor: 'private' stamp: 'KenD 4/3/2022 19:08:15'!
indentedDo: block

	level := level + 1.
	block value.
	level := level - 1! !

!STONWriter methodsFor: 'private' stamp: 'KenD 4/3/2022 19:07:49'!
isSimpleSymbol: symbol

	self flag: #WideString.
	(symbol isEmpty" or: [ symbol isWideString ]") 
		ifTrue: [ ^ false ].
	^ (symbol class 
		findFirstInString: symbol 
		inSet: STONSimpleSymbolCharacters 
		startingAt: 1) = 0! !

!STONWriter methodsFor: 'private' stamp: 'KenD 4/3/2022 19:05:40'!
listElementSeparator

	writeStream nextPut: $,.
	self newlineIndent! !

!STONWriter methodsFor: 'private' stamp: 'KenD 4/3/2022 19:05:28'!
mapElementSeparator

	writeStream nextPut: $,.
	self newlineIndent! !

!STONWriter methodsFor: 'private' stamp: 'KenD 4/3/2022 19:04:36'!
newlineIndent

	prettyPrint ifTrue: [ 
		writeStream nextPutAll: newLine.
		level timesRepeat: [ writeStream tab ] ]! !

!STONWriter methodsFor: 'private' stamp: 'KenD 4/3/2022 19:03:17'!
prettyPrintSpace

	prettyPrint ifTrue: [ writeStream space ]! !

!STONWriter methodsFor: 'private' stamp: 'KenD 4/3/2022 19:00:49'!
with: object do: block
	| index |
	referencePolicy = #ignore 
		ifTrue: [ ^ block value ].
	(index := objects at: object ifAbsent: [ nil ]) notNil
		ifTrue: [
			referencePolicy = #error
				ifTrue: [ ^ self error: 'shared reference detected' ].
			self writeReference: index ]
		ifFalse: [
			index := objects size + 1.
			objects at: object put: index.
			block value ]! !

!STONWriter methodsFor: 'writing' stamp: 'KenD 4/3/2022 19:04:15'!
nextPut: anObject

	anObject stonOn: self! !

!STONWriter methodsFor: 'writing' stamp: 'KenD 4/3/2022 19:02:01'!
shortListElementSeparator

	writeStream nextPut: $,.
	self prettyPrintSpace! !

!STONWriter methodsFor: 'writing' stamp: 'KenD 4/3/2022 19:01:47'!
stonCharacters

	^ stonCharacters ifNil: [ stonCharacters := STONCharacters ]! !

!STONWriter methodsFor: 'writing' stamp: 'KenD 4/3/2022 19:00:21'!
writeAssociation: association

	jsonMode
		ifTrue: [ self error: 'wrong object class for JSON mode' ].
	self 
		encodeKey: association key 
		value: association value! !

!STONWriter methodsFor: 'writing' stamp: 'KenD 4/3/2022 19:00:07'!
writeBoolean: boolean

	writeStream print: boolean! !

!STONWriter methodsFor: 'writing' stamp: 'KenD 4/3/2022 18:59:53'!
writeFloat: float

	writeStream print: float! !

!STONWriter methodsFor: 'writing' stamp: 'KenD 4/3/2022 18:59:42'!
writeFraction: fraction

	jsonMode
		ifTrue: [ self writeFloat: fraction asFloat ]
		ifFalse: [ writeStream
				print: fraction numerator;
				nextPut: $/;
				print: fraction denominator ]! !

!STONWriter methodsFor: 'writing' stamp: 'KenD 4/3/2022 18:59:30'!
writeInteger: integer

	writeStream print: integer! !

!STONWriter methodsFor: 'writing' stamp: 'KenD 4/3/2022 18:59:17'!
writeList: collection

	self with: collection do: [ 
		self encodeList: collection ]! !

!STONWriter methodsFor: 'writing' stamp: 'KenD 4/3/2022 18:59:04'!
writeMap: hashedCollection

	self with: hashedCollection do: [ 
		self encodeMap: hashedCollection ]! !

!STONWriter methodsFor: 'writing' stamp: 'KenD 4/3/2022 18:58:49'!
writeNull

	jsonMode
		ifTrue: [ writeStream nextPutAll: 'null' ]
		ifFalse: [ writeStream print: nil ]! !

!STONWriter methodsFor: 'writing' stamp: 'KenD 4/3/2022 18:58:28'!
writeObject: anObject
	| instanceVariableNames |
	(instanceVariableNames := anObject class stonAllInstVarNames) isEmpty
		ifTrue: [ 
			self writeObject: anObject do: [ self encodeMap: #() ] ]
		ifFalse: [ 
			self writeObject: anObject streamMap: [ :dictionary | 
				instanceVariableNames do: [ :each | 
					(anObject instVarNamed: each)
						ifNotNil: [ :value | 
							dictionary at: each asSymbol put: value ]
						ifNil: [ 
							anObject stonShouldWriteNilInstVars 
								ifTrue: [ dictionary at: each asSymbol put: nil ] ] ] ] ]! !

!STONWriter methodsFor: 'writing' stamp: 'KenD 4/3/2022 18:58:15'!
writeObject: anObject do: block

	(jsonMode and: [ anObject class ~= STON listClass and: [ anObject class ~= STON mapClass ] ])
		ifTrue: [ self error: 'wrong object class for JSON mode' ].
	self with: anObject do: [
		"although there is no check here, class names are expected to conform
		to first STONReader>>#isClassStartChar: then STONReader>>#isClassChar:"
		writeStream nextPutAll: anObject class stonName.
		self prettyPrintSpace.
		block value ]! !

!STONWriter methodsFor: 'writing' stamp: 'KenD 4/3/2022 18:57:59'!
writeObject: object listSingleton: element

	self writeObject: object do: [
		writeStream nextPut: $[.
		self 
			prettyPrintSpace;
			nextPut: element;
			prettyPrintSpace.
		writeStream nextPut: $] ]! !

!STONWriter methodsFor: 'writing' stamp: 'KenD 4/3/2022 18:57:45'!
writeObject: anObject named: stonName do: block

	(jsonMode and: [ anObject class ~= STON listClass and: [ anObject class ~= STON mapClass ] ])
		ifTrue: [ self error: 'wrong object class for JSON mode' ].
	self with: anObject do: [
		writeStream nextPutAll: stonName.
		self prettyPrintSpace.
		block value ]! !

!STONWriter methodsFor: 'writing' stamp: 'KenD 4/3/2022 18:57:30'!
writeObject: object named: stonName listSingleton: element

	self writeObject: object named: stonName do: [
		writeStream nextPut: $[.
		self 
			prettyPrintSpace;
			nextPut: element;
			prettyPrintSpace.
		writeStream nextPut: $] ]! !

!STONWriter methodsFor: 'writing' stamp: 'KenD 4/3/2022 18:57:13'!
writeObject: object streamList: block

	self writeObject: object do: [ | listWriter |
		listWriter := STONListWriter on: self.
		writeStream nextPut: $[.
		self indentedDo: [
			self newlineIndent.
			block value: listWriter ].
		self newlineIndent.
		writeStream nextPut: $] ]! !

!STONWriter methodsFor: 'writing' stamp: 'KenD 4/3/2022 18:56:52'!
writeObject: object streamMap: block

	self writeObject: object do: [ | mapWriter |
		mapWriter := STONMapWriter on: self.
		writeStream nextPut: ${.
		self indentedDo: [
			self newlineIndent.
			block value: mapWriter ].
		self newlineIndent.
		writeStream nextPut: $} ]! !

!STONWriter methodsFor: 'writing' stamp: 'KenD 4/3/2022 18:56:30'!
writeObject: object streamShortList: block

	self writeObject: object do: [ | listWriter |
		listWriter := STONShortListWriter on: self.
		writeStream nextPut: $[.
		self indentedDo: [
			self prettyPrintSpace.
			block value: listWriter ].
		self prettyPrintSpace.
		writeStream nextPut: $] ]! !

!STONWriter methodsFor: 'writing' stamp: 'KenD 4/3/2022 18:56:12'!
writeReference: index

	writeStream
		nextPut: $@;
		print: index! !

!STONWriter methodsFor: 'writing' stamp: 'KenD 4/3/2022 18:55:58'!
writeScaledDecimal: scaledDecimal

	jsonMode
		ifTrue: [ self writeFloat: scaledDecimal asFloat ]
		ifFalse: [ writeStream
				print: scaledDecimal numerator;
				nextPut: $/;
				print: scaledDecimal denominator;
				nextPut: $s;
				print: scaledDecimal scale ]! !

!STONWriter methodsFor: 'writing' stamp: 'KenD 4/3/2022 18:55:42'!
writeString: string

	self encodeString: string! !

!STONWriter methodsFor: 'writing' stamp: 'KenD 4/3/2022 18:55:15'!
writeSymbol: symbol

	jsonMode
		ifTrue: [
			self writeString: symbol ]
		ifFalse: [
			writeStream nextPut: $#.
			(self isSimpleSymbol: symbol)
				ifTrue: [
					writeStream nextPutAll: symbol ]
				ifFalse: [
					self encodeString: symbol ] ]! !

!STONWriter methodsFor: 'writing' stamp: 'KenD 4/3/2022 19:00:35'!
writeableStonCharacters

	^ self stonCharacters == STONCharacters
		ifTrue: [ stonCharacters := stonCharacters copy ]
		ifFalse: [ stonCharacters ]! !

!STONWriter class methodsFor: 'class initialization' stamp: 'KenD 4/3/2022 18:52:31'!
initialize
	"Modification timestamp 20170131"
	
	self initializeSTONCharacters.
	self initializeSTONSimpleSymbolCharacters! !

!STONWriter class methodsFor: 'class initialization' stamp: 'KenD 4/3/2022 18:52:17'!
initializeSTONCharacters
	| escapes |
	STONCharacters := Array new: 127.
	32 to: 126 do: [ :each | 
		STONCharacters at: each + 1 put: #pass ].
	"This is the minimal STON set of named escapes"
	escapes := #( 8 '\b' 9 '\t' 10 '\n' 12 '\f' 13 '\r' 39 '\''' 92 '\\' ).
	escapes pairsDo: [ :code :escape | 
		STONCharacters at: code + 1 put: escape ]! !

!STONWriter class methodsFor: 'class initialization' stamp: 'KenD 4/3/2022 18:52:04'!
initializeSTONSimpleSymbolCharacters
	"STONSimpleSymbolCharacters asArray collectWithIndex: [ :each :index |
		each isZero ifTrue: [ (index - 1) asCharacter ] ]."
		
	STONSimpleSymbolCharacters := ByteArray new: 256 withAll: 1.
	1 to: 256 do: [ :each | | char |
		char := (each - 1) asCharacter.
		(self isSimpleSymbolChar: char)
			ifTrue: [ 
				STONSimpleSymbolCharacters at: each put: 0 ] ]! !

!STONWriter class methodsFor: 'instance creation' stamp: 'KenD 4/3/2022 18:50:32'!
on: writeStream
	^ self new ::
		on: writeStream;
		yourself! !

!STONWriter class methodsFor: 'private' stamp: 'KenD 4/3/2022 18:51:34'!
isSimpleSymbolChar: char
	^ 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-_./' includes: char! !
STONWriter initialize!
