'From Cuis 4.2 of 25 July 2013 [latest update: #2404] on 11 July 2015 at 2:49:17.267711 pm'!
'Description Editor for Morph Properties'!
!provides: 'PropertyEditor' 1 8!
!requires: 'Morphic-Misc1' 1 49 nil!
!requires: 'Morphic-ColorEditor' 1 16 nil!
!classDefinition: #PropertyEditor category: #PropertyEditor!
Panel subclass: #PropertyEditor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PropertyEditor'!
!classDefinition: 'PropertyEditor class' category: #PropertyEditor!
PropertyEditor class
	instanceVariableNames: ''!

!classDefinition: #PropertyDescription category: #PropertyEditor!
Object subclass: #PropertyDescription
	instanceVariableNames: 'kind editorClass dropAcceptor'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PropertyEditor'!
!classDefinition: 'PropertyDescription class' category: #PropertyEditor!
PropertyDescription class
	instanceVariableNames: ''!

!classDefinition: #ClosurePropertyDescription category: #PropertyEditor!
PropertyDescription subclass: #ClosurePropertyDescription
	instanceVariableNames: 'numberOfArguments'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PropertyEditor'!
!classDefinition: 'ClosurePropertyDescription class' category: #PropertyEditor!
ClosurePropertyDescription class
	instanceVariableNames: ''!

!classDefinition: #OneOfPropertyDescription category: #PropertyEditor!
PropertyDescription subclass: #OneOfPropertyDescription
	instanceVariableNames: 'collectionToSelectFrom'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PropertyEditor'!
!classDefinition: 'OneOfPropertyDescription class' category: #PropertyEditor!
OneOfPropertyDescription class
	instanceVariableNames: ''!

!classDefinition: #RangePropertyDescription category: #PropertyEditor!
PropertyDescription subclass: #RangePropertyDescription
	instanceVariableNames: 'minValue maxValue'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PropertyEditor'!
!classDefinition: 'RangePropertyDescription class' category: #PropertyEditor!
RangePropertyDescription class
	instanceVariableNames: ''!


!PropertyEditor commentStamp: '<historical>' prior: 0!
I display a Morp's properties for edit.

My model is the Morph which is being edited.!

!PropertyDescription commentStamp: '<historical>' prior: 0!
I am metaData for a Morph Property.  

I am frequently shared, so my ivars are immutable (not meant to be changed).

ivars:
  kind -- a Class; prop value must be aKindOf: self kind
  editorClass -- class of editor to be used in editing the property
  dropAcceptor -- when a Morph is dropped on a property displayed in a PropertyEditor, this does any transform required for the value to be placed in the property.  E.g. a prop holding a Color may take a color swatch, color name, ...
!

!ClosurePropertyDescription commentStamp: '<historical>' prior: 0!
My kind is BlockClosure.

I add the constraint that the number of arguments for the closure must be numberOfArguments!

!OneOfPropertyDescription commentStamp: '<historical>' prior: 0!
My property values are constrained to be one member of the contained collection.

Note that Kind may also be constrained.!

!RangePropertyDescription commentStamp: '<historical>' prior: 0!
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

!PropertyEditor methodsFor: 'GUI building' stamp: 'KenD 7/10/2015 12:57'!
buildMorphicWindow
	
	|  |	
	self setLabel: (self model printStringLimitedTo: 30).
	self titleMorph showButtonsNamed: #( close collapse showHalo ).

	self notYetImplemented ! !

!PropertyDescription methodsFor: 'access' stamp: 'KenD 7/11/2015 07:37'!
dropAcceptor

	^ dropAcceptor! !

!PropertyDescription methodsFor: 'access' stamp: 'KenD 7/11/2015 07:40'!
editorClass

	^ editorClass! !

!PropertyDescription methodsFor: 'access' stamp: 'KenD 7/11/2015 07:36'!
kind

	^ kind! !

!PropertyDescription methodsFor: 'initialization' stamp: 'KenD 7/11/2015 14:44'!
kind: aClass editor: aEditClass dropAcceptor: aOneArgClosure

	kind := aClass.
	editorClass := aEditClass.
	dropAcceptor := aOneArgClosure.
! !

!PropertyDescription class methodsFor: 'instance creation' stamp: 'KenD 7/11/2015 11:02'!
kind: aClass editor: editorClass dropAcceptor: aOneArgClosure

	| newInstance |
	newInstance := self basicNew kind: aClass editor: editorClass dropAcceptor: aOneArgClosure.
	"Reuse old instance if we already have one"
	self allInstancesDo: [ :oldInstance | (oldInstance = newInstance) ifTrue: [ ^ oldInstance ] ].
	^ newInstance ! !

!ClosurePropertyDescription methodsFor: 'initialization' stamp: 'KenD 7/11/2015 07:47'!
kind: aClass editor: editorClass dropAcceptor: aOneArgClosure numArguments: numArgs

	super kind: aClass editor: editorClass dropAcceptor: aOneArgClosure.
	numberOfArguments := numArgs 
! !

!ClosurePropertyDescription methodsFor: 'access' stamp: 'KenD 7/11/2015 07:41'!
numberOfArguments

	^ numberOfArguments! !

!OneOfPropertyDescription methodsFor: 'access' stamp: 'KenD 7/11/2015 07:43'!
collectionToSelectFrom

	^ collectionToSelectFrom! !

!OneOfPropertyDescription methodsFor: 'initialization' stamp: 'KenD 7/11/2015 07:46'!
kind: aClass editor: editorClass dropAcceptor: aOneArgClosure selections: aCollection

	super kind: aClass editor: editorClass dropAcceptor: aOneArgClosure.
	collectionToSelectFrom := aCollection 
! !

!RangePropertyDescription methodsFor: 'initialization' stamp: 'KenD 7/11/2015 07:48'!
kind: aClass editor: editorClass dropAcceptor: aOneArgClosure minValue: low maxValue: high

	super kind: aClass editor: editorClass dropAcceptor: aOneArgClosure.
	minValue := low.
	maxValue := high
! !

!RangePropertyDescription methodsFor: 'access' stamp: 'KenD 7/11/2015 07:49'!
maximumValue

	^maxValue ! !

!RangePropertyDescription methodsFor: 'access' stamp: 'KenD 7/11/2015 07:48'!
minimumValue

	^minValue ! !
