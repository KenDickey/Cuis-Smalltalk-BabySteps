'From Cuis 4.2 of 25 July 2013 [latest update: #1824] on 17 September 2013 at 3:26:18.165551 pm'!
'Description Please enter a description for this package'!
!provides: 'FrameMorph' 1 7!
!classDefinition: #FrameMorph category: #FrameMorph!
BorderedRectMorph subclass: #FrameMorph
	instanceVariableNames: 'colorIndex frameSelector'
	classVariableNames: 'Colors'
	poolDictionaries: ''
	category: 'FrameMorph'!
!classDefinition: 'FrameMorph class' category: #FrameMorph!
FrameMorph class
	instanceVariableNames: ''!


!FrameMorph commentStamp: '<historical>' prior: 0!
I appear as an empty frame!

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

!FrameMorph methodsFor: 'initialization' stamp: 'KenD 9/15/2013 21:13'!
initialize

	super initialize.
	
	colorIndex := 1.
	self borderColor: (self class colors at: colorIndex).
	self frameSelector: #simple.! !

!FrameMorph methodsFor: 'geometry testing' stamp: 'KenD 9/16/2013 15:03'!
morphContainsPoint: aPoint
	"Only the frame contains a point"
	| outerExtent innerExtent |
	outerExtent := (0@0 extent: self morphExtent).
	innerExtent := outerExtent insetBy: self borderWidth.
	^ (outerExtent containsPoint: aPoint) 
		and: [(innerExtent containsPoint: aPoint) not].! !

!FrameMorph methodsFor: 'events' stamp: 'KenD 9/15/2013 21:37'!
startStepping
	"Start stepping the receiver"
	
	| w |
	w _ self world.
	w ifNotNil: [
		w startStepping: self 
			at: Time localMillisecondClock
			selector: #step 
			arguments:nil 
			stepTime: 260.
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

!FrameMorph class methodsFor: 'class initialization' stamp: 'KenD 9/15/2013 21:40'!
initialize
"
	self initialize.
"
	Colors := { Color red. Color yellow. Color green. Color yellow. }.! !
FrameMorph initialize!
