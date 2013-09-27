'From Cuis 4.2 of 25 July 2013 [latest update: #1832] on 26 September 2013 at 7:19:24.69431 pm'!
'Description I am a line from startPoint to endPoint as a Morph.'!
!provides: 'Morphic-LineMorph' 1 2!
!classDefinition: #LineMorph category: #'Morphic-LineMorph'!
RectangleLikeMorph subclass: #LineMorph
	instanceVariableNames: 'startPointSelector endPointSelector lineWidth'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-LineMorph'!
!classDefinition: 'LineMorph class' category: #'Morphic-LineMorph'!
LineMorph class
	instanceVariableNames: ''!


!LineMorph commentStamp: '<historical>' prior: 0!
I am a line from startPoint to endPoint!

!LineMorph methodsFor: 'accessing' stamp: 'KenD 9/26/2013 15:39'!
defaultColor

	^ Color transparent! !

!LineMorph methodsFor: 'drawing' stamp: 'KenD 9/26/2013 19:05'!
drawOn: aCanvas
	"Draw self in own coordinates"
	
	| rect |
	rect := self rect.
	aCanvas
		line: (rect perform: startPointSelector)
		to:  (rect perform: endPointSelector)
		width: lineWidth
		color: self color! !

!LineMorph methodsFor: 'accessing' stamp: 'KenD 9/26/2013 19:11'!
endPoint
	"Answer my endPoint in owner's coordinates"

	^ (self rect perform: endPointSelector) + (self morphPosition) truncated ! !

!LineMorph methodsFor: 'accessing' stamp: 'KenD 9/26/2013 16:25'!
endPoint: aPoint
	"aPoint is in owner coordinates.  Set my startPoint in own coordinates"
	(aPoint isKindOf: Point)
		ifFalse: [ Error signal: 'Not a Point: ', aPoint printString ].
		
	self setPointSelectorsFromStartPoint: self startPoint endPoint: aPoint! !

!LineMorph methodsFor: 'initialization' stamp: 'KenD 9/26/2013 15:52'!
initialize

	super initialize.
	startPointSelector := #topLeft.
	endPointSelector   := #bottomRight.
	lineWidth := 6.
	self color: Color cyan.
	! !

!LineMorph methodsFor: 'geometry testing' stamp: 'KenD 9/26/2013 15:39'!
isOrthoRectangularMorph

	^ false! !

!LineMorph methodsFor: 'accessing' stamp: 'KenD 9/26/2013 18:55'!
length

	^ self startPoint dist: self endPoint! !

!LineMorph methodsFor: 'accessing' stamp: 'KenD 9/26/2013 16:23'!
lineWidth

	^ lineWidth ! !

!LineMorph methodsFor: 'accessing' stamp: 'KenD 9/26/2013 16:22'!
lineWidth: newWidthInPixels

	lineWidth := newWidthInPixels.
	self redrawNeeded ! !

!LineMorph methodsFor: 'private' stamp: 'KenD 9/26/2013 19:19'!
minimumExtent

	^ 0@0! !

!LineMorph methodsFor: 'geometry' stamp: 'KenD 9/26/2013 18:48'!
morphExtent
	"Answer an extent which includes me, taking into account my lineWidth"

	^ super morphExtent + lineWidth + lineWidth! !

!LineMorph methodsFor: 'geometry' stamp: 'KenD 9/26/2013 19:17'!
morphExtent: aPoint 
	"Set the receiver's extent to value provided. Honor my minimumExtent."

	super morphExtent: (aPoint max: self minimumExtent)! !

!LineMorph methodsFor: 'private' stamp: 'KenD 9/26/2013 16:29'!
rect

	^ Rectangle origin: 0@0 corner: super morphExtent! !

!LineMorph methodsFor: 'private' stamp: 'KenD 9/26/2013 18:50'!
setPointSelectorsFromStartPoint: startPoint endPoint: endPoint

	| origin corner rect |
	origin := ((startPoint x) min: (endPoint x)) @ ((startPoint y) min: (endPoint y)).
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
	self morphPositionInWorld: rect origin.
! !

!LineMorph methodsFor: 'accessing' stamp: 'KenD 9/26/2013 19:11'!
startPoint
	"Answer my startPoint in owner's coordinates"
	
	^ (self rect perform: startPointSelector) + (self morphPosition) truncated! !

!LineMorph methodsFor: 'accessing' stamp: 'KenD 9/26/2013 16:25'!
startPoint: aPoint
	"aPoint is in owner coordinates.  Set my startPoint in own coordinates"
	(aPoint isKindOf: Point)
		ifFalse: [ Error signal: 'Not a Point: ', aPoint printString ].
		
	self setPointSelectorsFromStartPoint: aPoint endPoint: self endPoint! !

!LineMorph methodsFor: 'accessing' stamp: 'KenD 9/26/2013 16:48'!
startPoint: newStart endPoint: newEnd
	"Reset my start and end points (Nota Bene: points in owner coordinates)"

	(newStart isKindOf: Point)
		ifFalse: [ Error signal: 'Not a Point: ', newStart printString ].
	(newEnd isKindOf: Point)
		ifFalse: [ Error signal: 'Not a Point: ', newEnd printString ].
		
	self setPointSelectorsFromStartPoint: newStart endPoint: newEnd! !

!LineMorph methodsFor: 'initialize-release' stamp: 'KenD 9/26/2013 16:21'!
startPoint: startPoint endPoint: endPoint width: numPixels color: aColor

	lineWidth := numPixels.
	self color: aColor.
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
