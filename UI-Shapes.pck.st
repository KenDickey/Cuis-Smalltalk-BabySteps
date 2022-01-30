'From Cuis 6.0 [latest update: #5053] on 30 January 2022 at 3:09:00 pm'!
'Description Bezier Curves et al'!
!provides: 'UI-Shapes' 1 6!
!requires: 'Morphic-MetaProperties' 1 106 nil!
!requires: 'VectorGraphics' 1 333 nil!
SystemOrganization addCategory: 'UI-Shapes'!


!classDefinition: #Bezier1Morph category: 'UI-Shapes'!
PlacedMorph subclass: #Bezier1Morph
	instanceVariableNames: 'lineColor lineWidth startPoint endPoint oneControlPoint'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UI-Shapes'!
!classDefinition: 'Bezier1Morph class' category: 'UI-Shapes'!
Bezier1Morph class
	instanceVariableNames: ''!

!classDefinition: #Bezier2Morph category: 'UI-Shapes'!
Bezier1Morph subclass: #Bezier2Morph
	instanceVariableNames: 'twoControlPoint'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UI-Shapes'!
!classDefinition: 'Bezier2Morph class' category: 'UI-Shapes'!
Bezier2Morph class
	instanceVariableNames: ''!


!Bezier1Morph commentStamp: '<historical>' prior: 0!
I present a Quadratic Bezier curve.

I have one control point.!

!Bezier2Morph commentStamp: '<historical>' prior: 0!
I present a Cubic Bezier curve.

I have two control points.!

!Bezier1Morph methodsFor: 'geometry testing' stamp: 'KenD 1/30/2022 13:01:45'!
yAxisPointsUp

	^true! !

!Bezier1Morph methodsFor: 'initialization' stamp: 'KenD 1/30/2022 13:29:44'!
initialize

	"Harmless Values"
	super initialize.
	self 
		lineWidth: 6;
		lineColor: Color green;
		startPoint: -20 @ -20;
		endPoint:     50 @ -20;
		oneControlPoint: 15 @ 200! !

!Bezier1Morph methodsFor: 'accessing' stamp: 'KenD 1/28/2022 13:29:45'!
endPoint

	^ endPoint! !

!Bezier1Morph methodsFor: 'accessing' stamp: 'KenD 1/28/2022 13:28:07'!
endPoint: aPoint

	endPoint := aPoint! !

!Bezier1Morph methodsFor: 'accessing' stamp: 'KenD 1/28/2022 13:30:25'!
lineColor 

	^ lineColor ! !

!Bezier1Morph methodsFor: 'accessing' stamp: 'KenD 1/28/2022 13:30:43'!
lineColor: aColor

	lineColor := aColor! !

!Bezier1Morph methodsFor: 'accessing' stamp: 'KenD 1/28/2022 13:31:02'!
lineWidth

	^ lineWidth! !

!Bezier1Morph methodsFor: 'accessing' stamp: 'KenD 1/28/2022 13:31:29'!
lineWidth: positiveNumber

	lineWidth := positiveNumber ! !

!Bezier1Morph methodsFor: 'accessing' stamp: 'KenD 1/28/2022 13:29:32'!
oneControlPoint

	^ oneControlPoint! !

!Bezier1Morph methodsFor: 'accessing' stamp: 'KenD 1/28/2022 13:29:15'!
oneControlPoint: aPoint

	oneControlPoint := aPoint! !

!Bezier1Morph methodsFor: 'accessing' stamp: 'KenD 1/28/2022 13:30:03'!
startPoint 

	^ startPoint ! !

!Bezier1Morph methodsFor: 'accessing' stamp: 'KenD 1/28/2022 13:27:58'!
startPoint: aPoint

	startPoint := aPoint! !

!Bezier1Morph methodsFor: 'drawing' stamp: 'KenD 1/30/2022 13:00:46'!
drawOn: aCanvas

	aCanvas strokeWidth: lineWidth color: lineColor do: [
		aCanvas 
			moveTo: startPoint;
			quadraticBezierTo: endPoint control: oneControlPoint 
	]! !

!Bezier1Morph methodsFor: 'control points' stamp: 'KenD 1/30/2022 15:07:29'!
addOptionalHandlesTo: aHalo box: box
	"Control point is relative to my center.
	 Translate relative to aHalo"
	
	| haloCtlPt |
	haloCtlPt := self controlPointOneInWorld 
				- aHalo morphPositionInWorld.

	(aHalo addControlHandle: haloCtlPt)
		mouseDownSelector: #startControlPoint:with: ;
		mouseMoveSelector: #doControlOne:with: .! !

!Bezier1Morph methodsFor: 'control points' stamp: 'KenD 1/30/2022 14:15:40'!
controlPointOneInWorld
	"Answer control point one in World coordinates.
	 Take into account #yAxisPointsUp."

	| ctrlY |
	ctrlY := (self yAxisPointsUp) 
				ifTrue: [oneControlPoint y negated] 
				ifFalse: [oneControlPoint y].
	^ (self externalize: 0@0)  "center"
		+ (oneControlPoint x @ ctrlY). "offset"! !

!Bezier1Morph class methodsFor: 'class initialization' stamp: 'KenD 1/28/2022 13:47:38'!
initialize
	
	(Smalltalk includesKey: #MetaProperty )
		ifTrue: [ self initializeMetaProperties ].
	! !

!Bezier1Morph class methodsFor: 'class initialization' stamp: 'KenD 1/28/2022 13:47:20'!
initializeMetaProperties
"
	Bezier1Morph initializeMetaProperties.
"
	| classDict propsDict |
	"Ensure named MetaProperties exist"
	MetaProperty initializeDictionaries.

	"Seed MetaProperties for known Morphs"
	propsDict := MetaProperty preDefinedPropsDict.
	
	classDict := MetaProperty metaPropsDictForClass: Bezier1Morph.
	classDict at: #startPoint put: (propsDict at: #acceptsPoint). 
	classDict at: #endPoint put: (propsDict at: #acceptsPoint). 
	classDict at: #oneControlPoint put: (propsDict at: #acceptsPoint). 
	classDict at: #lineWidth put: (propsDict at: #acceptsPositiveNumber). 
	classDict at: #lineColor put: (propsDict at: #acceptsColor). 


	! !

!Bezier2Morph methodsFor: 'drawing' stamp: 'KenD 1/30/2022 14:55:18'!
drawOn: aCanvas

	aCanvas strokeWidth: lineWidth color: lineColor do: [
		aCanvas 
			moveTo: startPoint;
			cubicBezierTo: endPoint 
				control1: oneControlPoint 
				control2: twoControlPoint 
	]! !

!Bezier2Morph methodsFor: 'initialization' stamp: 'KenD 1/30/2022 14:59:51'!
initialize

	super initialize.
	self 
		lineColor: Color yellow ;
		oneControlPoint: 228@75 ;
		twoControlPoint: 25 @ 160.! !

!Bezier2Morph methodsFor: 'accessing' stamp: 'KenD 1/30/2022 14:41:44'!
twoControlPoint

	^ twoControlPoint ! !

!Bezier2Morph methodsFor: 'accessing' stamp: 'KenD 1/30/2022 14:41:38'!
twoControlPoint: aPoint

	twoControlPoint := aPoint ! !

!Bezier2Morph methodsFor: 'control points' stamp: 'KenD 1/30/2022 15:07:09'!
addOptionalHandlesTo: aHalo box: box
	"Control point is relative to my center.
	 Translate relative to aHalo"
	
	| haloCtlPt |
	haloCtlPt := self controlPointTwoInWorld 
				- aHalo morphPositionInWorld.

	super addOptionalHandlesTo:  aHalo box: box.
	
	(aHalo addControlHandle: haloCtlPt)
		mouseDownSelector: #startControlPoint:with: ;
		mouseMoveSelector: #doControlTwo:with: .! !

!Bezier2Morph methodsFor: 'control points' stamp: 'KenD 1/30/2022 15:03:09'!
controlPointTwoInWorld
	"Answer control point one in World coordinates.
	 Take into account #yAxisPointsUp."

	| ctrlY |
	ctrlY := (self yAxisPointsUp) 
				ifTrue: [twoControlPoint y negated] 
				ifFalse: [twoControlPoint y].
				
	^ (self externalize: 0@0)  "center"
		+ (twoControlPoint x @ ctrlY). "offset"! !

!Bezier2Morph class methodsFor: 'class initialization' stamp: 'KenD 1/30/2022 14:55:53'!
initialize
	
	(Smalltalk includesKey: #MetaProperty )
		ifTrue: [ self initializeMetaProperties ].
	! !

!Bezier2Morph class methodsFor: 'class initialization' stamp: 'KenD 1/30/2022 14:57:22'!
initializeMetaProperties
"
	Bezier2Morph initializeMetaProperties.
"
	| classDict propsDict |
	"Ensure named MetaProperties exist"
	MetaProperty initializeDictionaries.

	"Seed MetaProperties for known Morphs"
	propsDict := MetaProperty preDefinedPropsDict.
	
	classDict := MetaProperty metaPropsDictForClass: Bezier2Morph. 
	"Note that MetaProperties are inherited.."
	classDict at: #twoControlPoint put: (propsDict at: #acceptsPoint).  


	! !

!HaloMorph methodsFor: '*ui-shapes' stamp: 'KenD 1/29/2022 16:40:25'!
addControlHandle: aPoint
	"Add a handle for the control point and return the handle."

	| handle  colorToUse form icon e |
	colorToUse _ Color green. "@@parameterize by theme@@"
	handle _ HaloHandleMorph new color: colorToUse.
	self addMorph: handle.
	e _ Preferences haloHandleSize asPoint.
	handle morphPosition: aPoint-(e//2) extent: e.
	form _ self class haloTargetIcon.
	(form extent = e) ifFalse: [ 
		form _ form  "Be as smooth as possible, these images are small."
				magnify: form boundingBox
				to: e
				smoothing: 2 
	].
	icon _ ImageMorph new
				image: form;
				color: colorToUse makeForegroundColor;
				lock.
	^handle 
		addMorphFront: icon position: `0@0`;
		mouseUpSelector: #endInteraction;
		setBalloonText: 'Shape control point';
		yourself
! !

!HaloMorph methodsFor: '*ui-shapes' stamp: 'KenD 1/30/2022 14:37:11'!
doControlOne: evt with: controlPointHandle
	"Enable Target Morph to follow control point one."

	| controlDelta controlPoint |
	evt hand obtainHalo: self.	
	
	controlDelta _ (evt eventPosition - target controlPointOneInWorld). 
	
	(self target yAxisPointsUp) 
	ifFalse: [
		controlPoint := self target oneControlPoint + controlDelta.
	]
	ifTrue: [
		controlPoint := self target oneControlPoint + 
			(controlDelta x @ controlDelta y negated).
	].
	self target oneControlPoint: controlPoint.
	"Track the hand"
	controlPointHandle 
		morphPositionInWorld: evt eventPosition 
					- (controlPointHandle morphExtent // 2).	
	self redrawNeeded.! !

!HaloMorph methodsFor: '*ui-shapes' stamp: 'KenD 1/30/2022 15:05:55'!
doControlTwo: evt with: controlPointHandle
	"Enable Target Morph to follow control point one."

	| controlDelta controlPoint |
	evt hand obtainHalo: self.	
	
	controlDelta _ (evt eventPosition - target controlPointTwoInWorld). 
	
	(self target yAxisPointsUp) 
	ifFalse: [
		controlPoint := self target twoControlPoint + controlDelta.
	]
	ifTrue: [
		controlPoint := self target twoControlPoint + 
			(controlDelta x @ controlDelta y negated).
	].
	self target twoControlPoint: controlPoint.
	"Track the hand"
	controlPointHandle 
		morphPositionInWorld: evt eventPosition 
					- (controlPointHandle morphExtent // 2).	
	self redrawNeeded.! !

!HaloMorph methodsFor: '*ui-shapes' stamp: 'KenD 1/30/2022 15:07:17'!
startControlPoint: evt with: controlPointHandle
	"Initialize control point target."

	"Make sure the event's hand correlates with the receiver"
	evt hand obtainHalo: self.	
	"remove all other handles"
	self removeAllHandlesBut: controlPointHandle.  

! !
Bezier1Morph initialize!
Bezier2Morph initialize!
