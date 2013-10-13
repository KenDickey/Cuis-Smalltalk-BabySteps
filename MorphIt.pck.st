'From Cuis 4.2 of 25 July 2013 [latest update: #1840] on 2 October 2013 at 3:28:01.702435213 pm'!
'Description MorphIt is a morphic construction kit/system.'!
!provides: 'MorphIt' 1 11!
!classDefinition: #MorphMorph category: #MorphIt!
ImageMorph subclass: #MorphMorph
	instanceVariableNames: 'name'
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

!MorphMorph methodsFor: 'morph interactions' stamp: 'KenD 10/2/2013 17:30'!
addToModifiersOf: aMorph
	"Add me to aMorph morphModifiers"
	
	| morphModifiers |
	morphModifiers := aMorph valueOfProperty: #morphModifiers
									 ifAbsent: [ Set new ].
	morphModifiers add: self.
	aMorph setProperty: #morphModifiers toValue: morphModifiers 
	! !

!MorphMorph methodsFor: 'accessing' stamp: 'KenD 10/2/2013 16:24'!
balloonText

	self subclassResponsibility ! !

!MorphMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 10/2/2013 17:17'!
droppedOn: aMorph
	"I have been dropped on aMorph.  Do my initialization action."
	
	self subclassResponsibility ! !

!MorphMorph methodsFor: 'accessing' stamp: 'KenD 10/2/2013 17:15'!
icon

	self subclassResponsibility ! !

!MorphMorph methodsFor: 'initialization' stamp: 'KenD 10/2/2013 17:15'!
initialize

	super initialize.
	self image: (self icon magnifyTo: 32@32).
! !

!MorphMorph methodsFor: 'testing' stamp: 'KenD 10/2/2013 16:45'!
isNamed

	^ name isNil not! !

!MorphMorph methodsFor: 'accessing' stamp: 'KenD 10/2/2013 16:42'!
name

	^name 
		ifNotNil: [ :myName |  myName ]
		ifNil: [ 'unnamed ', self class asString ]
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

!MorphMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 10/2/2013 17:18'!
removedFrom: aMorph
	"I have been removed from aMorph.  Do my cleanup action."
	
	self subclassResponsibility ! !

!MorphAction methodsFor: 'accessing' stamp: 'KenD 10/2/2013 16:26'!
balloonText

	^ 'Action when Event'! !

!MorphAction methodsFor: 'dropping/grabbing' stamp: 'KenD 10/2/2013 16:57'!
droppedOn: aMorph
	"I have been dropped on aMorph.  Do my initialization action."
	
	theMorph := aMorph.
	self addToModifiersOf: theMorph.
	self realizeActionNoError. "Only adds action if have all information"! !

!MorphAction methodsFor: 'accessing' stamp: 'KenD 10/2/2013 17:01'!
icon

	^ Theme content get: #( 'Theme' '16x16' 'smalltalk' 'save-as-new-version.png' )! !

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

!MorphAction methodsFor: 'dropping/grabbing' stamp: 'KenD 10/2/2013 16:59'!
removedFrom: aMorph
	"I have been removed from aMorph.  Do my cleanup action."
	
	(theMorph == aMorph) ifFalse: [ Error signal: 'removedFrom: with wrong Morph!!!!' ]. 
	
	theAction ifNotNil: [ theMorph removeAction: theAction 
									  forEvent: what ].
	theAction := nil.
	self removeFromModifiersOf: theMorph.
	theMorph := nil.! !

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

!MorphAction class methodsFor: 'examples' stamp: 'KenD 10/2/2013 17:08'!
example1
"
	self example1.
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
	cm triggerEvent: #logMe.! !

!MorphGraphic methodsFor: 'accessing' stamp: 'KenD 10/2/2013 16:26'!
balloonText

	'Modify Graphic Features'! !

!MorphGraphic methodsFor: 'accessing' stamp: 'KenD 10/2/2013 16:41'!
icon

	^ Theme content get: #( 'Theme' '16x16' 'apps' 'preferences-desktop-locale.png' )! !

!MorphGraphic methodsFor: 'initialization' stamp: 'KenD 10/2/2013 16:27'!
initialize

	super initialize.
	"Set my deafults"
	foregroundColor := Color blue.  "@@@??@@@"
	backgroundColor := Color transparent.
	ink := #Copy.
	shape := #Rectangle.
	applyWhen := #MouseDown.
	removeWhen := #MouseUp
	! !

!MorphTheColor methodsFor: 'accessing' stamp: 'KenD 10/2/2013 16:26'!
balloonText

	^ 'Change color to me'! !

!MorphTheColor methodsFor: 'accessing' stamp: 'KenD 10/2/2013 17:24'!
color
	"Nota Bene: overrides inherited #color selector"
	
	^ myColor! !

!MorphTheColor methodsFor: 'dropping/grabbing' stamp: 'KenD 10/2/2013 16:41'!
droppedOn: aMorph
	"I have been dropped on aMorph.  Change its color."
	"Note that this is a direct action.  I am never added to a Morph."
	
	aMorph color: self color ! !

!MorphTheColor methodsFor: 'initialization' stamp: 'KenD 10/2/2013 16:37'!
forColor: aColor

	myColor := aColor.
	self image: myColor icon.! !

!MorphTheColor methodsFor: 'accessing' stamp: 'KenD 10/2/2013 16:40'!
icon

	^myColor 
		ifNil:  [ Theme content 
					get: #( 'Theme' '16x16' 'apps' 'preferences-desktop-locale.png' ) ]
		ifNotNil: [ myColor icon ]! !

!MorphTheColor methodsFor: 'dropping/grabbing' stamp: 'KenD 10/2/2013 16:40'!
removedFrom: aMorph
	"I act directly and am never added to a morph so I cannot be removed from one."
	
	Error signal: 'Implementation error: should never happen!!' ! !

!MorphTheColor class methodsFor: 'instance creation' stamp: 'KenD 10/2/2013 16:32'!
forColor: aColor

	(aColor isKindOf: Color) ifFalse: [ Error signal: 'Must use a Color, not ', aColor printString ].
	
	^ self new forColor: aColor! !

!MorphTheColor class methodsFor: 'new-morph participation' stamp: 'KenD 10/2/2013 16:30'!
initializedInstance

	^ self forColor: Color blue! !
