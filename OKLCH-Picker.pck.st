'From Cuis7.7 [latest update: #7780] on 29 December 2025 at 3:37:57 pm'!
'Description Color Picker using OKCLH.
https://okclh.com'!
!provides: 'OKLCH-Picker' 1 35!
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
	instanceVariableNames: 'centerPoint colorRing hueArm chromaFrame colorDrawingScale'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'OKLCH-Picker'!
!classDefinition: 'OKLCHCircleMorph class' category: #'OKLCH-Picker'!
OKLCHCircleMorph class
	instanceVariableNames: 'center'!

!classDefinition: #SimpleEntryButton category: #'OKLCH-Picker'!
ImageMorph subclass: #SimpleEntryButton
	instanceVariableNames: 'entryMorph myDelta'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'OKLCH-Picker'!
!classDefinition: 'SimpleEntryButton class' category: #'OKLCH-Picker'!
SimpleEntryButton class
	instanceVariableNames: ''!

!classDefinition: #OKLCHEditPanel category: #'OKLCH-Picker'!
DialogPanel subclass: #OKLCHEditPanel
	instanceVariableNames: 'circleMorph colorSwatch alphaSwatch lightnessSlider rgbEntry lEntry cEntry hEntry alphaEntry'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'OKLCH-Picker'!
!classDefinition: 'OKLCHEditPanel class' category: #'OKLCH-Picker'!
OKLCHEditPanel class
	instanceVariableNames: ''!

!classDefinition: #HueArmMorph category: #'OKLCH-Picker'!
FrameMorph subclass: #HueArmMorph
	instanceVariableNames: 'model'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'OKLCH-Picker'!
!classDefinition: 'HueArmMorph class' category: #'OKLCH-Picker'!
HueArmMorph class
	instanceVariableNames: ''!


!OKLCHCircleMorph commentStamp: '<historical>' prior: 0!
OKLCH Circle for Picker.

Cylindrical model: ligtness slice over degreees=hue, radius=chroma.

For a given lightness value, colorwheel is Hue by degree (0..360) 
and radial distabce/magnitude by chroma/saturation (gray..maxSat).
Color is absent where not supported by OKLCH.

!

!SimpleEntryButton commentStamp: '<historical>' prior: 0!
I am an excessively dumb button which adds a positive or negative delta 
to my entryMorph, which is a SimpleNumberEntryMorph!

!OKLCHEditPanel commentStamp: '<historical>' prior: 0!
OK-LCH Color Editor.

https://en.wikipedia.org/wiki/Oklab_color_space
Color Picker [https://oklch.com]
Color Palette goal [https://harmonizer.evilmartians.com]
Why [https://evilmartians.com/chronicles/oklch-in-css-why-quit-rgb-hsl]
!

!ColorRingMorph methodsFor: 'drawing' stamp: 'KenD 21/Dec/2025 09:37:01'!
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
	-1 to: 1 do: [ :pos |
		myForm colorAt: morphPoint + (5@pos) put: myColor.
		myForm colorAt: morphPoint + (pos@5) put: myColor.
		myForm colorAt: morphPoint + (-5@pos) put: myColor.
		myForm colorAt: morphPoint + (pos@-5) put: myColor.
	].
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

!ColorRingMorph class methodsFor: 'instance creation' stamp: 'KenD 23/Dec/2025 09:04:28'!
initializedInstance
"
	self initializedInstance openInWorld.
"
 	^ self radius: 120! !

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

!OKLCHCircleMorph methodsFor: 'geometry' stamp: 'KenD 21/Dec/2025 13:46:19'!
colorRingOffset
	"Answer offset to set colorRing beyond our radius"
	| radius |
	radius := centerPoint x.
	^ radius // 5. ! !

!OKLCHCircleMorph methodsFor: 'geometry' stamp: 'KenD 21/Dec/2025 13:35:56'!
hueArmOffset

	"Answer point to add to centerPoint for hueArm"
	| radius offset  |
	radius := centerPoint x.
	offset := radius // 20. 
	^(offset@offset) negated "Up and to left"! !

!OKLCHCircleMorph methodsFor: 'geometry' stamp: 'KenD 19/Dec/2025 13:36:38'!
morph2circle: morphPoint
	"Given a point relative to centerPoint as (0,0), return the Morph's point relative to it's origin"
	| answer |
	answer := (morphPoint x - centerPoint x) @ (morphPoint y - centerPoint y) negated.
	"Transcript log: 'Morph Pt: ', morphPoint printString, ' -> Circle Pt : ', answer printString."
	^answer! !

!OKLCHCircleMorph methodsFor: 'geometry' stamp: 'KenD 21/Dec/2025 15:03:35'!
radius

	^ centerPoint x "Same as centerPoint y"! !

!OKLCHCircleMorph methodsFor: 'accessing' stamp: 'KenD 27/Dec/2025 15:26:38'!
chromaFrame

	^chromaFrame! !

!OKLCHCircleMorph methodsFor: 'accessing' stamp: 'KenD 27/Dec/2025 15:27:00'!
chromaFrame: aFraneMorph

	chromaFrame := aFraneMorph! !

!OKLCHCircleMorph methodsFor: 'accessing' stamp: 'KenD 26/Dec/2025 11:16:53'!
colorAbsenceColor

	"Answer this when no OKLCH color is present"
	^Color cyan lighter! !

!OKLCHCircleMorph methodsFor: 'accessing' stamp: 'KenD 21/Dec/2025 15:11:55'!
colorDrawingScale

	^colorDrawingScale! !

!OKLCHCircleMorph methodsFor: 'accessing' stamp: 'KenD 25/Dec/2025 09:46:08'!
colorRing

	^colorRing! !

!OKLCHCircleMorph methodsFor: 'accessing' stamp: 'KenD 27/Dec/2025 13:31:52'!
hueArm

	^hueArm! !

!OKLCHCircleMorph methodsFor: 'initialization' stamp: 'KenD 29/Dec/2025 15:16:26'!
addColorRing

	| radius colorRingOffset |
	radius := centerPoint x.
	colorRingOffset := (radius // 5) + 4. 
	colorRing := ColorRingMorph radius: radius + colorRingOffset.
	self addMorphFront: colorRing.
	"Make colorRIng Center to be our Center"
	colorRing morphPosition: (colorRingOffset @ colorRingOffset) negated.! !

!OKLCHCircleMorph methodsFor: 'initialization' stamp: 'KenD 27/Dec/2025 19:04:57'!
addCromaFrame: chroma0To1

	|  side chromaFrameCenter |
	chromaFrame := FrameMorph new.
	side := self radius // 5.
	chromaFrame borderStyle: #simple;
			borderWidth: 3;
			borderColor: Color white;
			morphExtent: (2 * hueArm rotationCenter x negated @ side).
	chromaFrameCenter := chromaFrame morphExtent / 2.
	hueArm addMorphFront: chromaFrame.
	"Center on Chroma.  Cap Chroma to radius."
	chromaFrame morphPosition: (((colorDrawingScale * chroma0To1) - (chromaFrameCenter x))
									 min: self radius)
								@ ((chromaFrameCenter y  negated) + (hueArm morphExtent y // 2)).
	chromaFrame setProperty: #handlesMouseDown: 
				  toValue: [ :igniredEvent | ^true].
	chromaFrame setProperty: #mouseMove:localPosition: 
				  toValue: [ :mouseEvent :localPosition |
					mouseEvent anyButtonPressed ifTrue: [ | model newX |
						model := chromaFrame valueOfProperty: #model.
						newX := (chromaFrame morphPosition x + localPosition x) 
								min: (model maxOKChroma * colorDrawingScale) - (chromaFrameCenter x).
						chromaFrame morphPosition: (newX @  chromaFrame morphPosition y).
						model setOKChroma: (chromaFrame morphPosition x 
											+ (chromaFrameCenter x)
											 / colorDrawingScale).
						self newChromaAt: model color oklchChroma 
					].
				  ].! !

!OKLCHCircleMorph methodsFor: 'initialization' stamp: 'KenD 26/Dec/2025 11:23:20'!
addHueArm: hueInDegrees

	"My Hue arm is like a clock arm, rotated to show the hue in degrees."
	| ringOffset  |
	ringOffset := self colorRingOffset.
	hueArm := HueArmMorph new.
	hueArm borderStyle: #simple;
			borderWidth: 3;
			borderColor: Color black;
			morphExtent: (self radius + ringOffset) @ (ringOffset // 2) .
	self addMorphFront: hueArm.
	"Want hueArm to pivot about cernerPoint "
	hueArm morphPosition: centerPoint + self hueArmOffset;
			rotateToDegrees: hueInDegrees;
			yourself.
	! !

!OKLCHCircleMorph methodsFor: 'initialization' stamp: 'KenD 25/Dec/2025 15:18:36'!
sideLength: numPixels l: llightness0to1 c: chroma0to1 h: hueIndegrees

	| center  |
	super initialize.
	color := Color transparent.
	center := numPixels // 2.
	centerPoint := (center @ center).
	colorDrawingScale := 3 * center.
	
	self beColorful: llightness0to1;
		addColorRing;
		addHueArm: hueIndegrees;
		addCromaFrame: chroma0to1;
		yourself
	

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

!OKLCHCircleMorph methodsFor: 'color updating' stamp: 'KenD 26/Dec/2025 11:17:08'!
beColorful: lightness0To1
 	"Chroma and Hue are constant for a given lightness.
	Map between Morpj (x,y) from (0,0) to Circle with centerPoint."
	| morphPoint circlePoint pixelColor myForm myRadius |
	myForm := self imageForm.
	myRadius :=  self radius.
	0 to: (myRadius * 2) - 1 do: [ :theY |
		0 to: (myRadius * 2) - 1 do: [ :theX |
			morphPoint := theX @ theY.
			circlePoint := (self morph2circle: morphPoint) roundedHAFZ.
			(circlePoint magnitude < myRadius) ifTrue: [
				pixelColor := Color okOrNilL: lightness0To1
								    c: (circlePoint magnitude) / colorDrawingScale 
								    h: circlePoint degrees.
				myForm colorAt: morphPoint
						put: (pixelColor ifNotNil: [pixelColor] ifNil: [self colorAbsenceColor ])
				]
				ifFalse: [myForm colorAt: morphPoint put: Color transparent].
			
			(circlePoint magnitude roundedHAFZ = myRadius)
				ifTrue: [ myForm colorAt: morphPoint put: Color purple ].
		]
	].
	image := myForm.
	self dotAt: 0@0.  "Circle center"
	
	^self
  ! !

!OKLCHCircleMorph methodsFor: 'color updating' stamp: 'KenD 23/Dec/2025 13:27:02'!
newChromaAt: chroma0To1

	|  chromaFrameCenter |
	chromaFrameCenter := chromaFrame morphExtent / 2.
	"Center on Chroma.  Cap Chroma to radius."
	chromaFrame morphPosition: 
			(((colorDrawingScale * chroma0To1) - (chromaFrameCenter x)) min: self radius)
					@ ((chromaFrameCenter y  negated) + (hueArm morphExtent y // 2))! !

!OKLCHCircleMorph methodsFor: 'color updating' stamp: 'KenD 29/Dec/2025 15:13:34'!
setColor:  aColor
	"Invoked by contaier on color change"
	aColor oklchDo: [ :lightness0To1 :chroma0to1 :hueInDegrees |
		self beColorful: lightness0To1.
		self newChromaAt: chroma0to1.
		self hueArm rotateToDegrees: hueInDegrees.
	].
	self redrawNeeded ! !

!OKLCHCircleMorph methodsFor: 'geometry testing' stamp: 'KenD 20/Dec/2025 13:45:01'!
submorphsMightProtrude

	^true "ColorRingMorph"! !

!OKLCHCircleMorph class methodsFor: 'new-morph participation' stamp: 'KenD 23/Dec/2025 09:02:20'!
includeInNewMorphMenu
	"Return true for all classes that can be instantiated from the menu"
	
	^ false! !

!OKLCHCircleMorph class methodsFor: 'instance creation' stamp: 'KenD 23/Dec/2025 08:59:50'!
sideLength: numPixels color: aColor

	| sideLength |
	(numPixels odd)
		ifTrue: [ sideLength := numPixels ]
		ifFalse: [ sideLength := numPixels + 1 ].
	aColor oklchDo: [ :lightness :chroma :hue |
		^(self newWith: (Form extent: (sideLength@sideLength) depth: 32)) 
				sideLength: sideLength 
				l: lightness 
				c: chroma 
				h: hue
	]
! !

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

!SimpleEntryButton methodsFor: 'events' stamp: 'KenD 29/Dec/2025 09:21:51'!
handlesMouseDown: aMouseButtonEvent
	^ true! !

!SimpleEntryButton methodsFor: 'events' stamp: 'KenD 29/Dec/2025 09:21:44'!
handlesMouseOver: evt
	"implements #mouseEnter: and/or #mouseLeave:"
	^true! !

!SimpleEntryButton methodsFor: 'events' stamp: 'KenD 29/Dec/2025 14:21:25'!
mouseButton1Up: aMouseButtonEvent localPosition: localEventPosition

	super mouseButton1Up: aMouseButtonEvent localPosition: localEventPosition.
	entryMorph valueUpdator value: (entryMorph value + myDelta).
	entryMorph redrawNeeded 
! !

!SimpleEntryButton methodsFor: 'events' stamp: 'KenD 29/Dec/2025 09:56:28'!
mouseEnter: aMouseEvent

	borderColor := OKLCHEditPanel swatchBorderColor.
	self redrawNeeded ! !

!SimpleEntryButton methodsFor: 'events' stamp: 'KenD 29/Dec/2025 09:56:48'!
mouseLeave: aMouseEvent

	borderColor := Color black.
	self redrawNeeded ! !

!SimpleEntryButton methodsFor: 'initialization' stamp: 'KenD 29/Dec/2025 14:20:57'!
entryModel: aSimpeNumberEntryMorph delta: aNumber

	entryMorph := aSimpeNumberEntryMorph.
	myDelta := aNumber.
! !

!SimpleEntryButton class methodsFor: 'instance creation' stamp: 'KenD 29/Dec/2025 14:28:03'!
newDown: aSimpeNumberEntryMorph delta: aNumber
	
	| newMe |
	(aNumber > 0) ifTrue: [self error: 'newDown delta must be negative'].
	newMe :=  super newWith:  (BitBltCanvas arrowOfDirection: #down size: 16).
	^newMe borderWidth: 2;
			borderColor: Color black;
			entryModel:  aSimpeNumberEntryMorph delta: aNumber;
			yourself! !

!SimpleEntryButton class methodsFor: 'instance creation' stamp: 'KenD 29/Dec/2025 14:22:46'!
newUp: aSimpeNumberEntryMorph delta: aNumber
	
	| newMe |
	(aNumber < 0) ifTrue: [self error: 'newUp delta must be positive'].
	newMe :=  super newWith:  (BitBltCanvas arrowOfDirection: #up size: 16).
	^newMe borderWidth: 2;
			borderColor: Color black;
			entryModel:  aSimpeNumberEntryMorph delta: aNumber;
			yourself! !

!OKLCHEditPanel methodsFor: 'accessing' stamp: 'KenD 23/Dec/2025 13:04:54'!
defaultAlignement
	^ #rowLeft! !

!OKLCHEditPanel methodsFor: 'accessing' stamp: 'KenD 23/Dec/2025 13:04:21'!
defaultLayerNumber
	"Act like any other Morph with respect to Z-order"
	^100! !

!OKLCHEditPanel methodsFor: 'accessing' stamp: 'KenD 25/Dec/2025 14:21:32'!
defaultSeparation

	^10! !

!OKLCHEditPanel methodsFor: 'accessing' stamp: 'KenD 24/Dec/2025 11:37:52'!
labelFont

	^ (FontFamily defaultFamilyPointSize: 16)! !

!OKLCHEditPanel methodsFor: 'accessing' stamp: 'KenD 24/Dec/2025 11:38:29'!
minorFont

	^ (FontFamily defaultFamilyPointSize: 10)! !

!OKLCHEditPanel methodsFor: 'accessing' stamp: 'KenD 23/Dec/2025 09:22:30'!
model: aColorModel
	
	model := aColorModel ! !

!OKLCHEditPanel methodsFor: 'accessing' stamp: 'KenD 29/Dec/2025 14:53:05'!
setColor: aColor
	" Set my model's color."
	
	self model setColor: aColor.
	"Invokes #colorChanged for refreshColor"! !

!OKLCHEditPanel methodsFor: 'accessing' stamp: 'KenD 24/Dec/2025 13:19:02'!
swatchBorderColor

	"Match with Visual Menu Item text color"
	^ (Color r: 0.5 g: 0.07 b: 0.5) ! !

!OKLCHEditPanel methodsFor: 'initialization' stamp: 'KenD 29/Dec/2025 09:15:10'!
initialize

	super initialize.
	self beRow.
	self color: Color veryVeryLightGray.
	self titleMorph showButtonsNamed: #( close collapse ).
	model ifNil: [ model := ColorEditorModel new ].
	colorSwatch := DropColorMorph fromColor: model color. "alpha=1"
	alphaSwatch :=  DropColorMorph fromColor: model color. 
	rgbEntry      := SimpleNumberEntryMorph hexRGBEntry.
	self model when: #colorChanged: send: #refreshColor to: self.
	circleMorph := OKLCHCircleMorph 
						sideLength: self class defaultCircleMorphSideLength 
						color: model color.
	^self borderWidth: self defaultSeparation ; "Add room for color circle"
		  borderColor: Color transparent;
		 yourself! !

!OKLCHEditPanel methodsFor: 'color updating' stamp: 'KenD 29/Dec/2025 14:35:57'!
colorChanged

	self refreshColor
		

! !

!OKLCHEditPanel methodsFor: 'color updating' stamp: 'KenD 27/Dec/2025 09:46:57'!
colorChanged: aColorModel

	(self model = aColorModel)
		ifFalse: [ model := aColorModel ].
	self refreshColor;
		redrawNeeded 

! !

!OKLCHEditPanel methodsFor: 'color updating' stamp: 'KenD 27/Dec/2025 13:54:19'!
refreshAlphaSwatch
	"When color changes"
	
	(alphaSwatch color = self model color)
	ifFalse: [ | newColor | 
		newColor := self model color.
		alphaSwatch image: 
			(newColor iconOrThumbnailOfSize: 32@32).
		alphaSwatch color: newColor
	]! !

!OKLCHEditPanel methodsFor: 'color updating' stamp: 'KenD 27/Dec/2025 14:23:41'!
refreshCircleMorph

	circleMorph setColor: self model color! !

!OKLCHEditPanel methodsFor: 'color updating' stamp: 'KenD 27/Dec/2025 13:49:29'!
refreshColor
	"model color has changed.  Refresh my views."
	
	lightnessSlider refreshValueFromModel.

	self 
		refreshAlphaSwatch;
		refreshColorSwatch.

	{ alphaEntry. rgbEntry. lEntry. cEntry.  hEntry. } do: [ :entry |
		entry refreshValueFrom: self model.
	].

	self refreshCircleMorph;
		redrawNeeded;
		yourself
! !

!OKLCHEditPanel methodsFor: 'color updating' stamp: 'KenD 23/Dec/2025 14:26:35'!
refreshColorSwatch
	"When color changes"
	
	colorSwatch image: (model baseColor iconOrThumbnailOfSize: self class colorSwatchExtent).
	colorSwatch color: self model baseColor "NB: No alpha here. Alpha=1"! !

!OKLCHEditPanel methodsFor: 'GUI building' stamp: 'KenD 27/Dec/2025 15:29:31'!
buildColorCircleColumn

	| circleLayout |
	circleLayout := LayoutMorph newColumn :: 
		separation: 20;
		axisEdgeWeight: #center;
		color: Color transparent.
						
	circleMorph := OKLCHCircleMorph sideLength: 260 color: self model color.
	circleMorph layoutSpec: (LayoutSizeSpec new  offAxisEdgeWeight: #center).
	circleMorph hueArm model: self model.
	circleMorph chromaFrame setProperty: #model toValue: self model.
	
	^circleLayout 
		addMorph: circleMorph;
		yourself
! !

!OKLCHEditPanel methodsFor: 'GUI building' stamp: 'KenD 27/Dec/2025 14:21:36'!
buildLightnessSliderColumn

	| lightSliderLayout |
	lightSliderLayout := LayoutMorph newColumn :: 
		separation: self defaultSeparation;
		color: Color transparent.
		
	lightnessSlider := PluggableScrollBar new ::
						model: (self model)
								setValueSelector: #setOKDarkness: 
								refreshValueSelector: #getOKDarkness ;
						setProperty: #balloonText toValue: 'set Lightness' ;
						interval: 0;
						color: Color grey;
						morphExtent: (Theme current scrollbarThickness @ 300);
						value: (self model getOKDarkness). "Black @ bottom"
	
	^lightSliderLayout 
		addMorph: lightnessSlider;
		yourself
! !

!OKLCHEditPanel methodsFor: 'GUI building' stamp: 'KenD 26/Dec/2025 13:42:27'!
buildMorphicWindow
" Our layout is a bit different to a traditional dialog, so we override as 
  we don't need button area at the bottom and main panel is a row of morphs." 
	
	layoutMorph beRow.  "A row of columns"
	self layoutMorph gap: self defaultSeparation ;
		axisEdgeWeight: self defaultAlignement ;
		padding: 10;
		color: (Color veryVeryLightGray);
		addMorph: self buildColorCircleColumn;
		addMorph: self buildLightnessSliderColumn;
		addMorph: self buildValuesColumn;
		addMorph: self buildSwatchesColumn;
		morphExtent: self minimumExtent.
	self titleMorph color: Color grey.
	self model 
		when: #colorChanged 
		send: #refreshColor 
		to: self.
	^self
		colorSwatchesBeDroppable;
		refreshColor;
		yourself
! !

!OKLCHEditPanel methodsFor: 'GUI building' stamp: 'KenD 29/Dec/2025 15:36:51'!
buildSwatchesColumn

	| swatchesLayout colorFrame rgbLayout alphaFrame |
	swatchesLayout := LayoutMorph newColumn ::
		 padding: 10;
		 axisEdgeWeight: #columnTop;
		 color: Color transparent.
	colorFrame := FrameMorph new ::
		morphExtent: (self class colorSwatchExtent) + 16;
		borderWidth: 4; 	
		borderColor: self swatchBorderColor;
		"Make color swatch draggable"
		setProperty: #allowsSubmorphDrag toValue: true;
		"Flash when mouseover"
		setProperty: #handlesMouseOver: toValue: true;
		addMorph: colorSwatch;
		yourself.
	colorSwatch morphPosition: 4@4;
				setBalloonText: 
'Drag:
Full Color [α=1]' .
	colorFrame setProperty: #mouseEnter:   
				toValue: [ :ignoredEvent | colorFrame flash ].
	
	rgbEntry := SimpleNumberEntryMorph hexRGBEntry ::
					valueAccessor: [ :myModel | myModel rgbValue ];
					valueUpdator: [ :myValue |  
						self model setRGBColorFromInteger: myValue ];
					refreshValueFrom: self model;
					yourself.
	rgbLayout := LayoutMorph newRow ::
				color: Color transparent;
				addMorph: (LabelMorph contents: 'RGB 16r' font: self minorFont);
				addMorph: rgbEntry;
				yourself.
				
	alphaFrame  := FrameMorph new ::
		morphExtent: alphaSwatch morphExtent + 8;
		borderColor: self swatchBorderColor; 
		borderWidth: 4; 	
		"Make color swatch draggable"
		setProperty: #allowsSubmorphDrag 
				toValue: true;
		"Flash when mouseover"
		setProperty: #handlesMouseOver: 
				toValue: true;
		yourself.
	alphaFrame	setProperty: #mouseEnter:   
				toValue: [ :ignoredEvent | alphaFrame flash ].
	alphaFrame addMorph: alphaSwatch.
	alphaSwatch 
		morphPosition: 4@4 ;
		setBalloonText: 
'Drag:
Color plus α' .

	alphaEntry := SimpleNumberEntryMorph 
					percentForRealFactor: 1.0 ::
					valueAccessor: [ :myModel | self model alpha ];
					valueUpdator: [ :myValue | 
						self model alpha: ((myValue min: 1.0) max: 0.0)
					];
					refreshValueFrom: self model;
					yourself.
				
	^swatchesLayout 
		addMorph: colorFrame;
		addMorph: rgbLayout;
		addMorph: alphaFrame;
		addMorph: (self
					buildValueBox: 'Alpha' 
					lable: 'α:' 
					entryBox: alphaEntry 
					units: '%' 
					upName: 'More Opaque' 
					downName: 'More Transparent'
					deltaAdjust: 0.04);
		yourself
		! !

!OKLCHEditPanel methodsFor: 'GUI building' stamp: 'KenD 29/Dec/2025 14:26:26'!
buildValueBox: stringTitle 
lable: entryNameString 
entryBox: entryMorph 
units: unitString 
upName: upString 
downName: downString
deltaAdjust: delta

	| aBox entryBox adjustBox adjustUp adjustDown |
	aBox := LayoutMorph newColumn ::
		addMorph: (LabelMorph contents: stringTitle font: self labelFont);
		color: Color veryLightGray.
	entryBox := LayoutMorph newRow ::
		addMorph: (LabelMorph contents: entryNameString font: self labelFont);
		addMorph: entryMorph;
		addMorph: (LabelMorph contents: unitString font: self minorFont);
		axisEdgeWeight: #rowLeft.
	adjustUp := LayoutMorph newRow :: 
					axisEdgeWeight: #rowLeft;
					addMorph: (SimpleEntryButton newUp: entryMorph 
													delta: delta);
					addMorph: (LabelMorph contents: upString font: self minorFont).
	adjustDown := LayoutMorph newRow :: 
					axisEdgeWeight: #rowLeft;
					addMorph: (SimpleEntryButton newDown: entryMorph 
													delta: delta negated);
					addMorph: (LabelMorph contents: downString font: self minorFont).
	adjustBox := LayoutMorph newColumn ::
		addMorph: adjustUp;
		addMorph: adjustDown.

	^aBox 
		addMorph: entryBox;
		addMorph: adjustBox;
		yourself
	! !

!OKLCHEditPanel methodsFor: 'GUI building' stamp: 'KenD 29/Dec/2025 13:20:20'!
buildValueBox: stringTitle 
lable: entryNameString 
entryBox: entryMorph 
units: unitString 
upName: upString 
downName: downString
deltaAdjust: delta
scale: aScale
	| aBox entryBox adjustBox adjustUp adjustDown |
	aBox := LayoutMorph newColumn ::
		addMorph: (LabelMorph contents: stringTitle font: self labelFont);
		color: Color veryLightGray.
	entryBox := LayoutMorph newRow ::
		addMorph: (LabelMorph contents: entryNameString font: self labelFont);
		addMorph: entryMorph;
		addMorph: (LabelMorph contents: unitString font: self minorFont);
		axisEdgeWeight: #rowLeft.
	adjustUp := LayoutMorph newRow :: 
					axisEdgeWeight: #rowLeft;
					addMorph: (SimpleEntryButton newUp: entryMorph 
													delta: delta
													scale: aScale);
					addMorph: (LabelMorph contents: upString font: self minorFont).
	adjustDown := LayoutMorph newRow :: 
					axisEdgeWeight: #rowLeft;
					addMorph: (SimpleEntryButton newDown: entryMorph 
													delta: delta negated
													scale: aScale);
					addMorph: (LabelMorph contents: downString font: self minorFont).
	adjustBox := LayoutMorph newColumn ::
		addMorph: adjustUp;
		addMorph: adjustDown.

	^aBox 
		addMorph: entryBox;
		addMorph: adjustBox;
		yourself
	! !

!OKLCHEditPanel methodsFor: 'GUI building' stamp: 'KenD 29/Dec/2025 15:36:16'!
buildValuesColumn

	| valuesLayout |
	valuesLayout := LayoutMorph newColumn ::
		 padding: 10;
		 axisEdgeWeight: #center;
		 color: Color transparent.
	lEntry := SimpleNumberEntryMorph percentForRealFactor: 1.0 ::
					valueAccessor: [ :myModel | myModel getOKLightness ];
					valueUpdator: [ :myValue | self model setOKLightness: myValue ];
					refreshValueFrom: self model;
					yourself.
	cEntry := SimpleNumberEntryMorph percentForRealFactor: 0.5 ::
					valueAccessor: [ :myModel | myModel getOKChroma  ];
					valueUpdator: [ :myValue | self model setOKChroma: myValue ];
					refreshValueFrom: self model;
					yourself.
	hEntry := SimpleNumberEntryMorph circleDegrees ::
					valueAccessor: [ :myModel | myModel getOKHue ];
					valueUpdator: [ :myValue | self model setOKHue: myValue ];
					refreshValueFrom: self model;
					yourself.
	valuesLayout addMorph: (self
					buildValueBox: 'Lightness' 
					lable: 'L:' 
					entryBox: lEntry 
					units: '%' 
					upName: 'Lighter' 
					downName: 'Darker'
					deltaAdjust: 0.03).
	valuesLayout addMorph: (self
					buildValueBox: 'Chroma' 
					lable: 'C:' 
					entryBox: cEntry 
					units: '0 - 50%' 
					upName: 'More Saturated' 
					downName: 'More Grey'
					deltaAdjust: 0.004).
	valuesLayout addMorph: (self
					buildValueBox: 'Hue' 
					lable: 'H:' 
					entryBox: hEntry 
					units: '0 - 360 degrees' 
					upName: 'antiClock' 
					downName: 'Clockwise'
					deltaAdjust: 3).	
	^valuesLayout				! !

!OKLCHEditPanel methodsFor: 'GUI building' stamp: 'KenD 29/Dec/2025 14:54:11'!
colorSwatchesBeDroppable

	{alphaSwatch. colorSwatch.} do: [ :dropTarget | 
		dropTarget
			setProperty:  #'allowsMorphDrop' toValue: true;
			setProperty: #wantsDroppedMorph:event: 
				toValue: [ :dropMorph :evt | dropMorph valueWhenDropped isKindOf: Color] ;
			setProperty: #dropAction 
				toValue: [ :dropMorph :colorValue |
					self setColor: colorValue. 
					dropMorph showAcceptAndDeleteSelf.
				]
	].! !

!OKLCHEditPanel class methodsFor: 'instance creation' stamp: 'KenD 26/Dec/2025 11:15:40'!
initializedInstance
"
	self initializedInstance openInWorld.
"
 	^self new
		model: (ColorEditorModel color: self defaultColor) ;
		buildMorphicWindow;
		setLabel: self titleString.
		! !

!OKLCHEditPanel class methodsFor: 'instance creation' stamp: 'KenD 24/Dec/2025 13:34:38'!
open
"
	self open 
"	
	^ self openWithColor: self defaultColor! !

!OKLCHEditPanel class methodsFor: 'instance creation' stamp: 'KenD 26/Dec/2025 14:33:10'!
openWithColor: aColor

	^ self new
		model: (ColorEditorModel color: aColor) ;
		buildMorphicWindow;
		setLabel: self titleString! !

!OKLCHEditPanel class methodsFor: 'accessing' stamp: 'KenD 23/Dec/2025 14:25:49'!
colorSwatchExtent

	^ 64 @ 64! !

!OKLCHEditPanel class methodsFor: 'accessing' stamp: 'KenD 23/Dec/2025 13:31:53'!
defaultCircleMorphSideLength

	^260 "Pixels"! !

!OKLCHEditPanel class methodsFor: 'accessing' stamp: 'KenD 23/Dec/2025 12:59:45'!
defaultColor

	^ Color  r: 16r40/255 g: 16rA5/255 b: 16rD0/255.! !

!OKLCHEditPanel class methodsFor: 'accessing' stamp: 'KenD 27/Dec/2025 19:08:26'!
swatchBorderColor

	"Match with Visual Menu Item text color"
	^ (Color r: 0.5 g: 0.07 b: 0.5) ! !

!OKLCHEditPanel class methodsFor: 'accessing' stamp: 'KenD 26/Dec/2025 11:14:53'!
titleString

	^ 'OK-LCH Color Editor'
	 ! !

!OKLCHEditPanel class methodsFor: 'new-morph participation' stamp: 'KenD 23/Dec/2025 12:57:33'!
includeInNewMorphMenu
	"Return true for all classes that can be instantiated from the menu"
	
	^ true! !

!HueArmMorph methodsFor: 'events' stamp: 'KenD 27/Dec/2025 14:27:26'!
handlesMouseDown: aMouseButtonEvent
	"Do I want to receive mouseDown events (mouseDown:, mouseMove:, mouseUp:)?"
	
	^ true! !

!HueArmMorph methodsFor: 'events' stamp: 'KenD 27/Dec/2025 19:11:59'!
handlesMouseOver: aMouseEvent

	^true! !

!HueArmMorph methodsFor: 'events' stamp: 'KenD 27/Dec/2025 19:09:58'!
mouseEnter: igniredMouseEvent

	self borderColor: OKLCHEditPanel swatchBorderColor! !

!HueArmMorph methodsFor: 'events' stamp: 'KenD 27/Dec/2025 19:10:23'!
mouseLeave: igniredMouseEvent

	self borderColor: Color black! !

!HueArmMorph methodsFor: 'events' stamp: 'KenD 29/Dec/2025 15:09:44'!
mouseMove: aMouseMoveEvent localPosition: localEventPosition

	aMouseMoveEvent anyButtonPressed ifTrue: [
		self rotateToDegrees:  self currentDegrees - localEventPosition degrees.
		self model setOKHue: self currentDegrees.
	]! !

!HueArmMorph methodsFor: 'geometry' stamp: 'KenD 27/Dec/2025 14:31:31'!
currentDegrees

	"Rotation opposite of default"
	^location degrees negated
	! !

!HueArmMorph methodsFor: 'geometry' stamp: 'KenD 27/Dec/2025 13:29:03'!
rotateToDegrees: degrees
	"Like rotateBy: but to absolute degrees."
	
	| currentDegrees myRotation |
	currentDegrees := location degrees.
	myRotation := currentDegrees degreesToRadians negated.
	(currentDegrees abs > 1) ifTrue: [ "reset to 0"
		self hide;  redrawNeeded;
			rotateBy: myRotation.
	].
      "Rotation is Clockwise, but Hue rotates CounterClockwise."
	self hide; redrawNeeded;
		rotateBy: degrees degreesToRadians negated;
		show; redrawNeeded;
		yourself! !

!HueArmMorph methodsFor: 'geometry' stamp: 'KenD 21/Dec/2025 09:39:03'!
rotationCenter

	| circleDelta |
	circleDelta := self morphExtent y // 2.
	^(circleDelta @ circleDelta)! !

!HueArmMorph methodsFor: 'accessing' stamp: 'KenD 27/Dec/2025 14:59:25'!
model

	^model! !

!HueArmMorph methodsFor: 'accessing' stamp: 'KenD 27/Dec/2025 14:59:49'!
model: aColorEditorModel

	model := aColorEditorModel! !

!HueArmMorph class methodsFor: 'new-morph participation' stamp: 'KenD 23/Dec/2025 09:02:34'!
includeInNewMorphMenu
	"Return true for all classes that can be instantiated from the menu"
	
	^ false! !
