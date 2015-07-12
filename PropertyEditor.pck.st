'From Cuis 4.2 of 25 July 2013 [latest update: #2404] on 12 July 2015 at 9:03:22.954 am'!
'Description Editor for Morph Properties'!
!provides: 'PropertyEditor' 1 9!
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

!Morph methodsFor: '*propertyeditor' stamp: 'KenD 7/11/2015 10:46'!
metaProperties
	"Answer a Dictionary of propName->PropertyDecsription"
	
	^ self valueOfProperty: #'metaProperties' 
		ifAbsent: [ | newDict |
			newDict := IdentityDictionary new.
			self setProperty: #'metaProperties' toValue: newDict.
			newDict 
		]! !

!Morph methodsFor: '*propertyeditor' stamp: 'KenD 7/11/2015 14:40'!
setMetaProperty: propSym toValue: aPropertyDescription

	self metaProperties at: propSym put: aPropertyDescription 
	! !

!Morph methodsFor: '*propertyeditor' stamp: 'KenD 7/11/2015 14:41'!
valueOfMetaProperty: propSym

	^ self metaProperties at: propSym ifAbsent: [ nil ]
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

!PropertyMeta methodsFor: 'access' stamp: 'KenD 7/12/2015 08:43'!
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
PropertyMeta initialize!
