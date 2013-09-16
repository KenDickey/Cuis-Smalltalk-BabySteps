'From Cuis 4.2 of 25 July 2013 [latest update: #1808] on 15 September 2013 at 9:50:20.760443 pm'!
'Description Please enter a description for this package'!
!provides: 'FrameMorph' 1 4!
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

!FrameMorph methodsFor: 'events-processing' stamp: 'KenD 9/15/2013 21:15'!
cycleBorderColor
	"Change border color to next in Colors"
	
	(colorIndex = self class colors size)
	ifTrue:  [colorIndex := 1]
	ifFalse: [colorIndex := colorIndex + 1].
	
	self borderColor: (self class colors at: colorIndex).
	
	^ self borderColor! !

!FrameMorph methodsFor: 'drawing' stamp: 'KenD 9/15/2013 21:10'!
drawOn: aCanvas
	"A canvas is already set with a proper transformation from our coordinates to those of the Canvas target."
	aCanvas
		fillRectangle: (0@0 extent: extent)
		color: Color transparent
		borderWidth: borderWidth
		borderStyleSymbol: self frameSelector
		baseColorForBorder: borderColor! !

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

!FrameMorph class methodsFor: 'examples' stamp: 'KenD 9/15/2013 21:49'!
example1
"
	self example1.
"
	| fm |
	fm := FrameMorph new..
	"fm cycleBorderColor."
	fm frameSelector: #raised.
	fm borderWidth: 4.
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
