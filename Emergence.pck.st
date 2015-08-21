'From Cuis 4.2 of 25 July 2013 [latest update: #2464] on 21 August 2015 at 9:46:06.177126 am'!
'Description I am a construction kit in the lineage of Scratch/BYOB/Snap!!

"Emergence is the process of complex pattern formation from simple rules."'!
!provides: 'Emergence' 1 32!
!requires: 'Cuis-Base' 42 2439 nil!
!requires: 'Morphic-Misc1' 1 57 nil!
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
	instanceVariableNames: 'labelMorph dropShadowMorph nextBlock'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Emergence'!
!classDefinition: 'BlockMorph class' category: #Emergence!
BlockMorph class
	instanceVariableNames: ''!

!classDefinition: #ContainingBlockMorph category: #Emergence!
BlockMorph subclass: #ContainingBlockMorph
	instanceVariableNames: 'containedBlock'
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

!classDefinition: #TabBarMorph category: #Emergence!
RectangleLikeMorph subclass: #TabBarMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Emergence'!
!classDefinition: 'TabBarMorph class' category: #Emergence!
TabBarMorph class
	instanceVariableNames: ''!


!Emergence commentStamp: '<historical>' prior: 0!
Documentation Class

From psychology.wikia.com/wiki/Emergence

"*Emergence* is the process of complex pattern formation from simple rules.'

See Class side for notes.
!

!BlockMorph commentStamp: '<historical>' prior: 0!
I am the base class of all BlockMorphs.

I and my subclasses represent statements in a block-based graphical programming language inspired by Scratch/Snap!!/BYOB.  Note: Emergence class>>seeAlso!

!ContainingBlockMorph commentStamp: '<historical>' prior: 0!
I hold/contain other BlockMorphs, e.g. for repeated invocations.!

!HatBlockMorph commentStamp: '<historical>' prior: 0!
I represent the entrypoint into a Script!

!TabBarMorph commentStamp: '<historical>' prior: 0!
I am a white bar which indicates that a user may drop a BlockMorph onto a tab.!

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

!Emergence class methodsFor: 'documentation' stamp: 'KenD 8/19/2015 06:49'!
notes

	^
'	
* Nota Bene: Current "drawOn: aCanvas" assumes BitBltCanvas but this is expected to change to M3Canvas.

+ When a block is removed from a stack, its containers are informed recursively to allow for resizing.  See methods:  #resizeContainmentArea
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

!BlockMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 8/18/2015 14:29'!
aboutToBeGrabbedBy: aHand

	super aboutToBeGrabbedBy: aHand.
	self 
		showDropShadow;
		yourself
! !

!BlockMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 8/19/2015 06:52'!
aboutToGrab: aSubMorph
	"Can't just grab any submorph; must be a BlockMorph.
	If I reject the grab, e.g. of an inner label, the user can't pick me up.
	In this case, let the hand grab me."

	^ (aSubMorph isKindOf: BlockMorph)
		ifTrue: [ 
			self removeGrabbedBlock: aSubMorph.
			aSubMorph ]
		ifFalse: [
			"Remove me"
			 (self owner isKindOf: BlockMorph) 
				ifTrue: [ self owner removeGrabbedBlock: self ].
			self
		]! !

!BlockMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 8/21/2015 09:17'!
acceptDroppingMorph: aBlockMorph event: evt 
	"Add aBlockMorph to me as the next block to be executed"

	self nextBlock: aBlockMorph! !

!BlockMorph methodsFor: 'plugTabs' stamp: 'KenD 8/20/2015 08:36'!
acceptsPlugTab

	^ true! !

!BlockMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 8/17/2015 16:02'!
allowsMorphDrop
	"Answer whether we accept dropping morphs. By default answer false."

	^ true! !

!BlockMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 8/17/2015 16:27'!
allowsSubmorphDrag
	"Answer whether our morphs can just be grabbed with the hand, instead of requiring the use of the halo. By default answer false."

	^ true! !

!BlockMorph methodsFor: 'drawing' stamp: 'KenD 8/10/2015 13:06'!
borderWidth

	^ 6! !

!BlockMorph methodsFor: 'colors' stamp: 'KenD 8/14/2015 14:36'!
brightenColor
	"Hilight myself"
	
	self color: self class defaultColor veryMuchLighter ! !

!BlockMorph methodsFor: 'geometry' stamp: 'KenD 8/18/2015 13:44'!
combinedNextBlockHeights

	^(self nextBlock)
		ifNil: [ 0 ]
		ifNotNil: [ :nb | (nb morphExtent y - nb tabHeight) + (nb combinedNextBlockHeights) ]! !

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

!BlockMorph methodsFor: 'drawing' stamp: 'KenD 8/14/2015 22:20'!
drawBottomPartOn: aCanvas
	
	"Bottom tab"
	aCanvas
		fillRectangle: ( self tabIndent @ ((self morphExtent y) - self tabHeight) 
		                      extent: (self tabWidth @ self tabHeight) )
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

!BlockMorph methodsFor: 'plugTabs' stamp: 'KenD 8/14/2015 21:54'!
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

!BlockMorph methodsFor: 'geometry' stamp: 'KenD 8/17/2015 19:51'!
minimumExtent

	^ (14 + self tabWidth + self tabIndent + self labelMorph morphExtent x) 
		@ (3 * self tabHeight)! !

!BlockMorph methodsFor: 'geometry' stamp: 'KenD 8/12/2015 06:24'!
morphExtent: newExtent

	super morphExtent: newExtent.
	self resetDropShadowMorph  "size/shape changed; shadow should too"! !

!BlockMorph methodsFor: 'event handling' stamp: 'KenD 8/20/2015 08:39'!
mouseEnter: evt
	"Handle a mouseEnter event, meaning the mouse just entered my bounds."
	
	"Hilight if hand has BlockMorph that we will accepr"
	| heldMorph |
	(evt isDraggingEvent) ifFalse: [ ^ self ].
	(self nextBlock)
		ifNotNil: [ ^ self ].  "No place to plug a block"
	(self hasPlugTab) 
		ifFalse: [ ^ self ]. "No place to plug a block"
	
	heldMorph := evt hand ifNotNil:
		 [ :aHand | |heldMorphs | 
			heldMorphs := aHand submorphs.
			(heldMorphs size > 0) 
				ifTrue: [ heldMorphs at: 1 ]
				ifFalse: [ nil ]
	].
	
	heldMorph ifNotNil: [ :held |
		((held isKindOf: BlockMorph) and: [ held acceptsPlugTab ])
			ifTrue: [ self indicateDropTarget: evt ]
	]! !

!BlockMorph methodsFor: 'event handling' stamp: 'KenD 8/14/2015 15:20'!
mouseLeave: evt
	"Handle a mouseLeave event, meaning the mouse just left my bounds with no button pressed."
	
	self normalColor; hideTabBar ! !

!BlockMorph methodsFor: 'accessing' stamp: 'KenD 8/17/2015 18:54'!
nextBlock
	"Answer the block myself in the block sequence or nil if I am the last block in the sequence. Each block is a submorph of the previous block."

	^ nextBlock
! !

!BlockMorph methodsFor: 'accessing' stamp: 'KenD 8/18/2015 07:50'!
nextBlock: aBlockMorphOrNil
	"Add the given block to this stack."

	self nextBlock ifNotNil: [ :nb | self removeMorph: nb ].
	nextBlock := aBlockMorphOrNil.
	aBlockMorphOrNil ifNotNil: [ :aBlockMorph |
		self addMorphFront: aBlockMorph.
		aBlockMorph morphPosition: self nextBlockPosition
	].
	self addAlarm: #resizeContainmentArea after: 0.1.
! !

!BlockMorph methodsFor: 'geometry' stamp: 'KenD 8/17/2015 19:47'!
nextBlockCount

	^(self nextBlock)
		ifNil: [ 0 ]
		ifNotNil: [ : nb | 1 + nb nextBlockCount ]! !

!BlockMorph methodsFor: 'geometry' stamp: 'KenD 8/17/2015 16:15'!
nextBlockPosition
	"Answer location in self in which to place upper left corner of block which follows me".
	
	^ 0 @ (self morphExtent y - self tabHeight) ! !

!BlockMorph methodsFor: 'colors' stamp: 'KenD 8/14/2015 14:31'!
normalColor

	self color: self class defaultColor ! !

!BlockMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 8/17/2015 16:29'!
okToPickUp: aSubMorph

	^ aSubMorph isKindOf: BlockMorph ! !

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

!BlockMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 8/19/2015 06:51'!
removeGrabbedBlock: aBlockMorph
	"A hand is (probably) removing nextBlock"
	
	(aBlockMorph == self nextBlock)
		ifTrue: [ self nextBlock: nil ]! !

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

!BlockMorph methodsFor: 'geometry' stamp: 'KenD 8/17/2015 19:00'!
resizeContainmentArea
	"I don't have such an area, so do nothing.
	However, I may have an owner who does."
	
	(self owner isKindOf: BlockMorph)
		ifTrue: [ self owner resizeContainmentArea ]! !

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

!BlockMorph methodsFor: 'plugTabs' stamp: 'KenD 8/14/2015 21:53'!
showTabBar

	"Draw a white bar near where a BlockMorph can be plugged into a tab"
	| bar |
	bar := TabBarMorph 
				startPos: 0 @ (self morphExtent y - self tabHeight) 
				length: self morphExtent x.
	self setProperty: #tabBar toValue: bar.
	self addMorphBack: bar! !

!BlockMorph methodsFor: 'drawing' stamp: 'KenD 8/14/2015 21:26'!
tabHeight

	^ self class tabHeight ! !

!BlockMorph methodsFor: 'drawing' stamp: 'KenD 8/14/2015 21:27'!
tabIndent

	^ self class tabIndent ! !

!BlockMorph methodsFor: 'drawing' stamp: 'KenD 8/14/2015 21:29'!
tabWidth

	^ self class tabWidth ! !

!BlockMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 8/21/2015 09:17'!
wantsDroppedMorph: aMorph event: evt
	"Return true if the receiver wishes to accept the given morph, which is being dropped by a hand in response to the given event. Note that for a successful drop operation both parties need to agree. The symmetric check is done automatically via aMorph wantsToBeDroppedInto: self."

	^ (aMorph isKindOf: BlockMorph) and: [ aMorph acceptsPlugTab ]! !

!BlockMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 8/17/2015 16:26'!
wantsToBeDroppedInto: aMorph
	"I may to be dropped on a BlockMorph with a tab, if I have a slot for a tab"

	(aMorph isKindOf: BlockMorph)
		ifTrue: [ ^ self acceptsPlugTab ].
	^ aMorph isKindOf: PasteUpMorph ! !

!BlockMorph class methodsFor: 'colors' stamp: 'KenD 8/14/2015 11:25'!
blockMorphColor

	^ Color r: 0.4 g: 0.7  b: 0.8 ! !

!BlockMorph class methodsFor: 'colors' stamp: 'KenD 8/14/2015 11:27'!
defaultColor

	^ Color green! !

!BlockMorph class methodsFor: 'accessing' stamp: 'KenD 8/14/2015 21:32'!
tabHeight

	^ 14! !

!BlockMorph class methodsFor: 'accessing' stamp: 'KenD 8/14/2015 21:31'!
tabIndent

	^ 24! !

!BlockMorph class methodsFor: 'accessing' stamp: 'KenD 8/14/2015 21:28'!
tabWidth

	^ 18! !

!ContainingBlockMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 8/18/2015 14:07'!
acceptDroppingMorph: aBlockMorph event: evt 
	"Add aBlockMorph to me as the next block to be executed"
	"I have two places
	    inside -> innerBlock
	    below -> nextBlock (in sequence)
	"
	"Who is closer?"
	| blocLocation |
	blocLocation := evt eventPosition "Hand world position"
		+ aBlockMorph morphPosition "block pos relative to hand"
		- self morphPositionInWorld. "block pos relative to me"
		
	self hideTabBar.
	
	(blocLocation y > (self morphExtent y - (2 * self tabHeight)))
	ifTrue: [ self nextBlock: aBlockMorph ]
	ifFalse: [ self containedBlock: aBlockMorph ].


! !

!ContainingBlockMorph methodsFor: 'accessing' stamp: 'KenD 8/17/2015 15:49'!
containedBlock

	^ containedBlock! !

!ContainingBlockMorph methodsFor: 'accessing' stamp: 'KenD 8/18/2015 07:48'!
containedBlock: aBlockMorphOrNil

	containedBlock ifNotNil: [ :old | self removeMorph: old ].
	containedBlock := aBlockMorphOrNil.
	aBlockMorphOrNil
		ifNotNil: [ :aBlockMorph |
			self addMorphFront: aBlockMorph.
			aBlockMorph morphPosition: self containedBlockPosition
	].
	self addAlarm: #resizeContainmentArea after: 0.1.

! !

!ContainingBlockMorph methodsFor: 'geometry' stamp: 'KenD 8/17/2015 18:20'!
containedBlockPosition
	"Answer location of upperLeft point for a contained block (inside my 'c')"
	
	^ self tabWidth @ (2 * self tabHeight)! !

!ContainingBlockMorph methodsFor: 'initialization' stamp: 'KenD 8/19/2015 07:06'!
defaultExtent

	| width height lableWidth |
	 lableWidth := 
		(self labelMorph ifNil: [ self defaultLabel ] ifNotNil: [ :lm | lm ]) morphExtent x.
	width := 10 + self tabWidth + self tabIndent + lableWidth.
	height := (6 * self tabHeight).
	^ width @ height! !

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

!ContainingBlockMorph methodsFor: 'user feedback' stamp: 'KenD 8/14/2015 21:09'!
hideTabBar
	"remove my tabBar(s), if any"
	
	"I use a second tab bar"
	super hideTabBar.
	self valueOfProperty: #tabBar2 ifPresentDo: [ :bar | 
		self removeMorph: bar. 
		self removeProperty: #tabBar2
	]! !

!ContainingBlockMorph methodsFor: 'geometry' stamp: 'KenD 8/17/2015 18:04'!
innerBlockPosition
	"Answer location in self in which to place upper left corner of inner block".
	
	^ 0 @ self morphExtent y - self tabHeight ! !

!ContainingBlockMorph methodsFor: 'geometry' stamp: 'KenD 8/19/2015 07:10'!
minimumExtent

	| baseExtent |
	baseExtent := self defaultExtent.
	^ (baseExtent x) 
		@ ((baseExtent y) +
			(self containedBlock
					ifNil: [ 0 ] 
					ifNotNil: [ :cb | self tabHeight + cb combinedNextBlockHeights]))! !

!ContainingBlockMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 8/20/2015 08:43'!
mouseEnter: evt
	"Handle a mouseEnter event, meaning the mouse just entered my bounds."
	
	"Hilight if hand has BlockMorph that we will accepr"
	| heldMorph |
	(evt isDraggingEvent) ifFalse: [ ^ self ].
	(self nextBlock)
		ifNotNil: [ (self containedBlock)
			ifNotNil: [ ^ self ] ].  "No place to plug a block"
	(self hasPlugTab) 
		ifFalse: [ ^ self ]. "No place to plug a block"
	
	heldMorph := evt hand ifNotNil:
		 [ :aHand | |heldMorphs | 
			heldMorphs := aHand submorphs.
			(heldMorphs size > 0) 
				ifTrue: [ heldMorphs at: 1 ]
				ifFalse: [ nil ]
	].
	
	heldMorph ifNotNil: [ :held |
		((held isKindOf: BlockMorph) and: [ held acceptsPlugTab ])
			ifTrue: [ self indicateDropTarget: evt ]
	]! !

!ContainingBlockMorph methodsFor: 'geometry' stamp: 'KenD 8/17/2015 18:45'!
nextBlockPosition
	"Answer location in self in which to place upper left corner of block following me".
	
	^ 0 @ (self morphExtent y - self tabHeight)! !

!ContainingBlockMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 8/19/2015 06:52'!
removeGrabbedBlock: aBlockMorph
	"A hand is (probably) removing nextBlock or containedBlock"

	(aBlockMorph == self nextBlock)
		ifTrue: [ self nextBlock: nil ]. 
		
	(aBlockMorph == self containedBlock)
		ifTrue: [ self containedBlock: nil ]! !

!ContainingBlockMorph methodsFor: 'geometry' stamp: 'KenD 8/18/2015 07:52'!
resizeContainmentArea

	self morphExtent: (self minimumExtent).
	self nextBlock ifNotNil: [ :nb | nb morphPosition: self nextBlockPosition ].
	
	(self owner isKindOf: BlockMorph)
		ifTrue: [ self owner resizeContainmentArea ]! !

!ContainingBlockMorph methodsFor: 'user feedback' stamp: 'KenD 8/20/2015 08:46'!
showTabBar
	"Draw a white bar near where a BlockMorph can be plugged into a tab"
	
	"I have two such locations"
	| bar2 |
	super showTabBar.
	(self containedBlock)
		ifNil: [
			bar2 := TabBarMorph 
					startPos: (self tabWidth) @ (2 * self tabHeight)
					length: (self morphExtent x - self tabWidth).
		self setProperty: #tabBar2 toValue: bar2.
		self addMorphBack: bar2
	]! !

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

!TabBarMorph methodsFor: 'drawing' stamp: 'KenD 8/14/2015 22:26'!
drawOn: aCanvas
	
	| extent tabIndent tabWidth |
	extent := self morphExtent.
	tabIndent := BlockMorph tabIndent.
	tabWidth  := BlockMorph tabWidth.

	"Left of tab"
	aCanvas
		fillRectangle: (0@0 extent: (tabIndent @ extent y))
		color: color.

	"Right of tab"
	aCanvas
		fillRectangle: ( ((tabIndent + tabWidth) @ 0)
							extent: (extent x - (tabIndent + tabWidth)) @ extent y )
		color: color.! !

!TabBarMorph methodsFor: 'initialization' stamp: 'KenD 8/14/2015 22:41'!
startPos: upperLeftPoint length: xExtent

	self 
		color: Color white;
		morphExtent: xExtent @ 4;
		morphPosition: upperLeftPoint;
		yourself! !

!TabBarMorph class methodsFor: 'instance creation' stamp: 'KenD 8/14/2015 22:22'!
startPos: upperLeftPoint length: xExtent

	| newInst |
	newInst := self new.
	^ newInst startPos: upperLeftPoint length: xExtent! !
