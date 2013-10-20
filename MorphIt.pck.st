'From Cuis 4.2 of 25 July 2013 [latest update: #1851] on 17 October 2013 at 5:53:30.286000163 pm'!
'Description MorphIt is a morphic construction kit/system.'!
!provides: 'MorphIt' 1 50!
!requires: 'Graphics-Files-Additional' nil nil nil!
!requires: 'ValueHolder' 1 17 1!
!requires: 'Morphic-Display-Pallet' nil nil nil!
!requires: 'Morphic-Widget-Weaver' nil nil nil!
!classDefinition: #BorderedImageMorph category: #MorphIt!
ImageMorph subclass: #BorderedImageMorph
	instanceVariableNames: 'borderWidth borderColor borderStyle'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MorphIt'!
!classDefinition: 'BorderedImageMorph class' category: #MorphIt!
BorderedImageMorph class
	instanceVariableNames: ''!

!classDefinition: #MorphMorph category: #MorphIt!
BorderedImageMorph subclass: #MorphMorph
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

!classDefinition: #MorphValueHolder category: #MorphIt!
MorphMorph subclass: #MorphValueHolder
	instanceVariableNames: 'valueHolder balloonText icon'
	classVariableNames: 'ColorIcon FloatIcon IntegerIcon PointIcon RangeIcon StringIcon'
	poolDictionaries: ''
	category: 'MorphIt'!
!classDefinition: 'MorphValueHolder class' category: #MorphIt!
MorphValueHolder class
	instanceVariableNames: ''!


!BorderedImageMorph commentStamp: '<historical>' prior: 0!
I supply a border to an ImageMorph.

borderStyle is one of #simple #raised #inset!

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

!Form methodsFor: '*morphit' stamp: 'KenD 10/12/2013 16:39'!
icon32
	"Answer a 32 x 32 icon of myself"
	
	^self magnifyTo: 32 @ 32! !

!ImagePallet class methodsFor: '*morphit' stamp: 'KenD 10/17/2013 17:10'!
morphModifierPallet
"
	ImagePallet morphModifierPallet.
"
	| pallet savedExtent |
	pallet := MorphModifierPallet initializedInstance.
	savedExtent := pallet morphExtent.
	pallet openInWorld.
	"openInWorld changes extent; change it back"
	pallet morphExtent: savedExtent.! !

!ImagePallet class methodsFor: '*morphit' stamp: 'KenD 10/17/2013 17:19'!
namedColorsPalette
"
	self useCSS3ColorDict.                    "" To get CSS3/Web color names""
	self useXKCDColorDict.                    "" To get XKCD color names""
	ImagePallet namedColorsPalette.
"
	| pallet savedExtent |
	pallet := MorphColorPallet initializedInstance.
	savedExtent := pallet morphExtent.
	pallet openInWorld.
	"openInWorld changes extent; change it back"
	pallet morphExtent: savedExtent.
! !

!MorphColorPallet class methodsFor: '*morphit' stamp: 'KenD 10/12/2013 17:09'!
includeInNewMorphMenu

	^ true! !

!MorphColorPallet class methodsFor: '*morphit' stamp: 'KenD 10/17/2013 17:13'!
initializedInstance 

	| colorPallet sortedColors a b imagePallet savedExtent extraExtent |
	sortedColors := SortedCollection sortBlock: 
		 [ :aAssoc :bAssoc |
			a := aAssoc value.
			b := bAssoc value.
			(a hue < b hue) or: [(a hue = b hue) and: [a saturation < b saturation ]]
		].
	Color colorNamesDict associationsDo: [ :assoc | sortedColors add: assoc ].

	imagePallet := ImagePallet 
						fromCollection: sortedColors
						imageFilter: [:color | MorphTheColor forColor: color].
	savedExtent := imagePallet morphExtent.
	
	colorPallet := SystemWindow new.
	colorPallet 	
		setLabel: 'Color Modifiers';
		addMorph: imagePallet.
		
	extraExtent := ScrollBar scrollbarThickness + 4
					 @ (ScrollBar scrollbarThickness + 4 
							+ colorPallet labelRectangle height).
	colorPallet morphExtent: (savedExtent + extraExtent   "But don't be too big to display!!"
								min: ((DisplayScreen actualScreenSize) // 1.1)).
			
	^ colorPallet! !

!MorphModifierPallet class methodsFor: '*morphit' stamp: 'KenD 10/12/2013 16:27'!
includeInNewMorphMenu

	^ true! !

!MorphModifierPallet class methodsFor: '*morphit' stamp: 'KenD 10/17/2013 17:14'!
initializedInstance

	| morphMorphs imagePallet modifierPallet savedExtent extraExtent |
	morphMorphs := 
		{ 'Action'->(MorphAction new).
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
							+ modifierPallet labelRectangle height).
	modifierPallet morphExtent: (savedExtent + extraExtent
			 "But don't be too big to display!!"
			min: ((DisplayScreen actualScreenSize) // 1.1)). 
		
	^ modifierPallet 
		

! !

!BorderedImageMorph methodsFor: 'private' stamp: 'KenD 10/12/2013 17:06'!
basicExtent: aPoint

	extent := aPoint! !

!BorderedImageMorph methodsFor: 'accessing' stamp: 'KenD 10/12/2013 16:36'!
borderColor

	^ borderColor! !

!BorderedImageMorph methodsFor: 'accessing' stamp: 'KenD 10/12/2013 16:35'!
borderColor: aColor
	borderColor = aColor ifFalse: [
		borderColor _ aColor.
		self redrawNeeded]! !

!BorderedImageMorph methodsFor: 'accessing' stamp: 'KenD 10/12/2013 16:36'!
borderWidth: anInteger
	borderWidth = anInteger ifFalse: [
		borderColor ifNil: [ borderColor _ Color black ].
		borderWidth _ anInteger max: 0.
		self redrawNeeded ]! !

!BorderedImageMorph methodsFor: 'geometry' stamp: 'KenD 10/12/2013 16:36'!
clippingRect
	"In own coordinates!!
	Return the bounds to which any submorphs should be clipped if the property is set"
	"Should be a region, like our shadow"
	self flag: #jmvVer2.
	^ super clippingRect insetBy: borderWidth! !

!BorderedImageMorph methodsFor: 'drawing' stamp: 'KenD 10/12/2013 16:31'!
drawOn: aCanvas
	"A canvas is already set with a proper transformation from our coordinates to those of the Canvas target."

	aCanvas  "My image is inset from the border."
	     image: image
		at: borderWidth @ borderWidth.

	aCanvas "The border is drawn around the image."
		frameRectangle: (0@0  extent: self morphExtent) 
		color: borderColor 
		borderWidth: borderWidth 
		borderStyleSymbol: borderStyle! !

!BorderedImageMorph methodsFor: 'initialization' stamp: 'KenD 10/12/2013 17:12'!
initialize
	"Set my defaults"

	self basicExtent: 32@32. "Not nil"
	borderWidth := 4.
	super initialize.
	borderColor := Color orange.
	borderStyle := #raised.! !

!BorderedImageMorph methodsFor: 'geometry' stamp: 'KenD 10/12/2013 16:37'!
layoutBounds
	"Return the bounds for laying out children of the receiver"
	self flag: #jmvVer2.
	^ super layoutBounds insetBy: borderWidth! !

!BorderedImageMorph methodsFor: 'geometry' stamp: 'KenD 10/12/2013 17:07'!
morphExtent
	"Answer an extent which includes me, taking into account my borderWidth"

	^ extent + borderWidth + borderWidth ! !

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

!MorphMorph methodsFor: 'accessing' stamp: 'KenD 10/12/2013 17:27'!
defaultName

	^ self class printString withFirstCharacterDownshifted ! !

!MorphMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 10/2/2013 17:17'!
droppedOn: aMorph
	"I have been dropped on aMorph.  Do my initialization action."
	
	self subclassResponsibility ! !

!MorphMorph methodsFor: 'accessing' stamp: 'KenD 10/2/2013 17:15'!
icon

	self subclassResponsibility ! !

!MorphMorph methodsFor: 'initialization' stamp: 'KenD 10/12/2013 16:49'!
initialize
	"Set my defaults"

	super initialize.
	(self class includesSelector: #icon32)
		ifTrue: [ self image: self icon32 ]
	 	ifFalse: [ self image: (self icon magnifyTo: 32@32) ].

! !

!MorphMorph methodsFor: 'morph interactions' stamp: 'KenD 10/12/2013 16:33'!
modifiersOf: aMorph
	"Answer aMorph morphModifiers"
	
	^ aMorph valueOfProperty: #morphModifiers  ifAbsent: [ nil ]
	! !

!MorphMorph methodsFor: 'accessing' stamp: 'KenD 10/12/2013 16:51'!
name

	^name 
		ifNotNil: [ :myName |  myName ]
		ifNil: [ self defaultName ]
! !

!MorphMorph methodsFor: 'accessing' stamp: 'KenD 10/12/2013 16:49'!
name: aString

	(aString isKindOf: String)
		ifFalse: [ Error signal: 'Name must be a string ', aString printString ]
		ifTrue: [ name := aString ]! !

!MorphMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 10/12/2013 17:13'!
rejectDropMorphEvent: evt
	"Rejected drop of me.  Remove me from the hand."
	
	self removeMeFromTheHand
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

!MorphMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 10/12/2013 17:13'!
removeMeFromTheHand
	"Rejected drop of me.  Remove me from the hand."
	
	self world activeHand removeMorph: self
! !

!MorphMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 10/2/2013 17:18'!
removedFrom: aMorph
	"I have been removed from aMorph.  Do my cleanup action."
	
	self subclassResponsibility ! !

!MorphMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 10/12/2013 17:10'!
wantsToBeDroppedInto: aMorph
	"Return true if it's okay to drop the receiver into aMorph. This check is symmetric to #wantsDroppedMorph:event: to give both parties a chance of figuring out whether they like each other."
	"This message is sent to the dragged morph, not to the owner.
	It is included here just for reference."

	^ (aMorph isKindOf: FramedWidget) " or: [ aMorph isKindOf: PasteUpMorph ]"! !

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

!MorphAction class methodsFor: 'examples' stamp: 'KenD 10/12/2013 17:02'!
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

!MorphGraphic methodsFor: 'accessing' stamp: 'KenD 10/12/2013 17:27'!
balloonText

	^ 'Modify Graphic Features'! !

!MorphGraphic methodsFor: 'accessing' stamp: 'KenD 10/12/2013 17:31'!
defaultName

	^ 'GraphicModifier'.
! !

!MorphGraphic methodsFor: 'dropping/grabbing' stamp: 'KenD 10/12/2013 17:16'!
droppedOn: aMorph
	"I have been dropped on aMorph.  Do my initialization action."

	self notYetImplemented ! !

!MorphGraphic methodsFor: 'accessing' stamp: 'KenD 10/2/2013 16:41'!
icon

	^ Theme content get: #( 'Theme' '16x16' 'apps' 'preferences-desktop-locale.png' )! !

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

!MorphGraphic methodsFor: 'dropping/grabbing' stamp: 'KenD 10/12/2013 17:16'!
removedFrom: aMorph
	"I have been removed from aMorph.  Do my cleanup action."
	
	self notYetImplemented ! !

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

!MorphTheColor methodsFor: 'dropping/grabbing' stamp: 'KenD 10/2/2013 16:41'!
droppedOn: aMorph
	"I have been dropped on aMorph.  Change its color."
	"Note that this is a direct action.  I am never added to a Morph."
	
	aMorph color: self color ! !

!MorphTheColor methodsFor: 'initialization' stamp: 'KenD 10/12/2013 17:30'!
forColor: aColor

	myColor := aColor.
	self image: (myColor icon magnifyTo: 32@32).
! !

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

!MorphValueHolder methodsFor: 'accessing' stamp: 'KenD 10/12/2013 16:48'!
balloonText

	^ balloonText ! !

!MorphValueHolder methodsFor: 'accessing' stamp: 'KenD 10/12/2013 16:52'!
defaultName

	^ self valueHolder defaultName.
! !

!MorphValueHolder methodsFor: 'dropping/grabbing' stamp: 'KenD 10/12/2013 17:14'!
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
			self addToModifiersOf: aMorph. "So I show up in FrameMorphs"
		].
! !

!MorphValueHolder methodsFor: 'accessing' stamp: 'KenD 10/12/2013 16:41'!
icon

	^ icon magnifyTo: 16 @ 16! !

!MorphValueHolder methodsFor: 'accessing' stamp: 'KenD 10/12/2013 16:41'!
icon32

	^ icon! !

!MorphValueHolder methodsFor: 'dropping/grabbing' stamp: 'KenD 10/12/2013 16:35'!
removedFrom: aMorph
	"remove self as property from aMorph"
		
	| propSym |
	propSym := self name asSymbol.
	(aMorph hasProperty: propSym)
		ifTrue: [ aMorph removeProperty: propSym ].
! !

!MorphValueHolder methodsFor: 'accessing' stamp: 'KenD 10/12/2013 16:45'!
valueHolder

	^ valueHolder ! !

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

!MorphValueHolder class methodsFor: 'class initialization' stamp: 'KenD 10/12/2013 16:55'!
initialize
	"Initialize my Icons"
"	
	self initialize.
"
	ColorIcon 	:= Form fromFileNamed: 'Icons/HoldsColor.png'.
	FloatIcon 	:= Form fromFileNamed: 'Icons/HoldsFloat.png'.
	IntegerIcon  := Form fromFileNamed: 'Icons/HoldsInteger.png'.
	RangeIcon  := Form fromFileNamed: 'Icons/HoldsRange.png'.
	StringIcon 	:= Form fromFileNamed: 'Icons/HoldsString.png'.
	PointIcon 	:= Form fromFileNamed: 'Icons/HoldsPoint.png'.! !

!MorphValueHolder class methodsFor: 'accessing' stamp: 'KenD 10/12/2013 16:56'!
integerIcon

	^ IntegerIcon! !

!MorphValueHolder class methodsFor: 'instance creation' stamp: 'KenD 10/12/2013 17:19'!
new

	Error signal: 
	'USE: MorphValueHolder forValueHolder: aValueHolder icon: aForm balloonText: aString' ! !

!MorphValueHolder class methodsFor: 'accessing' stamp: 'KenD 10/12/2013 16:54'!
pointIcon

	^ PointIcon ! !

!MorphValueHolder class methodsFor: 'accessing' stamp: 'KenD 10/12/2013 16:57'!
rangeIcon

	^ RangeIcon! !

!MorphValueHolder class methodsFor: 'accessing' stamp: 'KenD 10/12/2013 16:57'!
stringIcon

	^ StringIcon! !
MorphValueHolder initialize!
