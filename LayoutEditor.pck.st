'From Cuis 4.2 of 25 July 2013 [latest update: #1851] on 12 October 2013 at 9:37:33.582000095 pm'!
'Description Please enter a description for this package'!
!provides: 'LayoutEditor' 1 8!
!requires: 'Morphic-Widget-Weaver' nil nil nil!
!classDefinition: #FramedLayoutMorph category: #LayoutEditor!
FrameMorph subclass: #FramedLayoutMorph
	instanceVariableNames: 'morph fixedWidth fixedHeight minorDirectionPadding proportionalWidth proportionalHeight'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LayoutEditor'!
!classDefinition: 'FramedLayoutMorph class' category: #LayoutEditor!
FramedLayoutMorph class
	instanceVariableNames: ''!

!classDefinition: #FramedLayoutSpec category: #LayoutEditor!
FrameMorph subclass: #FramedLayoutSpec
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'LayoutEditor'!
!classDefinition: 'FramedLayoutSpec class' category: #LayoutEditor!
FramedLayoutSpec class
	instanceVariableNames: ''!


!FramedLayoutMorph commentStamp: '<historical>' prior: 0!
My instances are used in graphical layout.

[Traits would be handy here.  I pretend to be a LayoutSpec.]!

!FramedLayoutSpec commentStamp: '<historical>' prior: 0!
My instances are used in graphical layout.

Note that unlike LayoutSpec, I am really a Morph!!

Rather than duplicate LayoutSpec as a Morph, Just use my LayoutSpec.  [Simple is best]!

!FramedLayoutMorph methodsFor: 'converting' stamp: 'KenD 10/12/2013 17:16'!
asLayoutMorph
	"Answer a new LayoutMorph without my Frame properties"
	
	| aLayoutMorph |
	(direction = #vertical)
		ifTrue: [ aLayoutMorph := LayoutMorph newColumn ]
		ifFalse: [ aLayoutMorph := LayoutMorph newRow ].
	aLayoutMorph 
		padding: padding;
		separation: separation.
		
	^ aLayoutMorph 
		
		! !

!FramedLayoutMorph methodsFor: 'accessing' stamp: 'KenD 10/12/2013 17:18'!
borderColor

	^ borderColor! !

!FramedLayoutMorph methodsFor: 'accessing' stamp: 'KenD 10/12/2013 17:19'!
borderColor: aColor

	(borderColor = aColor)
		ifFalse: [
			borderColor _ aColor.
			self redrawNeeded
		]! !

!FramedLayoutMorph methodsFor: 'accessing' stamp: 'KenD 10/12/2013 17:19'!
borderWidth: anInteger

	(borderWidth = anInteger)
		 ifFalse: [
			borderColor ifNil: [ borderColor _ Color black ].
			borderWidth _ anInteger max: 0.
			self redrawNeeded 
		]! !

!FramedLayoutMorph methodsFor: 'geometry' stamp: 'KenD 10/12/2013 17:23'!
clippingRect
	"Answer a rectangle in own coordinates for clipping"

	^ super clippingRect insetBy: borderWidth! !

!FramedLayoutMorph methodsFor: 'initialization' stamp: 'KenD 10/12/2013 17:24'!
defaultBorderColor
	"answer the default border color/fill style for the receiver"
	
	^ Color orange! !

!FramedLayoutMorph methodsFor: 'initialization' stamp: 'KenD 10/12/2013 17:24'!
defaultBorderWidth
	"answer the default border width for the receiver"
	
	^ 2! !

!FramedLayoutMorph methodsFor: 'accessing' stamp: 'KenD 10/12/2013 17:28'!
defaultColor

     ^ Color transparent! !

!FramedLayoutMorph methodsFor: 'initialization' stamp: 'KenD 10/12/2013 16:36'!
defaultExtent
	"answer the default extent width for the receiver"
	
	^ 20@30! !

!FramedLayoutMorph methodsFor: 'initialization' stamp: 'KenD 10/12/2013 17:25'!
defaultFrameSelector
	"answer the default frame selector for the receiver"
	
	^ #raised! !

!FramedLayoutMorph methodsFor: 'drawing' stamp: 'KenD 10/12/2013 17:29'!
drawOn: aCanvas
	"A canvas is already set with a proper transformation from our coordinates to those of the Canvas target."

	aCanvas
		frameRectangle: (0@0 extent: extent)
		color: borderColor
		borderWidth: borderWidth
		borderStyleSymbol: frameSelector
! !

!FramedLayoutMorph methodsFor: 'accessing' stamp: 'KenD 10/12/2013 17:28'!
frameSelector

	^ frameSelector! !

!FramedLayoutMorph methodsFor: 'accessing' stamp: 'KenD 10/12/2013 17:28'!
frameSelector: aSymbol

	(#(simple inset raised) includes: aSymbol) ifFalse: [
		 Error signal: aSymbol printString, ' must be #raised, #inset, or #simple'
	].

	frameSelector := aSymbol! !

!FramedLayoutMorph methodsFor: 'initialization' stamp: 'KenD 10/12/2013 16:50'!
initialize

	super initialize.
	"Just some reasonable defaults, use all available space"
	minorDirectionPadding _ 0.5.
	fixedWidth _ 0.
	fixedHeight _ 0.
	proportionalWidth _ 1.0.
	proportionalHeight _ 1.0! !

!FramedLayoutMorph methodsFor: 'geometry' stamp: 'KenD 10/12/2013 17:22'!
layoutBounds
	"Return the bounds for laying out children of the receiver"

	^ super layoutBounds insetBy: borderWidth! !

!FramedLayoutMorph methodsFor: 'geometry testing' stamp: 'KenD 10/12/2013 17:30'!
morphContainsPoint: aPoint
	"Even ''empty'', I intercept mouse clicks"
	
	^ (Rectangle origin: 0@0 corner: self morphExtent) containsPoint: aPoint! !

!FramedLayoutSpec methodsFor: 'converting' stamp: 'KenD 10/12/2013 17:12'!
asLayoutSpec
	"Answer my LayoutSpec"
	
	^ self layoutSpec copy! !

!FramedLayoutSpec methodsFor: 'accessing' stamp: 'KenD 10/12/2013 17:33'!
borderColor

	^ borderColor! !

!FramedLayoutSpec methodsFor: 'accessing' stamp: 'KenD 10/12/2013 17:33'!
borderColor: aColor

	(borderColor = aColor)
		ifFalse: [
			borderColor _ aColor.
			self redrawNeeded
		]! !

!FramedLayoutSpec methodsFor: 'accessing' stamp: 'KenD 10/12/2013 17:33'!
borderWidth: anInteger

	(borderWidth = anInteger)
		 ifFalse: [
			borderColor ifNil: [ borderColor _ Color black ].
			borderWidth _ anInteger max: 0.
			self redrawNeeded 
		]! !

!FramedLayoutSpec methodsFor: 'initialization' stamp: 'KenD 10/12/2013 16:26'!
defaultBorderColor
	"answer the default border color/fill style for the receiver"
	
	^ Color orange! !

!FramedLayoutSpec methodsFor: 'initialization' stamp: 'KenD 10/12/2013 16:26'!
defaultBorderWidth
	"answer the default border width for the receiver"
	
	^ 2! !

!FramedLayoutSpec methodsFor: 'initialization' stamp: 'KenD 10/12/2013 17:14'!
defaultColor

     ^ Color transparent! !

!FramedLayoutSpec methodsFor: 'initialization' stamp: 'KenD 10/12/2013 16:26'!
defaultFrameSelector
	"answer the default frame selector for the receiver"
	
	^ #raised! !

!FramedLayoutSpec methodsFor: 'accessing' stamp: 'KenD 10/12/2013 17:34'!
frameSelector

	^ frameSelector! !

!FramedLayoutSpec methodsFor: 'accessing' stamp: 'KenD 10/12/2013 17:34'!
frameSelector: aSymbol

	(#(simple inset raised) includes: aSymbol) ifFalse: [
		 Error signal: aSymbol printString, ' must be #raised, #inset, or #simple'
	].

	frameSelector := aSymbol! !

!FramedLayoutSpec methodsFor: 'initialization' stamp: 'KenD 10/12/2013 16:28'!
initialize
	"initialize the state of the receiver"
	
	| myLayoutSpec |
	super initialize.
	"initialize the receiver state related to border"
	borderColor 	:= self defaultBorderColor.
	borderWidth 	:= self defaultBorderWidth.
	frameSelector 	:= self defaultFrameSelector.
	"Add a LayoutSpec"
	myLayoutSpec   := LayoutSpec new..
	myLayoutSpec   morph: self.
	self layoutSpec: myLayoutSpec.
! !
