'From Cuis 5.0 of 7 November 2016 [latest update: #3655] on 11 March 2019 at 9:10:06 pm'!
'Description MorphMorphs change/add state/behavior of other morphs.'!
!provides: 'MorphIt' 1 24!
!requires: 'Cuis-Base' 50 3655 nil!
!requires: 'Morphic-ColorEditor' 1 16 nil!
!requires: 'Morphic-Misc1' 1 45 nil!
!requires: 'Value-Constraints' 1 5 nil!
!requires: 'ValueHolder' 1 20 nil!
!requires: 'Animator' 1 11 nil!
SystemOrganization addCategory: #MorphIt!


!classDefinition: #MorphMorph category: #MorphIt!
BorderedImageMorph subclass: #MorphMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MorphIt'!
!classDefinition: 'MorphMorph class' category: #MorphIt!
MorphMorph class
	instanceVariableNames: ''!

!classDefinition: #MorphAction category: #MorphIt!
MorphMorph subclass: #MorphAction
	instanceVariableNames: 'when what where with theMorph theAction'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MorphIt'!
!classDefinition: 'MorphAction class' category: #MorphIt!
MorphAction class
	instanceVariableNames: ''!

!classDefinition: #MorphGraphic category: #MorphIt!
MorphMorph subclass: #MorphGraphic
	instanceVariableNames: 'foregroundColor backgroundColor ink shape applyWhen removeWhen'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MorphIt'!
!classDefinition: 'MorphGraphic class' category: #MorphIt!
MorphGraphic class
	instanceVariableNames: ''!

!classDefinition: #MorphTheColor category: #MorphIt!
MorphMorph subclass: #MorphTheColor
	instanceVariableNames: 'myColor'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MorphIt'!
!classDefinition: 'MorphTheColor class' category: #MorphIt!
MorphTheColor class
	instanceVariableNames: ''!

!classDefinition: #MorphValueHolder category: #MorphIt!
MorphMorph subclass: #MorphValueHolder
	instanceVariableNames: 'valueHolder icon'
	classVariableNames: 'ColorIcon FloatIcon IntegerIcon PointIcon RangeIcon StringIcon'
	poolDictionaries: ''
	category: 'MorphIt'!
!classDefinition: 'MorphValueHolder class' category: #MorphIt!
MorphValueHolder class
	instanceVariableNames: ''!

!classDefinition: #UserActionMorph category: #MorphIt!
MorphMorph subclass: #UserActionMorph
	instanceVariableNames: 'addActionProc removeActionProc icon'
	classVariableNames: 'BounceIcon ColorCycleIcon GrowShrinkIcon HandlesKeyboardSelectors HandlesMouseDownSelectors HandlesMouseOverSelectors HandlesMouseStillDownSelectors PathIcon'
	poolDictionaries: ''
	category: 'MorphIt'!
!classDefinition: 'UserActionMorph class' category: #MorphIt!
UserActionMorph class
	instanceVariableNames: ''!

!classDefinition: #MorphModifierPallet category: #MorphIt!
Morph subclass: #MorphModifierPallet
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MorphIt'!
!classDefinition: 'MorphModifierPallet class' category: #MorphIt!
MorphModifierPallet class
	instanceVariableNames: ''!

!classDefinition: #MorphIt category: #MorphIt!
ProtoObject subclass: #MorphIt
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MorphIt'!
!classDefinition: 'MorphIt class' category: #MorphIt!
MorphIt class
	instanceVariableNames: ''!


!MorphMorph commentStamp: '<historical>' prior: 0!
I am part of Morphit -- a package to author largely via drag 'n drop.

a MorphMorph is a Morph which can be dropped on another Morph in a ConstructionLens to add behavior, change state, add variables, or do other transformations/transitions.
!

!MorphAction commentStamp: '<historical>' prior: 0!
I add an event to a Morph.

The pattern is
	theMorph when: when send: what to: where withArguments: with

	!

!MorphGraphic commentStamp: '<historical>' prior: 0!
I modify a Morph's graphic appearance!

!MorphTheColor commentStamp: '<historical>' prior: 0!
Drop an instance of me to change a Morph's color.!

!MorphValueHolder commentStamp: '<historical>' prior: 0!
My instances represent ValueHolders!

!UserActionMorph commentStamp: '<historical>' prior: 0!
This class adds mouse or keyboard actions to Morph instances.!

!MorphModifierPallet commentStamp: '<historical>' prior: 0!
I am just a way to get a Morph Modifier Pattet [see my class side].


MorphModifierPallet initializedInstance openInWorld morphExtent: (690 @ 84).
!

!MorphIt commentStamp: '<historical>' prior: 0!
This is a documentation class -- see my class side

Note:  
		MorphIt samplePallet.!

!MorphMorph methodsFor: 'accessing' stamp: 'KenD 5/10/2015 10:00'!
name

	^ super name 
		ifNotNil: [ :myName |  myName ]
		ifNil: [ self defaultName ]
! !

!MorphMorph methodsFor: 'copying' stamp: 'KenD 7/5/2015 15:39'!
postCopy
	"After a clone or shallow copy, one needs an unshared location"

	location _ MorphicTranslation new! !

!MorphTheColor class methodsFor: 'new-morph participation' stamp: 'KenD 5/8/2015 16:24'!
initializedInstance
"
	self initializedInstance openInWorld.
"

	^ self forColor: Color blue! !

!MorphModifierPallet class methodsFor: 'instance creation' stamp: 'KenD 7/5/2015 15:29'!
initializedInstance

	^ ImagePallet morphModifierPallet morphExtent:  (690 @ 84).! !

!MorphMorph methodsFor: 'morph interactions' stamp: 'KenD 5/8/2015 22:02'!
addToModifiersOf: aMorph
	"Add me to aMorph morphModifiers"
	
	| morphModifiers |
	morphModifiers := aMorph valueOfProperty: #morphModifiers
									 ifAbsent: [ Set new ].
	morphModifiers add: self.
	aMorph setProperty: #morphModifiers toValue: morphModifiers.
! !

!MorphMorph methodsFor: 'morph interactions' stamp: 'KenD 10/12/2013 16:33'!
modifiersOf: aMorph
	"Answer aMorph morphModifiers"
	
	^ aMorph valueOfProperty: #morphModifiers  ifAbsent: [ nil ]
	! !

!MorphMorph methodsFor: 'morph interactions' stamp: 'KenD 10/2/2013 17:31'!
removeFromModifiersOf: aMorph
	"Remove me from aMorph morphModifiers"
	
	| morphModifiers |
	morphModifiers := aMorph valueOfProperty: #morphModifiers
									 ifAbsent: [ ^ self ].
	morphModifiers remove: self ifAbsent: [ "no action" ].
	(morphModifiers isEmpty)
		ifTrue:  [ aMorph removeProperty: #morphModifiers ]
		ifFalse: [ aMorph setProperty: #morphModifiers toValue: morphModifiers ]
	! !

!MorphMorph methodsFor: 'accessing' stamp: 'KenD 5/10/2015 09:58'!
balloonText: aString

 	self setProperty: #balloonText toValue: aString
! !

!MorphMorph methodsFor: 'accessing' stamp: 'KenD 10/12/2013 17:27'!
defaultName

	^ self class printString withFirstCharacterDownshifted ! !

!MorphMorph methodsFor: 'accessing' stamp: 'KenD 5/13/2015 08:16'!
icon

	self subclassResponsibility ! !

!MorphMorph methodsFor: 'copying' stamp: 'KenD 7/5/2015 15:38'!
copy

	^ self shallowCopy postCopy! !

!MorphMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 5/10/2015 15:34'!
dropAction: aDropTargetMorph
	"I have been dropped on aDropTargetMorph.  
	 Do my initialization action on its targetMorph."

	self droppedOn: aDropTargetMorph targetMorph.
	aDropTargetMorph refreshSubmorphs.! !

!MorphMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 10/2/2013 17:17'!
droppedOn: aMorph
	"I have been dropped on aMorph.  Do my initialization action."
	
	self subclassResponsibility ! !

!MorphMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 10/12/2013 17:13'!
rejectDropMorphEvent: evt
	"Rejected drop of me.  Remove me from the hand."
	
	self removeMeFromTheHand
! !

!MorphMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 10/12/2013 17:13'!
removeMeFromTheHand
	"Rejected drop of me.  Remove me from the hand."
	
	self world activeHand removeMorph: self
! !

!MorphMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 10/2/2013 17:18'!
removedFrom: aMorph
	"I have been removed from aMorph.  Do my cleanup action."
	
	self subclassResponsibility ! !

!MorphMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 5/9/2015 15:17'!
wantsToBeDroppedInto: aMorph
	"I wish to be dropped on a DropTargeMorph"

	(aMorph isKindOf: DropTargetMorph)
		ifTrue: [ self dropAction: aMorph ].
	^ false  "Always be rejected after doing the drop action"! !

!MorphMorph methodsFor: 'initialization' stamp: 'KenD 5/13/2015 11:16'!
initialize
	"Set my defaults"

	| extent |
	super initialize.
	self setProperty: #DropActionMorph toValue: true.
	(self class includesSelector: #icon32)
		ifTrue: [ self image: self icon32 ]
	 	ifFalse: [ self image: (self icon magnifyTo: 32@32) ].
	extent := self morphExtent.
	self layoutSpec: (LayoutSpec fixedWidth: extent x fixedHeight: extent y  minorDirectionPadding: 0.5);
	yourself

! !

!MorphMorph class methodsFor: 'new-morph participation' stamp: 'KenD 10/12/2013 17:12'!
includeInNewMorphMenu
	"Return true for all classes that can be instantiated from the menu"
	
	^ false! !

!MorphMorph class methodsFor: 'morph modifiers' stamp: 'KenD 10/12/2013 16:34'!
modifiersOf: aMorph
	"Answer aMorph morphModifiers"
	
	^ aMorph valueOfProperty: #morphModifiers  ifAbsent: [ nil ]
	! !

!MorphAction methodsFor: 'accessing' stamp: 'KenD 10/2/2013 16:26'!
balloonText

	^ 'Action when Event'! !

!MorphAction methodsFor: 'accessing' stamp: 'KenD 10/12/2013 17:29'!
defaultName

	^ 'MorphAction'! !

!MorphAction methodsFor: 'accessing' stamp: 'KenD 3/11/2019 21:03:32'!
icon

	^ Theme content from: #Theme get: #( '16x16' 'smalltalk' 'save-as-new-version.png' )! !

!MorphAction methodsFor: 'accessing' stamp: 'KenD 10/2/2013 17:03'!
what

	^ what! !

!MorphAction methodsFor: 'accessing' stamp: 'KenD 10/2/2013 16:48'!
what: anEventSelector

	self removeAction.
	what := anEventSelector asSymbol! !

!MorphAction methodsFor: 'accessing' stamp: 'KenD 10/2/2013 17:03'!
when

	^ when! !

!MorphAction methodsFor: 'accessing' stamp: 'KenD 10/2/2013 16:49'!
when: anEventSelector

	self removeAction.
	when := anEventSelector asSymbol! !

!MorphAction methodsFor: 'accessing' stamp: 'KenD 10/2/2013 17:03'!
where

	^ where! !

!MorphAction methodsFor: 'accessing' stamp: 'KenD 10/2/2013 16:49'!
where: aTargetObject

	self removeAction.
	where := aTargetObject! !

!MorphAction methodsFor: 'accessing' stamp: 'KenD 10/2/2013 17:04'!
with

	^ with! !

!MorphAction methodsFor: 'accessing' stamp: 'KenD 10/2/2013 16:49'!
with: otherArgs

	self removeAction.
	with := otherArgs! !

!MorphAction methodsFor: 'dropping/grabbing' stamp: 'KenD 10/2/2013 16:57'!
droppedOn: aMorph
	"I have been dropped on aMorph.  Do my initialization action."
	
	theMorph := aMorph.
	self addToModifiersOf: theMorph.
	self realizeActionNoError. "Only adds action if have all information"! !

!MorphAction methodsFor: 'dropping/grabbing' stamp: 'KenD 10/2/2013 16:59'!
removedFrom: aMorph
	"I have been removed from aMorph.  Do my cleanup action."
	
	(theMorph == aMorph) ifFalse: [ Error signal: 'removedFrom: with wrong Morph!!!!' ]. 
	
	theAction ifNotNil: [ theMorph removeAction: theAction 
									  forEvent: what ].
	theAction := nil.
	self removeFromModifiersOf: theMorph.
	theMorph := nil.! !

!MorphAction methodsFor: 'morph interactions' stamp: 'KenD 10/2/2013 17:02'!
realizeAction
	"Check requirements and add action to theMorph"

	( { when. what. where. } anySatisfy: [ :requiredValue | requiredValue isNil ] )
		ifTrue: [ Error signal: 'Missing information for action' ].
		
	theAction ifNotNil: [ self removeAction ].
		
	theAction := 
		with 
		  ifNotNil: [ theMorph when: when 
								 send: what 
								 to: where 
								 withArguments: ((with isArray)
													    ifTrue: [with]
													    ifFalse: [Array with: with])
		  ]
		  ifNil: [ theMorph when: when send: what to: where ] ! !

!MorphAction methodsFor: 'morph interactions' stamp: 'KenD 10/2/2013 16:55'!
realizeActionNoError
	"Check requirements and add action to theMorph"

	( { when. what. where. } anySatisfy: [ :requiredValue | requiredValue isNil ] )
		ifFalse: [ 		
			theAction := 
				with 
		  			ifNotNil: [ theMorph when: when 
								 send: what 
								 to: where 
								 withArguments: ((with isArray)
													    ifTrue: [with]
													    ifFalse: [Array with: with])
		  			]
		  			ifNil: [ theMorph when: when send: what to: where ] 
		]! !

!MorphAction methodsFor: 'morph interactions' stamp: 'KenD 10/2/2013 16:56'!
removeAction

	theAction ifNotNil: [ theMorph removeAction: theAction 
									    forEvent: what ].! !

!MorphAction class methodsFor: 'examples' stamp: 'KenD 5/8/2015 21:30'!
example1
"
	self example1.
	self example1 openInWorld.
"
	| cm ma |
	cm := ImageMorph new image: Color red icon.
	ma := MorphAction new.
	ma when: #logMe.
	ma what: #log:.
	ma where: Transcript.
	ma with: 'Log My Success!!!!!!'.
	ma droppedOn: cm.
	Transcript display. 
	cm triggerEvent: #logMe.
	^ cm! !

!MorphGraphic methodsFor: 'accessing' stamp: 'KenD 10/12/2013 17:27'!
balloonText

	^ 'Modify Graphic Features'! !

!MorphGraphic methodsFor: 'accessing' stamp: 'KenD 10/12/2013 17:31'!
defaultName

	^ 'GraphicModifier'.
! !

!MorphGraphic methodsFor: 'accessing' stamp: 'KenD 3/11/2019 21:04:29'!
icon

	^ Theme content from: #'Theme' get: #(  '16x16' 'apps' 'preferences-desktop-locale.png' )! !

!MorphGraphic methodsFor: 'dropping/grabbing' stamp: 'KenD 5/10/2015 15:28'!
dropedOn: aMorph
	"I have been dropped on aMorph.  
	 Do my initialization action."

	self notYetImplemented ! !

!MorphGraphic methodsFor: 'dropping/grabbing' stamp: 'KenD 10/12/2013 17:16'!
removedFrom: aMorph
	"I have been removed from aMorph.  Do my cleanup action."
	
	self notYetImplemented ! !

!MorphGraphic methodsFor: 'initialization' stamp: 'KenD 10/12/2013 17:31'!
initialize

	super initialize.
	"Set my deafults"
	foregroundColor := Color blue.  "@@@??@@@"
	backgroundColor := Color transparent.
	ink := #Copy.
	shape := #Rectangle.
	applyWhen := #MouseDown.
	removeWhen := #MouseUp.
	! !

!MorphTheColor methodsFor: 'accessing' stamp: 'KenD 10/12/2013 17:20'!
balloonText

	^ self valueOfProperty: #balloonText ifAbsent: [ 'Change color to me' ]! !

!MorphTheColor methodsFor: 'accessing' stamp: 'KenD 10/2/2013 17:24'!
color
	"Nota Bene: overrides inherited #color selector"
	
	^ myColor! !

!MorphTheColor methodsFor: 'accessing' stamp: 'KenD 10/12/2013 16:52'!
defaultName

		^ 'Color', self color name asString capitalized.! !

!MorphTheColor methodsFor: 'accessing' stamp: 'KenD 3/11/2019 21:05:00'!
icon

	^myColor 
		ifNil:  [ Theme content 
					from: #'Theme' get: #( '16x16' 'apps' 'preferences-desktop-locale.png' ) ]
		ifNotNil: [ myColor icon ]! !

!MorphTheColor methodsFor: 'dropping/grabbing' stamp: 'KenD 5/10/2015 15:21'!
dropAction: aDropTargetMorph
	"Set a color"

	| colorSetters aMorph choices |
	aMorph := aDropTargetMorph targetMorph.
	colorSetters := (((aMorph class withAllSuperclasses 
		collect: [ :c | c selectors ] andFold: [ :a :b | a union: b]) "all selectors"
			select: [ :s | ('*color*:' match: s) and: [('*:*:' match: s) not]] ) asArray).
			
	(colorSetters size = 1)
		ifTrue: [ aMorph perform: (colorSetters at: 1) with: self color ]
		ifFalse: [ | selection |
			choices := OrderedCollection with: #Cancel.
			choices addAll: colorSetters.
			self delete. "Remove me from hand so user can choose"
			selection := PopUpMenu withCaption: 'Choose color setter' 
											chooseFrom: choices.
			(selection = 1) ifFalse: [ "1 -> Cancel"
				aMorph
						perform: (colorSetters at: selection - 1) 
						with: self color
			]
		].

	aDropTargetMorph refreshSubmorphs. ! !

!MorphTheColor methodsFor: 'dropping/grabbing' stamp: 'KenD 5/10/2015 15:32'!
droppedOn: aMorph
	"I have been dropped on aMorph.  Change its color."
	"Note that this is a direct action.  I am never added to a Morph."

	| colorSetters choices |
	colorSetters := (((aMorph class withAllSuperclasses 
		collect: [ :c | c selectors ] andFold: [ :a :b | a union: b]) "all selectors"
			select: [ :s | ('*color*:' match: s) and: [('*:*:' match: s) not]] ) asArray).
			
	(colorSetters size = 1)
		ifTrue: [ aMorph perform: (colorSetters at: 1) with: self color ]
		ifFalse: [ | selection |
			choices := OrderedCollection with: #Cancel.
			choices addAll: colorSetters.
			self delete. "Remove me from hand so user can choose"
			selection := PopUpMenu withCaption: 'Choose color setter' 
											chooseFrom: choices.
			(selection = 1) ifFalse: [ "1 -> Cancel"
				aMorph
						perform: (colorSetters at: selection - 1) 
						with: self color
			]
		].
! !

!MorphTheColor methodsFor: 'dropping/grabbing' stamp: 'KenD 5/10/2015 15:32'!
droppedOn: aMorph
	"I have been dropped on aMorph.  Change its color."
	"Note that this is a direct action.  I am never added to a Morph."
	
dropAction: aDropTargetMorph
	"Set a color"

	| colorSetters choices |
	colorSetters := (((aMorph class withAllSuperclasses 
		collect: [ :c | c selectors ] andFold: [ :a :b | a union: b]) "all selectors"
			select: [ :s | ('*color*:' match: s) and: [('*:*:' match: s) not]] ) asArray).
			
	(colorSetters size = 1)
		ifTrue: [ aMorph perform: (colorSetters at: 1) with: self color ]
		ifFalse: [ | selection |
			choices := OrderedCollection with: #Cancel.
			choices addAll: colorSetters.
			self delete. "Remove me from hand so user can choose"
			selection := PopUpMenu withCaption: 'Choose color setter' 
											chooseFrom: choices.
			(selection = 1) ifFalse: [ "1 -> Cancel"
				aMorph
						perform: (colorSetters at: selection - 1) 
						with: self color
			]
		].
! !

!MorphTheColor methodsFor: 'dropping/grabbing' stamp: 'KenD 10/2/2013 16:40'!
removedFrom: aMorph
	"I act directly and am never added to a morph so I cannot be removed from one."
	
	Error signal: 'Implementation error: should never happen!!' ! !

!MorphTheColor methodsFor: 'dropping/grabbing' stamp: 'KenD 5/10/2015 15:14'!
wantsToBeDroppedInto: aMorph
	"I wish to be dropped on a DropTargeMorph"

	(aMorph isKindOf: DropTargetMorph)
		ifTrue: [ self dropAction: aMorph ].
	^ false  "Always be rejected after doing the drop action"! !

!MorphTheColor methodsFor: 'initialization' stamp: 'KenD 10/12/2013 17:30'!
forColor: aColor

	myColor := aColor.
	self image: (myColor icon magnifyTo: 32@32).
! !

!MorphTheColor class methodsFor: 'instance creation' stamp: 'KenD 10/2/2013 16:32'!
forColor: aColor

	(aColor isKindOf: Color) ifFalse: [ Error signal: 'Must use a Color, not ', aColor printString ].
	
	^ self new forColor: aColor! !

!MorphValueHolder methodsFor: 'accessing' stamp: 'KenD 10/12/2013 16:52'!
defaultName

	^ self valueHolder defaultName.
! !

!MorphValueHolder methodsFor: 'accessing' stamp: 'KenD 10/12/2013 16:41'!
icon

	^ icon magnifyTo: 16 @ 16! !

!MorphValueHolder methodsFor: 'accessing' stamp: 'KenD 10/12/2013 16:41'!
icon32

	^ icon! !

!MorphValueHolder methodsFor: 'accessing' stamp: 'KenD 10/12/2013 16:45'!
valueHolder

	^ valueHolder ! !

!MorphValueHolder methodsFor: 'dropping/grabbing' stamp: 'KenD 5/13/2015 11:37'!
droppedOn: aMorph
	"Add self as property to aMorph"
	
	| propSym |
	propSym := self name asSymbol.
	(aMorph hasProperty: propSym)
		ifTrue: [ 
			self removeMeFromTheHand.
			PopUpMenu inform: 'Morph already has a property named ', self name asString.
		]
		ifFalse: [ 
			aMorph setProperty: propSym toValue: self valueHolder.
			self addToModifiersOf: aMorph. "So I show up in DropTargetMorphs"
		].
! !

!MorphValueHolder methodsFor: 'dropping/grabbing' stamp: 'KenD 10/12/2013 16:35'!
removedFrom: aMorph
	"remove self as property from aMorph"
		
	| propSym |
	propSym := self name asSymbol.
	(aMorph hasProperty: propSym)
		ifTrue: [ aMorph removeProperty: propSym ].
! !

!MorphValueHolder methodsFor: 'initialization' stamp: 'KenD 10/12/2013 17:32'!
valueHolder: aValueHolder icon: aForm balloonText: aString

	valueHolder := aValueHolder.
	icon := aForm.
	balloonText := aString.
	super initialize.
! !

!MorphValueHolder class methodsFor: 'accessing' stamp: 'KenD 10/12/2013 16:55'!
colorIcon

	^ ColorIcon! !

!MorphValueHolder class methodsFor: 'accessing' stamp: 'KenD 10/12/2013 16:58'!
floatIcon

	^ FloatIcon! !

!MorphValueHolder class methodsFor: 'accessing' stamp: 'KenD 10/12/2013 16:56'!
integerIcon

	^ IntegerIcon! !

!MorphValueHolder class methodsFor: 'accessing' stamp: 'KenD 10/12/2013 16:54'!
pointIcon

	^ PointIcon ! !

!MorphValueHolder class methodsFor: 'accessing' stamp: 'KenD 10/12/2013 16:57'!
rangeIcon

	^ RangeIcon! !

!MorphValueHolder class methodsFor: 'accessing' stamp: 'KenD 10/12/2013 16:57'!
stringIcon

	^ StringIcon! !

!MorphValueHolder class methodsFor: 'instance creation' stamp: 'KenD 10/12/2013 16:52'!
forValueHolder: aValueHolder icon: aForm balloonText: aString

	(aValueHolder isKindOf: ValueHolder)
		ifFalse: [ Error signal: 'I require a ValueHolder instance ', aValueHolder printString ].
	(aForm isKindOf: Form)
		ifFalse: [ Error signal: 'I require a Form ', aForm printString ].
	(aString isKindOf: String)
		ifFalse: [ Error signal: 'I require a String instance ', aString printString ].
		
	^ self basicNew valueHolder: aValueHolder icon: aForm balloonText: aString ! !

!MorphValueHolder class methodsFor: 'instance creation' stamp: 'KenD 10/12/2013 16:26'!
holderOfColors
"
	MorphValueHolder holderOfColors openInWorld. 
"
	^ self forValueHolder: (ValueOfKind mustBeKindOf: Color) 
		    icon: self colorIcon 
		    balloonText: 'Color Variable'! !

!MorphValueHolder class methodsFor: 'instance creation' stamp: 'KenD 10/12/2013 16:33'!
holderOfFloats
"
	MorphValueHolder holderOfFloats openInWorld. 
"
	| floatHolder |
	floatHolder := ValueOfKind mustBeKindOf: Float.
	floatHolder value: 0.0.
	
	^ self forValueHolder: floatHolder
		    icon: self floatIcon 
		    balloonText: 'Float Variable'! !

!MorphValueHolder class methodsFor: 'instance creation' stamp: 'KenD 10/12/2013 16:26'!
holderOfIntegers
"
	MorphValueHolder holderOfIntegers openInWorld. 
"
	| intHolder |
	intHolder := ValueOfKind mustBeKindOf: Integer.
	intHolder value: 0.
	
	^ self forValueHolder: intHolder
		    icon: self integerIcon 
		    balloonText: 'Integer Variable'! !

!MorphValueHolder class methodsFor: 'instance creation' stamp: 'KenD 10/12/2013 16:25'!
holderOfPoints
"
	MorphValueHolder holderOfPoints openInWorld.
"
	| pointHolder |
	pointHolder := ValueOfKind mustBeKindOf: Point.
	pointHolder value: 20@30.
	
	^ self forValueHolder: pointHolder 
		    icon: self pointIcon 
		    balloonText: 'Point Variable'! !

!MorphValueHolder class methodsFor: 'instance creation' stamp: 'KenD 10/12/2013 16:25'!
holderOfRange
"
	MorphValueHolder holderOfRange openInWorld.
"
	^ self forValueHolder: (ValueOfRange minValue: 0.0 maxValue: 1.0) 
		    icon: self rangeIcon 
		    balloonText: 'Numeric Range Variable'! !

!MorphValueHolder class methodsFor: 'instance creation' stamp: 'KenD 10/12/2013 16:25'!
holderOfStrings
"
	MorphValueHolder holderOfStrings openInWorld.
"
	| stringHolder |
	stringHolder := ValueOfKind mustBeKindOf: String.
	stringHolder value: 'Use a better string than me!!'.
	
	^ self forValueHolder: stringHolder 
		    icon: self stringIcon 
		    balloonText: 'String Variable'! !

!MorphValueHolder class methodsFor: 'instance creation' stamp: 'KenD 10/12/2013 17:19'!
new

	Error signal: 
	'USE: MorphValueHolder forValueHolder: aValueHolder icon: aForm balloonText: aString' ! !

!MorphValueHolder class methodsFor: 'class initialization' stamp: 'KenD 8/22/2015 17:24'!
initialize
	"Initialize my Icons"
"	
	self initialize.
"
	| pkgDirName |
	pkgDirName := 
		(CodePackage installedPackages at: self category)
			fullFileName upToLastPathSeparator.

	ColorIcon 	:= Form fromFileNamed:  pkgDirName , '/Icons/HoldsColor.png'.
	FloatIcon 	:= Form fromFileNamed: pkgDirName , '/Icons/HoldsFloat.png'.
	IntegerIcon  := Form fromFileNamed: pkgDirName , '/Icons/HoldsInteger.png'.
	RangeIcon  := Form fromFileNamed: pkgDirName , '/Icons/HoldsRange.png'.
	StringIcon 	:= Form fromFileNamed: pkgDirName , '/Icons/HoldsString.png'.
	PointIcon 	:= Form fromFileNamed: pkgDirName , '/Icons/HoldsPoint.png'.! !

!UserActionMorph methodsFor: 'accessing' stamp: 'KenD 5/13/2015 07:22'!
addActionProc

	^ addActionProc ! !

!UserActionMorph methodsFor: 'accessing' stamp: 'KenD 5/13/2015 07:46'!
addActionProc: aTwoArgClosure
	"[ :morphUserAction :aMorph |  .. ]"

	addActionProc := aTwoArgClosure ! !

!UserActionMorph methodsFor: 'accessing' stamp: 'KenD 5/13/2015 14:48'!
icon

	^ icon ifNotNil: [ icon ] ifNil: [self class defaultIcon ]! !

!UserActionMorph methodsFor: 'accessing' stamp: 'KenD 5/13/2015 14:47'!
icon: aForm 
	"change the the receiver's icon"
	
	icon := aForm magnifyTo: 16@16..
	self image: (aForm magnifyTo: 32@32).! !

!UserActionMorph methodsFor: 'accessing' stamp: 'KenD 5/13/2015 07:22'!
removeActionProc

	^ removeActionProc ! !

!UserActionMorph methodsFor: 'accessing' stamp: 'KenD 5/13/2015 07:46'!
removeActionProc: aTwoArgClosure
	"[ :morphUserAction :aMorph |  .. ]"

	removeActionProc := aTwoArgClosure ! !

!UserActionMorph methodsFor: 'add/remove' stamp: 'KenD 5/13/2015 07:24'!
addActionToMorph: aMorph
	"Use my addActionProc to add an action to a Morph"
	
	self addActionProc ifNotNil: [ :addAction | addAction value: self value: aMorph ] ! !

!UserActionMorph methodsFor: 'add/remove' stamp: 'KenD 5/14/2015 07:40'!
addHandler: aClosure propName: aSelector toMorph: aMorph
	"User actions have enablers.  E.g. to get a #mouseEnter: event
	the property #handlesMouseOver must exist.
	Make it so."

	(UserActionMorph enablerForSelector: aSelector)
		ifNil: [ self error: 'bad user interaction selector: #', aSelector asString ]
		ifNotNil: [ :enabler | 
			aMorph setProperty: enabler toValue: true.
			aMorph setProperty: aSelector toValue: aClosure
		]
! !

!UserActionMorph methodsFor: 'add/remove' stamp: 'KenD 5/13/2015 07:24'!
removeActionFromMorph: aMorph
	"Use my addActionProc to add an action to a Morph"
	
	self removeActionProc ifNotNil: [ :removeAction | removeAction value: self value: aMorph ] ! !

!UserActionMorph methodsFor: 'add/remove' stamp: 'KenD 5/14/2015 07:40'!
removeHandlerProperty: aSelector fromMorph: aMorph

	| enablingSelector |
	(aMorph hasProperty: aSelector) ifFalse: [ ^nil ]. "done"
	aMorph removeProperty: aSelector.
	
	"If the selector's enabler is not required by other selectors,
	remove it as well."
	enablingSelector := UserActionMorph enablerForSelector: aSelector.
	enablingSelector ifNotNil: [ :enabler |
		((UserActionMorph selectorForEnabler: enabler)
			anySatisfy: [ :propName | aMorph hasProperty: propName ])
		ifFalse: [ aMorph removeProperty: enabler ]
	].
! !

!UserActionMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 5/13/2015 11:38'!
droppedOn: aMorph
	"Add self as property to aMorph"
	
	self 
		addActionToMorph: aMorph;
		addToModifiersOf: aMorph. "So I show up in DropTargetMorphs"
! !

!UserActionMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 5/13/2015 07:26'!
removedFrom: aMorph
	"remove self as property from aMorph"
	
	self removeActionFromMorph: aMorph ! !

!UserActionMorph methodsFor: 'initialization' stamp: 'KenD 5/13/2015 11:17'!
icon: anIcon addProc: addActionClosure  removeProc: removeActionClosure

	self 
		icon: anIcon;
		addActionProc: addActionClosure;
		removeActionProc: removeActionClosure;
		yourself! !

!UserActionMorph class methodsFor: 'instance creation' stamp: 'KenD 5/13/2015 07:55'!
addProc: addActionClosure  removeProc: removeActionClosure

	^ self new 
		icon: self defaultIcon 
		addProc: addActionClosure  
		removeProc: removeActionClosure! !

!UserActionMorph class methodsFor: 'instance creation' stamp: 'KenD 5/13/2015 07:56'!
icon: anIcon addProc: addActionClosure  removeProc: removeActionClosure

	^ self new 
		icon: anIcon 
		addProc: addActionClosure  
		removeProc: removeActionClosure! !

!UserActionMorph class methodsFor: 'accessing' stamp: 'KenD 5/13/2015 12:49'!
bounceIcon

	^ BounceIcon ! !

!UserActionMorph class methodsFor: 'accessing' stamp: 'KenD 5/13/2015 12:49'!
colorCycleIcon

	^ ColorCycleIcon ! !

!UserActionMorph class methodsFor: 'accessing' stamp: 'KenD 3/11/2019 21:04:03'!
defaultIcon

	^ Theme content from: #'Theme' get: #(  '16x16' 'devices' 'input-mouse.png' )! !

!UserActionMorph class methodsFor: 'accessing' stamp: 'KenD 5/13/2015 11:46'!
enablerForSelector: actionSelector
	"To get action messages, an enabler property must be set.
	Answer, for a given action selector, the associated enabler selector"

	(self handlesMouseOverSelectors includes: actionSelector)
	ifTrue: [ ^ #'handlesMouseOver:' ].

	(self handlesMouseDownSelectors includes: actionSelector)
	ifTrue: [ ^ #'handlesMouseDown:' ].
	
	(self handlesKeyboardSelectors includes: actionSelector)
	ifTrue: [ ^ #'handlesKeyboard' ].
	
	(self handlesMouseStillDownSelectors includes: actionSelector)
	ifTrue: [ ^ #'handlesMouseStillDown:' ].

	^ nil! !

!UserActionMorph class methodsFor: 'accessing' stamp: 'KenD 5/13/2015 12:49'!
growShrinkIcon

	^ GrowShrinkIcon ! !

!UserActionMorph class methodsFor: 'accessing' stamp: 'KenD 5/12/2015 20:25'!
handlesKeyboardSelectors
"
	self handlesKeyboardSelectors.
"

	^ HandlesKeyboardSelectors! !

!UserActionMorph class methodsFor: 'accessing' stamp: 'KenD 5/12/2015 20:25'!
handlesMouseDownSelectors

	^ HandlesMouseDownSelectors! !

!UserActionMorph class methodsFor: 'accessing' stamp: 'KenD 5/12/2015 20:25'!
handlesMouseOverSelectors

	^ HandlesMouseOverSelectors! !

!UserActionMorph class methodsFor: 'accessing' stamp: 'KenD 5/12/2015 20:29'!
handlesMouseStillDownSelectors

	^ HandlesMouseStillDownSelectors! !

!UserActionMorph class methodsFor: 'accessing' stamp: 'KenD 5/13/2015 12:50'!
pathIcon

	^ PathIcon ! !

!UserActionMorph class methodsFor: 'accessing' stamp: 'KenD 5/12/2015 20:57'!
selectorForEnabler: enabeingSelector
	"To get action messages, an enabler property must be set.
	Answer, for a given action selector, the associated enabler selector"
	
"@@FIXME: dictionary"
	(enabeingSelector = #handlesMouseOver)
	ifTrue: [ ^ self handlesMouseOverSelectors ].

	(enabeingSelector = #handlesMouseDown)
	ifTrue: [ ^ self handlesMouseDownSelectors i].
	
	(enabeingSelector = #handlesKeyboard)
	ifTrue: [ ^ self handlesKeyboardSelectors ].
	
	(enabeingSelector = #handlesMouseStillDown)
	ifTrue: [ ^ self handlesMouseStillDownSelectors  ].

	^ nil! !

!UserActionMorph class methodsFor: 'examples' stamp: 'jmv 5/14/2015 17:33'!
bouncingMorphExample
	"Answer a UserActionMorph whose target moves,
	bouncing off 'walls' of its container.
	 Start/stop when the mouse button is released (cheap click test)"
"
	self bouncingMorphExample openInWorld.
"
	| actionMorph |
	actionMorph := UserActionMorph 
		icon: UserActionMorph bounceIcon 
		addProc:  [ :userActionMorph :targetMorph | |bouncingAnimator|
				bouncingAnimator :=  Animator 
								actor: targetMorph
								action: (Animator simpleMoveBounceAction: 20@30)  
								stepTime: 60.
				userActionMorph 
					addHandler: [ :ignore1 :ignore2 |
						bouncingAnimator isStepping not
							ifTrue: [ bouncingAnimator startStepping ]
							ifFalse: [ bouncingAnimator stopStepping ]
					]
					propName: #'mouseButton1Up:localPosition:' 
					toMorph: targetMorph.
			]
		removeProc: [ :userActionMorph :targetMorph |
				userActionMorph 
					removeHandlerProperty: #'mouseButton1Up:localPosition:' 
					fromMorph: targetMorph.
			].
		
	actionMorph name: 'MoveAndBounce'.
		
	^ actionMorph
! !

!UserActionMorph class methodsFor: 'examples' stamp: 'KenD 5/14/2015 07:41'!
colorCycleExample
	"Answer a UserActionMorph which color cycles its target
	 while the mouse is over it"
"
	self colorCycleExample openInWorld.
"
	| colorAnimator colors colorCycleActionMorph |
	colors := { Color green. Color blue. Color red. Color yellow.  }.
	
	colorCycleActionMorph := UserActionMorph 
		icon: UserActionMorph colorCycleIcon
		addProc:  [ :userActionMorph :targetMorph |
				colorAnimator :=  Animator 
					actor: targetMorph 
					action: (Animator cycleColors: colors forSelector: #color:)
					stepTime: 300.
				userActionMorph 
					addHandler: [ :ignoredArg | colorAnimator startStepping. ] 
					propName: #'mouseEnter:' 
					toMorph: targetMorph.
				userActionMorph 
					addHandler: [ :ignoredArg | colorAnimator stopStepping. ] 
					propName: #'mouseLeave:'
					toMorph: targetMorph
			]
		removeProc: [ :userActionMorph :targetMorph |
				userActionMorph 
					removeHandlerProperty: #'mouseEnter:' 
					fromMorph: targetMorph.
				userActionMorph 
					removeHandlerProperty: #'mouseLeave:' 
					fromMorph: targetMorph.
			].
		
	colorCycleActionMorph name: 'Color Cycle'.
		
	^ colorCycleActionMorph
! !

!UserActionMorph class methodsFor: 'examples' stamp: 'KenD 5/14/2015 07:41'!
growShrinkExample
	"Answer a UserActionMorph whose target grows and shrinks
	 when the mouse button is released (cheap click test)"
"
	self growShrinkExample openInWorld.
"
	| growShrinkAnimator actionMorph isStepping |
	isStepping := false.
	actionMorph := UserActionMorph 
		icon: UserActionMorph growShrinkIcon 
		addProc:  [ :userActionMorph :targetMorph |
				growShrinkAnimator :=  Animator 
								actor: targetMorph
								action: (Animator growShrinkAction: 20 numSteps: 6)  
								stepTime: 100.
				userActionMorph 
					addHandler: [ :ignore1 :ignore2 |
						isStepping := isStepping not.
						(isStepping)
						ifTrue: [ growShrinkAnimator startStepping ]
						ifFalse: [ growShrinkAnimator stopStepping ]
					]
					propName: #'mouseButton1Up:localPosition:' 
					toMorph: targetMorph.
			]
		removeProc: [ :userActionMorph :targetMorph |
				userActionMorph 
					removeHandlerProperty: #'mouseButton1Up:localPosition:' 
					fromMorph: targetMorph.
			].
		
	actionMorph name: 'GrowAndShrink'.
		
	^ actionMorph
! !

!UserActionMorph class methodsFor: 'examples' stamp: 'KenD 5/14/2015 07:41'!
pathExample
	"Answer a UserActionMorph whose target follows a simple path
	 when the mouse button is released (cheap click test)"
"
	self pathExample openInWorld.
"
	| pathAnimator pathPoints pathActionMorph |
	pathPoints := { 20@20. 40@26. 80@30. 90@40. 90@80. 
						70@100.  40@90.  30@60. 34@40. 0@0. }.
	
	pathActionMorph := UserActionMorph 
		icon: UserActionMorph pathIcon
		addProc:  [ :userActionMorph :targetMorph |
				pathAnimator :=  Animator 
					actor: targetMorph 
					action: (Animator 
								followPathAction: 
									(pathPoints collect: [ :pt | pt + targetMorph morphPosition]))
					stepTime: 100
					doneProc: (Animator doneAfterNTimes: (pathPoints size)).
				userActionMorph 
					addHandler: [ :ignore1 :ignore2 | pathAnimator startStepping. ] 
					propName: #'mouseButton1Up:localPosition:' 
					toMorph: targetMorph.
			]
		removeProc: [ :userActionMorph :targetMorph |
				userActionMorph 
					removeHandlerProperty: #'mouseButton1Up:localPosition:' 
					fromMorph: targetMorph.
			].
		
	pathActionMorph name: 'RetracePath'.
		
	^ pathActionMorph
! !

!UserActionMorph class methodsFor: 'class initialization' stamp: 'KenD 8/22/2015 17:25'!
initialize
"
	self initialize.
"
	| pkgDirName |
	HandlesMouseOverSelectors :=
		#( mouseEnter:  mouseLeave: ).
		
	HandlesMouseDownSelectors := 
		#( mouseButton1Down:localPosition:
			mouseButton1Up:localPosition:
			mouseButton2Down:localPosition:
			mouseButton2Up:localPosition:
			mouseButton3Down:localPosition:
			mouseButton3Up:localPosition:
			mouseMove:localPosition:
			mouseButton2Activity
		 ).
	HandlesKeyboardSelectors :=
	#( keyDown keyStroke keyUp ).
	
	HandlesMouseStillDownSelectors := #( mouseStillDown: ).
	
	pkgDirName := 
		(CodePackage installedPackages at: self category) 
			fullFileName upToLastPathSeparator.
	ColorCycleIcon 	:= Form fromFileNamed: pkgDirName, '/Icons/ColorCycle.png'.
	PathIcon 	:= Form fromFileNamed: pkgDirName, '/Icons/Path.png'.
	GrowShrinkIcon 	:= Form fromFileNamed: pkgDirName,  '/Icons/GrowShrink2.png'.
	BounceIcon 	:= Form fromFileNamed: pkgDirName,  '/Icons/Bounce.png'.

	! !

!MorphModifierPallet class methodsFor: 'new-morph participation' stamp: 'KenD 7/5/2015 15:30'!
includeInNewMorphMenu 

	^ true! !

!MorphIt class methodsFor: 'documentation' stamp: 'KenD 8/22/2015 11:10'!
gamePlan 

	^
	
'WHERE AM I GOING WITH THIS?

MorphIt is my start at moving UI building to be more media centric.  It ia a proof-of-concept.

The basic idea is that there are a bunch of pallets which allow one to add and compose individual  morphs, their properties and behaviors.  More direct authoring.  

Ideas are inspired from multimedia authoring environments like SK8 and mTropolis (RIP; Note files in directory IdeaMine).

The observation is that UI events are rare and don''t have to be especially fast.

The current implementation is just a sketch and uses Morph properties.  A DropTarget is used to add (and eventually remove) MorphActions and so forth.  This keeps Morps themselves free of editing entanglements.


DIRECTIONS / ROAD MAP

Property sheets -- Edit a Morph''s properties.  This could be constrained to allow one to drop a morph or type a name/value or select from a list or pop-up a specialized editor.  For example, a property constrained to hold colors would accept a color swatch, color name, or pop-up a color editor or color pallet.

Morph environment -- I would like to add UI behaviors to individual morphs.  The idea is to add event/message handlers for drop-actions in an editor which could constrain/check arguments.  Method variables not local would be looked up in the Morph''s UI environment -- stored in a #MorphEnv property.  Think Workspace environments.  This would allow sharing between different handlers in an individual morph.

Save / Clone Composits -- I would like to be able to build things like scroll bars, ''fuse'' the result into a Composit, then add that new composit to a PartsBin Pallet to clone copies for further editing.

Scene based Asset Management -- When your actor goes through that door the scene changes.  In a media rich environment, memory large media should be cached and flushed or staged in as required.

StoryBord Editor -- To manage rooms/scenes/locales and the portals and transitions between them.


QUESTIONS TO ANSWER

Can one hide the differences between properties and ivars and basically treat them the same?

How best to add constraints to properties/ivars?  Property sheet metadata?  Pharo-like first class slots?

Can one use Scratch-like script elements to maximise the "direct construction" experience and minimise typing?  What is the most clear separation between adding/specializing scripts and Smalltalk code components?
'! !

!MorphIt class methodsFor: 'documentation' stamp: 'KenD 8/22/2015 13:08'!
thingsToTry
"
	MorphIt thingsToTry.
"
	^
'
	MorphIt samplePallet.
	
Create a Morph, e.g. from the World>>New Morph menu.

Select a Morph, and from the halo''s Menu select "show drop target for me"
Then click+drag from the MorphModifierPallet to the DropTarget.

E.g. drag the Color Cycle icon (tool help will show this) to the drop target; move the DropTarget aside; move the mouse over the original morph.

Drop "Follow a Path" icon onto the DropTarget.  When clicked, the target morph will do a little dance as it follows a path.
'! !

!MorphIt class methodsFor: 'documentation' stamp: 'KenD 8/22/2015 11:33'!
whyMe
	^
'This is a start at drag ''n drop media authoring.

The basic idea is grab and add media, then add behaviors.

This is an incomplete prototype -- be warned!!

Note: Requires Morphic-Misc1 and Morphic-ColorEditor.

Look in method thingsToTry.
'! !

!MorphIt class methodsFor: 'examples' stamp: 'KenD 8/22/2015 13:10'!
samplePallet
"
	MorphIt samplePallet.
"
"
select a Morph, from the halo's Menu select 'show drop target for me'
Then click+drag from the MorphModifierPallet to the DropTarget.

E.g. drag the Color Cycle icon (tool help will show this) to the drop target; move the DropTarget aside; move the mouse over the original morph.

Drop 'Follow a Path' icon onto the DropTarget.  When clicked, the target morph will do a little dance as it follows a path.
"
	MorphModifierPallet initializedInstance openInWorld morphExtent: (690 @ 84).
 ! !

!Form methodsFor: '*morphit' stamp: 'KenD 10/12/2013 16:39'!
icon32
	"Answer a 32 x 32 icon of myself"
	
	^self magnifyTo: 32 @ 32! !

!ImagePallet class methodsFor: '*morphit' stamp: 'KenD 7/5/2015 15:08'!
morphModifierPallet
	"Answer a morphModifier pallet for testing"
"
	self morphModifierPallet  openInWorld morphExtent:  (690 @ 84).
"
	| morphMorphs imagePallet modifierPallet savedExtent extraExtent |
	morphMorphs := 
		{ 'Action'->(MorphAction new).
		  'Bounce'->(UserActionMorph bouncingMorphExample).
		  'Grow and Shrink'->(UserActionMorph growShrinkExample).
		  'Follow a Path'->(UserActionMorph pathExample).
		  'Color Cycle'->(UserActionMorph colorCycleExample).
		  'Graphic Modifier'->(MorphGraphic new).
		  'Color blue'->(MorphTheColor forColor: Color blue).
		  'Color green'->(MorphTheColor forColor: Color green).
		  'Color red'->(MorphTheColor forColor: Color red).
		  'Color yellow'->(MorphTheColor forColor: Color yellow).
		  'Color'->(MorphValueHolder holderOfColors).
		  'Float'->(MorphValueHolder holderOfFloats).
		  'Integer'->(MorphValueHolder holderOfIntegers).
		  'Point'->(MorphValueHolder holderOfPoints).
		  'Range'->(MorphValueHolder holderOfRange).
		  'String'->(MorphValueHolder holderOfStrings).
		}.

	imagePallet := ImagePallet fromCollection: morphMorphs.
	savedExtent := imagePallet morphExtent.
	
	modifierPallet := SystemWindow new.
	modifierPallet 
		setLabel: 'Morph Modifiers';
		addMorph: imagePallet.

	extraExtent := ScrollBar scrollbarThickness + 4
					 @ (ScrollBar scrollbarThickness + 4 
							+ modifierPallet labelHeight).
	modifierPallet morphExtent: (savedExtent + extraExtent
			 "But don't be too big to display!!"
			min: ((DisplayScreen actualScreenSize) // 1.1)). 
		
	^ modifierPallet 
		

! !

!Theme methodsFor: '*morphIt' stamp: 'KenD 5/10/2015 16:47'!
showHaloIcon
"
	Theme current haloIcon explore.
"
	"^ self fetch: #( '16x16' 'emotes' 'face-angel')"
	^ self fetch: #( '16x16' 'smalltalk' 'do-it' )! !
MorphValueHolder initialize!
UserActionMorph initialize!
