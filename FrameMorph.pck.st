'From Cuis 4.2 of 25 July 2013 [latest update: #1824] on 26 September 2013 at 7:09:21.471883 pm'!
'Description I am a simple frame [hollow rectangle]'!
!provides: 'FrameMorph' 1 18!
!classDefinition: #AddedCursors category: #FrameMorph!
CursorWithMask subclass: #AddedCursors
	instanceVariableNames: ''
	classVariableNames: 'ClosedHand OpenHand'
	poolDictionaries: ''
	category: 'FrameMorph'!
!classDefinition: 'AddedCursors class' category: #FrameMorph!
AddedCursors class
	instanceVariableNames: ''!

!classDefinition: #FrameMorph category: #FrameMorph!
BorderedRectMorph subclass: #FrameMorph
	instanceVariableNames: 'colorIndex frameSelector'
	classVariableNames: 'Colors'
	poolDictionaries: ''
	category: 'FrameMorph'!
!classDefinition: 'FrameMorph class' category: #FrameMorph!
FrameMorph class
	instanceVariableNames: ''!


!AddedCursors commentStamp: '<historical>' prior: 0!
Additional Cursors -- see class side!

!FrameMorph commentStamp: '<historical>' prior: 0!
I appear as an empty frame!

!AddedCursors class methodsFor: 'constants' stamp: 'KenD 9/23/2013 20:17'!
closedHand
"
	self closedHand show.
"
	^ ClosedHand ! !

!AddedCursors class methodsFor: 'private' stamp: 'KenD 9/22/2013 19:23'!
historicalCruft
"
	self historicalCruft.
"

	| openHand openHandMask closedHand closedHandMask openHandCursor closedHandCursor |
	openHand := Form fromFileNamed: 'handOpen2.png'.
	openHandMask  := Form fromFileNamed: 'handOpen2-mask.png'.
	closedHand  :=  Form fromFileNamed: 'handClosed2.png'.
	closedHandMask  := Form fromFileNamed: 'handClosed2-mask.png'.

	openHandCursor := (CursorWithMask derivedFrom: openHand)  setMaskForm: openHandMask.
	closedHandCursor := (CursorWithMask derivedFrom: closedHand)  setMaskForm: closedHandMask.
	
	OpenHand := openHandCursor.
	ClosedHand := closedHandCursor.
	
	^ openHandCursor! !

!AddedCursors class methodsFor: 'class initialization' stamp: 'KenD 9/22/2013 19:35'!
initClosedHand
"
	self initClosedHand.
"
	ClosedHand := ((CursorWithMask
	extent: 16@16
	depth: 1
	fromArray: #(
		2r0000000000000000
		2r0000000000000000
		2r0000000000000000
		2r0000000000000000
		2r110110110100000000000000000
		2r1001001001010000000000000000
		2r1000000000010000000000000000
		2r111000000000010000000000000000
		2r1001000000000010000000000000000
		2r1000000000000010000000000000000
		2r1000000000000010000000000000000
		2r1000000000000110000000000000000
		2r100000000001110000000000000000
		2r10000000011100000000000000000
		2r1000000011000000000000000000
		2r100000011000000000000000000)
	offset: -1@-1) setMaskForm: (Form
	extent: 16@16
	depth: 1
	fromArray: #(
		2r0000000000000000
		2r0000000000000000
		2r0000000000000000
		2r1101101101000000000000000000
		2r11111111111100000000000000000
		2r11111111111110000000000000000
		2r1111111111111110000000000000000
		2r11111111111111110000000000000000
		2r11111111111111110000000000000000
		2r11111111111111110000000000000000
		2r11111111111111110000000000000000
		2r1111111111111100000000000000000
		2r111111111111000000000000000000
		2r11111111110000000000000000000
		2r1111111110000000000000000000
		2r1111111110000000000000000000)
	offset: 0@0)).! !

!AddedCursors class methodsFor: 'class initialization' stamp: 'KenD 9/22/2013 19:34'!
initOpenHand
"
	self initOpenHand.
"

	OpenHand := ((CursorWithMask
	extent: 16@16
	depth: 1
	fromArray: #(
		2r0000000000000000
		2r110110110000000000000000000
		2r1001001001100000000000000000
		2r1001001001010000000000000000
		2r1001001001010000000000000000
		2r1101001001001010000000000000000
		2r1011000000000010000000000000000
		2r1001000000000010000000000000000
		2r1001000000000010000000000000000
		2r1000000000000010000000000000000
		2r1000000000000010000000000000000
		2r1000000000000110000000000000000
		2r100000000001110000000000000000
		2r10000000011100000000000000000
		2r1000000011000000000000000000
		2r100000011000000000000000000)
	offset: -1@-1) setMaskForm: (Form
	extent: 16@16
	depth: 1
	fromArray: #(
		2r1101101100000000000000000000
		2r11111111111000000000000000000
		2r11111111111100000000000000000
		2r11111111111100000000000000000
		2r11011111111111100000000000000000
		2r11111111111111110000000000000000
		2r11111111111111110000000000000000
		2r11111111111111110000000000000000
		2r11111111111111110000000000000000
		2r11111111111111110000000000000000
		2r11111111111111110000000000000000
		2r1111111111111100000000000000000
		2r111111111111000000000000000000
		2r11111111110000000000000000000
		2r1111111110000000000000000000
		2r1111111110000000000000000000)
	offset: 0@0)).! !

!AddedCursors class methodsFor: 'class initialization' stamp: 'KenD 9/22/2013 17:16'!
initialize
"
	self initialize.
"
	self initOpenHand.
	self initClosedHand.! !

!AddedCursors class methodsFor: 'constants' stamp: 'KenD 9/23/2013 20:17'!
openHand
"
	self openHand show.
"

	^ OpenHand ! !

!FrameMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 9/22/2013 19:03'!
aboutToBeGrabbedBy: aHand

	super aboutToBeGrabbedBy: aHand.
	AddedCursors closedHand beCursor.
! !

!FrameMorph methodsFor: 'accessing' stamp: 'KenD 9/16/2013 14:58'!
borderWidth

	^ borderWidth ! !

!FrameMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 9/22/2013 19:06'!
cursor

	^ AddedCursors openHand
! !

!FrameMorph methodsFor: 'events-processing' stamp: 'KenD 9/15/2013 21:15'!
cycleBorderColor
	"Change border color to next in Colors"
	
	(colorIndex = self class colors size)
	ifTrue:  [colorIndex := 1]
	ifFalse: [colorIndex := colorIndex + 1].
	
	self borderColor: (self class colors at: colorIndex).
	
	^ self borderColor! !

!FrameMorph methodsFor: 'accessing' stamp: 'KenD 9/17/2013 15:25'!
defaultColor

     ^ Color transparent! !

!FrameMorph methodsFor: 'drawing' stamp: 'KenD 9/16/2013 15:04'!
drawOn: aCanvas
	"A canvas is already set with a proper transformation from our coordinates to those of the Canvas target."
	aCanvas
"		frameRectangle: (0@0 extent: extent) 
		borderWidth: borderWidth 
		color: borderColor 
"
		frameRectangle: (0@0 extent: extent) 
		color: borderColor 
		borderWidth: borderWidth 
		borderStyleSymbol: self frameSelector

"		fillRectangle: (0@0 extent: extent)
		color: Color transparent
		borderWidth: borderWidth
		borderStyleSymbol: self frameSelector
		baseColorForBorder: borderColor
"! !

!FrameMorph methodsFor: 'accessing' stamp: 'KenD 9/15/2013 20:57'!
frameSelector

	^ frameSelector! !

!FrameMorph methodsFor: 'accessing' stamp: 'KenD 9/15/2013 21:02'!
frameSelector: aSymbol

	(#(simple inset raised) includes: aSymbol) ifFalse: [
		 Error signal: aSymbol printString, ' must be #raised, #inset, or #simple' 
	]. 
	frameSelector := aSymbol! !

!FrameMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 9/22/2013 19:45'!
handlesMouseDown: aMouseButtonEvent

	AddedCursors closedHand show.
	^ false! !

!FrameMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 9/22/2013 19:39'!
handlesMouseOver: evt

	^ true! !

!FrameMorph methodsFor: 'initialization' stamp: 'KenD 9/15/2013 21:13'!
initialize

	super initialize.
	
	colorIndex := 1.
	self borderColor: (self class colors at: colorIndex).
	self frameSelector: #simple.! !

!FrameMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 9/22/2013 19:03'!
justGrabbedFrom: formerOwner

	super justGrabbedFrom: formerOwner.
	AddedCursors closedHand beCursor.
! !

!FrameMorph methodsFor: 'geometry testing' stamp: 'KenD 9/16/2013 15:03'!
morphContainsPoint: aPoint
	"Only the frame contains a point"
	| outerExtent innerExtent |
	outerExtent := (0@0 extent: self morphExtent).
	innerExtent := outerExtent insetBy: self borderWidth.
	^ (outerExtent containsPoint: aPoint) 
		and: [(innerExtent containsPoint: aPoint) not].! !

!FrameMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 9/22/2013 19:09'!
mouseButton1Down: aMouseButtonEvent localPosition: localEventPosition

	super mouseButton1Down: aMouseButtonEvent localPosition: localEventPosition.
	AddedCursors closedHand show.! !

!FrameMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 9/22/2013 19:06'!
mouseEnter: evt

	super mouseEnter: evt.
	AddedCursors openHand show.
! !

!FrameMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 9/22/2013 19:04'!
mouseLeave: evt

	Cursor normal beCursor.
	super mouseLeave: evt! !

!FrameMorph methodsFor: 'events' stamp: 'KenD 9/17/2013 16:06'!
startStepping
	"Start stepping the receiver"
	
	| w |
	w _ self world.
	w ifNotNil: [
		w startStepping: self 
			at: Time localMillisecondClock
			selector: #step 
			arguments:nil 
			stepTime: 400.
		self redrawNeeded ]! !

!FrameMorph methodsFor: 'events-processing' stamp: 'KenD 9/15/2013 21:22'!
step

	self cycleBorderColor ! !

!FrameMorph methodsFor: 'events' stamp: 'KenD 9/15/2013 21:35'!
stopStepping

	self world stopStepping: self.! !

!FrameMorph class methodsFor: 'accessing' stamp: 'KenD 9/15/2013 21:05'!
colors
	
	^ Colors ! !

!FrameMorph class methodsFor: 'examples' stamp: 'KenD 9/17/2013 15:23'!
example1
"
	self example1.
"
	| fm |
	fm := FrameMorph new..
	"fm cycleBorderColor."
	fm frameSelector: #simple.
	fm borderWidth: 8.
	fm morphPosition: 20@20.
	fm morphExtent: 200@100.
	fm openInWorld.
	fm startStepping.
"
	fm stopStepping.
"! !

!FrameMorph class methodsFor: 'class initialization' stamp: 'KenD 9/17/2013 16:10'!
initialize
"
	self initialize.
"
	Colors := { Color beige. Color lavender. Color lightGreen. Color grey. Color lightYellow. }.! !
AddedCursors initialize!
FrameMorph initialize!
