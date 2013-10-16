'From Cuis 4.2 of 25 July 2013 [latest update: #1850] on 12 October 2013 at 9:37:33.582000187 pm'!
'Description Holders for constrained values.'!
!provides: 'ValueHolder' 1 20!
!classDefinition: #ValueHolder category: #ValueHolder!
Object subclass: #ValueHolder
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ValueHolder'!
!classDefinition: 'ValueHolder class' category: #ValueHolder!
ValueHolder class
	instanceVariableNames: ''!

!classDefinition: #ValueOfClass category: #ValueHolder!
ValueHolder subclass: #ValueOfClass
	instanceVariableNames: 'theClass'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ValueHolder'!
!classDefinition: 'ValueOfClass class' category: #ValueHolder!
ValueOfClass class
	instanceVariableNames: ''!

!classDefinition: #ValueOfKind category: #ValueHolder!
ValueHolder subclass: #ValueOfKind
	instanceVariableNames: 'theKind'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ValueHolder'!
!classDefinition: 'ValueOfKind class' category: #ValueHolder!
ValueOfKind class
	instanceVariableNames: ''!

!classDefinition: #ValueOfRange category: #ValueHolder!
ValueOfKind subclass: #ValueOfRange
	instanceVariableNames: 'minValue maxValue'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ValueHolder'!
!classDefinition: 'ValueOfRange class' category: #ValueHolder!
ValueOfRange class
	instanceVariableNames: ''!

!classDefinition: #ValueOneOf category: #ValueHolder!
ValueOfKind subclass: #ValueOneOf
	instanceVariableNames: 'selectionList'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ValueHolder'!
!classDefinition: 'ValueOneOf class' category: #ValueHolder!
ValueOneOf class
	instanceVariableNames: ''!


!ValueHolder commentStamp: '<historical>' prior: 0!
My instances hold various values -- usually constrained by type/kind/range.

See my subclasses.!

!ValueOfClass commentStamp: '<historical>' prior: 0!
My values are constrained to be DIRECT INSTANCES of theClass.!

!ValueOfKind commentStamp: '<historical>' prior: 0!
My instances hold values which must be of kind theKind.!

!ValueOfRange commentStamp: '<historical>' prior: 0!
My values are constrained to be in a range.

Examples:
	ValueOfRange minValue: 3 maxValue: 7 ofKind: Magnitude.
	ValueOfRange minValue: 3@4 maxValue:7@9 ofKind: Point.!

!ValueOneOf commentStamp: '<historical>' prior: 0!
My values must be one of the items in selectionList.

e.g.  #( Red Green Blue )

Note that selectionList may be any collection.

Items are typically strings or symbols.

e.g.
ValueOneOf mustBeOneOf: #( Red Green Blue ) ofKind: Symbol.
ValueOneOf mustBeOneOf: {'this'. 'that'. 'theOther'.} ofKind: String.
!

!ValueHolder methodsFor: 'accessing' stamp: 'KenD 10/2/2013 16:33'!
checkValue: aValue
	"I accept any value"

	 "True => OK; False => Invalid"

	^ true! !

!ValueHolder methodsFor: 'accessing' stamp: 'KenD 10/2/2013 16:31'!
contents
		"Squeak compatability"

		^ self value! !

!ValueHolder methodsFor: 'accessing' stamp: 'KenD 10/2/2013 16:30'!
contents: newValue
		"Squeak compatability"

		self value: newValue ! !

!ValueHolder methodsFor: 'accessing' stamp: 'KenD 10/12/2013 17:23'!
defaultName

	^ 'ValueHolder'! !

!ValueHolder methodsFor: 'accessing' stamp: 'KenD 10/2/2013 17:28'!
errorStringFor: aValue
	"My subclasses do this"

	^ ''			"an empty string"! !

!ValueHolder methodsFor: 'private' stamp: 'KenD 10/2/2013 17:24'!
privateSetValue: newValue

	value := newValue.! !

!ValueHolder methodsFor: 'accessing' stamp: 'KenD 10/2/2013 17:24'!
value

	^ value! !

!ValueHolder methodsFor: 'accessing' stamp: 'KenD 10/2/2013 16:29'!
value: newValue
	"Nota Bene: I hold an UNCHECKED, UNCONSTRAINED value"

	self value: newValue
		  ifInvalid: [ :ignoredValue | DomainError signal: (self errorStringFor: newValue) ] ! !

!ValueHolder methodsFor: 'accessing' stamp: 'KenD 10/2/2013 17:24'!
value: newValue ifInvalid: aBlock

	(self checkValue: newValue)
		ifTrue:  [ self privateSetValue: newValue ]
		ifFalse:  [ aBlock value: newValue ]! !

!ValueOfClass methodsFor: 'accessing' stamp: 'KenD 10/2/2013 16:35'!
checkValue: aValue
	"I accept only DIRECT INSTANCES of a Class "

	^ (aValue class == theClass)! !

!ValueOfClass methodsFor: 'accessing' stamp: 'KenD 10/12/2013 17:25'!
defaultName

	^ 'ValueOfClass' , theClass name! !

!ValueOfClass methodsFor: 'accessing' stamp: 'KenD 10/2/2013 16:37'!
errorStringFor: aValue

	^ aValue printString, ' class MUST be ', theClass name! !

!ValueOfClass methodsFor: 'private' stamp: 'KenD 10/2/2013 16:24'!
forClass: aClass
	"This is an initialization method.  My instances are considered immutable"

	theClass := aClass! !

!ValueOfClass methodsFor: 'accessing' stamp: 'KenD 10/2/2013 17:34'!
theClass

	^ theClass! !

!ValueOfClass class methodsFor: 'instance creation' stamp: 'KenD 10/2/2013 16:35'!
mustBeInstanceOfClass: aClass

	(aClass isKindOf: Class)
		ifFalse: [ Error signal: 'aClass must be a Class: ', aClass printString ].

	^ self basicNew forClass: aClass! !

!ValueOfClass class methodsFor: 'instance creation' stamp: 'KenD 10/2/2013 16:53'!
new

	Error signal: 'USE: ValueOfClass mustBeInstanceOfClass: aClass'! !

!ValueOfKind methodsFor: 'accessing' stamp: 'KenD 10/2/2013 16:44'!
checkValue: aValue
	"I accept only instances inheriting from a Class"

	^ (aValue isKindOf: theKind)! !

!ValueOfKind methodsFor: 'as yet unclassified' stamp: 'KenD 10/12/2013 17:26'!
defaultName

	^ 'ValueOfKind' , theKind name! !

!ValueOfKind methodsFor: 'accessing' stamp: 'KenD 10/2/2013 16:46'!
errorStringFor: aValue

	^ aValue printString, ' class MUST be a kind of', theKind name! !

!ValueOfKind methodsFor: 'private' stamp: 'KenD 10/2/2013 16:48'!
forKind: aClass
	"This is an initialization method.  My instances are considered immutable"

	theKind := aClass! !

!ValueOfKind methodsFor: 'accessing' stamp: 'KenD 10/2/2013 16:45'!
theKind

	^ theKind! !

!ValueOfKind class methodsFor: 'instance creation' stamp: 'KenD 10/2/2013 16:47'!
mustBeKindOf: aClass

	(aClass isKindOf: Class)
		ifFalse: [ Error signal: 'aClass must be a Class: ', aClass printString ].

	^ self basicNew forKind: aClass! !

!ValueOfKind class methodsFor: 'instance creation' stamp: 'KenD 10/2/2013 16:55'!
new

	Error signal: 'USE: ValueOfKind mustBeKindOf: aClass'! !

!ValueOfRange methodsFor: 'accessing' stamp: 'KenD 10/2/2013 17:22'!
checkValue: aValue
	"Check range and kind.  Answer True if OK and False if domain error."

	^ (super checkValue: aValue)
		and: [ (minValue <= aValue)
			and: [ aValue <= maxValue ] ]
	! !

!ValueOfRange methodsFor: 'accessing' stamp: 'KenD 10/12/2013 17:26'!
defaultName

	^ 'ValueRange', self minValue printString, 'To', self maxValue printString ! !

!ValueOfRange methodsFor: 'accessing' stamp: 'KenD 10/2/2013 16:34'!
errorStringFor: aValue

	^ aValue printString, '  MUST be between', minValue printString, ' and ', maxValue printString! !

!ValueOfRange methodsFor: 'accessing' stamp: 'KenD 10/2/2013 17:10'!
maxValue

	^ maxValue ! !

!ValueOfRange methodsFor: 'accessing' stamp: 'KenD 10/2/2013 17:10'!
minValue

	^ minValue ! !

!ValueOfRange methodsFor: 'private' stamp: 'KenD 10/12/2013 17:11'!
minValue: min maxValue: max

	minValue  := min.
	maxValue := max.
	self privateSetValue: min. "default"
	! !

!ValueOfRange class methodsFor: 'instance creation' stamp: 'KenD 10/2/2013 17:15'!
minValue: theMin maxValue: theMax

	^ self minValue: theMin maxValue: theMax ofKind: Magnitude ! !

!ValueOfRange class methodsFor: 'instance creation' stamp: 'KenD 10/2/2013 17:14'!
minValue: theMin maxValue: theMax ofKind: aClass

	| newInst |
	newInst := super mustBeKindOf: aClass.
	(theMin isKindOf: aClass)
		ifFalse: [ Error signal: theMin printString, ' must be kindOf ', aClass name ].
	(theMax isKindOf: aClass)
		ifFalse: [ Error signal: theMax printString, ' must be kindOf ', aClass name ].
	newInst minValue: theMin maxValue: theMax.

	^ newInst ! !

!ValueOneOf methodsFor: 'accessing' stamp: 'KenD 10/2/2013 16:35'!
checkValue: aValue
	"Check sleection and kind.  Answer True if OK and False if domain error."

	^ (super checkValue: aValue)
		and: [ selectionList includes: aValue ]! !

!ValueOneOf methodsFor: 'accessing' stamp: 'KenD 10/12/2013 17:26'!
defaultName

	^ 'OneOf', self mySelectionList size asString! !

!ValueOneOf methodsFor: 'accessing' stamp: 'KenD 10/2/2013 16:35'!
errorStringFor: aValue

	^ aValue printString, '  MUST be one of ', selectionList printString! !

!ValueOneOf methodsFor: 'private' stamp: 'KenD 10/2/2013 16:54'!
mustBeOneOf: aCollection

	selectionList := aCollection.
	"Default selection to 1st element"
	self privateSetValue: (aCollection first).! !

!ValueOneOf methodsFor: 'accessing' stamp: 'KenD 10/2/2013 17:27'!
mySelectionList
	"Answer my collection"

	^ selectionList ! !

!ValueOneOf class methodsFor: 'instance creation' stamp: 'KenD 10/2/2013 17:30'!
mustBeOneOf: aCollection

	^ self mustBeOneOf: aCollection ofKind: Object! !

!ValueOneOf class methodsFor: 'instance creation' stamp: 'KenD 10/2/2013 16:52'!
mustBeOneOf: aCollection ofKind: aClass

	| newInst |
	(aCollection isKindOf: Collection)
		ifFalse: [ Error signal: aCollection printString, ' must be a Collection' ].
	(aCollection isEmpty)
		ifTrue: [ Error signal: 'Collection to select from must NOT be empty!!' ].
	newInst := self mustBeKindOf: aClass.
	newInst mustBeOneOf: aCollection.

	^ newInst ! !
