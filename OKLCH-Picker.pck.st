'From Cuis7.5 [latest update: #7776] on 19 December 2025 at 4:56:46 pm'!
'Description Color Picker using OKCLH.
https://okclh.com'!
!provides: 'OKLCH-Picker' 1 6!
!requires: 'Cuis-Base' 75 7758 nil!
SystemOrganization addCategory: #'OKLCH-Picker'!


!classDefinition: #OKLCHCircle category: #'OKLCH-Picker'!
ImageMorph subclass: #OKLCHCircle
	instanceVariableNames: 'centerPoint lightness chroma hue'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'OKLCH-Picker'!
!classDefinition: 'OKLCHCircle class' category: #'OKLCH-Picker'!
OKLCHCircle class
	instanceVariableNames: 'center'!


!OKLCHCircle commentStamp: '<historical>' prior: 0!
OKLCH Circle for Picker.

For a given lightness value, colorwheel is Hue by degree (0..360) 
and radial distabce/magnitude by chroma/saturation (gray..maxSat).
Color is absent where not supported by OKLCH.

!

!OKLCHCircle methodsFor: 'geometry' stamp: 'KenD 19/Dec/2025 13:36:28'!
circle2morph: circlePoint
	"Given a point relative to centerPoint as (0,0), return the Morph's point relative to it's origin"
	| answer |
	answer := (circlePoint x + centerPoint x) @ (circlePoint y - centerPoint y) negated.
	"Transcript log: 'Circle Pt: ', circlePoint printString, ' -> Morph Pt : ', answer printString."
	^ answer
! !

!OKLCHCircle methodsFor: 'geometry' stamp: 'KenD 19/Dec/2025 13:36:38'!
morph2circle: morphPoint
	"Given a point relative to centerPoint as (0,0), return the Morph's point relative to it's origin"
	| answer |
	answer := (morphPoint x - centerPoint x) @ (morphPoint y - centerPoint y) negated.
	"Transcript log: 'Morph Pt: ', morphPoint printString, ' -> Circle Pt : ', answer printString."
	^answer! !

!OKLCHCircle methodsFor: 'initialization' stamp: 'KenD 17/Dec/2025 18:37:53'!
sideLength: numPixels l: l c: c h: h

	| center |
	super initialize.
	color := Color blue.
	center := numPixels // 2.
	centerPoint := (center @ center).
	lightness := l.
	chroma := c.
	hue := h.
	self beColorful
		! !

!OKLCHCircle methodsFor: 'drawing' stamp: 'KenD 19/Dec/2025 13:15:09'!
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
	self dotAt: (Point r: chroma * radius degrees: hue). "FIXME: Want circleAt"
	
	^self
  ! !

!OKLCHCircle methodsFor: 'drawing' stamp: 'KenD 18/Dec/2025 20:00:10'!
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

!OKLCHCircle class methodsFor: 'instance creation' stamp: 'KenD 17/Dec/2025 18:35:49'!
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

!OKLCHCircle class methodsFor: 'accessing' stamp: 'KenD 18/Dec/2025 12:22:39'!
colorAbsenceColor

	"Answer this when no OKLCH color is present"
	^Color cyan! !
