'From Cuis 4.2 of 25 July 2013 [latest update: #2439] on 14 August 2015 at 3:22:16.236941 pm'!
'Description I am a construction kit in the lineage of Scratch/BYOB/Snap!!

"Emergence is the process of complex pattern formation from simple rules."'!
!provides: 'Emergence' 1 18!
!requires: 'Morphic-Misc1' 1 57 nil!
!requires: 'Cuis-Base' 42 2439 nil!
!classDefinition: #Emergence category: #Emergence!
ProtoObject subclass: #Emergence
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Emergence'!
!classDefinition: 'Emergence class' category: #Emergence!
Emergence class
	instanceVariableNames: ''!

!classDefinition: #BlockMorph category: #Emergence!
RectangleLikeMorph subclass: #BlockMorph
	instanceVariableNames: 'labelMorph dropShadowMorph'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Emergence'!
!classDefinition: 'BlockMorph class' category: #Emergence!
BlockMorph class
	instanceVariableNames: ''!

!classDefinition: #ContainingBlockMorph category: #Emergence!
BlockMorph subclass: #ContainingBlockMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Emergence'!
!classDefinition: 'ContainingBlockMorph class' category: #Emergence!
ContainingBlockMorph class
	instanceVariableNames: ''!

!classDefinition: #HatBlockMorph category: #Emergence!
BlockMorph subclass: #HatBlockMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Emergence'!
!classDefinition: 'HatBlockMorph class' category: #Emergence!
HatBlockMorph class
	instanceVariableNames: ''!


!Emergence commentStamp: '<historical>' prior: 0!
Documentation Class

From psychology.wikia.com/wiki/Emergence

"*Emergence* is the process of complex pattern formation from simple rules.'

See Class side for notes.
!

!BlockMorph commentStamp: '<historical>' prior: 0!
I am the base class of all BlockMorphs.!

!ContainingBlockMorph commentStamp: '<historical>' prior: 0!
I hold/contain other BlockMorphs, e.g. for repeated invocations.!

!HatBlockMorph commentStamp: '<historical>' prior: 0!
I represent the entrypoint into a Script!

!Emergence methodsFor: 'as yet unclassified' stamp: 'KenD 8/2/2015 15:07'!
seeClassSide
	
	^ 'see Emergence Class for Documentation'! !

!Emergence class methodsFor: 'documentation' stamp: 'KenD 8/10/2015 13:24'!
gamePlan

	^
'Learn about
	- Morph Shapes (drawing the ''puzzle pieces'')
	- Execution Environment (step/debug//user interaction events)
	- Paint/Draw (sprites)
	- Media (image/sound/video)
		+ import/export
		+ control (playing//synchronization)
		+ asset management (browse/explore)
	- Smalltalk code access (alternate browser, a.k.a. ''Syntax Elements'')
	- External Device presentation/interfacing/control
'! !

!Emergence class methodsFor: 'documentation' stamp: 'KenD 8/10/2015 13:29'!
notes

	^
'	Current "drawOn: aCanvas" assumes BitBltCanvas but this is 
	expected to change to M3Canvas.
'! !

!Emergence class methodsFor: 'documentation' stamp: 'KenD 8/2/2015 15:20'!
seeAlso

	^
'Scratch -- https://scratch.mit.edu/
BYOB/Snap!! -- http://snap.berkeley.edu/
'! !

!Emergence class methodsFor: 'documentation' stamp: 'KenD 8/2/2015 15:17'!
whyMe

	^
'Emergence is a simple construction kit for emergent behavior.

Goals include
	- The simplest thing that will work (but no simpler)
	- Everything must carry its own weight (no MuDa)
	- Uniform mechanisms & affordances
	- Simple gateway to usefulness
'! !

!BlockMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 8/12/2015 06:32'!
aboutToBeGrabbedBy: aHand

	super aboutToBeGrabbedBy: aHand.
	self showDropShadow! !

!BlockMorph methodsFor: 'plugTabs' stamp: 'KenD 8/14/2015 14:29'!
acceptsPlugTab

	^ true! !

!BlockMorph methodsFor: 'drawing' stamp: 'KenD 8/10/2015 13:06'!
borderWidth

	^ 6! !

!BlockMorph methodsFor: 'colors' stamp: 'KenD 8/14/2015 14:36'!
brightenColor
	"Hilight myself"
	
	self color: self class defaultColor veryMuchLighter ! !

!BlockMorph methodsFor: 'initialization' stamp: 'KenD 8/14/2015 11:27'!
defaultColor

	^ self class defaultColor! !

!BlockMorph methodsFor: 'initialization' stamp: 'KenD 8/10/2015 13:45'!
defaultExtent

	^ 200 @ (3 * self tabHeight)! !

!BlockMorph methodsFor: 'initialization' stamp: 'KenD 8/10/2015 13:35'!
defaultLabel

	^ LabelMorph new contents: 'A Simple Block'! !

!BlockMorph methodsFor: 'drawing' stamp: 'KenD 8/10/2015 13:09'!
drawBodyOn: aCanvas

	| tabHeight |
	tabHeight := self tabHeight.
	aCanvas 
		fillRectangle: (0@tabHeight extent: self morphExtent - (0 @ 2 * tabHeight)) 
		color: color 
		borderWidth: self borderWidth 
		borderStyleSymbol: #simple "#raised"
		baseColorForBorder: color.
! !

!BlockMorph methodsFor: 'drawing' stamp: 'KenD 8/10/2015 13:14'!
drawBottomPartOn: aCanvas
	
	"Bottom tab"
	aCanvas
		fillRectangle: (self tabIndent @ ((self morphExtent y) - self tabHeight) 
		extent: (self tabWidth @ self tabHeight))
		color: color.
! !

!BlockMorph methodsFor: 'drawing' stamp: 'KenD 8/13/2015 15:29'!
drawOn: aCanvas

	self drawTopPartOn: aCanvas. 		"slot"
	self drawBodyOn: aCanvas.			"box"
	self drawBottomPartOn: aCanvas.	"tab"
	! !

!BlockMorph methodsFor: 'drawing' stamp: 'KenD 8/10/2015 13:26'!
drawTopPartOn: aCanvas
	
	| radius tabHeight tabWidth tabIndent |
	radius := self radius.
	tabHeight := self tabHeight.
	tabIndent := self tabIndent.
	tabWidth := self tabWidth.
	
	"Left of tab-slot"
	aCanvas
		windowFrame: (0@0 extent: (tabIndent @ tabHeight))
		color: color
		radius: radius
		border: self borderWidth
		labelHeight: self labelHeight
		gradientTop: 1
		gradientBottom: 1
		insideColor: color.
		
	"Right of tab slot"
	aCanvas
		windowFrame: 
			( (tabIndent + tabWidth)@0 
				extent: ( ((self morphExtent x) - (tabIndent + tabWidth)) @ tabHeight ) )
		color: color
		radius: radius
		border: self borderWidth
		labelHeight: self labelHeight
		gradientTop: 1
		gradientBottom: 1
		insideColor: color.
! !

!BlockMorph methodsFor: 'drawing' stamp: 'KenD 8/12/2015 05:50'!
dropShadowForm
	"Answer the shadow only for the BlockMorph"

	|  srcForm destForm |
	srcForm := self shadowForm.
	destForm := srcForm copy.
	destForm copy: (0@0 corner: srcForm extent) from: srcForm to: 0@0 - self dropShadowOffset rule: 4. "erase"
	^ destForm

! !

!BlockMorph methodsFor: 'accessing' stamp: 'KenD 8/12/2015 06:04'!
dropShadowMorph

	^ dropShadowMorph! !

!BlockMorph methodsFor: 'accessing' stamp: 'KenD 8/12/2015 05:18'!
dropShadowOffset
	
	^ 6@8! !

!BlockMorph methodsFor: 'dropShadow' stamp: 'KenD 8/12/2015 06:19'!
dropShadowShown

	| dsMorph |
	dsMorph := self dropShadowMorph.
	^ dsMorph 
		ifNil: [ false ] 
		ifNotNil: [ submorphs includes: dsMorph ]! !

!BlockMorph methodsFor: 'event handling testing' stamp: 'KenD 8/14/2015 14:51'!
handlesMouseOver: aMorphicEvent
	"Do I want to receive mouseEnter: and mouseLeave: when the button is up and the hand is empty?  The default response is false." 

	^ true! !

!BlockMorph methodsFor: 'plugTabs' stamp: 'KenD 8/14/2015 14:28'!
hasPlugTab

	^ true! !

!BlockMorph methodsFor: 'dropShadow' stamp: 'KenD 8/12/2015 06:15'!
hideDropShadow
	
	self dropShadowShown
		ifTrue: [ self removeMorph: self dropShadowMorph ]! !

!BlockMorph methodsFor: 'user feedback' stamp: 'KenD 8/14/2015 15:12'!
hideTabBar

	"remove my tabBar, if any"
	self valueOfProperty: #tabBar ifPresentDo: [ :bar | 
		self removeMorph: bar. 
		self removeProperty: #tabBar
	]! !

!BlockMorph methodsFor: 'user feedback' stamp: 'KenD 8/14/2015 15:01'!
indicateDropTarget: evt

	self invertColor.
	self showTabBar.! !

!BlockMorph methodsFor: 'initialization' stamp: 'KenD 8/12/2015 06:04'!
initialize

	super initialize.
	extent := self defaultExtent.
	labelMorph := self defaultLabel.
	labelMorph morphPosition: (self tabIndent + self tabWidth + 8) @ 4.
	self addMorphFront: labelMorph.

! !

!BlockMorph methodsFor: 'colors' stamp: 'KenD 8/14/2015 14:36'!
invertColor
	"Hilight myself"
	
	self color: self class defaultColor negated! !

!BlockMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 8/12/2015 06:32'!
justDroppedInto: newOwnerMorph event: anEvent 

	super justDroppedInto: newOwnerMorph event: anEvent.
	self hideDropShadow! !

!BlockMorph methodsFor: 'drawing' stamp: 'KenD 8/10/2015 13:08'!
labelHeight

	^ Preferences windowTitleFont height + 2! !

!BlockMorph methodsFor: 'accessing' stamp: 'KenD 8/10/2015 13:42'!
labelMorph

	^ labelMorph! !

!BlockMorph methodsFor: 'geometry' stamp: 'KenD 8/13/2015 15:54'!
minimumExtent

	^ (14 + self tabWidth + self tabIndent + self labelMorph morphExtent x) @ (3 * self tabHeight)! !

!BlockMorph methodsFor: 'geometry' stamp: 'KenD 8/12/2015 06:24'!
morphExtent: newExtent

	super morphExtent: newExtent.
	self resetDropShadowMorph  "size/shape changed; shadow should too"! !

!BlockMorph methodsFor: 'event handling' stamp: 'KenD 8/14/2015 15:20'!
mouseEnter: evt
	"Handle a mouseEnter event, meaning the mouse just entered my bounds with no button pressed."
	
	"Hilight if hand has BlockMorph that we will accepr"
	| heldMorph |
	(evt isDraggingEvent) ifFalse: [ ^ self ].
	(self hasPlugTab) ifFalse: [ ^ self ].
	
	heldMorph := evt hand ifNotNil:
		 [ :aHand | |heldMorphs | 
			heldMorphs := aHand submorphs.
			(heldMorphs size > 0) 
				ifTrue: [ heldMorphs at: 1 ]
				ifFalse: [ nil ]
	].
	
	heldMorph ifNotNil: [ :held |
		((held isKindOf: BlockMorph) and: [ held acceptsPlugTab ])
			ifTrue: [ self invertColor; showTabBar ]
	]! !

!BlockMorph methodsFor: 'event handling' stamp: 'KenD 8/14/2015 15:20'!
mouseLeave: evt
	"Handle a mouseLeave event, meaning the mouse just left my bounds with no button pressed."
	
	self normalColor; hideTabBar ! !

!BlockMorph methodsFor: 'colors' stamp: 'KenD 8/14/2015 14:31'!
normalColor

	self color: self class defaultColor ! !

!BlockMorph methodsFor: 'event handling' stamp: 'KenD 8/14/2015 14:17'!
processMouseEnter: aMouseEvent localPosition: localEventPosition
	"System level event handling."

	"	anEvent isDraggingEvent ifTrue: [^self] WE WANT DRAGS AS WELL."
	self wantsBalloon ifTrue: [
		aMouseEvent hand triggerBalloonFor: self after: self balloonHelpDelayTime].
	(self handlesMouseOver: aMouseEvent) ifTrue: [
		aMouseEvent wasHandled: true.
		self mouseEnter: aMouseEvent ]! !

!BlockMorph methodsFor: 'event handling' stamp: 'KenD 8/14/2015 14:18'!
processMouseLeave: anEvent localPosition: localEventPosition
	"System level event handling."
	anEvent hand removePendingBalloonFor: self.
"	anEvent isDraggingEvent ifTrue: [^self] WE WANT DRAGS AS WELL."
	(self handlesMouseOver: anEvent) ifTrue: [
		anEvent wasHandled: true.
		self mouseLeave: anEvent ]! !

!BlockMorph methodsFor: 'drawing' stamp: 'KenD 8/10/2015 13:10'!
radius

	^ Theme current roundedWindowRadius! !

!BlockMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 8/12/2015 06:34'!
rejectDropMorphEvent: dropEvent

	super rejectDropMorphEvent: dropEvent.
	self hideDropShadow ! !

!BlockMorph methodsFor: 'dropShadow' stamp: 'KenD 8/12/2015 06:28'!
resetDropShadowMorph
	"(Re)set dropShadowMorph done when size changes "

	| shadowShown |
	(dropShadowMorph isNil)
	ifTrue: [ "First Time Init"
		dropShadowMorph := ImageMorph new image: self dropShadowForm.
		dropShadowMorph morphPosition: self dropShadowOffset.
		shadowShown := false.
	]
	ifFalse: [
		(shadowShown := self dropShadowShown)
			ifTrue: [ self hideDropShadow ].
		dropShadowMorph := ImageMorph new image: self dropShadowForm.
		dropShadowMorph morphPosition: self dropShadowOffset.
	].
	shadowShown ifTrue: [ self showDropShadow ].

		
! !

!BlockMorph methodsFor: 'drawing' stamp: 'KenD 8/13/2015 15:30'!
shadowForm
"
	(ImageMorph new image: BlockMorph new shadowForm) openInWorld.
"
	| aCanvas stencilForm |
	aCanvas := BitBltCanvas depth: Display depth over: (0@0 corner: self morphExtent).
	self drawOn: aCanvas.
	stencilForm := aCanvas form "asGrayScale". 
	aCanvas := BitBltCanvas depth: Display depth over: (0@0 corner: self morphExtent). 
	aCanvas stencil: stencilForm at: 0@0  color: (Color black alpha: 0.3).	 
	^ aCanvas form! !

!BlockMorph methodsFor: 'dropShadow' stamp: 'KenD 8/12/2015 06:17'!
showDropShadow
	
	self dropShadowShown
		ifFalse: [ 
			self resetDropShadowMorph.
			self addMorphBack: self dropShadowMorph 
		]! !

!BlockMorph methodsFor: 'user feedback' stamp: 'KenD 8/14/2015 15:21'!
showTabBar

	"Draw a white bar near where a BlockMorph can be plugged into a tab"
	| bar tabStartX |
	bar := RectangleLikeMorph new.
	tabStartX :=  (self tabIndent  + self tabWidth).
	bar morphExtent: (self morphExtent x - tabStartX)
					@ (self tabHeight / 2);
		morphPosition: tabStartX @ (self morphExtent y - self tabHeight);
		color: Color white.
	self setProperty: #tabBar toValue: bar.
	self addMorphBack: bar! !

!BlockMorph methodsFor: 'drawing' stamp: 'KenD 8/10/2015 13:06'!
tabHeight

	^ 14! !

!BlockMorph methodsFor: 'drawing' stamp: 'KenD 8/10/2015 13:07'!
tabIndent

	^ 24! !

!BlockMorph methodsFor: 'drawing' stamp: 'KenD 8/10/2015 13:07'!
tabWidth

	^ 18! !

!BlockMorph class methodsFor: 'colors' stamp: 'KenD 8/14/2015 11:25'!
blockMorphColor

	^ Color r: 0.4 g: 0.7  b: 0.8 ! !

!BlockMorph class methodsFor: 'colors' stamp: 'KenD 8/14/2015 11:27'!
defaultColor

	^ Color green! !

!ContainingBlockMorph methodsFor: 'geometry' stamp: 'KenD 8/13/2015 16:01'!
defaultExtent

	^ 200 @ (6 * self tabHeight)! !

!ContainingBlockMorph methodsFor: 'initialization' stamp: 'KenD 8/13/2015 15:53'!
defaultLabel

	^ LabelMorph new contents: 'A Containing Block'! !

!ContainingBlockMorph methodsFor: 'drawing' stamp: 'KenD 8/13/2015 16:23'!
drawBodyOn: aCanvas

	" Draw a 'C' with inner tab"
	| tabHeight morphWidth morphHeight |
	tabHeight := self tabHeight.
	morphWidth := self morphExtent x.
	morphHeight := self morphExtent y.
	aCanvas 
		fillRectangle: (0@tabHeight extent: morphWidth @ tabHeight)
		color: color 
		borderWidth: self borderWidth 
		borderStyleSymbol: #simple 
		baseColorForBorder: color.
		
	aCanvas 
		fillRectangle: (0@(2 * tabHeight) extent: self tabWidth @ (morphHeight - (3 * tabHeight)))
		color: color 
		borderWidth: self borderWidth 
		borderStyleSymbol: #simple 
		baseColorForBorder: color.

	aCanvas 
		fillRectangle: (0@(morphHeight - (2 * tabHeight)) extent: morphWidth @ tabHeight)
		color: color 
		borderWidth: self borderWidth 
		borderStyleSymbol: #simple 
		baseColorForBorder: color.

	"tab"
	aCanvas
		fillRectangle: ((self tabIndent + self tabWidth) @ (2 * self tabHeight) 
		extent: (self tabWidth @ self tabHeight))
		color: color.! !

!ContainingBlockMorph methodsFor: 'geometry' stamp: 'KenD 8/13/2015 16:04'!
minimumExtent

	^ (14 + self tabWidth + self tabIndent + self labelMorph morphExtent x) @ (6 * self tabHeight)! !

!ContainingBlockMorph class methodsFor: 'colors' stamp: 'KenD 8/14/2015 13:16'!
defaultColor

	^ Color r: 1.0 g: 0.581  b: 0.194! !

!HatBlockMorph methodsFor: 'plugTabs' stamp: 'KenD 8/14/2015 14:39'!
acceptsPlugTab

	^ false! !

!HatBlockMorph methodsFor: 'initialization' stamp: 'KenD 8/13/2015 15:31'!
defaultLabel

	^ LabelMorph new contents: 'A Hat Block'! !

!HatBlockMorph methodsFor: 'drawing' stamp: 'KenD 8/13/2015 15:43'!
drawTopPartOn: aCanvas
	
	| extent height center |
	height := self tabHeight.
	extent := self morphExtent.
	center := extent / 2.

	
	"Use top of an ellipse"
	aCanvas
		ellipseCenterX: center x 
		y: height
		rx: center x
		ry: height
		borderWidth: 0
		borderColor: Color transparent
		fillColor: self color! !

!HatBlockMorph methodsFor: 'geometry' stamp: 'KenD 8/13/2015 15:50'!
minimumExtent

	^ (24 + self tabWidth + self tabIndent + self labelMorph morphExtent x) @ (3 * self tabHeight)! !

!HatBlockMorph class methodsFor: 'colors' stamp: 'KenD 8/14/2015 13:17'!
defaultColor

	^ Color h: 41 s:  0.85 v:  0.9! !
