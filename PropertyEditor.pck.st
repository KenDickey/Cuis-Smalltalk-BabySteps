'From Cuis 4.2 of 25 July 2013 [latest update: #2404] on 12 July 2015 at 6:16:13.680649 pm'!
'Description Editor for Morph Properties'!
!provides: 'PropertyEditor' 1 12!
!requires: 'Morphic-ColorEditor' 1 16 nil!
!requires: 'Morphic-Misc1' 1 49 nil!
!classDefinition: #PropertyEditor category: #PropertyEditor!
MenuMorph subclass: #PropertyEditor
	instanceVariableNames: 'morph'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PropertyEditor'!
!classDefinition: 'PropertyEditor class' category: #PropertyEditor!
PropertyEditor class
	instanceVariableNames: ''!

!classDefinition: #PropertyMorph category: #PropertyEditor!
MenuItemMorph subclass: #PropertyMorph
	instanceVariableNames: 'metaProperty morph name value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PropertyEditor'!
!classDefinition: 'PropertyMorph class' category: #PropertyEditor!
PropertyMorph class
	instanceVariableNames: ''!

!classDefinition: #PropertyMeta category: #PropertyEditor!
Object subclass: #PropertyMeta
	instanceVariableNames: 'kind editorClass dropAcceptor'
	classVariableNames: 'DefaultPropDescription'
	poolDictionaries: ''
	category: 'PropertyEditor'!
!classDefinition: 'PropertyMeta class' category: #PropertyEditor!
PropertyMeta class
	instanceVariableNames: ''!

!classDefinition: #ClosurePropertyMeta category: #PropertyEditor!
PropertyMeta subclass: #ClosurePropertyMeta
	instanceVariableNames: 'numberOfArguments'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PropertyEditor'!
!classDefinition: 'ClosurePropertyMeta class' category: #PropertyEditor!
ClosurePropertyMeta class
	instanceVariableNames: ''!

!classDefinition: #OneOfPropertyMeta category: #PropertyEditor!
PropertyMeta subclass: #OneOfPropertyMeta
	instanceVariableNames: 'collectionToSelectFrom'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PropertyEditor'!
!classDefinition: 'OneOfPropertyMeta class' category: #PropertyEditor!
OneOfPropertyMeta class
	instanceVariableNames: ''!

!classDefinition: #RangePropertyMeta category: #PropertyEditor!
PropertyMeta subclass: #RangePropertyMeta
	instanceVariableNames: 'minValue maxValue'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PropertyEditor'!
!classDefinition: 'RangePropertyMeta class' category: #PropertyEditor!
RangePropertyMeta class
	instanceVariableNames: ''!

!classDefinition: #PropertyMetaTests category: #PropertyEditor!
TestCase subclass: #PropertyMetaTests
	instanceVariableNames: 'morph1 morph2 objPropMeta charPropMeta colorPropMeta stringPropMeta rangePropMeta oneOfPropMeta closurePropMeta passValue'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PropertyEditor'!
!classDefinition: 'PropertyMetaTests class' category: #PropertyEditor!
PropertyMetaTests class
	instanceVariableNames: ''!


!PropertyEditor commentStamp: '<historical>' prior: 0!
I am used to edit a Morph's properties.!

!PropertyMorph commentStamp: '<historical>' prior: 0!
I display a selection for a Morph property.

ivars:
  metaProperty -- a PropertyMeta
  name -- property name (a symbol)
  value -- cached property value (used for undo)
!

!PropertyMeta commentStamp: '<historical>' prior: 0!
I am metaData for a Morph Property.  

I am frequently shared, so my ivars are immutable (not meant to be changed).

ivars:
  kind -- a Class; prop value must be aKindOf: self kind
  editorClass -- class of editor to be used in editing the property
  dropAcceptor -- when a Morph is dropped on a property displayed in a PropertyEditor, this does any transform required for the value to be placed in the property.  E.g. a prop holding a Color may take a color swatch, color name, ...
!

!ClosurePropertyMeta commentStamp: '<historical>' prior: 0!
My kind is BlockClosure.

I add the constraint that the number of arguments for the closure must be numberOfArguments!

!OneOfPropertyMeta commentStamp: '<historical>' prior: 0!
My property values are constrained to be one member of the contained collection.

Note that Kind may also be constrained.!

!RangePropertyMeta commentStamp: '<historical>' prior: 0!
Ranges are constrained to be >= minValue and <= maxValue.

Note that kind may be constrained as well.!

!PropertyMetaTests commentStamp: '<historical>' prior: 0!
Unit tests for PropertyEditor support.!

!Morph methodsFor: '*propertyeditor' stamp: 'KenD 7/11/2015 10:46'!
metaProperties
	"Answer a Dictionary of propName->PropertyDecsription"
	
	^ self valueOfProperty: #'metaProperties' 
		ifAbsent: [ | newDict |
			newDict := IdentityDictionary new.
			self setProperty: #'metaProperties' toValue: newDict.
			newDict 
		]! !

!Morph methodsFor: '*propertyeditor' stamp: 'KenD 7/12/2015 18:14'!
setMetaProperty: propSym toValue: aPropertyMeta

	| propVal |
	propVal := self valueOfProperty: propSym 
				ifAbsent: [ nil ].

	(aPropertyMeta accepts: propVal)
		  ifFalse: [ self error: 'Property value does not conform to specification' ].
	
	self metaProperties at: propSym put: aPropertyMeta 
	! !

!Morph methodsFor: '*propertyeditor' stamp: 'KenD 7/12/2015 15:56'!
valueOfMetaProperty: propSym

	^ self metaProperties at: propSym ifAbsent: [ PropertyMeta default ]
	! !

!PropertyMorph methodsFor: 'testing' stamp: 'KenD 7/12/2015 08:46'!
allowsValue: aValue

	^ self metaProperties accepts: aValue! !

!PropertyMorph methodsFor: 'editing' stamp: 'KenD 7/12/2015 08:12'!
edit

	self notYetImplemented ! !

!PropertyMorph methodsFor: 'initialization' stamp: 'KenD 7/12/2015 08:11'!
propName: aSymbol morph: aMorph propMeta: aPropertyDescriptor

	super initialize.
	name := aSymbol.
	morph := aMorph.
	metaProperty := aPropertyDescriptor.
	value := aMorph valueOfProperty: aSymbol.	
	"@@@ ICON @@@"
	self contents: name asString , ':  ', (value printStringLimitedTo: 20);
		 target: self;
		 selector: #edit

	
	! !

!PropertyMorph methodsFor: 'accessing' stamp: 'KenD 7/12/2015 08:18'!
propertyDescriptor

	^ metaProperty ! !

!PropertyMorph methodsFor: 'accessing' stamp: 'KenD 7/12/2015 08:18'!
propertyName

	^ name ! !

!PropertyMorph methodsFor: 'accessing' stamp: 'KenD 7/12/2015 08:19'!
propertyValue

	^ self morph valueOfProperty: self name! !

!PropertyMorph methodsFor: 'accessing' stamp: 'KenD 7/12/2015 08:21'!
propertyValue: newValue
	"Assumed checking already done.  Does NOT change cashed value"
	
	^ self morph setProperty: self name toValue: newValue! !

!PropertyMorph methodsFor: 'editing' stamp: 'KenD 7/12/2015 08:22'!
undo
	"Reset value from remembered value"

	self morph setProperty: self name  toValue: self value! !

!PropertyMorph class methodsFor: 'instance creation' stamp: 'KenD 7/12/2015 09:01'!
propName: aSymbol morph: aMorph

	^ self propName: aSymbol morph: aMorph propMeta: PropertyMeta default
! !

!PropertyMorph class methodsFor: 'instance creation' stamp: 'KenD 7/12/2015 08:13'!
propName: aSymbol morph: aMorph propMeta: aPropertyDescriptor

	^self new propName: aSymbol morph: aMorph propMeta: aPropertyDescriptor
! !

!PropertyMeta methodsFor: 'comparing' stamp: 'KenD 7/12/2015 16:02'!
= other
	"I am equak to other if I have the same class and ivar values"
	
	^(self class = other class)
		and: [(self kind = other kind)
			and: [(self editorClass = other editorClass)
				and: [self dropAcceptor = other dropAcceptor]
			]
	      ]  
! !

!PropertyMeta methodsFor: 'testing' stamp: 'KenD 7/12/2015 15:57'!
accepts: aValue

	^ aValue isKindOf: self kind! !

!PropertyMeta methodsFor: 'access' stamp: 'KenD 7/11/2015 07:37'!
dropAcceptor

	^ dropAcceptor! !

!PropertyMeta methodsFor: 'access' stamp: 'KenD 7/11/2015 07:40'!
editorClass

	^ editorClass! !

!PropertyMeta methodsFor: 'access' stamp: 'KenD 7/11/2015 07:36'!
kind

	^ kind! !

!PropertyMeta methodsFor: 'initialization' stamp: 'KenD 7/11/2015 14:44'!
kind: aClass editor: aEditClass dropAcceptor: aOneArgClosure

	kind := aClass.
	editorClass := aEditClass.
	dropAcceptor := aOneArgClosure.
! !

!PropertyMeta class methodsFor: 'instance creation' stamp: 'KenD 7/12/2015 08:56'!
default

	^ DefaultPropDescription ! !

!PropertyMeta class methodsFor: 'class initialization' stamp: 'KenD 7/12/2015 08:57'!
initialize
"
	PropertyDescription initialize.
"
	"The default accepts any value without change"
	DefaultPropDescription := self kind: Object editor: Inspector dropAcceptor: [ : any | any ].! !

!PropertyMeta class methodsFor: 'instance creation' stamp: 'KenD 7/11/2015 11:02'!
kind: aClass editor: editorClass dropAcceptor: aOneArgClosure

	| newInstance |
	newInstance := self basicNew kind: aClass editor: editorClass dropAcceptor: aOneArgClosure.
	"Reuse old instance if we already have one"
	self allInstancesDo: [ :oldInstance | (oldInstance = newInstance) ifTrue: [ ^ oldInstance ] ].
	^ newInstance ! !

!ClosurePropertyMeta methodsFor: 'comparing' stamp: 'KenD 7/12/2015 16:04'!
= other
	"I am equak to other if I have the same class and ivar values"
	
	^(super = other)
		and: [ self numberOfArguments = other numberOfArguments ]  
! !

!ClosurePropertyMeta methodsFor: 'testing' stamp: 'KenD 7/12/2015 08:49'!
accepts: aValue

	^ (super accepts: aValue) and: [ self numberOfArguments = aValue numArgs ]! !

!ClosurePropertyMeta methodsFor: 'initialization' stamp: 'KenD 7/11/2015 07:47'!
kind: aClass editor: editorClass dropAcceptor: aOneArgClosure numArguments: numArgs

	super kind: aClass editor: editorClass dropAcceptor: aOneArgClosure.
	numberOfArguments := numArgs 
! !

!ClosurePropertyMeta methodsFor: 'access' stamp: 'KenD 7/11/2015 07:41'!
numberOfArguments

	^ numberOfArguments! !

!ClosurePropertyMeta class methodsFor: 'instance creation' stamp: 'KenD 7/12/2015 16:51'!
kind: aClass editor: editorClass dropAcceptor: aOneArgClosure numArguments: anInteger

	| newInstance |
	newInstance := self basicNew kind: aClass editor: editorClass dropAcceptor: aOneArgClosure 
						numArguments: anInteger.
	"Reuse old instance if we already have one"
	self allInstancesDo: [ :oldInstance | (oldInstance = newInstance) ifTrue: [ ^ oldInstance ] ].
	^ newInstance ! !

!OneOfPropertyMeta methodsFor: 'comparing' stamp: 'KenD 7/12/2015 16:03'!
= other
	"I am equak to other if I have the same class and ivar values"
	
	^(super = other)
		and: [ self collectionToSelectFrom = other collectionToSelectFrom ]  
! !

!OneOfPropertyMeta methodsFor: 'testing' stamp: 'KenD 7/12/2015 08:48'!
accepts: aValue

	^ (super accepts: aValue) and: [ self collectionToSelectFrom includes: aValue ]! !

!OneOfPropertyMeta methodsFor: 'access' stamp: 'KenD 7/11/2015 07:43'!
collectionToSelectFrom

	^ collectionToSelectFrom! !

!OneOfPropertyMeta methodsFor: 'initialization' stamp: 'KenD 7/11/2015 07:46'!
kind: aClass editor: editorClass dropAcceptor: aOneArgClosure selections: aCollection

	super kind: aClass editor: editorClass dropAcceptor: aOneArgClosure.
	collectionToSelectFrom := aCollection 
! !

!OneOfPropertyMeta class methodsFor: 'instance creation' stamp: 'KenD 7/12/2015 16:50'!
kind: aClass editor: editorClass dropAcceptor: aOneArgClosure selections: aCollection

	| newInstance |
	newInstance := self basicNew kind: aClass editor: editorClass dropAcceptor: aOneArgClosure 
						selections: aCollection.
	"Reuse old instance if we already have one"
	self allInstancesDo: [ :oldInstance | (oldInstance = newInstance) ifTrue: [ ^ oldInstance ] ].
	^ newInstance ! !

!RangePropertyMeta methodsFor: 'comparing' stamp: 'KenD 7/12/2015 16:06'!
= other
	"I am equak to other if I have the same class and ivar values"
	
	^(super = other)
		and: [ (self maximumValue = other maximumValue)
			and: [ self minimumValue = other minimumValue ]
		]  
! !

!RangePropertyMeta methodsFor: 'testing' stamp: 'KenD 7/12/2015 08:50'!
accepts: aValue

	^ (super accepts: aValue) and: [ (self minimumValue <= aValue) and: [ aValue <= self maximumValue ] ]! !

!RangePropertyMeta methodsFor: 'initialization' stamp: 'KenD 7/11/2015 07:48'!
kind: aClass editor: editorClass dropAcceptor: aOneArgClosure minValue: low maxValue: high

	super kind: aClass editor: editorClass dropAcceptor: aOneArgClosure.
	minValue := low.
	maxValue := high
! !

!RangePropertyMeta methodsFor: 'access' stamp: 'KenD 7/11/2015 07:49'!
maximumValue

	^maxValue ! !

!RangePropertyMeta methodsFor: 'access' stamp: 'KenD 7/11/2015 07:48'!
minimumValue

	^minValue ! !

!RangePropertyMeta class methodsFor: 'instance creation' stamp: 'KenD 7/12/2015 16:49'!
kind: aClass editor: editorClass dropAcceptor: aOneArgClosure minValue: low maxValue: high

	| newInstance |
	newInstance := self basicNew kind: aClass editor: editorClass dropAcceptor: aOneArgClosure 
						minValue: low maxValue: high.
	"Reuse old instance if we already have one"
	self allInstancesDo: [ :oldInstance | (oldInstance = newInstance) ifTrue: [ ^ oldInstance ] ].
	^ newInstance ! !

!PropertyMetaTests methodsFor: 'initialization' stamp: 'KenD 7/12/2015 16:35'!
setUp
	"Set up class variables before each test"
	
	passValue := [ :whatever |   "Just pass value through"
		(whatever isKindOf: SignMorph) ifTrue: [ whatever object ] ifFalse: [ whatever ] 
	]. 
	
	self setUpMorphs.
	self setUpProperties.
	self setUpMetaProperties.
	
	

	! !

!PropertyMetaTests methodsFor: 'initialization' stamp: 'KenD 7/12/2015 16:33'!
setUpMetaProperties

	objPropMeta := PropertyMeta default.
	charPropMeta := PropertyMeta kind: Character editor: nil dropAcceptor: passValue.
	colorPropMeta  := PropertyMeta kind: Color editor: nil dropAcceptor: passValue.
	stringPropMeta  := PropertyMeta kind: String editor: nil dropAcceptor: passValue.
	rangePropMeta  := RangePropertyMeta kind: Number editor: nil dropAcceptor: passValue 
						minValue: 2 maxValue: 15.7.
	oneOfPropMeta  := OneOfPropertyMeta kind: Symbol editor: nil dropAcceptor: passValue 
						selections: #(one two three four five).
	closurePropMeta := ClosurePropertyMeta kind: BlockClosure editor: nil dropAcceptor: passValue 
						numArguments: 1.
	morph1 setMetaProperty: #object toValue: objPropMeta.
	morph1 setMetaProperty: #float toValue: rangePropMeta.
	morph1 setMetaProperty: #string toValue: stringPropMeta.
	morph1 setMetaProperty: #char toValue: charPropMeta.
	morph1 setMetaProperty: #color toValue: colorPropMeta.
	morph1 setMetaProperty: #bool 
			toValue: (PropertyMeta kind: Boolean editor: nil dropAcceptor: passValue).
	morph1 setMetaProperty: #oneOf toValue: oneOfPropMeta.
	morph1 setMetaProperty: #range 
			toValue: (RangePropertyMeta kind: Number editor: nil dropAcceptor: passValue 
						minValue: 2 maxValue: 15.7).
	morph1 setMetaProperty: #alwaysTrue toValue: closurePropMeta.

	! !

!PropertyMetaTests methodsFor: 'initialization' stamp: 'KenD 7/12/2015 16:54'!
setUpMorphs

	morph1 := EllipseMorph initializedInstance.
	morph2 := BorderedRectMorph initializedInstance.
! !

!PropertyMetaTests methodsFor: 'initialization' stamp: 'KenD 7/12/2015 16:32'!
setUpProperties

	morph1 setProperty: #object toValue: nil.
	morph1 setProperty: #float toValue: 2.3.
	morph1 setProperty: #range toValue: 5.
	morph1 setProperty: #string toValue: 'Silly little string'.
	morph1 setProperty: #char toValue: $c.
	morph1 setProperty: #color toValue: Color red.
	morph1 setProperty: #bool toValue: true.
	morph1 setProperty: #oneOf toValue: #three. "#(one two three four five)"
	morph1 setProperty: #symbol toValue: #'MySymbol'.
	morph1 setProperty: #alwaysTrue toValue: [ :ignored | true ].
! !

!PropertyMetaTests methodsFor: 'testing' stamp: 'KenD 7/12/2015 18:15'!
testAcceptance
	"Are constraints properly tested for?"
	
	self assert: ( 2.3 = (morph1 valueOfProperty: #float) ).
	self assert: ( ( morph1 valueOfMetaProperty: #float ) accepts: 2.3 ).
	self deny: ( ( morph1 valueOfMetaProperty: #float ) accepts: 45 ).
	self deny: ( ( morph1 valueOfMetaProperty: #float ) accepts: 'String' ).
	self assert: ( #three = (morph1 valueOfProperty: #oneOf) ).
	self assert: ( ( morph1 valueOfMetaProperty: #oneOf ) accepts: #two ).
	self assert: ( ( morph1 valueOfMetaProperty: #oneOf ) accepts: #five ).
	self deny: ( ( morph1 valueOfMetaProperty: #oneOf ) accepts: 5 ).
	self deny: ( ( morph1 valueOfMetaProperty: #oneOf ) accepts: 'five' ).
	self assert: ( ( morph1 valueOfMetaProperty: #alwaysTrue ) accepts: [ :ignore | false ] ).
	self deny: ( ( morph1 valueOfMetaProperty: #alwaysTrue ) accepts: [ :one :two | one + two ] ).
	self assert: true.
	self assert: true.
	self assert: true.
	self assert: true.
	self assert: true.
	self assert: true.
	self deny: false.
	self deny: false.
	self deny: false.
	self deny: false.
	self deny: false.
	! !

!PropertyMetaTests methodsFor: 'testing' stamp: 'KenD 7/12/2015 16:45'!
testAccess
	"Can we get there from here?"
	
	self assert: ((morph1 valueOfMetaProperty: #string) == stringPropMeta).
	self assert: ((morph1 valueOfProperty: #string) = 'Silly little string').
	self deny: false.
	! !

!PropertyMetaTests methodsFor: 'testing' stamp: 'KenD 7/12/2015 16:42'!
testComparison
	"Do we compare properly?"
	
	self assert: (colorPropMeta = colorPropMeta).
	self deny: (colorPropMeta = objPropMeta).
	self assert: (colorPropMeta = 
		(PropertyMeta kind: Color editor: nil dropAcceptor: passValue)
	).
	self assert: (oneOfPropMeta = 
		(OneOfPropertyMeta kind: Symbol editor: nil dropAcceptor: passValue 
						selections: #(one two three four five))
	).
	self assert: (rangePropMeta =
		(RangePropertyMeta kind: Number editor: nil dropAcceptor: passValue 
						minValue: 2 maxValue: 15.7)
	).
	self deny: (rangePropMeta = 
		(PropertyMeta kind: Color editor: nil dropAcceptor: passValue)
	).
	self deny: (rangePropMeta = 
		(OneOfPropertyMeta kind: Symbol editor: nil dropAcceptor: passValue 
						selections: #(one two three four five))
	).
	self deny: (oneOfPropMeta =
		(RangePropertyMeta kind: Number editor: nil dropAcceptor: passValue 
						minValue: 2 maxValue: 15.7)
	).! !
PropertyMeta initialize!
