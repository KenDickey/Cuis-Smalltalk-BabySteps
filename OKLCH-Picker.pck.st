'From Cuis7.5 [latest update: #7776] on 20 December 2025 at 4:17:24 pm'!
'Description Color Picker using OKCLH.
https://okclh.com'!
!provides: 'OKLCH-Picker' 1 9!
!requires: 'Cuis-Base' 75 7758 nil!
!requires: 'UI-DragAndDrop' 1 4 nil!
!requires: 'UI-Entry' 1 57 nil!
!requires: 'UI-Click-Select' 1 97 nil!
!requires: 'UI-Color-Panel' 1 34 nil!
!requires: 'UI-Core' 1 25 nil!
!requires: 'UI-Panel' 1 138 nil!
SystemOrganization addCategory: #'OKLCH-Picker'!


!classDefinition: #ColorRingMorph category: #'OKLCH-Picker'!
ImageMorph subclass: #ColorRingMorph
	instanceVariableNames: 'radius center'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'OKLCH-Picker'!
!classDefinition: 'ColorRingMorph class' category: #'OKLCH-Picker'!
ColorRingMorph class
	instanceVariableNames: ''!

!classDefinition: #OKLCHCircleMorph category: #'OKLCH-Picker'!
ImageMorph subclass: #OKLCHCircleMorph
	instanceVariableNames: 'centerPoint lightness chroma hue colorRing hueArm chromaBox'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'OKLCH-Picker'!
!classDefinition: 'OKLCHCircleMorph class' category: #'OKLCH-Picker'!
OKLCHCircleMorph class
	instanceVariableNames: 'center'!

!classDefinition: #HueArmMorph category: #'OKLCH-Picker'!
FrameMorph subclass: #HueArmMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'OKLCH-Picker'!
!classDefinition: 'HueArmMorph class' category: #'OKLCH-Picker'!
HueArmMorph class
	instanceVariableNames: ''!


!OKLCHCircleMorph commentStamp: '<historical>' prior: 0!
OKLCH Circle for Picker.

For a given lightness value, colorwheel is Hue by degree (0..360) 
and radial distabce/magnitude by chroma/saturation (gray..maxSat).
Color is absent where not supported by OKLCH.

!

!ColorRingMorph methodsFor: 'drawing' stamp: 'KenD 20/Dec/2025 14:07:18'!
dotAt: circlePoint color: myColor
	"Draw a black dot relative to center at circlePoint"
	| myForm morphPoint |
	morphPoint := self circle2morph: circlePoint.
	myForm := self imageForm.
	-4 to: 4 do: [ :deltaX |
		-4 to: 4 do: [ :deltaY |
			myForm colorAt: morphPoint + (deltaX@deltaY) put: myColor.
		]
	].
	myForm colorAt: morphPoint + (5@1) put: myColor.
	myForm colorAt: morphPoint + (5@0) put: myColor.
	myForm colorAt: morphPoint + (5@-1) put: myColor.
	myForm colorAt: morphPoint + (1@5) put: myColor.
	myForm colorAt: morphPoint + (0@5) put: myColor.
	myForm colorAt: morphPoint + (-1@5) put: myColor.
	myForm colorAt: morphPoint + (-5@1) put: myColor.
	myForm colorAt: morphPoint + (-5@0) put: myColor.
	myForm colorAt: morphPoint + (-5@-1) put: myColor.
	myForm colorAt: morphPoint + (1@-5) put: myColor.
	myForm colorAt: morphPoint + (0@-5) put: myColor.
	myForm colorAt: morphPoint + (-1@-5) put: myColor.
	image := myForm.  
	self redrawNeeded.! !

!ColorRingMorph methodsFor: 'drawing' stamp: 'KenD 20/Dec/2025 14:50:06'!
drawDots
	"Draw a circle of color-wheel dots at 10 degree increments"
	| innerRadius |
	innerRadius := radius - 20.
	0 to: 350 by: 10 do: [ :degrees |
		self dotAt: (Point r: innerRadius degrees: degrees) roundedHAFZ 
			color: (Color h: degrees s: 0.69 v: 0.82).
	]. ! !

!ColorRingMorph methodsFor: 'geometry' stamp: 'KenD 20/Dec/2025 13:17:23'!
circle2morph: circlePoint
	"Given a point relative to centerPoint as (0,0), return the Morph's point relative to it's origin"
	
	^ (circlePoint x + center x) @ (circlePoint y - center y) negated.! !

!ColorRingMorph methodsFor: 'initialization' stamp: 'KenD 20/Dec/2025 13:34:16'!
radius: r

	radius := r.
	center := (r @ r).
	self color: Color transparent;
		drawDots;
		redrawNeeded;
		yourself
	! !

!ColorRingMorph class methodsFor: 'instance creation' stamp: 'KenD 20/Dec/2025 13:35:06'!
radius: r

	| sideLength |
	sideLength := r * 2 + 1. "Want a center pixel"
	
	^(self newWith: (Form extent: (sideLength@sideLength) depth: 32)) radius: r.! !

!OKLCHCircleMorph methodsFor: 'geometry' stamp: 'KenD 19/Dec/2025 13:36:28'!
circle2morph: circlePoint
	"Given a point relative to centerPoint as (0,0), return the Morph's point relative to it's origin"
	| answer |
	answer := (circlePoint x + centerPoint x) @ (circlePoint y - centerPoint y) negated.
	"Transcript log: 'Circle Pt: ', circlePoint printString, ' -> Morph Pt : ', answer printString."
	^ answer
! !

!OKLCHCircleMorph methodsFor: 'geometry' stamp: 'KenD 19/Dec/2025 13:36:38'!
morph2circle: morphPoint
	"Given a point relative to centerPoint as (0,0), return the Morph's point relative to it's origin"
	| answer |
	answer := (morphPoint x - centerPoint x) @ (morphPoint y - centerPoint y) negated.
	"Transcript log: 'Morph Pt: ', morphPoint printString, ' -> Circle Pt : ', answer printString."
	^answer! !

!OKLCHCircleMorph methodsFor: 'initialization' stamp: 'KenD 20/Dec/2025 15:19:39'!
sideLength: numPixels l: l c: c h: h

	| center colorRingOffset |
	super initialize.
	color := Color blue.
	center := numPixels // 2.
	centerPoint := (center @ center).
	lightness := l.
	chroma := c.
	hue := h.
	
	colorRingOffset := 26. 
	colorRing := ColorRingMorph radius: center + colorRingOffset.
	self beColorful.
	self addMorphFront: colorRing.
	"Want colorRIng Center to be our Center"
	colorRing morphPosition: (colorRingOffset @ colorRingOffset) negated.
	hueArm := HueArmMorph new.
	hueArm borderStyle: #simple;
			borderWidth: 4;
			borderColor: Color black;
			morphExtent: 18@(center + colorRingOffset).
	self addMorphFront: hueArm.
	"Want hueArm to pivot about cernerPoint "
	hueArm morphPosition: (centerPoint x - 9)@(-16).
	

		! !

!OKLCHCircleMorph methodsFor: 'drawing' stamp: 'KenD 20/Dec/2025 13:11:10'!
beColorful
 	"Map between Morpj (x,y) from (0,0) 
	 to Circle with centerPoint."
	| morphPoint circlePoint pixelColor myForm radius scale |
	myForm := self imageForm.
	radius :=  centerPoint x.
	scale := 4 * radius.
	0 to: (radius * 2) - 1 do: [ :theY |
		0 to: (radius * 2) - 1 do: [ :theX |
			morphPoint := theX @ theY.
			circlePoint := (self morph2circle: morphPoint) roundedHAFZ.
			"Transcript log: 'm: ',  morphPoint printString,' c: ', circlePoint printString."
			"Transcript log: 'circlePoint magnitude / radius: ', (circlePoint magnitude / (3 * radius)) printString."
			(circlePoint magnitude < radius) ifTrue: [
				pixelColor := Color okOrNilL: lightness 
									c: (circlePoint magnitude) / scale
									h: circlePoint degrees.
				myForm colorAt: morphPoint
						put: (pixelColor ifNotNil: [pixelColor] ifNil: [self class colorAbsenceColor ])
			].
			(circlePoint magnitude roundedHAFZ = radius)
				ifTrue: [ myForm colorAt: morphPoint put: Color purple ].
		]
	].
	image := myForm.
	self dotAt: 0@0.  "Circle center"
	
	^self
  ! !

!OKLCHCircleMorph methodsFor: 'drawing' stamp: 'KenD 18/Dec/2025 20:00:10'!
dotAt: circlePoint
	"Draw a black dot relative to center at circlePoint"
	| myForm morphPoint |
	morphPoint := (self circle2morph: circlePoint) roundedHAFZ.
	myForm := self imageForm.
	-2 to: 2 do: [ :deltaX |
		-2 to: 2 do: [ :deltaY |
			myForm colorAt: morphPoint + (deltaX@deltaY) put: Color black.
		]
	].
	myForm colorAt: morphPoint + (3@0) put: Color black.
	myForm colorAt: morphPoint + (0@3) put: Color black.
	myForm colorAt: morphPoint + (-3@0) put: Color black.
	myForm colorAt: morphPoint + (0@-3) put: Color black.
	image := myForm.! !

!OKLCHCircleMorph methodsFor: 'geometry testing' stamp: 'KenD 20/Dec/2025 13:45:01'!
submorphsMightProtrude

	^true "ColorRingMorph"! !

!OKLCHCircleMorph class methodsFor: 'instance creation' stamp: 'KenD 17/Dec/2025 18:35:49'!
sideLength: numPixels l: lightness c: chroma h: hue

	| sideLength |
	(numPixels odd)
		ifTrue: [ sideLength := numPixels ]
		ifFalse: [ sideLength := numPixels + 1 ].
	^(self newWith: (Form extent: (sideLength@sideLength) depth: 32)) 
		sideLength: sideLength 
		l: lightness 
		c: chroma 
		h: hue
! !

!OKLCHCircleMorph class methodsFor: 'accessing' stamp: 'KenD 18/Dec/2025 12:22:39'!
colorAbsenceColor

	"Answer this when no OKLCH color is present"
	^Color cyan! !

!HueArmMorph methodsFor: 'geometry' stamp: 'KenD 20/Dec/2025 16:16:47'!
rotateToDegrees: degrees

	"Like rotateBy: but to absolute degrees"
	
	| radians myRotation |
	radians := (degrees - 90) degreesToRadians.
	myRotation := location degrees degreesToRadians.
	self rotateBy: myRotation negated.
	self rotateBy: radians.
	self redrawNeeded.! !

!HueArmMorph methodsFor: 'geometry' stamp: 'KenD 20/Dec/2025 15:27:23'!
rotationCenter

	^(self morphExtent x // 2) @ (self morphExtent y - (self morphExtent x // 2) )! !
