'From Cuis 4.2 of 25 July 2013 [latest update: #1840] on 2 October 2013 at 3:45:50.037273 pm'!
'Description Widget Composition Package'!
!provides: 'Morphic-Widget-Weaver' 1 24!
!classDefinition: #AddedCursors category: #'Morphic-Widget-Weaver'!
CursorWithMask subclass: #AddedCursors
	instanceVariableNames: ''
	classVariableNames: 'ClosedHand OpenHand'
	poolDictionaries: ''
	category: 'Morphic-Widget-Weaver'!
!classDefinition: 'AddedCursors class' category: #'Morphic-Widget-Weaver'!
AddedCursors class
	instanceVariableNames: ''!

!classDefinition: #ConstructionLens category: #'Morphic-Widget-Weaver'!
Morph subclass: #ConstructionLens
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Widget-Weaver'!
!classDefinition: 'ConstructionLens class' category: #'Morphic-Widget-Weaver'!
ConstructionLens class
	instanceVariableNames: ''!

!classDefinition: #LineMorph category: #'Morphic-Widget-Weaver'!
Morph subclass: #LineMorph
	instanceVariableNames: 'color extent startPointSelector endPointSelector lineWidth'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Widget-Weaver'!
!classDefinition: 'LineMorph class' category: #'Morphic-Widget-Weaver'!
LineMorph class
	instanceVariableNames: ''!

!classDefinition: #ConnectorMorph category: #'Morphic-Widget-Weaver'!
BorderedRectMorph subclass: #ConnectorMorph
	instanceVariableNames: 'connectionEndPoint connection state dragWidget arrowHead'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Widget-Weaver'!
!classDefinition: 'ConnectorMorph class' category: #'Morphic-Widget-Weaver'!
ConnectorMorph class
	instanceVariableNames: ''!

!classDefinition: #FrameMorph category: #'Morphic-Widget-Weaver'!
BorderedRectMorph subclass: #FrameMorph
	instanceVariableNames: 'colorIndex frameSelector'
	classVariableNames: 'Colors'
	poolDictionaries: ''
	category: 'Morphic-Widget-Weaver'!
!classDefinition: 'FrameMorph class' category: #'Morphic-Widget-Weaver'!
FrameMorph class
	instanceVariableNames: ''!

!classDefinition: #FramedWidget category: #'Morphic-Widget-Weaver'!
FrameMorph subclass: #FramedWidget
	instanceVariableNames: 'targetWidget moveDelta'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Widget-Weaver'!
!classDefinition: 'FramedWidget class' category: #'Morphic-Widget-Weaver'!
FramedWidget class
	instanceVariableNames: ''!

!classDefinition: #ViewLens category: #'Morphic-Widget-Weaver'!
SystemWindow subclass: #ViewLens
	instanceVariableNames: 'viewPort propertySheet'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Widget-Weaver'!
!classDefinition: 'ViewLens class' category: #'Morphic-Widget-Weaver'!
ViewLens class
	instanceVariableNames: ''!

!classDefinition: #ViewPort category: #'Morphic-Widget-Weaver'!
BorderedRectMorph subclass: #ViewPort
	instanceVariableNames: 'selectedMorph framedMorphs'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Widget-Weaver'!
!classDefinition: 'ViewPort class' category: #'Morphic-Widget-Weaver'!
ViewPort class
	instanceVariableNames: ''!


!AddedCursors commentStamp: '<historical>' prior: 0!
Additional Cursors -- see class side!

!ConstructionLens commentStamp: '<historical>' prior: 0!
I am just a way to get a ViewLens!

!LineMorph commentStamp: '<historical>' prior: 0!
I am a line from startPoint to endPoint!

!ConnectorMorph commentStamp: '<historical>' prior: 0!
I am a connection endpoint!

!FrameMorph commentStamp: '<historical>' prior: 0!
I appear as an empty frame!

!FramedWidget commentStamp: '<historical>' prior: 0!
I am a frame for UIWidgets which shows connector handles!

!ViewLens commentStamp: '<historical>' prior: 0!
I am SystemWindow which is selected via a ViewPort window.

I can be used to edit a Morph's salient instance variables (a.k.a. properties)

ViewLens open: nil label: 'View Lens'.!

!ViewPort commentStamp: '<historical>' prior: 0!
I am jused in a ViewLens as a transparent view.!

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

!AddedCursors class methodsFor: 'class initialization' stamp: 'KenD 9/28/2013 17:26'!
initOpenHand
"
	self initOpenHand.
"

	OpenHand :=  ((CursorWithMask
	extent: 16@16
	depth: 1
	fromArray: #(
		2r0000000000000000
		2r110110110000000000000000000
		2r1001001001100000000000000000
		2r1001001001010000000000000000
		2r1001001001010000000000000000
		2r1101001001001010000000000000000
		2r1011001001001010000000000000000
		2r1001001001001010000000000000000
		2r1001000000000010000000000000000
		2r1000100000000010000000000000000
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
	offset: 0@0))! !

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

!ConstructionLens class methodsFor: 'instance creation' stamp: 'KenD 10/2/2013 15:08'!
new

	|  window |
	window _ ViewLens new.
	^ window
		model: nil;
		buildMorphicWindow;
		setLabel: 'Construction Lens';
		yourself! !

!ConstructionLens class methodsFor: 'instance creation' stamp: 'KenD 10/2/2013 15:08'!
open

	|  window |
	window _ ViewLens new.
	^ window
		openInWorld;
		yourself! !

!LineMorph methodsFor: 'private' stamp: 'KenD 9/27/2013 15:36'!
basicExtent: aPoint

	extent := aPoint! !

!LineMorph methodsFor: 'accessing' stamp: 'KenD 9/27/2013 15:32'!
color

	^ color! !

!LineMorph methodsFor: 'accessing' stamp: 'KenD 9/27/2013 16:35'!
color: aColor

	(aColor class = Color) ifFalse: [ Error signal: 'Not a color: ', aColor printString ].

	color := aColor.
	self redrawNeeded ! !

!LineMorph methodsFor: 'drawing' stamp: 'KenD 9/30/2013 16:06'!
drawOn: aCanvas
	"Draw self in own coordinates"

	| rect |
	rect := self rect.
	aCanvas
		line: (rect perform: startPointSelector)
		to:  (rect perform: endPointSelector)
		width: lineWidth
		color: color! !

!LineMorph methodsFor: 'accessing' stamp: 'KenD 9/26/2013 19:11'!
endPoint
	"Answer my endPoint in owner's coordinates"

	^ (self rect perform: endPointSelector) + (self morphPosition) truncated ! !

!LineMorph methodsFor: 'accessing' stamp: 'jmv 9/29/2013 22:47'!
endPoint: aPoint
	"aPoint is in owner coordinates.  Set my startPoint in own coordinates"

	(aPoint isKindOf: Point) ifFalse: [ Error signal: 'Not a Point: ', aPoint printString ].

	self redrawNeeded.
	self setPointSelectorsFromStartPoint: self startPoint
		  endPoint: aPoint.
	self redrawNeeded.! !

!LineMorph methodsFor: 'initialization' stamp: 'KenD 9/27/2013 15:54'!
initialize

	super initialize.
	extent := 100@180.
	startPointSelector := #topLeft.
	endPointSelector   := #bottomRight.
	lineWidth := 6.
	color := Color cyan.
	! !

!LineMorph methodsFor: 'accessing' stamp: 'KenD 9/26/2013 18:55'!
length

	^ self startPoint dist: self endPoint! !

!LineMorph methodsFor: 'accessing' stamp: 'KenD 9/26/2013 16:23'!
lineWidth

	^ lineWidth ! !

!LineMorph methodsFor: 'accessing' stamp: 'KenD 9/30/2013 14:36'!
lineWidth: newWidthInPixels

	self redrawNeeded.
	lineWidth := newWidthInPixels.
	self redrawNeeded ! !

!LineMorph methodsFor: 'private' stamp: 'KenD 9/27/2013 16:28'!
minimumExtent

	^ 0 @ 0 ! !

!LineMorph methodsFor: 'geometry' stamp: 'KenD 9/27/2013 16:29'!
morphExtent
	"Answer an extent which includes me, taking into account my lineWidth"

	^ extent + lineWidth + lineWidth! !

!LineMorph methodsFor: 'geometry' stamp: 'KenD 9/27/2013 16:28'!
morphExtent: aPoint
	"Set the receiver's extent to value provided. Honor my minimumExtent."

	| innerExtent |
	innerExtent := aPoint - lineWidth - lineWidth.
	extent = innerExtent ifTrue: [^ self ].
	self redrawNeeded.
	extent _ (innerExtent max: self minimumExtent).
	self redrawNeeded! !

!LineMorph methodsFor: 'private' stamp: 'KenD 9/27/2013 15:45'!
rect

	^ Rectangle origin: 0@0 corner: extent! !

!LineMorph methodsFor: 'private' stamp: 'KenD 9/30/2013 15:29'!
setPointSelectorsFromStartPoint: startPoint endPoint: endPoint
	"Reset both my start and end points -- points in owner coordinates"

	| origin corner rect |
	origin  := ((startPoint x) min: (endPoint x)) @ ((startPoint y) min: (endPoint y)).
	corner := ((startPoint x) max: (endPoint x)) @ ((startPoint y) max: (endPoint y)).

	rect := Rectangle origin: origin corner: corner. "Owner coordinates"

	(startPoint = rect topLeft)        ifTrue: [ startPointSelector := #topLeft ].
	(startPoint = rect topRight)       ifTrue: [ startPointSelector := #topRight ].
	(startPoint = rect bottomLeft)  ifTrue: [ startPointSelector := #bottomLeft ].
	(startPoint = rect bottomRight) ifTrue: [ startPointSelector := #bottomRight ].

	(endPoint = rect topLeft)         ifTrue: [ endPointSelector   := #topLeft ].
	(endPoint = rect topRight)        ifTrue: [ endPointSelector   := #topRight ].
	(endPoint = rect bottomLeft)   ifTrue: [ endPointSelector   := #bottomLeft ].
	(endPoint = rect bottomRight)  ifTrue: [ endPointSelector   := #bottomRight ].

	self basicExtent: rect extent.
	self morphPosition: rect topLeft.
	"@@DEBUG@@"
"	('SetArgs: startPoint: ', startPoint asString, ' endPoint: ', endPoint asString) print.
	('Result:    startPoint: ', self startPoint asString, ' endPoint: ', self endPoint asString) print.
"! !

!LineMorph methodsFor: 'accessing' stamp: 'KenD 9/26/2013 19:11'!
startPoint
	"Answer my startPoint in owner's coordinates"

	^ (self rect perform: startPointSelector) + (self morphPosition) truncated! !

!LineMorph methodsFor: 'accessing' stamp: 'KenD 9/30/2013 14:36'!
startPoint: aPoint
	"aPoint is in owner coordinates.  Set my startPoint in own coordinates"

	(aPoint isKindOf: Point) ifFalse: [ Error signal: 'Not a Point: ', aPoint printString ].

	self redrawNeeded.
	self setPointSelectorsFromStartPoint: aPoint
		 endPoint: self endPoint.
	self redrawNeeded.! !

!LineMorph methodsFor: 'accessing' stamp: 'KenD 9/30/2013 14:36'!
startPoint: newStart endPoint: newEnd
	"Reset my start and end points (Nota Bene: points in owner coordinates)"

	(newStart isKindOf: Point)
		ifFalse: [ Error signal: 'Not a Point: ', newStart printString ].
	(newEnd isKindOf: Point)
		ifFalse: [ Error signal: 'Not a Point: ', newEnd printString ].

	self redrawNeeded.
	self setPointSelectorsFromStartPoint: newStart endPoint: newEnd.
	self redrawNeeded.! !

!LineMorph methodsFor: 'initialize-release' stamp: 'KenD 9/30/2013 15:25'!
startPoint: startPoint endPoint: endPoint width: numPixels color: aColor

	lineWidth := numPixels.
	color       := aColor.
	self setPointSelectorsFromStartPoint: startPoint endPoint: endPoint.
	! !

!LineMorph class methodsFor: 'instance creation' stamp: 'KenD 9/26/2013 16:21'!
initializedInstance
	"Hand out a sample line"

	^ self new startPoint: 20@30 endPoint: 120@160 width: 6 color: Color cyan
! !

!LineMorph class methodsFor: 'instance creation' stamp: 'KenD 9/26/2013 18:51'!
startPoint: start endPoint: end

	^ self new startPoint: start endPoint: end! !

!LineMorph class methodsFor: 'instance creation' stamp: 'KenD 9/26/2013 16:21'!
startPoint: start endPoint: end width: numPixels color: aColor

	^ self new startPoint: start endPoint: end width: numPixels color: aColor! !

!ConnectorMorph methodsFor: 'private' stamp: 'KenD 9/29/2013 13:37'!
center
	"Answer center of my extent"

	^ self morphExtent // 2! !

!ConnectorMorph methodsFor: 'connection state' stamp: 'KenD 9/28/2013 20:21'!
connect: otherConnector

	connection := otherConnector.
	self borderColor: self connectedBorderColor.
	self color: self connectedColor.
	self state: #connected.! !

!ConnectorMorph methodsFor: 'connection state' stamp: 'KenD 9/28/2013 20:04'!
connectedBorderColor

	^ Color orange! !

!ConnectorMorph methodsFor: 'connection state' stamp: 'KenD 9/28/2013 20:04'!
connectedColor

	^ Color green! !

!ConnectorMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 9/29/2013 13:02'!
cursor

	^ AddedCursors openHand
! !

!ConnectorMorph methodsFor: 'connection state' stamp: 'KenD 9/29/2013 13:27'!
deselect
	"unselect me if I am selected"

	(self state = #selected) ifTrue: [ self unselect ].! !

!ConnectorMorph methodsFor: 'private' stamp: 'KenD 9/30/2013 16:13'!
dragWidget

	| lineWidth |
	lineWidth := 8.
	dragWidget ifNil: [
		dragWidget := (LineMorph
							startPoint: (self center) - (lineWidth // 2)
							endPoint:   self morphExtent  "Wrong but harmless"
							width: lineWidth
							color: Color yellow).
		self addMorph: dragWidget.
	].

	^ dragWidget ! !

!ConnectorMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 9/29/2013 13:03'!
handlesMouseDown: aMouseButtonEvent

	AddedCursors closedHand show.
	^ true! !

!ConnectorMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 9/29/2013 14:01'!
handlesMouseMove: aMouseButtonEvent

	^ true! !

!ConnectorMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 9/29/2013 13:03'!
handlesMouseOver: evt

	^ true! !

!ConnectorMorph methodsFor: 'initialization' stamp: 'KenD 9/30/2013 14:44'!
initialize

	super initialize.
	self morphExtent: 40@40.
	self borderWidth: 6.
	self state: #unselected.
	arrowHead := ImageMorph new
						image: (FormCanvas arrowWithGradientOfDirection: #right).
	self addMorph: arrowHead.
	arrowHead morphPosition: (self center)
										- (arrowHead morphExtent // 2).  "center the arrowHead"
	! !

!ConnectorMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 9/30/2013 16:58'!
mouseButton1Down: aMouseButtonEvent localPosition: localEventPosition
	"Handle a mouse down event."

    Transcript newLine; show: (self name , ' got #mouseButton1Down:localPosition:').

	self processMouseDown: aMouseButtonEvent localPosition: localEventPosition.! !

!ConnectorMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 9/30/2013 16:59'!
mouseButton1Up: aMouseButtonEvent localPosition: localEventPosition
	"Handle a mouse button 1 up event."

	dragWidget ifNotNil: [
"
		('mouse button up; global mouse location: ',
		(self morphPositionInWorld + localEventPosition) asString
		) print.
"
		dragWidget delete.
		dragWidget := nil
	].
	arrowHead show.
	Cursor normal beCursor.
	self deselect.! !

!ConnectorMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 9/29/2013 13:03'!
mouseEnter: evt

	super mouseEnter: evt.
	AddedCursors openHand show.
! !

!ConnectorMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 9/29/2013 13:03'!
mouseLeave: evt

	Cursor normal beCursor.
	super mouseLeave: evt! !

!ConnectorMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 9/29/2013 15:29'!
mouseMove: aMouseMoveEvent localPosition: localEventPosition
	"Handle a mouse move event"
"
    Transcript newLine;
		show: (self name ,
				' got #mouseMove:localPosition: at ',
				localEventPosition printString).
"
	self dragWidget endPoint: localEventPosition.

	"Don't let World open a menu"
	aMouseMoveEvent wasHandled:  true.   ! !

!ConnectorMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 9/30/2013 16:44'!
processMouseDown: evt localPosition: localEventPosition
"
    Transcript newLine;
		show: 	(self name ,
				 ' got #processMouseDown:localPosition: at ',
				 localEventPosition asString).
"
	self select.
	self dragWidget show.
	arrowHead hide.
	self dragWidget endPoint: localEventPosition.
	AddedCursors closedHand show.
	self runningWorld activeHand newMouseFocus: self.
	"Don't let World open a menu"
	evt wasHandled:  true.
! !

!ConnectorMorph methodsFor: 'connection state' stamp: 'KenD 9/28/2013 20:14'!
select

	self borderColor: self selectedBorderColor.
	self color: self selectedColor.
	self state: #selected.! !

!ConnectorMorph methodsFor: 'connection state' stamp: 'KenD 9/28/2013 20:03'!
selectedBorderColor

	^ Color yellow! !

!ConnectorMorph methodsFor: 'connection state' stamp: 'KenD 9/28/2013 20:04'!
selectedColor

	^ Color orange! !

!ConnectorMorph methodsFor: 'private' stamp: 'KenD 9/28/2013 20:14'!
state

	^ state! !

!ConnectorMorph methodsFor: 'private' stamp: 'KenD 9/30/2013 14:43'!
state: newState

	(#(unselected selected connected) asSet includes: newState)
		ifFalse: [ Error signal: 'Connection state must be one of ',
									'#(unselected selected connected)'
		].

	state := newState! !

!ConnectorMorph methodsFor: 'connection state' stamp: 'KenD 9/28/2013 20:03'!
unSelectedBorderColor

	^ Color black! !

!ConnectorMorph methodsFor: 'connection state' stamp: 'KenD 9/28/2013 20:03'!
unSelectedColor

	^ Color orange! !

!ConnectorMorph methodsFor: 'connection state' stamp: 'KenD 9/29/2013 13:27'!
unselect
	"Always unselect me (note #deselect)"

	self borderColor: self unSelectedBorderColor.
	self color: self unSelectedColor.
	self state: #unselected.! !

!ConnectorMorph class methodsFor: 'as yet unclassified' stamp: 'KenD 10/2/2013 15:43'!
includeInNewMorphMenu
	"Not to be instantiated from the menu"

	^ false! !

!FrameMorph methodsFor: 'accessing' stamp: 'KenD 9/16/2013 14:58'!
borderWidth

	^ borderWidth ! !

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

!FrameMorph methodsFor: 'drawing' stamp: 'KenD 9/29/2013 13:04'!
drawOn: aCanvas
	"A canvas is already set with a proper transformation from our coordinates to those of the Canvas target."

	aCanvas
		frameRectangle: (0@0 extent: extent)
		color: borderColor
		borderWidth: borderWidth
		borderStyleSymbol: self frameSelector
! !

!FrameMorph methodsFor: 'accessing' stamp: 'KenD 9/15/2013 20:57'!
frameSelector

	^ frameSelector! !

!FrameMorph methodsFor: 'accessing' stamp: 'KenD 9/15/2013 21:02'!
frameSelector: aSymbol

	(#(simple inset raised) includes: aSymbol) ifFalse: [
		 Error signal: aSymbol printString, ' must be #raised, #inset, or #simple'
	].
	frameSelector := aSymbol! !

!FrameMorph methodsFor: 'initialization' stamp: 'KenD 9/29/2013 15:44'!
initialize

	super initialize.

	colorIndex := 1.
	self borderColor: (self class colors at: colorIndex);
		 frameSelector: #simple;
		borderWidth: 8;
		morphExtent: 100@160.! !

!FrameMorph methodsFor: 'geometry testing' stamp: 'KenD 9/16/2013 15:03'!
morphContainsPoint: aPoint
	"Only the frame contains a point"
	| outerExtent innerExtent |
	outerExtent := (0@0 extent: self morphExtent).
	innerExtent := outerExtent insetBy: self borderWidth.
	^ (outerExtent containsPoint: aPoint)
		and: [(innerExtent containsPoint: aPoint) not].! !

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

!FrameMorph class methodsFor: 'class initialization' stamp: 'KenD 9/29/2013 15:43'!
initialize
"
	self initialize.
"
	Colors := { Color yellow. Color mustard. Color brown. }.! !

!FramedWidget methodsFor: 'connections' stamp: 'KenD 10/1/2013 15:05'!
addConnectorHandles

	| "connectorHandle" |
	self targetWidget ifNil: [ ^ nil ].
	"@@@FIXME: TEST SCAFFOLD"
"
	connectorHandle := ConnectorMorph new.
	self addMorph: connectorHandle.
	connectorHandle morphPosition: (self morphExtent x) @ 10.
"
	! !

!FramedWidget methodsFor: 'initialization' stamp: 'KenD 9/30/2013 16:35'!
forWidget: aWidget

	targetWidget := aWidget.
	self addConnectorHandles.
	super morphPosition: aWidget morphPosition - (self borderWidth @ self borderWidth).
	self morphExtent: aWidget morphExtent + (2 * self borderWidth).! !

!FramedWidget methodsFor: 'initialization' stamp: 'KenD 10/1/2013 15:39'!
forWidget: aWidget localPosition: aPoint

	targetWidget := aWidget.
	self addConnectorHandles.
	super morphPosition: aPoint - (self borderWidth @ self borderWidth).
	self morphExtent: aWidget morphExtent + (2 * self borderWidth).! !

!FramedWidget methodsFor: 'event handling' stamp: 'KenD 9/30/2013 17:04'!
justDroppedInto: newOwnerMorph event: anEvent
	"Someone moved me.  Move my target as well"

	self targetWidget morphPosition: (self morphPosition + self borderWidth)! !

!FramedWidget methodsFor: 'accessing' stamp: 'KenD 9/29/2013 13:09'!
targetWidget

	^ targetWidget ! !

!FramedWidget class methodsFor: 'examples' stamp: 'KenD 9/29/2013 15:50'!
example1
"
	FramedWidget example1.
"
	| widget frame |
	widget := OneLineEditorMorph initializedInstance.
	widget morphPosition: 20@40.
	frame := self forWidget: widget.
	widget openInWorld.
	frame openInWorld.
	^ frame! !

!FramedWidget class methodsFor: 'instance creation' stamp: 'KenD 9/29/2013 13:08'!
forWidget: aWidget

	^ self new forWidget: aWidget! !

!FramedWidget class methodsFor: 'as yet unclassified' stamp: 'KenD 10/2/2013 15:43'!
includeInNewMorphMenu
	"Not to be instantiated from the menu"

	^ false! !

!ViewLens methodsFor: 'events' stamp: 'KenD 10/2/2013 09:57'!
aboutToBeGrabbedBy: aHand
	"I am being picked up. Clean out display."

	self viewPort removeFrames.

	^ self "Grab me"! !

!ViewLens methodsFor: 'GUI building' stamp: 'KenD 10/2/2013 10:18'!
buildMorphicWindow

	| layout "propTitle" |
	viewPort := ViewPort new.
"
	propTitle := StringMorph
		contents: 'Morph Properties'
		font: nil
		emphasis: AbstractFont boldCode.
	propTitle color: Color black.

	propertySheet := LayoutMorph newColumn.
	propertySheet
		color: Color grey lighter;
		addMorph: propTitle.
"
	layout := self layoutMorph.

	layout beRow.
	layout
		addMorph: viewPort
		layoutSpec: (LayoutSpec
							proportionalWidth: 1.0
							proportionalHeight: 1.0).
"
	layout
		addMorph: propertySheet
		layoutSpec:  (LayoutSpec
								fixedWidth: 200
								proportionalHeight: 1.0
		 						minorDirectionPadding: #top).
"
		self borderColor: self defaultBorderColor
	! !

!ViewLens methodsFor: 'initialization' stamp: 'KenD 10/2/2013 14:31'!
defaultBorderColor

	^ Color orange! !

!ViewLens methodsFor: 'initialization' stamp: 'KenD 10/2/2013 10:16'!
defaultColor
	"See through me"

	^ Color transparent! !

!ViewLens methodsFor: 'initialization' stamp: 'KenD 10/2/2013 15:21'!
defaultExtent

	^ 640@700! !

!ViewLens methodsFor: 'initialization' stamp: 'KenD 10/2/2013 15:21'!
initialize

	super initialize.
	self widgetsColor: self defaultBorderColor.
	self color: self defaultColor.
	self morphExtent: self defaultExtent.
! !

!ViewLens methodsFor: 'events' stamp: 'KenD 10/2/2013 10:12'!
justDroppedInto: newOwnerMorph event: anEvent
	"Someone moved me.  Tell my viewport"

	self viewPort moved.! !

!ViewLens methodsFor: 'accessing' stamp: 'KenD 9/6/2013 17:56'!
propertySheet

	^ propertySheet ! !

!ViewLens methodsFor: 'accessing' stamp: 'KenD 9/6/2013 17:56'!
selectedMorph

	^ viewPort selectedMorph! !

!ViewLens methodsFor: 'accessing' stamp: 'KenD 9/6/2013 17:56'!
viewPort

	^ viewPort ! !

!ViewPort methodsFor: 'event handling' stamp: 'KenD 10/2/2013 10:03'!
click: evt localPosition: localEventPosition
	"Select the morph under me and notify my owner of the change"

	| globalPos morphsAtPoint morphsUnderMeAtPoint morphsToIgnore |
	globalPos := localEventPosition + self morphPositionInWorld.
	morphsToIgnore := OrderedCollection new.
	morphsToIgnore
		add: self owner; "the layout morph which contains me"
		addAll: self owner submorphs; "includes me"
		add: self owner owner; "the ViewLens window"
		add: self runningWorld. "The PasteUpMorph"
"
	Transcript newLine; show: (self name , ' got #click:localPosition:').
	('  at: ', localEventPosition asString) print.
	('Global position: ' , globalPos asString) print.
"
	"Find if a morph is under us"
	morphsAtPoint := self runningWorld morphsAt: globalPos unlocked: true.
	"NB: #morphsAt:behind:unlocked: never finds anything"
 	morphsUnderMeAtPoint :=
		morphsAtPoint reject: [ :elt |
			(morphsToIgnore includes: elt)
				or: [ (elt isKindOf: PluggableMorph) not ]
		].

	(morphsUnderMeAtPoint isEmpty)
		ifTrue: [ selectedMorph := nil ]
		ifFalse: [
			selectedMorph := morphsUnderMeAtPoint first.
			self frameMorphsInCollection: morphsUnderMeAtPoint withColor: Color red.
			self frameMorphsInCollection: { selectedMorph } withColor: Color green.
		].

"	selectedMorph ifNotNil: [ selectedMorph addHalo ].    proof of concept"! !

!ViewPort methodsFor: 'drawing' stamp: 'KenD 10/2/2013 09:51'!
clipsSubmorphs
	"Drawing specific. If this property is set, clip the receiver's
	submorphs to the receiver's clipping bounds."
	^ true! !

!ViewPort methodsFor: 'drawing' stamp: 'KenD 10/2/2013 09:36'!
frameMorphsInCollection: morphsCollection
	"Show frames of morphs in/under me"

	| canvas oldClipRect |
	canvas := Display getCanvas.
	oldClipRect := canvas clipRect.
	canvas setClipRect: (self morphBoundsInWorld ).
	[morphsCollection do: [ :m | | frame |
		frame := FramedWidget forWidget: m.
		frame morphPosition: (self myPositionForMorph: m)  - frame borderWidth.
		self addMorph: frame.
"		canvas frameRectangle:   (m morphBoundsInWorld )
				color: Color red
				borderWidth: 4
				borderStyleSymbol: #raised.
"		]
	] ensure: [canvas setClipRect: oldClipRect].! !

!ViewPort methodsFor: 'drawing' stamp: 'KenD 10/2/2013 09:36'!
frameMorphsInCollection: morphsCollection withColor: aColor
	"Show frames of morphs in/under me"

	| canvas oldClipRect |
	canvas := Display getCanvas.
	oldClipRect := canvas clipRect.
	canvas setClipRect: (self morphBoundsInWorld ).
	[morphsCollection do: [ :m | | frame |
		frame := FramedWidget forWidget: m.
		frame borderColor: aColor.
		frame morphPosition: (self myPositionForMorph: m) - frame borderWidth.
		self addMorph: frame.
"		canvas frameRectangle:   (m morphBoundsInWorld )
				color: Color red
				borderWidth: 4
				borderStyleSymbol: #raised.
"		]
"		canvas frameRectangle:   (m morphBoundsInWorld )
				color: aColor
				borderWidth: 4
				borderStyleSymbol: #raised.
"
	] ensure: [canvas setClipRect: oldClipRect].! !

!ViewPort methodsFor: 'event handling' stamp: 'KenD 9/5/2013 16:31'!
handlesMouseDown: evt
"
	Transcript newLine; show: (self name , ' got #handlesMouseDown:').
"
	^ true! !

!ViewPort methodsFor: 'initialization' stamp: 'KenD 10/1/2013 14:52'!
initialize

	super initialize.
	self borderWidth: 4.
	self color: (Color teal alpha: 0.3).! !

!ViewPort methodsFor: 'event handling' stamp: 'KenD 10/2/2013 10:10'!
moved
	"I was moved. Erase and redraw"

	self removeFrames.
	"@@@FIXME: recalculateFrames"! !

!ViewPort methodsFor: 'private' stamp: 'KenD 10/2/2013 09:34'!
myPositionForMorph: aMorphUnderMe
	"aMorphUnderMe is in its own coordinates.  Answer this position in own coordinates"

	| aMorphGlobalPos deltaPos |
	aMorphGlobalPos := aMorphUnderMe morphPositionInWorld.
	deltaPos := aMorphGlobalPos - (self morphPositionInWorld).

	^ deltaPos! !

!ViewPort methodsFor: 'accessing' stamp: 'KenD 9/6/2013 18:05'!
myWindow
	"I am only used within SystemWindows"

	| o |
	o := self owner.
	[o isKindOf: SystemWindow]
		whileFalse: [ o := o owner ].

	^ o! !

!ViewPort methodsFor: 'event handling' stamp: 'KenD 9/5/2013 16:44'!
processMouseDown: evt localPosition: localEventPosition
	"Do nothing upon mouse-down except inform the hand to watch for a
	click; wait until an ensuing #click: message gets dispatched"

	Transcript newLine; show: (self name , ' got #processMouseDown:localPosition:').

" Never gets clicked. Click goes to World PasteUpMorph.  "
"
	evt hand waitForClicksOrDrag: self
				event: evt clkSel: #click:localPosition: dblClkSel:nil.
"
	"Handle click ourselves"
	evt wasHandled: true.
	self click: evt localPosition: localEventPosition
	! !

!ViewPort methodsFor: 'drawing' stamp: 'KenD 10/2/2013 09:46'!
removeFrames

	self submorphsDo: [ :m |
		(m class = FramedWidget) ifTrue: [ m delete. self removeMorph: m. ].
	]. ! !

!ViewPort methodsFor: 'accessing' stamp: 'KenD 9/6/2013 17:57'!
selectedMorph

	^ selectedMorph! !

!ViewPort class methodsFor: 'as yet unclassified' stamp: 'KenD 10/2/2013 15:43'!
includeInNewMorphMenu
	"Not to be instantiated from the menu"

	^ false! !
AddedCursors initialize!
FrameMorph initialize!
