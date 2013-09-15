'From Cuis 4.2 of 25 July 2013 [latest update: #1823] on 14 September 2013 at 8:26:12.340605 pm'!
'Description Value-Constraints are used by UI to select proper editors and for drag-n-drop'!
!provides: 'Value-Constraints' 1 5!
!classDefinition: #ValueConstraintTests category: #'Value-Constraints'!
TestCase subclass: #ValueConstraintTests
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Value-Constraints'!
!classDefinition: 'ValueConstraintTests class' category: #'Value-Constraints'!
ValueConstraintTests class
	instanceVariableNames: ''!

!classDefinition: #ValueConstraint category: #'Value-Constraints'!
Object subclass: #ValueConstraint
	instanceVariableNames: 'theClass'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Value-Constraints'!
!classDefinition: 'ValueConstraint class' category: #'Value-Constraints'!
ValueConstraint class
	instanceVariableNames: ''!

!classDefinition: #OneOfValueConstraint category: #'Value-Constraints'!
ValueConstraint subclass: #OneOfValueConstraint
	instanceVariableNames: 'itemList'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Value-Constraints'!
!classDefinition: 'OneOfValueConstraint class' category: #'Value-Constraints'!
OneOfValueConstraint class
	instanceVariableNames: ''!

!classDefinition: #RangeValueConstraint category: #'Value-Constraints'!
ValueConstraint subclass: #RangeValueConstraint
	instanceVariableNames: 'min max'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Value-Constraints'!
!classDefinition: 'RangeValueConstraint class' category: #'Value-Constraints'!
RangeValueConstraint class
	instanceVariableNames: ''!

!classDefinition: #ValueInCategoryConstraint category: #'Value-Constraints'!
ValueConstraint subclass: #ValueInCategoryConstraint
	instanceVariableNames: 'theCategoryName'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Value-Constraints'!
!classDefinition: 'ValueInCategoryConstraint class' category: #'Value-Constraints'!
ValueInCategoryConstraint class
	instanceVariableNames: ''!


!ValueConstraintTests commentStamp: '<historical>' prior: 0!
Unit tests for ValueConstraints!

!ValueConstraint commentStamp: '<historical>' prior: 0!
Value-Constraints are used by UI to filter value update and select proper editors and for drag-n-drop.

Examples:
	ValueConstraint mustBeKindOf: Morph.
	RangeValueConstraint minValue: 3 maxValue:7 ofKind: Magnitude.
	RangeValueConstraint minValue: 3@4 maxValue:7@9 ofKind: Point.
	OneOfValueConstraint mustBeOneOf: #(this that theOther) ofKind: Symbol.
	OneOfValueConstraint mustBeOneOf: {'this'. 'that'. 'theOther'.} ofKind: String..
	ValueInCategoryConstraint ofCategory: 'Morphic-Widgets'.
!

!OneOfValueConstraint commentStamp: '<historical>' prior: 0!
Some proprty fields are constrained to one of a list of things.

e.g.  #( Red Green Blue )

Note that itemList may be any collection.

Items are typically strings or symbols.

Example:
	OneOfValueConstraint mustBeOneOf: #(this that theOther) ofKind: Symbol.
	OneOfValueConstraint mustBeOneOf: {'this'. 'that'. 'theOther'.} ofKind: String..!

!RangeValueConstraint commentStamp: '<historical>' prior: 0!
A range value is constrained by its range.

Examples:
	RangeValueConstraint minValue: 3 maxValue:7 ofKind: Magnitude.
	RangeValueConstraint minValue: 3@4 maxValue:7@9 ofKind: Point.!

!ValueInCategoryConstraint commentStamp: '<historical>' prior: 0!
Some classes of values used by the UI are more general than instances, e.g. Widgets.

Example:
	ValueInCategoryConstraint ofCategory: 'Morphic-Widgets'.!

!ValueConstraintTests methodsFor: 'testing' stamp: 'KenD 9/11/2013 13:40'!
testCategoryValueConstraints

	| categoryValue |
	categoryValue := ValueInCategoryConstraint ofCategory: 'Morphic-Widgets'.
	
	self assert: (categoryValue acceptsValue: PartsBinMorph new).
	self deny:  (categoryValue acceptsValue: 3 @ 9).
	self assert: (categoryValue acceptsValue: DragAndDropAreaMorph new).
	self deny: (categoryValue acceptsValue: EllipseMorph new).
	self deny: (categoryValue acceptsValue: #sillyTest).! !

!ValueConstraintTests methodsFor: 'testing' stamp: 'KenD 9/11/2013 13:55'!
testOneOfValueConstraints

	| stringChoice symbolChouce |
	symbolChouce := OneOfValueConstraint mustBeOneOf: #(this that theOther) ofKind: Symbol.
	stringChoice := OneOfValueConstraint mustBeOneOf: {'this'. 'that'. 'theOther'.} ofKind: String..
	
	self assert: (symbolChouce acceptsValue: #'theOther' ).
	self deny:  (symbolChouce acceptsValue: 'theOther'). "Strings are NOT Symbols"
	self assert: (stringChoice acceptsValue: 'theOther').
	self assert: (stringChoice acceptsValue: #'theOther'). "but Symbols ARE Strings"
	self deny: (symbolChouce acceptsValue: #sillyTest).
	self deny: (symbolChouce acceptsValue: 47.3).! !

!ValueConstraintTests methodsFor: 'testing' stamp: 'KenD 9/11/2013 13:49'!
testRangeValueConstraints

	| pointRangeValue |
	pointRangeValue :=RangeValueConstraint minValue: 3@4 maxValue:7@9 ofKind: Point.
	
	self assert: (pointRangeValue acceptsValue: 3 @ 7).
	self deny:  (pointRangeValue acceptsValue: 3 @ 10).
	self assert: (pointRangeValue acceptsValue: 7 @ 4).
	self deny: (pointRangeValue acceptsValue: 8 @ 5).
	self deny: (pointRangeValue acceptsValue: 2 @ 6).! !

!ValueConstraintTests methodsFor: 'testing' stamp: 'KenD 9/11/2013 13:33'!
testValueConstraints

	| morphicValue integerValue |
	morphicValue := ValueConstraint mustBeKindOf: Morph.
	integerValue := ValueConstraint mustBeKindOf: Integer.
	
	self assert: (morphicValue acceptsValue: (PartsBinMorph new)).
	self deny:  (morphicValue acceptsValue: 666).
	self assert: (integerValue acceptsValue: 666).
	self deny: (integerValue acceptsValue: 66.66).
	self deny: (integerValue acceptsValue: (PartsBinMorph new)).! !

!ValueConstraint methodsFor: 'testing' stamp: 'KenD 9/11/2013 09:43'!
acceptsValue: aValue

	^ (aValue isKindOf: self kind)! !

!ValueConstraint methodsFor: 'initialize-release' stamp: 'KenD 9/11/2013 09:39'!
class: aClass

	theClass := aClass! !

!ValueConstraint methodsFor: 'accessing' stamp: 'KenD 9/11/2013 09:42'!
kind

	^ theClass! !

!ValueConstraint class methodsFor: 'instance creation' stamp: 'KenD 9/11/2013 10:19'!
mustBeKindOf: aClass

	(aClass isKindOf: Class) ifFalse: [ Error signal: (aClass printString) , ' must be a Class'].
	^ self basicNew class: aClass! !

!ValueConstraint class methodsFor: 'instance creation' stamp: 'KenD 9/11/2013 10:21'!
new

	Error signal: 'ValueConstraint instance creation requires use of an initializer'! !

!OneOfValueConstraint methodsFor: 'testing' stamp: 'KenD 9/11/2013 09:50'!
acceptsValue: aValue

	^ (super acceptsValue: aValue) and: [ itemList includes: aValue ]! !

!OneOfValueConstraint methodsFor: 'accessing' stamp: 'KenD 9/11/2013 10:11'!
itemList

	^ itemList! !

!OneOfValueConstraint methodsFor: 'initialize-release' stamp: 'KenD 9/11/2013 09:47'!
oneOf: aCollection

	itemList := aCollection ! !

!OneOfValueConstraint class methodsFor: 'instance creation' stamp: 'KenD 9/11/2013 10:30'!
mustBeOneOf: aColl
	"Prefer use of #mustBeOneOf:ofKind:"

	| newInst |
	(aColl isKindOf: Collection) ifFalse: [ Error signal: aColl printString, ' must be a Collection' ].
	newInst := self mustBeKindOf: Object.
	newInst oneOf: aColl.
	
	^ newInst ! !

!OneOfValueConstraint class methodsFor: 'instance creation' stamp: 'KenD 9/11/2013 10:27'!
mustBeOneOf: aColl ofKind: aClass

	| newInst |
	(aColl isKindOf: Collection) ifFalse: [ Error signal: aColl printString, ' must be a Collection' ].
	newInst := self mustBeKindOf: aClass.
	newInst oneOf: aColl.
	
	^ newInst ! !

!RangeValueConstraint methodsFor: 'testing' stamp: 'KenD 9/11/2013 10:13'!
acceptsValue: aValue

	^ (super acceptsValue: aValue) and: [ min <= aValue and: [ aValue <= max ] ]! !

!RangeValueConstraint methodsFor: 'accessing' stamp: 'KenD 9/11/2013 10:14'!
maximumValue

	^ max! !

!RangeValueConstraint methodsFor: 'initialize-release' stamp: 'KenD 9/11/2013 10:15'!
min: minmumValue max: maximumValue

	min := minmumValue.
	max := maximumValue.! !

!RangeValueConstraint methodsFor: 'accessing' stamp: 'KenD 9/11/2013 10:14'!
minimumValue

	^ min! !

!RangeValueConstraint class methodsFor: 'instance creation' stamp: 'KenD 9/11/2013 10:31'!
minValue: aMin maxValue: aMax
	"Prefer use of #minValue:maxValue:ofKind:"

	| newInst |
	(aMin <= aMax) ifFalse: [ Error signal: aMin printString, ' must be <= ', aMax printString ].
	
	newInst := self mustBeKindOf: Magnitude.
	newInst min: aMin  max: aMax. 
	
	^ newInst ! !

!RangeValueConstraint class methodsFor: 'instance creation' stamp: 'KenD 9/11/2013 10:26'!
minValue: aMin maxValue: aMax ofKind: aClass

	| newInst |
	(aMin <= aMax) ifFalse: [ Error signal: aMin printString, ' must be <= ', aMax printString ].
	
	newInst := self mustBeKindOf: aClass.
	newInst min: aMin  max: aMax. 
	
	^ newInst ! !

!ValueInCategoryConstraint methodsFor: 'testing' stamp: 'KenD 9/11/2013 11:37'!
acceptsValue: aValue
	"Answer true if value class is in my category"
	
	^  (SystemOrganization categoryOfElement: aValue class name) = self categoryName! !

!ValueInCategoryConstraint methodsFor: 'accessing' stamp: 'KenD 9/11/2013 11:33'!
categoryName

	^ theCategoryName ! !

!ValueInCategoryConstraint methodsFor: 'initialize-release' stamp: 'KenD 9/11/2013 11:31'!
ofCategory: categoryName

	theCategoryName := categoryName.! !

!ValueInCategoryConstraint class methodsFor: 'instance creation' stamp: 'KenD 9/11/2013 11:30'!
ofCategory: categoryName

	| newInst |
	(SystemOrganization categories includes: categoryName) ifFalse: [ Error signal: categoryName, ' not a category name' ].
	
	newInst := self mustBeKindOf: Object.
	newInst ofCategory: categoryName.
	
	^ newInst ! !
