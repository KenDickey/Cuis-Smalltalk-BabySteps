'From Cuis 6.0 [latest update: #5096] on 18 April 2022 at 1:29:31 pm'!
'Description STON implements serialization and materialization using the Smalltalk Object Notation format.

Ported from:
  https://github.com/svenvc/ston

-------------------------------------------------------
MIT License

Copyright (C) 2012 Sven Van Caekenberghe

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.'!
!provides: 'ExchangeFormat-STON' 1 30!
!requires: 'Cuis-Base' 60 5096 nil!
!requires: 'Identities-UUID' 1 9 nil!
!requires: 'SqueakCompatibility' 1 33 nil!
!requires: 'CSS3-NamedColors' 1 1 nil!
SystemOrganization addCategory: 'ExchangeFormat-STON'!


!classDefinition: #STONTestAssociation category: 'ExchangeFormat-STON'!
Association subclass: #STONTestAssociation
	instanceVariableNames: 'timestamp'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ExchangeFormat-STON'!
!classDefinition: 'STONTestAssociation class' category: 'ExchangeFormat-STON'!
STONTestAssociation class
	instanceVariableNames: ''!

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

!classDefinition: #STONWriteReadTest category: 'ExchangeFormat-STON'!
TestCase subclass: #STONWriteReadTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ExchangeFormat-STON'!
!classDefinition: 'STONWriteReadTest class' category: 'ExchangeFormat-STON'!
STONWriteReadTest class
	instanceVariableNames: ''!

!classDefinition: #STONWriteAsciiOnlyReadTest category: 'ExchangeFormat-STON'!
STONWriteReadTest subclass: #STONWriteAsciiOnlyReadTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ExchangeFormat-STON'!
!classDefinition: 'STONWriteAsciiOnlyReadTest class' category: 'ExchangeFormat-STON'!
STONWriteAsciiOnlyReadTest class
	instanceVariableNames: ''!

!classDefinition: #STONWritePrettyPrinterReadTest category: 'ExchangeFormat-STON'!
STONWriteReadTest subclass: #STONWritePrettyPrinterReadTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ExchangeFormat-STON'!
!classDefinition: 'STONWritePrettyPrinterReadTest class' category: 'ExchangeFormat-STON'!
STONWritePrettyPrinterReadTest class
	instanceVariableNames: ''!

!classDefinition: #STONWriteReadCommentsTest category: 'ExchangeFormat-STON'!
STONWriteReadTest subclass: #STONWriteReadCommentsTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ExchangeFormat-STON'!
!classDefinition: 'STONWriteReadCommentsTest class' category: 'ExchangeFormat-STON'!
STONWriteReadCommentsTest class
	instanceVariableNames: ''!

!classDefinition: #STONWriterTest category: 'ExchangeFormat-STON'!
TestCase subclass: #STONWriterTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ExchangeFormat-STON'!
!classDefinition: 'STONWriterTest class' category: 'ExchangeFormat-STON'!
STONWriterTest class
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

!classDefinition: #STONAlternativeRepresentationTestObject category: 'ExchangeFormat-STON'!
Object subclass: #STONAlternativeRepresentationTestObject
	instanceVariableNames: 'id time gridReference'
	classVariableNames: 'KnownObjects'
	poolDictionaries: ''
	category: 'ExchangeFormat-STON'!
!classDefinition: 'STONAlternativeRepresentationTestObject class' category: 'ExchangeFormat-STON'!
STONAlternativeRepresentationTestObject class
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

!classDefinition: #STONListWriter category: 'ExchangeFormat-STON'!
STONStreamWriter subclass: #STONListWriter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ExchangeFormat-STON'!
!classDefinition: 'STONListWriter class' category: 'ExchangeFormat-STON'!
STONListWriter class
	instanceVariableNames: ''!

!classDefinition: #STONShortListWriter category: 'ExchangeFormat-STON'!
STONListWriter subclass: #STONShortListWriter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ExchangeFormat-STON'!
!classDefinition: 'STONShortListWriter class' category: 'ExchangeFormat-STON'!
STONShortListWriter class
	instanceVariableNames: ''!

!classDefinition: #STONMapWriter category: 'ExchangeFormat-STON'!
STONStreamWriter subclass: #STONMapWriter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ExchangeFormat-STON'!
!classDefinition: 'STONMapWriter class' category: 'ExchangeFormat-STON'!
STONMapWriter class
	instanceVariableNames: ''!

!classDefinition: #STONTestUser category: 'ExchangeFormat-STON'!
STONStreamWriter subclass: #STONTestUser
	instanceVariableNames: 'username password enabled'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ExchangeFormat-STON'!
!classDefinition: 'STONTestUser class' category: 'ExchangeFormat-STON'!
STONTestUser class
	instanceVariableNames: ''!

!classDefinition: #STONTestUser2 category: 'ExchangeFormat-STON'!
STONTestUser subclass: #STONTestUser2
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ExchangeFormat-STON'!
!classDefinition: 'STONTestUser2 class' category: 'ExchangeFormat-STON'!
STONTestUser2 class
	instanceVariableNames: ''!

!classDefinition: #STONTestUser3 category: 'ExchangeFormat-STON'!
STONTestUser subclass: #STONTestUser3
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ExchangeFormat-STON'!
!classDefinition: 'STONTestUser3 class' category: 'ExchangeFormat-STON'!
STONTestUser3 class
	instanceVariableNames: ''!

!classDefinition: #STONTestDomainObject category: 'ExchangeFormat-STON'!
Object subclass: #STONTestDomainObject
	instanceVariableNames: 'created modified integer float description color tags bytes boolean'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ExchangeFormat-STON'!
!classDefinition: 'STONTestDomainObject class' category: 'ExchangeFormat-STON'!
STONTestDomainObject class
	instanceVariableNames: ''!

!classDefinition: #STONTestKnownObject category: 'ExchangeFormat-STON'!
Object subclass: #STONTestKnownObject
	instanceVariableNames: 'id description'
	classVariableNames: 'KnownObjects'
	poolDictionaries: ''
	category: 'ExchangeFormat-STON'!
!classDefinition: 'STONTestKnownObject class' category: 'ExchangeFormat-STON'!
STONTestKnownObject class
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


!STONTestAssociation commentStamp: '<historical>' prior: 0!
STONTestAssociation is used to support unit tests.
!

!STONReaderError commentStamp: '<historical>' prior: 0!
STONReaderError is the error/exception signalled by STONReader when illegal/incorrect input is seen. 
!

!STONWriterError commentStamp: '<historical>' prior: 0!
STONWriterError is the error/exception signalled by STONWriter when illegal/incorrect input is seen. !

!STONFileReference commentStamp: '<historical>' prior: 0!
I am STONFileReference, I am an implementation artifact to help reading objects with class tag equal to my #stonName.

I am a FileEntry.!

!STONWriteReadTest commentStamp: '<historical>' prior: 0!
STONWriteReadTests test serialization followed by materialization, these tests first write then read STON.!

!STONWritePrettyPrinterReadTest commentStamp: '<historical>' prior: 0!
STONWritePrettyPrinterReadTests tests pretty printed serialization followed by materialization.!

!STONWriterTest commentStamp: '<historical>' prior: 0!
STONWriterTests test serialization.!

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

!STONAlternativeRepresentationTestObject commentStamp: '<historical>' prior: 0!
I am STONAlternativeRepresentationTestObject.

My properties are
 - id <Integer>
 - time <DateAndTime> in the local time zone
 - gridReference <Point <Float>@<Float>> in kilometer

My STON representation has the properties
 - id <Integer>
 - time <DateAndTime> in UTC
 - grid_reference <Point <Float>@<Float>> in miles

Note the different key, gridReference vs. grid_reference

Upon serialization, the conversions local time to UTC and kilometer to mile is performed.
Upon materialization, the convertions UTC to local tie and miles to kilometers are performed.
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

!STONListWriter commentStamp: '<historical>' prior: 0!
STONArrayWriter helps in writing array based STON representations.
!

!STONShortListWriter commentStamp: '<historical>' prior: 0!
STONShortArrayWriter helps in writing short array based STON representations.
!

!STONMapWriter commentStamp: '<historical>' prior: 0!
STONDictionaryWriter helps in writing dictionary based STON representations.!

!STONTestUser commentStamp: '<historical>' prior: 0!
STONTestUser is used to support unit tests.

Instance Variables
	enabled:		<Boolean>
	password:	<String>
	username:	<String>
!

!STONTestUser2 commentStamp: '<historical>' prior: 0!
STONTestUser2 extends STONTestUser with explicit implementations of #fromSton: and #stonOn:!

!STONTestUser3 commentStamp: '<historical>' prior: 0!
STONTestUser3 extends STONTestUser but wants nil instance variables to be written!

!STONTestDomainObject commentStamp: '<historical>' prior: 0!
STONTestDomainObject is used to support unit tests.

Instance Variables
	boolean:		<Boolean>
	bytes:		<ByteArray>
	color:		<Symbol>
	created:		<DateAndTime>
	description:	<String>
	float:		<Float>
	integer:		<Integer>
	modified:		<DateAndTime>
	tags:		<Array of: Symbol>!

!STONTestKnownObject commentStamp: '<historical>' prior: 0!
I am STONTestKnownObject. I support unit tests.

I have an id and a description.

When I am serialized, only my id is written out.

  STONTestKnownObject['bb71b026-180c-0d00-b40c-38700aee7555']

When I am materialized, the id is used to reconstruct the object, either by retrieving it from a collection of known objects, or it is created (it could also be a retrieval from somewhere else).

I keep a collection of all my known instances, new instances are added to it automatically.

Use my class side's #fromId: to access existing instances
!

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

!STONFileReference class methodsFor: 'accessing' stamp: 'KenD 4/3/2022 16:50:28'!
stonName

	^ #FILE! !

!STONAlternativeRepresentationTestObject methodsFor: 'ston persistence' stamp: 'KenD 4/12/2022 13:18:49'!
stonOn: stonWriter	

	stonWriter writeObject: self streamMap: [ :dictionary |
		dictionary
			at: #id put: self id;
			at: #time put: self timeUTC;
			at: #grid_reference put: self gridReferenceImperial ]! !

!STONReference methodsFor: 'printing' stamp: 'KenD 4/3/2022 18:38:05'!
printOn: stream

	super printOn: stream.
	stream nextPut: $(; print: index; nextPut: $)! !

!STONTestUser class methodsFor: 'ston-core' stamp: 'KenD 4/4/2022 14:40:12'!
stonName

	^ #TestUser! !

!STONTestUser2 class methodsFor: 'ston-core' stamp: 'KenD 4/4/2022 14:44:27'!
stonName

	^ #TestUser2! !

!STONTestUser2 methodsFor: 'ston-core' stamp: 'KenD 4/4/2022 14:45:00'!
stonOn: stonWriter	
	stonWriter writeObject: self streamMap: [ :dictionary |
		dictionary
			at: #username put: username;
			at: #password put: password;
			at: #enabled put: enabled ]! !

!STONTestUser3 class methodsFor: 'ston-core' stamp: 'KenD 4/4/2022 14:46:08'!
stonName

	^ #TestUser3! !

!STONTestDomainObject class methodsFor: 'ston-core' stamp: 'KenD 4/16/2022 13:03:19'!
stonName

	^ #TestDomainObject! !

!STONTestKnownObject methodsFor: 'printing' stamp: 'KenD 4/16/2022 13:16:31'!
printOn: stream

	super printOn: stream.
	stream nextPut: $(; print: id; nextPut: $)! !

!STONTestKnownObject methodsFor: 'ston-core' stamp: 'KenD 4/16/2022 13:16:10'!
stonOn: stonWriter
	"We only write out our id"
	
	stonWriter writeObject: self listSingleton: self id asString! !

!STONTestAssociation methodsFor: 'accessing' stamp: 'KenD 4/15/2022 14:55:26'!
key: aKey value: anObject 

	super key: aKey value: anObject.
	timestamp := self now! !

!STONTestAssociation methodsFor: 'accessing' stamp: 'KenD 4/15/2022 14:54:40'!
now
	^ DateAndTime now! !

!STONTestAssociation methodsFor: 'accessing' stamp: 'KenD 4/15/2022 14:55:10'!
timestamp
	^ timestamp! !

!STONTestAssociation methodsFor: 'accessing' stamp: 'KenD 4/15/2022 14:55:39'!
value: anObject

	super value: anObject.
	timestamp := self now! !

!STONReaderError methodsFor: 'accessing' stamp: 'KenD 4/15/2022 12:04:52'!
messageText

	"self flag: #Formatting."
	^ streamPosition 
		ifNil: [ 
			super messageText ] 
		ifNotNil: [ :pos | 
			'At character <{1}>: <{2}>' 
			  format: { pos .  super messageText }
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

!STONFileReference class methodsFor: 'instance creation' stamp: 'KenD 4/18/2022 08:04:51'!
fromSton: stonReader

	^ stonReader parseListSingleton asFileSystemEntry! !

!STONWriteReadTest methodsFor: 'options' stamp: 'KenD 4/5/2022 08:27:45'!
reader: string

	^ STON reader on: string readStream! !

!STONWriteReadTest methodsFor: 'private' stamp: 'KenD 4/5/2022 08:27:07'!
materialize: string

	^ STON reader 
		on: string readStream;
		next! !

!STONWriteReadTest methodsFor: 'private' stamp: 'KenD 4/5/2022 08:26:55'!
serialize: anObject

	^ String streamContents: [ :stream |
		STON writer 
			on: stream;
			nextPut: anObject ]! !

!STONWriteReadTest methodsFor: 'private' stamp: 'KenD 4/5/2022 08:27:58'!
serializeAndMaterialize: object
	| serialization materialization |
	serialization := self serialize: object.
	materialization := self materialize: serialization.
	self assert: object equals: materialization! !

!STONWriteReadTest methodsFor: 'private' stamp: 'KenD 4/18/2022 13:21:54'!
serializeAndMaterializeClose: object
	| serialization materialization |
	serialization := self serialize: object.
	materialization := self materialize: serialization.
	self assert: (object closeTo: materialization)! !

!STONWriteReadTest methodsFor: 'private' stamp: 'KenD 4/5/2022 08:28:05'!
serializeAndMaterializeJsonMode: object
	| serialization materialization |
	serialization := self serializeJson: object.
	materialization := self materialize: serialization.
	self assert: object equals: materialization! !

!STONWriteReadTest methodsFor: 'private' stamp: 'KenD 4/5/2022 08:28:16'!
serializeJson: anObject

	^ String streamContents: [ :stream |
		STON jsonWriter 
			on: stream;
			nextPut: anObject ]! !

!STONWriteReadTest methodsFor: 'testing' stamp: 'KenD 4/5/2022 08:37:55'!
testAlternativeRepresentation
	| testObject resultObject |
	testObject := STONAlternativeRepresentationTestObject example.
	"See the class comment of STONAlternativeRepresentationTestObject
	for a description of how the internal and external representation differ.
	See also STONAlternativeRepresentationTestObject>>#stonOn:
	and STONAlternativeRepresentationTestObject>>#fromSton:"
	resultObject := self materialize: (self serialize: testObject).
	self assert: resultObject id equals: testObject id.
	self assert: resultObject time equals: testObject time.
	self assert: (resultObject gridReference x closeTo: testObject gridReference x).
	self assert: (resultObject gridReference y closeTo: testObject gridReference y).! !

!STONWriteReadTest methodsFor: 'testing' stamp: 'KenD 4/5/2022 08:37:45'!
testAssociations
	| associations |
	associations := OrderedCollection new.
	1 to: 10 do: [ :each |
		associations add: each -> each printString ].
	self serializeAndMaterialize: associations! !

!STONWriteReadTest methodsFor: 'testing' stamp: 'KenD 4/5/2022 08:37:38'!
testCharacters
	| characters |
	characters := STON listClass withAll: ($a to: $z), ($A to: $Z).
	self serializeAndMaterialize: characters! !

!STONWriteReadTest methodsFor: 'testing' stamp: 'KenD 4/5/2022 08:37:26'!
testClasses
	| classes |
	classes := STON listClass withAll: { Point. Integer. Object }.
	self serializeAndMaterialize: classes.
	classes := STON listClass withAll: { Point class. Integer class. Object class }.
	self serializeAndMaterialize: classes.
	classes := STON listClass withAll: { Class. Metaclass. Class class. Point class class }.
	self serializeAndMaterialize: classes.! !

!STONWriteReadTest methodsFor: 'testing' stamp: 'KenD 4/15/2022 13:31:01'!
testCollections
	| collections |
	collections := STON listClass withAll: {
		#(1 2 3).
		OrderedCollection withAll: #(1 2 3).
		Set withAll: #(1 2 3).
		Bag withAll: #(1 2 2 3).
		Dictionary new at: 1 put: 1; at: 2 put: 2; yourself.
		#[1 2 3].
		#(1 2 3) asIntegerArray.
		Float64Array newFrom: #(1 2 3) "asFloatArray" }.
	self serializeAndMaterialize: collections! !

!STONWriteReadTest methodsFor: 'testing' stamp: 'KenD 4/5/2022 08:37:03'!
testCollectionsStructured
	| collections one two |
	one := 1@2.
	two := 2@3.
	collections := STON listClass withAll: {
	 	Bag withAll: { one. two. one. two. one }.
	 	Set withAll: { one. two. one. two. one }.
	 	OrderedCollection withAll: { one. two. one. two. one }.
	}.
	self serializeAndMaterialize: collections! !

!STONWriteReadTest methodsFor: 'testing' stamp: 'KenD 4/18/2022 13:29:27'!
testColors
	| colors |
	colors := STON listClass withAll: { 
		Color red.
		Color red copy setAlpha: 0.4.
		Color red lighter lighter }.
	self serializeAndMaterializeClose: colors! !

!STONWriteReadTest methodsFor: 'testing' stamp: 'KenD 4/5/2022 08:36:45'!
testCustomAssociations
	| associations |
	associations := OrderedCollection new.
	associations add: #foo->100.
	associations add: (STONTestAssociation key: #foo value:100).
	self serializeAndMaterialize: associations! !

!STONWriteReadTest methodsFor: 'testing' stamp: 'KenD 4/5/2022 08:36:39'!
testDatesAndTimes
	| datesAndTimes |
	datesAndTimes := STON listClass withAll: { 
		Time now. 
		Date today. 
		DateAndTime now }.
	self serializeAndMaterialize: datesAndTimes! !

!STONWriteReadTest methodsFor: 'testing' stamp: 'KenD 4/18/2022 13:24:26'!
testDiskFiles
	| diskFiles |
	self flag: #NeedsFileEntry.
	diskFiles := STON listClass withAll: { 
		DirectoryEntry smalltalkImageDirectory.
		DirectoryEntry currentDirectory.
		'foo/bar/readme.txt' asFileEntry .
		'./readme.txt' asFileEntry. }.
	self serializeAndMaterializeClose: diskFiles! !

!STONWriteReadTest methodsFor: 'testing' stamp: 'KenD 4/5/2022 08:35:53'!
testDomainObject
	| object objects |
	object := STONTestDomainObject dummy.
	self serializeAndMaterialize: object.
	objects := STON listClass streamContents: [ :stream |
		10 timesRepeat: [ stream nextPut: STONTestDomainObject dummy ] ].
	self serializeAndMaterialize: objects.
	objects := STON mapClass new.
	10 timesRepeat: [ | newObject |
		newObject := STONTestDomainObject dummy.
		objects at: newObject integer put: newObject ].
	self serializeAndMaterialize: objects.! !

!STONWriteReadTest methodsFor: 'testing' stamp: 'KenD 4/5/2022 08:34:12'!
testEmpty
	| empty |
	empty := STON listClass new.
	self serializeAndMaterialize: empty.
	empty := STON mapClass new.
	self serializeAndMaterialize: empty.! !

!STONWriteReadTest methodsFor: 'testing' stamp: 'KenD 4/18/2022 08:03:38'!
testFileSystemSupport
	self flag: #Unsupported.
"	| fileReferences fileLocators |
	self flag: #NeedsFileEntry.
	fileReferences := STON listClass withAll: { 
		FileLocator image asFileReference.
		FileLocator workingDirectory asFileReference.
		(FileLocator home / 'foo.txt') asFileReference }.
	self serializeAndMaterialize: fileReferences.
	fileLocators := STON listClass withAll: { 
		FileLocator image.
		FileLocator workingDirectory.
		FileLocator home / 'foo.txt' }.
	self serializeAndMaterialize: fileLocators."! !

!STONWriteReadTest methodsFor: 'testing' stamp: 'KenD 4/16/2022 12:52:11'!
testFloats
	| floats serialization materialization |
	floats := STON listClass withAll: ((-10 to: 10) collect: [ :each | each * Float pi ]).
	serialization := self serialize: floats.
	materialization := self materialize: serialization.
	self assert: floats size equals: materialization size.
	floats with: materialization do: [ :float :materializedFloat |
		"Use #closeTo: instead of #= to increase portability"
		self assert: (float closeTo: materializedFloat) ]! !

!STONWriteReadTest methodsFor: 'testing' stamp: 'KenD 4/5/2022 08:32:48'!
testFractions
	| fractions |
	fractions := STON listClass withAll: (-2/3 to: 2/3 by: 1/3).
	self serializeAndMaterialize: fractions! !

!STONWriteReadTest methodsFor: 'testing' stamp: 'KenD 4/5/2022 08:32:40'!
testIdentityCollections
	| collections |
	collections := STON listClass withAll: {
		IdentitySet withAll: #(1 2 3).
		IdentityDictionary new at: 1 put: 1; at: 2 put: 2; yourself.
		IdentityBag withAll: { #A. #B. #A. #B. #A } }.
	self serializeAndMaterialize: collections! !

!STONWriteReadTest methodsFor: 'testing' stamp: 'KenD 4/5/2022 08:32:34'!
testIntervals
	| intervals |
	intervals := STON listClass withAll: { 
		1 to: 10.
		1 to: 10 by: 2.
		100 to: 50 by: -5 }.
	self serializeAndMaterialize: intervals! !

!STONWriteReadTest methodsFor: 'testing' stamp: 'KenD 4/5/2022 08:32:26'!
testJsonMode
	| object |
	object := STON listClass withAll: {
		Float pi.
		'Hello World'.
		true.
		nil.
		STON listClass withAll: #( 1 2 3) asByteArray.
		STON mapClass new 
			at: 'x' put: 1; 
			at: 'y' put: 2; 
			yourself 
	}.
	self serializeAndMaterializeJsonMode: object! !

!STONWriteReadTest methodsFor: 'testing' stamp: 'KenD 4/16/2022 15:02:37'!
testKnownObjects
	| knownObject ston object |
	knownObject := STONTestKnownObject new.
	"make sure the system of remembering instances works"
	self assert: (STONTestKnownObject fromId: knownObject id asString) equals: knownObject.
	self assert: ((STONTestKnownObject fromId: knownObject id asString) == knownObject).
	"only the id string is serialized"
	ston := self serialize: knownObject.
	"upon serialization, objects with known id strings come from the remembered instances"
	object := self materialize: ston.
	self assert: object equals: knownObject.
	self assert: (object == knownObject).
	"not just the id is equal, but the rest of the object too"
	self assert: object description equals: knownObject description.

	STONTestKnownObject resetKnownObjects! !

!STONWriteReadTest methodsFor: 'testing' stamp: 'KenD 4/18/2022 08:04:18'!
testMemoryFileReferences
	self flag: #Unsupported.
"	| root dir1 file1 references ston result |
	self flag: #NeedsFileEntry.
	root := FileSystem memory root.
	dir1 := (root / 'dir1') ensureCreateDirectory.
	file1 := (dir1 / 'file1') ensureCreateFile.
	file1 writeStreamDo: [ :out | out nextPutAll: 'ABC' ].
	references := STON listClass withAll: { dir1 . file1 }.
	ston := self serialize: references.
	result := self materialize: ston.
	self assert: result first exists.
	self assert: result second exists.
	self assert: result first fileSystem equals: result second fileSystem. 
	self assert: result first fileSystem identicalTo: result second fileSystem. 
	self assert: result first fileSystem isMemoryFileSystem.
	self assert: result second contents equals: 'ABC'"! !

!STONWriteReadTest methodsFor: 'testing' stamp: 'KenD 4/17/2022 11:45:38'!
testMimeTypes
	self flag: #Unsupported
	"| mimeTypes |
	mimeTypes := STON listClass withAll: { 
		ZnMimeType applicationJson.
		ZnMimeType textPlain }.
	self serializeAndMaterialize: mimeTypes"! !

!STONWriteReadTest methodsFor: 'testing' stamp: 'KenD 4/5/2022 08:30:29'!
testOrderedDictionary
	"OrderedDictionary is special because it does not inherit from Dictionary.
	It might also not exist in some dialects, where this test could be skipped."
	
	| dictionaries orderedDictionaryClass orderedIdentityDictionaryClass |
	orderedDictionaryClass := self environment at: #OrderedDictionary ifAbsent: [ Dictionary ].
	orderedIdentityDictionaryClass := self environment at: #OrderedIdentityDictionary ifAbsent: [ IdentityDictionary ].
	dictionaries := STON listClass withAll: {
		orderedDictionaryClass new at: 1 put: 1; at: 2 put: 2; yourself.
		orderedDictionaryClass new at: #a put: 1; at: #b put: -2; at: #c put: 0; yourself.
		orderedDictionaryClass new.
		orderedIdentityDictionaryClass new at: 1 put: 1; at: 2 put: 2; yourself.
		orderedIdentityDictionaryClass new at: #a put: 1; at: #b put: -2; at: #c put: 0; yourself.
		orderedIdentityDictionaryClass new }.
	self serializeAndMaterialize: dictionaries! !

!STONWriteReadTest methodsFor: 'testing' stamp: 'KenD 4/5/2022 08:30:21'!
testPrimitives
	| primitives |
	primitives := STON listClass withAll: { true. false. nil }.
	self serializeAndMaterialize: primitives! !

!STONWriteReadTest methodsFor: 'testing' stamp: 'KenD 4/5/2022 08:30:14'!
testSharedColors
	| color1 color2 colors |
	color1 := Color r: 0.25 g: 0.5 b: 0.75 alpha: 0.4.
	color2 := Color red.
	colors := STON listClass withAll: { color1. color2. color2 }.
	self serializeAndMaterialize: colors! !

!STONWriteReadTest methodsFor: 'testing' stamp: 'KenD 4/5/2022 08:29:59'!
testSmallIntegers
	| integers |
	integers := STON listClass withAll: (-10 to: 10).
	self serializeAndMaterialize: integers! !

!STONWriteReadTest methodsFor: 'testing' stamp: 'KenD 4/17/2022 13:36:30'!
testSortedCollections
	| collections |
	collections := STON listClass withAll: {
		SortedCollection new.
		SortedCollection new: 0.
		#(5 3 7 2 1 4 10 9 8 6) asSortedCollection.
		"self flag: #Unsupported.   No SortFunctions"
"		#(5 3 7 2 1 4 10 9 8 6) asSortedCollection: #yourself ascending.
		#(5 3 7 2 1 4 10 9 8 6) asSortedCollection: #yourself descending.
		#('****' '*' '*****' '**' '***') asSortedCollection: #size ascending.
		#('****' '*' '*****' '**' '***') asSortedCollection: #size descending.
		#(5 3 7 2 1 4 10 nil 9 8 6) asSortedCollection: #yourself ascending undefinedFirst.
		#(5 3 7 2 1 4 10 nil 9 8 6) asSortedCollection: #yourself ascending reversed undefinedLast.
		#(5 3 7 2 1 4 10 nil 9 8 6) asSortedCollection: #yourself ascending undefinedFirst.
		#(5 3 7 2 1 4 10 nil 9 8 6) asSortedCollection: #yourself ascending reversed undefinedLast" }.
	self serializeAndMaterialize: collections! !

!STONWriteReadTest methodsFor: 'testing' stamp: 'KenD 4/17/2022 11:47:29'!
testSpecialCharacters
	| primitives |
	primitives := STON listClass withAll: { 
		String withAll: { Character tab. Character lf. Character cr }.
		String withAll: { $'. $". $\. $/ }.
		'élèves français'.
		'Düsseldorf Königsallee'.
		(#(1 10 20 30 127 140 150 160 200 255) collect: #asCharacter) as: String }.
	self serializeAndMaterialize: primitives! !

!STONWriteReadTest methodsFor: 'testing' stamp: 'KenD 4/17/2022 11:49:03'!
testSpecialClassNames
	self flag: #Unsupported. "AnonymousSubclass"
"	| specialClass key specialInstance ston reader object |
	specialClass := LookupKey newAnonymousSubclass.
	specialClass setName: #'STONTest_Lärm'.
	key := 999 atRandom asString asSymbol.
	specialInstance := specialClass key: key.
	ston := self serialize: specialInstance.
	reader := self reader: ston.
	(reader instVarNamed: #classes) 
		at: specialClass name 
		put: specialClass.
	object := reader next.
	self assert: object equals: specialInstance.
	self assert: object class equals: specialClass.
	self assert: object key equals: key"! !

!STONWriteReadTest methodsFor: 'testing' stamp: 'KenD 4/17/2022 11:42:42'!
testStrings
	| strings |
	strings := Collection allSubclasses 
		collect: [ :each | each name asString ].
	self serializeAndMaterialize: strings.
	strings := { 
		'foo'. 'Foo BAR'. ''. '	\\'''. 
		'élève en Français'. 
		String with: (Character codePoint: 16r20AC) " $� " }.
	self serializeAndMaterialize: strings.! !

!STONWriteReadTest methodsFor: 'testing' stamp: 'KenD 4/5/2022 08:29:05'!
testSymbols
	| symbols |
	symbols := #( #bytes #'' #Bytes123 ).
	self serializeAndMaterialize: symbols.
	symbols := Collection allSubclasses collect: [ :each | each name ].
	self serializeAndMaterialize: symbols.
	"simple symbols"
	symbols := #( #foo123 #'123foo' #'punctuation-_./' #'_Foo' #'/root' #'---' #'.st' ).
	self serializeAndMaterialize: symbols.
	"non-simple symbols"
	symbols := #( #'les-élèves-français' #'euro-€' #'ångström' ).
	self serializeAndMaterialize: symbols.! !

!STONWriteReadTest methodsFor: 'testing' stamp: 'KenD 4/5/2022 08:28:58'!
testTextAndRunArray
	| texts |
	texts := { 
		'Text!!' asText. 
		(Text string: 'I am bold' attribute: TextEmphasis bold), ' and I am normal text'.
		Text new }.
	self serializeAndMaterialize: texts! !

!STONWriteReadTest methodsFor: 'testing' stamp: 'KenD 4/17/2022 11:53:42'!
testURLs
	self flag: #Unsupported.
"	| urls |
	urls := STON listClass withAll: { 
		'https://pharo.org/files/pharo.png' asUrl. 
		'mailto:sven@stfx.eu' asUrl. 
		'file:///var/log/system.log' asUrl.
		'scheme://user:password@host:123/var/log/system.log?foo=1&bar#frag' asUrl }.
	self serializeAndMaterialize: urls"! !

!STONWriteReadTest methodsFor: 'testing' stamp: 'KenD 4/5/2022 08:26:17'!
testUUIDs
	| uuids |
	uuids := STON listClass withAll: { 
		UUID new.
		UUID new.
		UUID nilUUID }.
	self serializeAndMaterialize: uuids! !

!STONWriteReadTest methodsFor: 'testing' stamp: 'KenD 4/5/2022 08:28:42'!
testUser
	| user users |
	user := STONTestUser dummy.
	self serializeAndMaterialize: user.
	users := STON listClass streamContents: [ :stream |
		10 timesRepeat: [ stream nextPut: STONTestUser dummy ] ].
	self serializeAndMaterialize: users.
	users := STON mapClass new.
	10 timesRepeat: [ | newUser |
		newUser := STONTestUser dummy.
		users at: newUser username put: newUser ].
	self serializeAndMaterialize: users.! !

!STONWriteReadTest methodsFor: 'testing' stamp: 'KenD 4/5/2022 08:28:34'!
testUser2
	| user users |
	user := STONTestUser2 dummy.
	self serializeAndMaterialize: user.
	users := STON listClass streamContents: [ :stream |
		10 timesRepeat: [ stream nextPut: STONTestUser2 dummy ] ].
	self serializeAndMaterialize: users.
	users := STON mapClass new.
	10 timesRepeat: [ | newUser |
		newUser := STONTestUser2 dummy.
		users at: newUser username put: newUser ].
	self serializeAndMaterialize: users.! !

!STONWriteAsciiOnlyReadTest methodsFor: 'private' stamp: 'KenD 4/5/2022 12:22:20'!
serialize: anObject

	^ String streamContents: [ :stream |
		STON writer 
			on: stream; 
			asciiOnly: true;
			nextPut: anObject ]! !

!STONWriteAsciiOnlyReadTest methodsFor: 'private' stamp: 'KenD 4/5/2022 12:22:08'!
serializeJson: anObject

	^ String streamContents: [ :stream |
		STON jsonWriter 
			on: stream; 
			asciiOnly: true;
			nextPut: anObject ]! !

!STONWritePrettyPrinterReadTest methodsFor: 'private' stamp: 'KenD 4/5/2022 12:21:27'!
serialize: anObject

	^ String streamContents: [ :stream |
		STON writer 
			on: stream; 
			prettyPrint: true;
			nextPut: anObject ]! !

!STONWritePrettyPrinterReadTest methodsFor: 'private' stamp: 'KenD 4/5/2022 12:21:17'!
serializeJson: anObject

	^ String streamContents: [ :stream |
		STON jsonWriter 
			on: stream; 
			prettyPrint: true;
			nextPut: anObject ]! !

!STONWriteReadCommentsTest methodsFor: 'options' stamp: 'KenD 4/5/2022 08:39:36'!
reader: string

	^ STON reader
		on: (STONCStyleCommentsSkipStream on: string readStream);
		yourself! !

!STONWriteReadCommentsTest methodsFor: 'private' stamp: 'KenD 4/5/2022 08:39:26'!
materialize: string

	^ STON reader
		on: (STONCStyleCommentsSkipStream on: string readStream);
		optimizeForLargeStructures;
		next! !

!STONWriteReadCommentsTest methodsFor: 'private' stamp: 'KenD 4/5/2022 08:39:45'!
serialize: anObject

	^ String streamContents: [ :stream |
		stream << '/* initial comment */'.
		STON writer 
			on: stream;
			nextPut: anObject.
		stream << '/* final comment */' ]! !

!STONWriterTest methodsFor: 'private' stamp: 'KenD 4/4/2022 15:01:52'!
serialize: anObject

	^ String streamContents: [ :stream |
		STON writer 
			on: stream;
			nextPut: anObject ]! !

!STONWriterTest methodsFor: 'private' stamp: 'KenD 4/4/2022 15:01:43'!
serializeAsciiOnly: anObject

	^ String streamContents: [ :stream |
		STON writer 
			on: stream;
			asciiOnly: true;
			nextPut: anObject ]! !

!STONWriterTest methodsFor: 'private' stamp: 'KenD 4/4/2022 15:01:33'!
serializeJson: anObject

	^ String streamContents: [ :stream |
		STON jsonWriter 
			on: stream; 
			nextPut: anObject ]! !

!STONWriterTest methodsFor: 'private' stamp: 'KenD 4/4/2022 15:01:22'!
serializePretty: anObject

	^ String streamContents: [ :stream |
		STON writer 
			on: stream; 
			prettyPrint: true;
			nextPut: anObject ]! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/4/2022 15:00:58'!
testAssociation

	self assert: (self serialize: 'foo' -> 1) equals: '''foo'':1'.
	self assert: (self serialize: #bar -> 2) equals: '#bar:2'.
	self assert: (self serialize: 'foo bar' -> #ok) equals: '''foo bar'':#ok'.
	self assert: (self serialize: 123 -> 456) equals: '123:456'! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/4/2022 15:00:46'!
testBag

	self 
		assert: (self serialize: (Bag withAll: #(a a)))
		equals: 'Bag{#a:2}'.
	self 
		assert: (self serialize: Bag new)
		equals: 'Bag{}'! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/4/2022 15:00:33'!
testBoolean

	self assert: (self serialize: true) equals: 'true'.
	self assert: (self serialize: false) equals: 'false'! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/4/2022 15:00:23'!
testByteArray

	self assert: (self serialize: #(1 2 3) asByteArray) equals: 'ByteArray[''010203'']'! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/4/2022 15:00:11'!
testClass

	self assert: (self serialize: Point) equals: 'Class[#Point]'! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/11/2022 16:45:54'!
testColor
	self 
		assert: (self serialize: Color red) 
		equals: 'Color[#red]'.
	self 
		assert: (self serialize: (Color red copy setAlpha: 0.4)) 
		equals: 'TranslucentColor{#red:0.898,#green:0.0,#blue:0.0,#alpha:0.4}'.
	self 
		assert: (self serialize: Color red lighter lighter) 
		equals: 'Color{#red:1.0,#green:0.06,#blue:0.06,#alpha:1.0}'.! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/4/2022 14:56:53'!
testCustomNewline
	| output |
	output := String streamContents: [ :out |
		(STON writer on: out)
			newLine: String lf;
			prettyPrint: true;
			nextPut: #( 1 ) ].
	self 
		assert: output 
		equals: ('[\	1\]' withCRs replaceAll: Character cr with: Character lf)! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/17/2022 13:16:19'!
testDateAndTime
	| dateAndTime |
	dateAndTime := DateAndTime
		year: 2012
		month: 1
		day: 1
		hour: 6
		minute: 30
		second: 15
		offset: (Duration hours: 1).
	self assert: (self serialize: dateAndTime) equals: 'DateAndTime[''2012-01-01T06:30:15+01:00'']'! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/12/2022 07:47:29'!
testDictionary
	| collection |
	collection := STON mapClass new
		at: 1 put: 1;
		at: 2 put: 2;
		yourself.
	self assert: (self serialize: collection) equals: '{2:2,1:1}'.
	self assert: (self serialize: STON mapClass new) equals: '{}'! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/4/2022 14:56:16'!
testDictionaryWithComplexKeys
	| collection |
	collection := STON mapClass new at: true put: 1; at: #(foo) put: 2; yourself.
	self assert: (#('{true:1,[#foo]:2}' '{[#foo]:2,true:1}') includes: (self serialize: collection))! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/12/2022 12:39:02'!
testDiskFile
	self assert: (self serialize: 'foo.txt' asFileEntry) equals: 'FILE[''./foo.txt'']'.
	self assert: (self serialize: '/tmp/foo.txt' asFileEntry) equals: 'FILE[''/tmp/foo.txt'']'.
"	self assert: (self serialize: 'tmp/foo.txt' asFileEntry) equals: 'FILE[''tmp/foo.txt'']'."
	self assert: (self serialize: '/tmp' asFileEntry) equals: 'FILE[''/tmp'']'.
	self assert: (self serialize: '/tmp/' asFileEntry) equals: 'FILE[''/tmp'']'.! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/4/2022 14:54:11'!
testDoubleQuotedString
	| string |
	self assert: (self serializeJson: 'foo') equals: '"foo"'.
	self assert: (self serializeJson: 'FOO') equals: '"FOO"'.
	self assert: (self serializeJson: 'élève en Français') equals: '"élève en Français"'.
	string := String withAll: {$" . $' . $\ . $/ . Character tab . Character cr . Character lf . Character newPage . Character backspace}.
	"Note that in JSON mode, double quotes get escaped, and single quotes not"
	self assert: (self serializeJson: string) equals: '"\"''\\/\t\r\n\f\b"'! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/4/2022 14:54:02'!
testEmptyArrayPretty
	self assert: (self serializePretty: STON listClass new) equals: '[ ]'! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/4/2022 14:53:50'!
testEmptyDictionaryPretty
	self assert: (self serializePretty: STON mapClass new) equals: '{ }'! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/4/2022 14:53:38'!
testFloat
	self assert: (self serialize: 1.5) equals: '1.5'.
	self assert: (self serialize: 0.0) equals: '0.0'.
	self assert: (self serialize: -1.5) equals: '-1.5'.
	self assert: ((self serialize: Float pi) beginsWith: '3.14159').
	self assert: ((self serialize: (1 / 3) asFloat) beginsWith: '0.333').
	self assert: (self serialize: (10 raisedTo: 100) asFloat) equals: '1.0e100'.
	self assert: (self serialize: (10 raisedTo: -50) asFloat) equals: '1.0e-50'.
	self assert: (self serialize: (10 raisedTo: -50) asFloat negated) equals: '-1.0e-50'! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/4/2022 14:53:28'!
testFraction
	self assert: (self serialize: 1/3) equals: '1/3'.
	self assert: (self serialize: -1/3) equals: '-1/3'.
	self assert: (self serialize: 10/100) equals: '1/10'.
	self assert: (self serialize: 100/10) equals: '10'.
	self assert: (self serialize: 123/123) equals: '1'.
	self assert: (self serialize: 100/11) equals: '100/11'.! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/4/2022 14:53:20'!
testIdentityDictionary
	| collection |
	collection := IdentityDictionary new
		at: 1 put: 1;
		at: 2 put: 2;
		yourself.
	self assert: (self serialize: collection) equals: 'IdentityDictionary{1:1,2:2}'.
	self assert: (self serialize: IdentityDictionary new) equals: 'IdentityDictionary{}'! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/4/2022 14:53:13'!
testInteger
	self assert: (self serialize: 1) equals: '1'.
	self assert: (self serialize: 0) equals: '0'.
	self assert: (self serialize: -1) equals: '-1'.
	self assert: (self serialize: 1234567890) equals: '1234567890'.
	self assert: (self serialize: -1234567890) equals: '-1234567890'! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/4/2022 14:53:04'!
testIsSimpleSymbol
	self assert: (STON writer isSimpleSymbol: #foo).
	self assert: (STON writer isSimpleSymbol: #az).
	self assert: (STON writer isSimpleSymbol: #AZ).
	self assert: (STON writer isSimpleSymbol: #N0123456789).
	self assert: (STON writer isSimpleSymbol: #foo123).
	self assert: (STON writer isSimpleSymbol: #'Foo/Bar').
	self assert: (STON writer isSimpleSymbol: #'Foo.Bar').
	self assert: (STON writer isSimpleSymbol: #'Foo-Bar').
	self assert: (STON writer isSimpleSymbol: #'Foo_Bar').
	self assert: (STON writer isSimpleSymbol: #foo).
	self deny: (STON writer isSimpleSymbol: #'#^&$%')! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/4/2022 14:52:31'!
testKeepingNewLines
	| input result output |
	input := 'line ending with CR', String cr, 
		'line ending with LF', String lf, 
		'line ending with CRLF', String crlfString.
	output := '''line ending with CR', String crlfString, 
		'line ending with LF', String crlfString, 
		'line ending with CRLF', String crlfString, ''''.
	result := String streamContents: [ :out |
		(STON writer on: out) newLine: String crlfString; keepNewLines: true; nextPut: input ].
	self assert: result equals: output.
	output := '''line ending with CR', String cr, 
		'line ending with LF', String cr, 
		'line ending with CRLF', String cr, ''''.
	result := String streamContents: [ :out |
		(STON writer on: out) newLine: String cr; keepNewLines: true; nextPut: input ].
	self assert: result equals: output! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/4/2022 14:52:21'!
testList
	self assert: (self serialize: (STON listClass withAll: #(1 2 3))) equals: '[1,2,3]'.
	self assert: (self serialize: STON listClass new) equals: '[]'.
	self assert: (self serialize: (STON listClass withAll: {1 . -1 . 0 . #foo . 'a b c' . true . false . nil})) equals: '[1,-1,0,#foo,''a b c'',true,false,nil]'! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/4/2022 14:52:11'!
testMap
	| map |
	(map := STON mapClass new)
		at: #foo put: 1;
		at: #bar put: 2.
	self assert: (self serialize: map) equals: '{#foo:1,#bar:2}'.
	self assert: (self serialize: STON mapClass new) equals: '{}'.
	map removeAll.
	map at: 'foo bar' put: #ok.
	self assert: (self serialize: map) equals: '{''foo bar'':#ok}'.
	map removeAll.
	map at: 123 put: 456.
	self assert: (self serialize: map) equals: '{123:456}'! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/4/2022 14:52:00'!
testMetaclass

	self assert: (self serialize: Point class) equals: 'Metaclass[#Point]'! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/4/2022 14:51:33'!
testNil

	self assert: (self serialize: nil) equals: 'nil'! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/17/2022 13:19:59'!
testNonBMPCharacterEncoding
	"Characters not in the Basic Multilingual Plane are encoded as a UTF-16 surrogate pair"
	self flag: #Unsupported.
	"| string json |
	string := String with: 16r1D11E asCharacter. ""MUSICAL SYMBOL G CLEF""
	json := String streamContents: [ :out |
		(STON writer on: out) asciiOnly: true; nextPut: string ].
	self assert: json equals: '''\uD834\uDD1E'''"! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/4/2022 14:51:08'!
testNull
	self assert: (self serializeJson: nil) equals: 'null'! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/4/2022 14:50:59'!
testOrderedCollection
	| collection |
	collection := OrderedCollection with: 1 with: 2 with: 3.
	self assert: (self serialize: collection) equals: 'OrderedCollection[1,2,3]'.
	self assert: (self serialize: OrderedCollection new) equals: 'OrderedCollection[]'! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/4/2022 14:50:51'!
testPoint
	self assert: (self serialize: 1 @ 2) equals: 'Point[1,2]'! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/4/2022 14:50:36'!
testReferenceCycle
	| array |
	array := STON listClass with: 1 with: nil.
	array at: 2 put: array.
	self assert: (self serialize: array) equals: '[1,@1]'! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/4/2022 14:50:27'!
testReferenceSharing
	| array one |
	one := {#one}.
	array := STON listClass with: one with: one with: one.
	self assert: (self serialize: array) equals: '[[#one],@2,@2]'! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/4/2022 14:50:14'!
testReferenceSharingError
	| serializer array one |
	serializer := [ :object | 
		String streamContents: [ :stream |
			STON writer 
				on: stream;
				referencePolicy: #error; 
				nextPut: object ] ].
	one := { #one }.
	array := STON listClass with: one with: one with: one.
	self 
		should: [ (serializer value: array) = '[[#one],[#one],[#one]]' ] 
		raise: STONWriterError! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/4/2022 14:50:01'!
testReferenceSharingIgnore
	| serializer array one |
	serializer := [ :object | 
	String
		streamContents: [ :stream | 
			STON writer
				on: stream;
				referencePolicy: #ignore;
				nextPut: object ] ].
	one := {#one}.
	array := STON listClass with: one with: one with: one.
	self assert: (serializer value: array) equals: '[[#one],[#one],[#one]]'! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/4/2022 14:49:39'!
testRestrictedClassesInJsonMode

	self should: [ self serializeJson: 1@2 ] raise: STONWriterError.
	self should: [ self serializeJson: #foo->100 ] raise: STONWriterError.
	self should: [ self serializeJson: STONTestUser dummy ] raise: STONWriterError.! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/12/2022 12:44:41'!
testString
	| string |
	self assert: (self serialize: 'foo') equals: '''foo'''.
	self assert: (self serialize: 'FOO') equals: '''FOO'''.
	"self assert: (self serializeAsciiOnly: 'élève en Français') equals: '''\u00E9l\u00E8ve en Fran\u00E7ais'''."
	self assert: (self serialize: 'élève en Français') equals: '''élève en Français'''.
	string := String withAll: {$" . $' . $\ . $/ . Character tab . Character cr . Character lf . Character newPage . Character backspace}.
	self assert: (self serialize: string) equals: '''"\''\\/\t\r\n\f\b'''! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/4/2022 14:49:08'!
testSymbol
	self assert: (self serialize: #foo) equals: '#foo'.
	self assert: (self serialize: #FOO) equals: '#FOO'.
	self assert: (self serialize: #bytes) equals: '#bytes'.
	self assert: (self serialize: #'foo.bar') equals: '#foo.bar'.
	self assert: (self serialize: #'foo-bar') equals: '#foo-bar'.
	self assert: (self serialize: #foo_bar) equals: '#foo_bar'.
	self assert: (self serialize: #'foo/bar') equals: '#foo/bar'.
	self assert: (self serialize: #'foo bar') equals: '#''foo bar'''.
	self assert: (self serialize: #foo123) equals: '#foo123'! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/4/2022 14:48:55'!
testSymbolAsString
	self assert: (self serializeJson: #foo) equals: '"foo"'.
	self assert: (self serializeJson: #FOO) equals: '"FOO"'! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/12/2022 13:01:41'!
testTime
	| time |
	time := Time hour: 6 minute: 30 second: 15.
	self assert: (self serialize: time) equals: 'Time[''06:30:15'']'.
	time := Time hour: 6 minute: 30 second: 15 nanoSecond: 123.
	self assert: (self serialize: time) equals: 'Time[''06:30:15.000000123'']'.! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/17/2022 11:54:27'!
testURL
	self flag: #Unsupported.
"	self
		assert: (self serialize: 'https://pharo.org/files/pharo.png' asUrl)
		equals: 'URL[''https://pharo.org/files/pharo.png'']'.
	self
		assert: (self serialize: 'mailto:sven@stfx.eu' asUrl)
		equals: 'URL[''mailto:sven@stfx.eu'']'.
	self
		assert: (self serialize: 'file:///var/log/system.log' asUrl)
		equals: 'URL[''file:///var/log/system.log'']'.
	self
		assert: (self serialize: 'scheme://user:password@host:123/var/log/system.log?foo=1&bar#frag' asUrl)
		equals: 'URL[''scheme://user:password@host:123/var/log/system.log?foo=1&bar#frag'']'."! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/12/2022 12:55:06'!
testUser
	| user |
	(user := STONTestUser new)
		username: 'john@foo.com';
		password: 'secret1'.
	self 
		assert: (self serialize: user)
		equals: 'TestUser{#first:true,#username:''john@foo.com'',#password:''secret1'',#enabled:true}'! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/4/2022 14:48:00'!
testUser2
	| user |
	(user := STONTestUser2 new)
		username: 'john@foo.com';
		password: 'secret1'.
	self 
		assert: (self serialize: user)
		equals: 'TestUser2{#username:''john@foo.com'',#password:''secret1'',#enabled:true}'! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/4/2022 14:47:50'!
testUser3Nil
	| user |
	user := STONTestUser3 new.
	self 
		assert: (self serialize: user) 
		equals: 'TestUser3{#username:nil,#password:nil,#enabled:true}'! !

!STONWriterTest methodsFor: 'testing' stamp: 'KenD 4/12/2022 12:56:22'!
testUserNil
	| user |
	user := STONTestUser new.
	self assert: (self serialize: user) equals: 'TestUser{#first:true,#enabled:true}'! !

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

!STONAlternativeRepresentationTestObject methodsFor: 'accessing' stamp: 'KenD 4/12/2022 13:20:07'!
fromSton: stonReader

	stonReader parseMapDo: [ :key :value |
		key = #id ifTrue: [ self id: value ].
		key = #time ifTrue: [ self timeUTC: value ].
		key = #grid_reference ifTrue: [ self gridReferenceImperial: value ] ]! !

!STONAlternativeRepresentationTestObject methodsFor: 'accessing' stamp: 'KenD 4/12/2022 13:19:45'!
gridReference

	^ gridReference! !

!STONAlternativeRepresentationTestObject methodsFor: 'accessing' stamp: 'KenD 4/12/2022 13:19:56'!
gridReference: value

	gridReference := value! !

!STONAlternativeRepresentationTestObject methodsFor: 'accessing' stamp: 'KenD 4/12/2022 13:19:25'!
gridReferenceImperial

	^ gridReference / 1.609344! !

!STONAlternativeRepresentationTestObject methodsFor: 'accessing' stamp: 'KenD 4/12/2022 13:19:35'!
gridReferenceImperial: value

	gridReference := value * 1.609344! !

!STONAlternativeRepresentationTestObject methodsFor: 'accessing' stamp: 'KenD 4/12/2022 13:19:03'!
id

	^ id! !

!STONAlternativeRepresentationTestObject methodsFor: 'accessing' stamp: 'KenD 4/12/2022 13:19:13'!
id: anObject

	id := anObject! !

!STONAlternativeRepresentationTestObject methodsFor: 'accessing' stamp: 'KenD 4/12/2022 13:17:35'!
time

	^ time! !

!STONAlternativeRepresentationTestObject methodsFor: 'accessing' stamp: 'KenD 4/12/2022 13:18:01'!
time: anObject

	time := anObject! !

!STONAlternativeRepresentationTestObject methodsFor: 'accessing' stamp: 'KenD 4/12/2022 13:12:28'!
timeUTC

	^ time asUTC! !

!STONAlternativeRepresentationTestObject methodsFor: 'accessing' stamp: 'KenD 4/14/2022 08:02:46'!
timeUTC: value

	time := value asUTC "offset: DateAndTime localOffset"! !

!STONAlternativeRepresentationTestObject class methodsFor: 'as yet unclassified' stamp: 'KenD 4/12/2022 13:11:57'!
example

	^ self new
		id: 1e9 atRandom; 
		time: DateAndTime now; 
		gridReference: 150.75@250.25; 
		yourself! !

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

!STONReference methodsFor: 'testing' stamp: 'KenD 4/15/2022 13:24:37'!
isStonReference

	^ true! !

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

!STONListWriter methodsFor: 'accessing' stamp: 'KenD 4/4/2022 12:05:17'!
add: anObject

	first ifTrue: [ first := false ] ifFalse: [ writer listElementSeparator ].
	writer nextPut: anObject! !

!STONShortListWriter methodsFor: 'accessing' stamp: 'KenD 4/4/2022 12:07:21'!
add: anObject

	first ifTrue: [ first := false ] ifFalse: [ writer shortListElementSeparator ].
	writer nextPut: anObject! !

!STONMapWriter methodsFor: 'accessing' stamp: 'KenD 4/4/2022 12:06:11'!
at: key put: value

	first ifTrue: [ first := false ] ifFalse: [ writer mapElementSeparator ].
	writer encodeKey: key value: value! !

!STONTestUser methodsFor: 'accessing' stamp: 'KenD 4/4/2022 14:43:01'!
enabled

	^ enabled! !

!STONTestUser methodsFor: 'accessing' stamp: 'KenD 4/4/2022 14:43:15'!
enabled: anObject

	enabled := anObject! !

!STONTestUser methodsFor: 'accessing' stamp: 'KenD 4/4/2022 14:41:17'!
password

	^ password! !

!STONTestUser methodsFor: 'accessing' stamp: 'KenD 4/4/2022 14:41:25'!
password: anObject

	password := anObject! !

!STONTestUser methodsFor: 'accessing' stamp: 'KenD 4/4/2022 14:40:54'!
username

	^ username! !

!STONTestUser methodsFor: 'accessing' stamp: 'KenD 4/4/2022 14:41:06'!
username: anObject

	username := anObject! !

!STONTestUser methodsFor: 'comparing' stamp: 'KenD 4/4/2022 14:42:43'!
= anObject
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ username = anObject username 
		and: [ password = anObject password 
			and: [ enabled = anObject enabled ] ]! !

!STONTestUser methodsFor: 'comparing' stamp: 'KenD 4/4/2022 14:42:21'!
hash
	"Answer an integer value that is related to the identity of the receiver."

	^ username hash bitXor: (password hash bitXor: enabled hash)! !

!STONTestUser methodsFor: 'initialize-release' stamp: 'KenD 4/4/2022 14:41:58'!
initialize 

	super initialize.
	enabled := true! !

!STONTestUser class methodsFor: 'instance creation' stamp: 'KenD 4/4/2022 14:40:30'!
dummy
	"self dummy"
	
	| username password |
	username := String streamContents: [ :stream |
		stream << 'user'; print: 999 atRandom; << '@company'; print: 99 atRandom; << '.com' ].
	password := String streamContents: [ :stream |
		stream << 'secret'; print: 999 atRandom ].
	^ self new
		username: username;
		password: password;
		yourself! !

!STONTestUser2 methodsFor: 'ston-core' stamp: 'KenD 4/4/2022 14:45:14'!
fromSton: stonReader

	stonReader parseMapDo: [ :key :value |
		key = #username ifTrue: [ username := value ].
		key = #password ifTrue: [ password := value ].
		key = #enabled ifTrue: [ enabled := value ] ]! !

!STONTestUser3 methodsFor: 'ston-core' stamp: 'KenD 4/4/2022 14:46:59'!
stonShouldWriteNilInstVars

	^ true! !

!STONTestUser3 class methodsFor: 'ston-core' stamp: 'KenD 4/4/2022 14:46:20'!
stonAllInstVarNames

	^ #(username password enabled)! !

!STONTestDomainObject methodsFor: 'accessing' stamp: 'KenD 4/16/2022 13:08:54'!
boolean

	^ boolean! !

!STONTestDomainObject methodsFor: 'accessing' stamp: 'KenD 4/16/2022 13:09:04'!
boolean: anObject

	boolean := anObject! !

!STONTestDomainObject methodsFor: 'accessing' stamp: 'KenD 4/16/2022 13:08:34'!
bytes

	^ bytes! !

!STONTestDomainObject methodsFor: 'accessing' stamp: 'KenD 4/16/2022 13:08:43'!
bytes: anObject

	bytes := anObject! !

!STONTestDomainObject methodsFor: 'accessing' stamp: 'KenD 4/16/2022 13:08:13'!
color

	^ color! !

!STONTestDomainObject methodsFor: 'accessing' stamp: 'KenD 4/16/2022 13:08:26'!
color: anObject

	color := anObject! !

!STONTestDomainObject methodsFor: 'accessing' stamp: 'KenD 4/16/2022 13:07:50'!
created

	^ created! !

!STONTestDomainObject methodsFor: 'accessing' stamp: 'KenD 4/16/2022 13:07:58'!
created: anObject

	created := anObject! !

!STONTestDomainObject methodsFor: 'accessing' stamp: 'KenD 4/16/2022 13:07:20'!
description

	^ description! !

!STONTestDomainObject methodsFor: 'accessing' stamp: 'KenD 4/16/2022 13:07:37'!
description: anObject

	description := anObject! !

!STONTestDomainObject methodsFor: 'accessing' stamp: 'KenD 4/16/2022 13:07:00'!
float

	^ float! !

!STONTestDomainObject methodsFor: 'accessing' stamp: 'KenD 4/16/2022 13:07:11'!
float: anObject

	float := anObject! !

!STONTestDomainObject methodsFor: 'accessing' stamp: 'KenD 4/16/2022 13:04:59'!
integer

	^ integer! !

!STONTestDomainObject methodsFor: 'accessing' stamp: 'KenD 4/16/2022 13:05:11'!
integer: anObject

	integer := anObject! !

!STONTestDomainObject methodsFor: 'accessing' stamp: 'KenD 4/16/2022 13:04:38'!
modified

	^ modified! !

!STONTestDomainObject methodsFor: 'accessing' stamp: 'KenD 4/16/2022 13:04:47'!
modified: anObject

	modified := anObject! !

!STONTestDomainObject methodsFor: 'accessing' stamp: 'KenD 4/16/2022 13:04:20'!
tags

	^ tags! !

!STONTestDomainObject methodsFor: 'accessing' stamp: 'KenD 4/16/2022 13:04:29'!
tags: anObject

	tags := anObject! !

!STONTestDomainObject methodsFor: 'comparing' stamp: 'KenD 4/16/2022 13:06:34'!
= anObject
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ color = anObject color
		and: [ 
			modified = anObject modified
				and: [ 
					created = anObject created
						and: [ 
							description = anObject description
								and: [ 
									boolean = anObject boolean
										and: [ 
											(float closeTo: anObject float) 		"Use #closeTo: instead of #= to increase portability"
												and: [ 
													bytes = anObject bytes 
														and: [ 
															integer = anObject integer 
																and: [ tags = anObject tags ] ] ] ] ] ] ] ]! !

!STONTestDomainObject methodsFor: 'comparing' stamp: 'KenD 4/16/2022 13:06:14'!
hash
	"Answer an integer value that is related to the identity of the receiver."

	^ color hash
		bitXor:
			(modified hash
				bitXor:
					(created hash
						bitXor:
							(description hash
								bitXor: (boolean hash bitXor: (float hash bitXor: (bytes hash bitXor: (integer hash bitXor: tags hash)))))))! !

!STONTestDomainObject methodsFor: 'initialization' stamp: 'KenD 4/16/2022 13:05:58'!
initialize

	created := modified := DateAndTime now.! !

!STONTestDomainObject class methodsFor: 'instance creation' stamp: 'KenD 4/16/2022 13:03:51'!
dummy
	^ self new
		integer: 999999 atRandom;
		float: 999 atRandom / Float pi;
		boolean: #(true false) atRandom;
		bytes: (ByteArray streamContents: [ :out | 32 timesRepeat: [ out nextPut: 255 atRandom ] ]);
		description: (String streamContents: [ :out | 16 atRandom timesRepeat: [ out nextPutAll: 'Blah' ] ]);
		color: #(#red #green #blue) atRandom;
		tags: (Array 
			with: #(#one #two #three) atRandom
 			with: #(#alpha #beta #gamma) atRandom 
			with: #(#low #medium #high) atRandom);
		yourself! !

!STONTestKnownObject methodsFor: 'accessing' stamp: 'KenD 4/16/2022 13:17:58'!
description

	^ description! !

!STONTestKnownObject methodsFor: 'accessing' stamp: 'KenD 4/16/2022 13:18:07'!
description: string

	description := string! !

!STONTestKnownObject methodsFor: 'accessing' stamp: 'KenD 4/16/2022 13:17:13'!
id

	^ id! !

!STONTestKnownObject methodsFor: 'accessing' stamp: 'KenD 4/16/2022 13:17:24'!
id: uuid

	id := uuid.
	self description: 'I am a complex object known under the ID ', id asString, ' - I was created @ ', DateAndTime now asString! !

!STONTestKnownObject methodsFor: 'comparing' stamp: 'KenD 4/16/2022 13:17:46'!
= object

	self class == object class ifFalse: [ ^ false ].
	^ self id = object id! !

!STONTestKnownObject methodsFor: 'comparing' stamp: 'KenD 4/16/2022 13:17:36'!
hash

	^ self id hash! !

!STONTestKnownObject methodsFor: 'initialization' stamp: 'KenD 4/16/2022 13:16:58'!
initialize

	super initialize.
	self id: UUID new.
	self class addKnownObject: self! !

!STONTestKnownObject class methodsFor: 'accessing' stamp: 'KenD 4/16/2022 13:14:56'!
addKnownObject: object

	^ self knownObjects addIfNotPresent: object! !

!STONTestKnownObject class methodsFor: 'accessing' stamp: 'KenD 4/16/2022 13:13:57'!
knownObjects

	^ KnownObjects ifNil: [ KnownObjects := OrderedCollection new ]! !

!STONTestKnownObject class methodsFor: 'accessing' stamp: 'KenD 4/16/2022 13:14:04'!
resetKnownObjects

	KnownObjects ifNotNil: [ :collection | collection removeAll ]! !

!STONTestKnownObject class methodsFor: 'instance creation' stamp: 'KenD 4/16/2022 13:14:41'!
fromId: idString
	"Given id, return a matching instance of me, either by returning an existing known instance or by creating a new one (that is automatically added to the known instances)"
	
	| uuid |
	uuid := UUID fromString: idString.
	^ self knownObjects 
		detect: [ :each | each id = uuid ] 
		ifNone: [ self new id: uuid ]! !

!STONTestKnownObject class methodsFor: 'ston-core' stamp: 'KenD 4/16/2022 13:14:30'!
fromSton: stonReader

	^ self fromId: stonReader parseListSingleton! !

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

!STONWriter methodsFor: 'private' stamp: 'KenD 4/5/2022 12:30:26'!
isSimpleSymbol: symbol

	self flag: #WideString.
	(symbol isEmpty " or: [ symbol isWideString ]") 
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

!STONWriter methodsFor: 'private' stamp: 'KenD 4/14/2022 08:20:11'!
newlineIndent

	prettyPrint ifTrue: [ 
		writeStream newLine.
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

!ProtoObject methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/16/2022 15:04:47'!
environment
	"Necessary to support disjoint class hierarchies."

	^Smalltalk		"No environments in Cuis..."! !

!Object methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/12/2022 14:56:13'!
closeTo: anObject
	"Answer whether the receiver and the argument represent the same
	object. If = is redefined in any subclass, consider also redefining the
	message hash."

	^[self = anObject] ifError: [false]! !

!Object methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 12:03:24'!
fromSton: stonReader
	"Decode non-variable classes from a map of their instance variables and values.
	Override to customize and add a matching #toSton: (see implementors)."
	
	self class isVariable 
		ifTrue: [
			stonReader error: 'custom #fromSton: implementation needed for variable/indexable class' ]
		ifFalse: [
			stonReader parseNamedInstVarsFor: self ]! !

!Object methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 12:03:13'!
isStonReference

	^ false! !

!Object methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/16/2022 14:48:22'!
parserClass
	"Answer a parser class to use for parsing methods compiled by instances of the receiver."

	^Parser! !

!Object methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/17/2022 12:00:15'!
putOn:aStream

	^ aStream nextPut:self.
! !

!Object methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 12:03:03'!
stonContainSubObjects
	"Return true if I contain subObjects that should be processed, false otherwise.
	Overwrite when necessary. See also #stonProcessSubObjects:"
	
	^ true! !

!Object methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 12:02:51'!
stonOn: stonWriter
	"Encode non-variable classes with a map of their instance variable and values.
	Override to customize and add a matching #fromSton: (see implementors)."

	self class isVariable 
		ifTrue: [
			stonWriter error: 'custom #stonOn: implementation needed for variable/indexable class' ]
		ifFalse: [
			stonWriter writeObject: self ]
	! !

!Object methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 12:02:25'!
stonPostReferenceResolution
	"Hook that is called when references were resolved processing this object or one of its sub objects. This will most probably influence hash values. Override to take appropriate action."! !

!Object methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 12:02:15'!
stonProcessSubObjects: block
	"Execute block to (potentially) change each of my subObjects.
	In general, all instance and indexable variables are processed.
	Overwrite when necessary. Not used when #stonContainSubObjects returns false."
	
	1 to: self class instSize do: [ :each |
		self instVarAt: each put: (block value: (self instVarAt: each)) ].
	(self class isVariable and: [ self class isBytes not ])
		ifTrue: [
			1 to: self basicSize do: [ :each |
				self basicAt: each put: (block value: (self basicAt: each)) ] ]! !

!Object methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 12:01:54'!
stonShouldWriteNilInstVars
	"Return true if my instance variables that are nil should be written out, 
	false otherwise. Overwrite when necessary. By default, return false."
	
	^ false! !

!Object class methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 12:01:36'!
fromSton: stonReader
	"Create a new instance and delegate decoding to instance side.
	Override only when new instance should be created directly (see implementors). "
	
	^ self new ::
		fromSton: stonReader;
		yourself! !

!Object class methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 12:01:20'!
stonAllInstVarNames
	"Override to encode my instances using a custom set of instance variables or to define their order."
	
	^ self allInstVarNames! !

!Object class methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 12:01:02'!
stonName
	"Override to encode my instances using a different class name.
	Use symbols as class name/tag."
	
	"Class names are expected to conform
	to first STONReader>>#isClassStartChar: then STONReader>>#isClassChar:"
	
	^ self name! !

!Boolean methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 12:29:20'!
stonContainSubObjects 

	^ false! !

!Boolean methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 12:29:07'!
stonOn: stonWriter

	stonWriter writeBoolean: self! !

!Color methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/16/2022 12:55:35'!
closeTo: another 
	self == another ifTrue: [ ^ true ].
	self class == another class ifFalse: [ ^ false ].
	^ (self rgbDistance: another) < 0.0001! !

!Color methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/11/2022 16:24:26'!
setAlpha: alphaValue

    ^ self alpha: alphaValue! !

!Color methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 12:41:00'!
stonContainSubObjects

	^ false! !

!Color methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/11/2022 16:40:49'!
stonOn: stonWriter
	| name |
	"isTranslucent -> isOpaque not"
	((self isOpaque not) or: [ (name := self colorName) = nil ])
		ifTrue: [ 
			stonWriter writeObject: self streamMap: [ :map |
				#(red green blue alpha) do: [ :each | 
					map at: each put: ((self perform: each) roundTo: 0.001) ] ] ]
		ifFalse: [ 
			stonWriter writeObject: self listSingleton: name ]! !

!Color class methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 12:39:42'!
fromSton: stonReader
	| representation |
	representation := stonReader parseMapOrListRepresentation.
	^ representation isArray
		ifTrue: [ 
			self named: representation first ]
		ifFalse: [ 
			(representation includesKey: #rgb)
				ifTrue: [ 
					self basicNew setRGB: (representation at: #rgb); setAlpha: 1.0 "backwards compatibility" ]
				ifFalse: [ 
					self 
						r: (representation at: #red) 
						g: (representation at: #green) 
						b: (representation at: #blue) 
						alpha: (representation at: #alpha) ] ]! !

!Color class methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/15/2022 15:02:40'!
named: colorName
	"Answer a Color for colorName or nil"
	self classPool 
		at: #ColorNamesDict
		ifPresent: [ :dict | ^dict at: colorName ifAbsent: [nil]].
	^nil! !

!UndefinedObject methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 14:31:43'!
stonContainSubObjects 

	^ false! !

!UndefinedObject methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 14:31:30'!
stonOn: stonWriter

	stonWriter writeNull! !

!Behavior class methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 14:19:55'!
environment

	^ Smalltalk! !

!ClassDescription methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/15/2022 11:56:44'!
instanceSide

	^ self theNonMetaClass ! !

!ClassDescription methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 12:35:38'!
stonContainSubObjects

	^ false! !

!Class methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 12:35:07'!
stonOn: stonWriter

	stonWriter 
		writeObject: self 
		listSingleton: self name asSymbol! !

!Class class methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 12:33:04'!
fromSton: stonReader
	| theClassName theClass |
	theClassName := stonReader parseListSingleton.
	theClass := self environment at: theClassName.
	^ theClass! !

!Metaclass methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 14:18:48'!
stonName

	^ #Class! !

!Metaclass methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 14:18:08'!
stonOn: stonWriter

	stonWriter
		writeObject: self 
		listSingleton: self instanceSide name asSymbol! !

!Metaclass class methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 14:17:41'!
fromSton: stonReader
	| theClassName theClass theMetaclass |
	theClassName := stonReader parseListSingleton.
	theClass := self environment at: theClassName.
	theMetaclass := theClass class.
	^ theMetaclass! !

!Magnitude methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/17/2022 12:02:22'!
putOn: aStream

	(aStream isBinary ifTrue: [ self asByteArray ] ifFalse: [ self asString]) putOn: aStream! !

!Number methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/12/2022 14:57:19'!
closeTo: num
	"are these two numbers close?"

	num isFloat ifTrue: [^ num closeTo: self asFloat].
	^[self = num] ifError: [false]! !

!Number methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 14:20:46'!
stonContainSubObjects 

	^ false! !

!Number methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 14:20:37'!
stonOn: stonWriter

	stonWriter writeFloat: self asFloat! !

!Float methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/12/2022 14:56:59'!
closeTo: num
 	"are these two numbers close?"
	num isNumber ifFalse: [^[self = num] ifError: [false]].
	self = 0.0 ifTrue: [^num abs < 0.0001].
	num = 0 ifTrue: [^self abs < 0.0001].
	^self = num asFloat or: [
		| abs |
		(abs := self abs) < 0.0001 ifTrue: [^num abs < 0.0001].
		(self - num) abs / (abs max: num abs) < 0.0001]! !

!Fraction methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 13:27:28'!
stonOn: stonWriter

	stonWriter writeFraction: self! !

!Integer methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 14:14:27'!
stonOn: stonWriter

	stonWriter writeInteger: self! !

!DateAndTime methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/12/2022 14:52:01'!
offset: delta

	offset := delta! !

!DateAndTime methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 12:45:34'!
stonContainSubObjects 

	^ false! !

!DateAndTime methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/12/2022 14:50:30'!
stonOn: stonWriter
	"Use an ISO representation with all details YYYY-MM-DDTHH:MM:SS.N+TZ (with optional nanoseconds and timezone offset)"
	
	stonWriter writeObject: self listSingleton: 
		(String streamContents: [ :stream |
			self printOn: stream "withLeadingSpace: false" ])! !

!DateAndTime class methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 12:45:03'!
fromSton: stonReader

	^ self readFrom: stonReader parseListSingleton readStream! !

!Time methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 14:30:59'!
stonContainSubObjects 

	^ false! !

!Time methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/12/2022 13:00:35'!
stonOn: stonWriter
	"Use an ISO style HH:MM:SS.N representation (with optional nanoseconds)"
	 
	stonWriter writeObject: self listSingleton: 
		(String streamContents: [ :stream |
			self print24: true showSeconds: true showSecondsFraction: true on: stream ])! !

!Time class methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 14:30:29'!
fromSton: stonReader

	^ self readFrom: stonReader parseListSingleton readStream! !

!Association methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 12:27:29'!
stonOn: stonWriter

	self class == STON associationClass
		ifTrue: [ stonWriter writeAssociation: self ]
		ifFalse: [ super stonOn: stonWriter ]! !

!Character methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 12:32:19'!
stonOn: stonWriter

	stonWriter writeObject: self listSingleton: self asString! !

!Character class methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 12:31:23'!
fromSton: stonReader

	^ stonReader parseListSingleton first! !

!Date methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 12:44:33'!
stonContainSubObjects 

	^ false! !

!Date methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/16/2022 12:50:29'!
stonOn: stonWriter
	"Use an ISO style YYYY-MM-DD representation.
	Since my current implementation is time zone offset sensitive, the offset has to be included."

	| representation |
"	representation := self offset isZero
		ifTrue: [ 
			String new: 11 streamContents: [ :out | 
				self printOn: out format: #(3 2 1 $- 1 1 2).
				out nextPut: $Z ] ]
		ifFalse: [ 
			String new: 32 streamContents: [ :out | 
				self printOn: out format: #(3 2 1 $- 1 1 2).
				out nextPut: (self offset positive ifTrue: [ $+ ] ifFalse: [ $- ]).
				self offset hours abs printOn: out base: 10 length: 2 padded: true.
				out nextPut: $:.
				self offset minutes abs printOn: out base: 10 length: 2 padded: true.
				self offset seconds = 0 
					ifFalse:[ 
						out nextPut: $:; print: self offset seconds abs truncated ] ] ]."
	representation := self yyyymmdd.
	stonWriter writeObject: self listSingleton: representation! !

!Date class methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 12:43:44'!
fromSton: stonReader
	"Read a ISO YYYY-MM-DD format.
	Since my current implementation is time zone offset sensitive, the offset has to be taken into account.
	A missing offset results in the local timezone offset to be used"
	
	| readStream date |
	readStream := stonReader parseListSingleton readStream.
	date := self readFrom: readStream.
	readStream atEnd
		ifFalse: [ | offset |
			offset := DateAndTime readTimezoneOffsetFrom: readStream.
			offset = date offset 
				ifFalse: [ date start: (date start translateTo: offset) ] ].
	^ date! !

!Collection methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 12:36:52'!
stonOn: stonWriter
	"For collections we chose to write a list of elements as delivered by #do:
	This is not the best or most correct solution for all subclasses though,
	so some will revert to standard object behavior or chose another solution"
	
	stonWriter writeObject: self do: [
		stonWriter encodeList: self ]! !

!Collection class methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 12:36:20'!
fromSton: stonReader
	"For collections we chose to instanciate based a list of elements using #add:
	This is not the best or most correct solution for all subclasses though,
	so some will revert to standard object behavior or chose another solution."
	
	| collection |
	collection := self new.
	stonReader parseListDo: [ :each |
		collection add: each ].
	^ collection! !

!SequenceableCollection methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/18/2022 13:23:12'!
closeTo: otherCollection
	"Answer whether the receiver's size is the same as otherCollection's
	size, and each of the receiver's elements equal the corresponding 
	element of otherCollection.
	This should probably replace the current definition of #= ."

	| size |
	otherCollection isSequenceable ifFalse: [^ false].
	(size _ self size) = otherCollection size ifFalse: [^ false].
	1 to: size do:
		[:index |
		((self at: index) closeTo: (otherCollection at: index)) ifFalse: [^ false]].
	^ true! !

!SequenceableCollection methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/17/2022 12:02:56'!
putOn: aStream

	self do: [ :each | each putOn: aStream ]! !

!SequenceableCollection methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 14:25:37'!
stonOn: stonWriter
	"Instances of STON listClass will be encoded directly, without a class tag.
	Other (sub)classes will be encoded with a class tag
	 and will use a list representation. "

	self class == STON listClass
		ifTrue: [ stonWriter writeList: self ]
		ifFalse: [ super stonOn: stonWriter ]! !

!SequenceableCollection class methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 14:25:04'!
fromSton: stonReader
	"Overwritten to use #streamContents: and #nextPut:"
	
	^ self streamContents: [ :stream |
		stonReader parseListDo: [ :each |
			stream nextPut: each ] 
	  ]! !

!String methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/17/2022 14:35:11'!
asFileSystemEntry
	"See examples in #asFileEntry method comment"
	^FileSystemEntry withPathName: self! !

!String methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/17/2022 12:01:05'!
putOn:aStream

	^ aStream nextPutAll: self.
! !

!String methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 14:29:12'!
stonContainSubObjects

	^ false! !

!String methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 14:28:58'!
stonOn: stonWriter

	stonWriter writeString: self! !

!Symbol methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 14:29:37'!
stonOn: stonWriter

	stonWriter writeSymbol: self! !

!ByteArray methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/17/2022 12:01:44'!
putOn: aStream

	aStream nextPutAll: self! !

!ByteArray methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 12:30:16'!
stonContainSubObjects 

	^ false! !

!ByteArray methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 12:30:08'!
stonOn: stonWriter
	"Use a hex representation"
	
	stonWriter writeObject: self listSingleton: self hex! !

!ByteArray class methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 12:29:51'!
fromSton: stonReader
	"Use a hex representation"
	
	^ self readHexFrom: stonReader parseListSingleton! !

!Interval methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 14:15:55'!
fromSton: stonReader
	"Overwritten to get back the standard object behavior"
	
	stonReader parseNamedInstVarsFor: self! !

!Interval methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 14:15:44'!
stonOn: stonWriter
	"Overwritten to get back the standard object behavior"

	stonWriter writeObject: self! !

!Interval class methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 14:15:15'!
fromSton: stonReader
	"Overwritten to get back the standard object behavior"
	
	^ self new ::
		fromSton: stonReader;
		yourself! !

!OrderedCollection methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/16/2022 15:00:19'!
addIfNotPresent: object

	self detect: [ :elt | elt == object ] ifNone: [ self add: object ]! !

!SortedCollection methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 14:28:13'!
fromSton: stonReader
	"Overwritten to get back the standard object behavior"
	
	stonReader parseNamedInstVarsFor: self! !

!SortedCollection methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 14:28:00'!
stonOn: stonWriter
	"Overwritten to get back the standard object behavior"

	stonWriter writeObject: self! !

!SortedCollection class methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 14:27:43'!
fromSton: stonReader
	"Overwritten to get back the standard object behavior"
	
	^ self new ::
		fromSton: stonReader;
		yourself! !

!RunArray methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 14:32:41'!
fromSton: stonReader
	"Overwritten to get back the standard object behavior"
	
	stonReader parseNamedInstVarsFor: self! !

!RunArray methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 14:32:33'!
stonOn: stonWriter
	"Overwritten to get back the standard object behavior"
	
	stonWriter writeObject: self! !

!RunArray class methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 14:32:17'!
fromSton: stonReader
	"Overwritten to get back the standard object behavior"

	^ self new
		fromSton: stonReader;
		yourself! !

!Text methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 14:33:45'!
fromSton: stonReader
	"Overwritten to get back the standard object behavior"
	
	stonReader parseNamedInstVarsFor: self! !

!Text methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 14:33:37'!
stonOn: stonWriter
	"Overwritten to get back the standard object behavior"
	
	stonWriter writeObject: self! !

!Text class methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 14:33:18'!
fromSton: stonReader
	"Overwritten to get back the standard object behavior"
	
	^ self new ::
		fromSton: stonReader;
		yourself! !

!Bag methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 12:28:31'!
stonOn: stonWriter
	"Use a map with element-occurrences pairs as representation"

	stonWriter 
		writeObject: self 
		do: [ stonWriter encodeMap: contents ]! !

!Bag class methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 12:28:08'!
fromSton: stonReader
	"Read a map representation containing element/occurrences pairs"
	
	| bag |
	bag := self new.
	stonReader parseMapDo: [ :key :value |
		bag add: key withOccurrences: value ].
	^ bag! !

!Set methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/15/2022 13:33:01'!
stonPostReferenceResolution
	"When references were resolved in me, the hash of my elements might have changed.
	Check if I am still healthy and rehash me if not."
	"self flag: #isHealthy.
	self isHealthy ifFalse: [" self rehash "]"! !

!Dictionary methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 12:47:16'!
stonOn: stonWriter
	"Instances of STON mapClass will be encoded directly, without a class tag.
	Other (sub)classes will be encoded with a class tag and will use a map representation. "
	
	self class == STON mapClass
		ifTrue: [ 
			stonWriter writeMap: self ]
		ifFalse: [ 
			stonWriter 
				writeObject: self 
				do: [ stonWriter encodeMap: self ] ]! !

!Dictionary methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/16/2022 13:18:51'!
stonPostReferenceResolution
	"When references were resolved in me,
	the hash of my keys might have changed.
	Check if I am still healthy and rehash me if not."
	
	"self flag: #isHealthy.
	self isHealthy ifFalse: [" self rehash "]"! !

!Dictionary class methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 12:46:55'!
fromSton: stonReader
	"Instances of STON mapClass will be read directly and won't arrive here.
	Other (sub)classes will use this method."
	
	| dictionary |
	dictionary := self new.
	stonReader parseMapDo: [ :key :value |
		dictionary at: key put: value ].
	^ dictionary! !

!OrderedDictionary methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 14:22:01'!
stonOn: stonWriter
	"I store my instances as maps. When in JSON mode, 
	encode me directly, without a class tag, keeping the order."
	
	stonWriter jsonMode 
		ifTrue: [ 
			stonWriter encodeMap: self 
		] 
		ifFalse: [ 
			stonWriter 
				writeObject: self 
				do: [ stonWriter encodeMap: self ] 
		]! !

!OrderedDictionary class methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 14:21:22'!
fromSton: stonReader
	"My instances are stored as maps."
	
	| dictionary |
	dictionary := self new.
	stonReader parseMapDo: [ :key :value |
		dictionary at: key put: value ].
	^ dictionary! !

!WriteStream methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/17/2022 11:58:12'!
<< aCollection
	"we want a readable version of nextPutAll however it may be difficult to fully recreate nextPutAll:
	for all the different types of stream. Rather then simply send to nextPutAll:
	we handle the String (or ByteArray) argument
	as fast as possible - the rest we delegate to putOn: This means that we handle single characters and bytes 
	whereas nextPutAll: is only for sequencable collections.
	.
	Note this may not work in every case that nextPutAll: does subject to extensive testing, 
	but it should work in the important cases"

	| newEnd |
	collection class == aCollection class ifFalse:
		[ aCollection putOn: self. ^ self ].

	newEnd := position + aCollection size.
	newEnd > writeLimit ifTrue:
		[self growTo: newEnd].

	collection replaceFrom: position+1 to: newEnd  with: aCollection startingAt: 1.
	position := newEnd.

! !

!FileSystemEntry methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/18/2022 13:25:02'!
closeTo: aFileEntry
	| isCaseSensitive myDrive otherDrive theirs mine |

	self == aFileEntry ifTrue: [ ^ true ].
	((self isKindOf: FileSystemEntry) 
	   and: [aFileEntry isKindOf: FileSystemEntry]) 
		ifFalse: [ ^false ].

	isCaseSensitive _ self fileAccessor isCaseSensitive.

	"Check for drive nil or same."
	myDrive _ self drive.
	otherDrive _ aFileEntry drive.
	isCaseSensitive
		ifTrue: [ self drive = aFileEntry drive ifFalse: [ ^false ]]
		ifFalse: [
			myDrive isNil = otherDrive isNil ifFalse: [ ^false ].		"only one of them is nil"
			myDrive ifNotNil: [											"none is nil"
				(myDrive sameAs: otherDrive) ifFalse: [ ^false ]]].

	"Check for all path components same."
	mine _ self pathComponents.
	theirs _ aFileEntry pathComponents.

	isCaseSensitive ifTrue: [
		^mine = theirs ].

	mine size = theirs size ifFalse: [
		^false ].

	mine with: theirs do: [ :m :t |
		(m sameAs: t) ifFalse: [ ^false ]].

	^ true! !

!FileSystemEntry methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/12/2022 12:42:52'!
stonOn: stonWriter
	 | pathString workDirEntry |
	self flag: #KenD.
	"in order to get $/ as delimiter and $. as working directory on all platforms"
	workDirEntry := Smalltalk getCurrentWorkingDirectory asDirectoryEntry.
	(self = workDirEntry)
		ifTrue: [pathString := '.']
		ifFalse: [
			(self isFile) 
			ifFalse: [pathString := self pathName]
			ifTrue: [ (self parent = workDirEntry)
				ifTrue: [ pathString := './' , self name ] 
				ifFalse: [ pathString := self pathName ]
			]
		].
			
	stonWriter 
		writeObject: self 
		named: STONFileReference stonName 
		listSingleton: pathString.
		
! !

!Point methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/12/2022 14:55:31'!
closeTo: aPoint

	^(x closeTo: aPoint x) and: [y closeTo: aPoint y]! !

!Point methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 14:23:42'!
fromSton: stonReader

	stonReader parseListDo: [ :each :index |
		index = 1 ifTrue: [ x := each ].
		index = 2 ifTrue: [ y := each ] ]! !

!Point methodsFor: '*ExchangeFormat-STON' stamp: 'KenD 4/4/2022 14:23:21'!
stonOn: stonWriter
	stonWriter writeObject:
		 self streamShortList: [ :array |
				array add: x; add: y ]! !
STONWriter initialize!
