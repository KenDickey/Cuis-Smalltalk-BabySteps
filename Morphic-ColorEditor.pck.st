'From Cuis 4.2 of 25 July 2013 [latest update: #1867] on 27 November 2013 at 4:12:55.708474 pm'!
'Description A ColorEditor'!
!provides: 'Morphic-ColorEditor' 1 25!
!classDefinition: #ColorEditorModel category: #'Morphic-ColorEditor'!
Object subclass: #ColorEditorModel
	instanceVariableNames: 'color'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-ColorEditor'!
!classDefinition: 'ColorEditorModel class' category: #'Morphic-ColorEditor'!
ColorEditorModel class
	instanceVariableNames: ''!

!classDefinition: #RadioButtonMorph category: #'Morphic-ColorEditor'!
EllipseMorph subclass: #RadioButtonMorph
	instanceVariableNames: 'isSelected'
	classVariableNames: 'DefaultDiameter'
	poolDictionaries: ''
	category: 'Morphic-ColorEditor'!
!classDefinition: 'RadioButtonMorph class' category: #'Morphic-ColorEditor'!
RadioButtonMorph class
	instanceVariableNames: ''!

!classDefinition: #PluggableScrollBar category: #'Morphic-ColorEditor'!
ScrollBar subclass: #PluggableScrollBar
	instanceVariableNames: 'refreshValueSelector'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-ColorEditor'!
!classDefinition: 'PluggableScrollBar class' category: #'Morphic-ColorEditor'!
PluggableScrollBar class
	instanceVariableNames: ''!

!classDefinition: #ColorEditorWindow category: #'Morphic-ColorEditor'!
SystemWindow subclass: #ColorEditorWindow
	instanceVariableNames: 'colorPane colorSwatch sliderColumn radioSelection rgbRadio hsvRadio closestColordictColor rgbString'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-ColorEditor'!
!classDefinition: 'ColorEditorWindow class' category: #'Morphic-ColorEditor'!
ColorEditorWindow class
	instanceVariableNames: ''!

!classDefinition: #ColorPaneMorph category: #'Morphic-ColorEditor'!
ImageMorph subclass: #ColorPaneMorph
	instanceVariableNames: 'zeroPlaneForm zIndex zValue colorPoint focusMorph'
	classVariableNames: 'BlueIndex BrightnessIndex GreenIndex HueIndex RedIndex SaturationIndex'
	poolDictionaries: ''
	category: 'Morphic-ColorEditor'!
!classDefinition: 'ColorPaneMorph class' category: #'Morphic-ColorEditor'!
ColorPaneMorph class
	instanceVariableNames: ''!

!classDefinition: #RadioGroup category: #'Morphic-ColorEditor'!
LayoutMorph subclass: #RadioGroup
	instanceVariableNames: 'list font buttonOnLeft buttons'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-ColorEditor'!
!classDefinition: 'RadioGroup class' category: #'Morphic-ColorEditor'!
RadioGroup class
	instanceVariableNames: ''!

!classDefinition: #SimpleNumberEntryMorph category: #'Morphic-ColorEditor'!
OneLineEditorMorph subclass: #SimpleNumberEntryMorph
	instanceVariableNames: 'entryChars numCharsToHold theValue validator toString valueAccessor valueUpdator'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-ColorEditor'!
!classDefinition: 'SimpleNumberEntryMorph class' category: #'Morphic-ColorEditor'!
SimpleNumberEntryMorph class
	instanceVariableNames: ''!


!ColorEditorModel commentStamp: '<historical>' prior: 0!
I am the model (state holder) for a ColorEditor.!

!RadioButtonMorph commentStamp: '<historical>' prior: 0!
I am a very simple radio button.!

!PluggableScrollBar commentStamp: '<historical>' prior: 0!
I am a ScrollBar which can get new values from my model.!

!ColorEditorWindow commentStamp: '<historical>' prior: 0!
I present the ColorEditor UI!

!ColorPaneMorph commentStamp: '<historical>' prior: 0!
I present a plane in a color cube.

The x and y selectors map to a 256 x 256 plane with a constant z.
The z value is "mixed in" to give a (x,y,z) color plane. [ see #refreshForm]
The selected color point (x,y) is visually noted by a focusMorph "ring".
One may click on the pane to update the colorPoint.
!

!RadioGroup commentStamp: '<historical>' prior: 0!
I manage a RadioGroup -- a Group of RadioButtons, each with a label.

I am a columnMorph

Each of my submorphs is a row layoutMorph which contains a radio button and a label and may contain other, additional  morphs.

iVars:
 list  an Array of Symbols used as labels
 font - font for labels
 buttonOnLeft -- if True, button image then label else label then button image
 buttons - cached array of buttons
!

!SimpleNumberEntryMorph commentStamp: '<historical>' prior: 0!
I am a simple numeric entry form.  I display and accept numeric values.

iVars
  entryChars - legal input characters, e.g. '1234567890ABCDEFabcdef'
  numCharsToHold - nil or number of chanrs for fixed size of field
  value - current value, defaulting to 0 (zero)
  label - string to display, e.g. '', '16r', 'per cent'
  validator - a closure which takes a string and returns a new valid value or nil
	e.g. [ :str | [ ('16r', str) asNumber ] on: Error do: [ ^nil ]].
  toString - a closure which takes a value and returns a string to display
	e.g. [ :n | n printStringHex ]

The validator is applied on return and if nil, the old value is redisplayed and the field flashed,
else the new value is remembered and displayed.!

!LayoutMorph methodsFor: '*morphic-coloreditor' stamp: 'KenD 11/23/2013 20:15'!
shrinkWrap
	"Resize self to minimally contain submorphs with specified separation"
	
	| width height sep |
	((self direction) = #horizontal) "(a row)"
		ifTrue:  [
			sep := self xSeparation.
			width := sep + 
				(self submorphs 
					inject: 0 
					into: [ :subTotal :m |  subTotal + (m morphExtent x) + sep ]).
			sep := 2 * self ySeparation.
			height := 
				(self submorphs 
					inject: 10 
					into: [ :maxHeight :m |  maxHeight max: (m morphExtent y) + sep ]).
			self layoutSpec: 
					(LayoutSpec 
							fixedWidth: width
							proportionalHeight: 1.0 
							minorDirectionPadding: #left)
		]
		ifFalse: [ " vertical  (a column)"
			sep := 2 * self xSeparation.
			width := 
				(self submorphs 
					inject: 10 
					into: [ :maxWidth :m |  maxWidth max: (m morphExtent x) + sep ]).
			sep := self ySeparation.
			height := sep + 
				(self submorphs 
					inject: 0 
					into: [ :subTotal :m |  subTotal + (m morphExtent y) + sep ]).
			self layoutSpec: 
					(LayoutSpec 
							proportionalWidth: 1.0 
							fixedHeight: height
							minorDirectionPadding: #top)
		].

	self morphExtent: width @ height.
	self layoutSubmorphs.! !

!ColorEditorModel methodsFor: 'accessing' stamp: 'KenD 11/22/2013 20:53'!
blue
	"Answer my blue component 0..255"

	^ (self color blue * 255) rounded! !

!ColorEditorModel methodsFor: 'accessing' stamp: 'KenD 11/23/2013 16:42'!
blue: zeroTo255

	self setColor: (Color 
		r: self color red
		g: self color green
		b: (zeroTo255 / 255) asFloat)! !

!ColorEditorModel methodsFor: 'accessing' stamp: 'KenD 11/25/2013 18:52'!
blueFactor
	"Answer my blueness 0..1"

	^ self color blue! !

!ColorEditorModel methodsFor: 'accessing' stamp: 'KenD 11/24/2013 19:05'!
blueFactor: zeroToOne

	self setColor: (Color 
		r: self color red
		g: self color green
		b: (zeroToOne * 255 / 255) asFloat)! !

!ColorEditorModel methodsFor: 'accessing' stamp: 'KenD 11/23/2013 16:44'!
brightness
	"Answer percent brightness"

	^ (self color brightness * 100) rounded! !

!ColorEditorModel methodsFor: 'accessing' stamp: 'KenD 11/23/2013 16:43'!
brightness: aPercent

	self setColor: (Color
		h: self color hue
		s: self color saturation
		v: (aPercent / 100) asFloat)! !

!ColorEditorModel methodsFor: 'accessing' stamp: 'KenD 11/25/2013 18:53'!
brightnessFactor
	"Answer my brightness 0..1"

	^ self color brightness! !

!ColorEditorModel methodsFor: 'accessing' stamp: 'KenD 11/24/2013 19:04'!
brightnessFactor: zeroToOne

	self setColor: (Color
		h: self color hue
		s: self color saturation
		v: zeroToOne asFloat)! !

!ColorEditorModel methodsFor: 'accessing' stamp: 'KenD 11/23/2013 15:54'!
color

	^ color! !

!ColorEditorModel methodsFor: 'initialization' stamp: 'KenD 11/19/2013 19:09'!
defaultColor

	^ Color teal
	! !

!ColorEditorModel methodsFor: 'accessing' stamp: 'KenD 11/22/2013 20:53'!
green
	"Answer my green component 0..255"

	^ (self color green * 255) rounded! !

!ColorEditorModel methodsFor: 'accessing' stamp: 'KenD 11/23/2013 16:41'!
green: zeroTo255

	self setColor: (Color 
		r: self color red
		g: (zeroTo255 / 255) asFloat 
		b: self color blue)! !

!ColorEditorModel methodsFor: 'accessing' stamp: 'KenD 11/25/2013 18:51'!
greenFactor
	"Answer my greenness 0..1"

	^ self color green! !

!ColorEditorModel methodsFor: 'accessing' stamp: 'KenD 11/24/2013 19:22'!
greenFactor:   zeroToOne

	self setColor: (Color 
		r: self color red
		g: (zeroToOne * 255 / 255) asFloat 
		b: self color blue)! !

!ColorEditorModel methodsFor: 'printing' stamp: 'KenD 11/24/2013 08:39'!
hexStringRGB

	^ (self red    printPaddedWith: $0 to: 2 base: 16) , 
	  (self green printPaddedWith: $0 to: 2 base: 16) , 
	  (self blue   printPaddedWith: $0 to: 2 base: 16)! !

!ColorEditorModel methodsFor: 'accessing' stamp: 'KenD 11/23/2013 16:44'!
hue
	"Answer my hue 0..360 (degrees)"

	^ self color hue rounded! !

!ColorEditorModel methodsFor: 'accessing' stamp: 'KenD 11/23/2013 16:40'!
hue: zeroTo360

	self setColor: (Color 
		h: zeroTo360
		s: (self color saturation) 
		v: (self color brightness) )! !

!ColorEditorModel methodsFor: 'accessing' stamp: 'KenD 11/25/2013 18:55'!
hueFactor
	"Answer my hue 0..1"

	^ (self color hue / 360) asFloat! !

!ColorEditorModel methodsFor: 'accessing' stamp: 'KenD 11/24/2013 19:02'!
hueFactor: zeroToOne

	self setColor: (Color 
		h: (zeroToOne * 360) asFloat
		s: (self color saturation) 
		v: (self color brightness) )! !

!ColorEditorModel methodsFor: 'initialization' stamp: 'KenD 11/23/2013 15:55'!
initialize

	super initialize.
	self setColor: self defaultColor.
	! !

!ColorEditorModel methodsFor: 'accessing' stamp: 'KenD 11/22/2013 20:53'!
red
	"Answer my red component 0..255"

	^ (self color red * 255) rounded! !

!ColorEditorModel methodsFor: 'accessing' stamp: 'KenD 11/23/2013 16:42'!
red: zeroTo255

	self setColor: (Color 
		r: (zeroTo255 / 255) asFloat 
		g: self color green 
		b: self color blue)! !

!ColorEditorModel methodsFor: 'accessing' stamp: 'KenD 11/25/2013 18:51'!
redFactor
	"Answer my redness 0..1"

	^ self color red! !

!ColorEditorModel methodsFor: 'accessing' stamp: 'KenD 11/24/2013 19:06'!
redFactor: zeroToOne

	self setColor: (Color 
		r: (zeroToOne * 255 / 255) asFloat 
		g: self color green 
		b: self color blue)! !

!ColorEditorModel methodsFor: 'accessing' stamp: 'KenD 11/23/2013 16:45'!
saturation
	"Answer my percent saturation"

	^ (self color saturation * 100) rounded! !

!ColorEditorModel methodsFor: 'accessing' stamp: 'KenD 11/23/2013 16:42'!
saturation: aPercent

	self setColor: (Color 
		h: (self color hue) 
		s: (aPercent / 100) asFloat
		v: (self color brightness) )! !

!ColorEditorModel methodsFor: 'accessing' stamp: 'KenD 11/25/2013 18:56'!
saturationFactor
	"Answer my saturation 0..1"

	^ self color saturation ! !

!ColorEditorModel methodsFor: 'accessing' stamp: 'KenD 11/24/2013 19:01'!
saturationFactor: zeroToOne

	self setColor: (Color 
		h: (self color hue) 
		s: zeroToOne asFloat
		v: (self color brightness) )! !

!ColorEditorModel methodsFor: 'accessing' stamp: 'KenD 11/23/2013 20:59'!
setColor: aColor
	"Set my color and trigger #colorChanged passing me (the model)"
	
	(color == aColor) ifTrue: [ ^self ].
	color := aColor.
	self triggerEvent: #colorChanged with: self.
	^ self

! !

!ColorEditorModel class methodsFor: 'instance creation' stamp: 'KenD 11/23/2013 15:55'!
color: aColor

	^ self new setColor: aColor! !

!RadioButtonMorph methodsFor: 'initialization' stamp: 'KenD 11/20/2013 14:05'!
defaultDiameter

	^ self class defaultDiameter ! !

!RadioButtonMorph methodsFor: 'event handling testing' stamp: 'KenD 11/19/2013 20:22'!
handlesMouseDown: aMouseButtonEvent
	"Do I want to receive mouseDown events (mouseDown:, mouseMove:, mouseUp:)?"
	^true! !

!RadioButtonMorph methodsFor: 'event handling testing' stamp: 'KenD 11/19/2013 20:22'!
handlesMouseOver: evt
	"Do I want to receive mouseEnter: and mouseLeave: when the button is up and the hand is empty?" 
	^true! !

!RadioButtonMorph methodsFor: 'initialization' stamp: 'KenD 11/20/2013 14:07'!
initialize

	super initialize.
	isSelected := false.
	self borderColor: Color black.
	self borderWidth: 4.
	self ofSize: self defaultDiameter! !

!RadioButtonMorph methodsFor: 'accessing' stamp: 'KenD 11/19/2013 20:16'!
isSelected

	^ isSelected ! !

!RadioButtonMorph methodsFor: 'accessing' stamp: 'KenD 11/20/2013 14:33'!
isSelected: aBoolean

	(isSelected := aBoolean)
		ifFalse: [self color: self defaultColor] 
		ifTrue: [self color: Color black. 
				 self triggerEvent: #radioSelection with: self 
		]
! !

!RadioButtonMorph methodsFor: 'event handling' stamp: 'KenD 11/20/2013 15:09'!
mouseButton1Up: aMouseButtonEvent localPosition: localEventPosition

	((self morphContainsPoint: localEventPosition) and: [self isSelected not])
		ifTrue: [ self isSelected: true ]
! !

!RadioButtonMorph methodsFor: 'event handling' stamp: 'KenD 11/20/2013 14:20'!
mouseEnter: event
	"The mouse has entered the area of the receiver"

	self isSelected ifFalse: [ self color: Color green ]! !

!RadioButtonMorph methodsFor: 'event handling' stamp: 'KenD 11/19/2013 20:25'!
mouseLeave: event
	"The mouse has left the area of the receiver"

	self isSelected ifFalse: [ self color: self defaultColor ]! !

!RadioButtonMorph methodsFor: 'initialization' stamp: 'KenD 11/24/2013 09:06'!
ofSize: numPixels

	self morphExtent: numPixels @ numPixels.
	self layoutSpec: (LayoutSpec 
							fixedWidth: numPixels 
							fixedHeight: numPixels
							minorDirectionPadding:  #center) ! !

!RadioButtonMorph methodsFor: 'accessing' stamp: 'KenD 11/24/2013 16:56'!
select
	"Select me if unselected"

	(self isSelected) ifFalse: [ self isSelected: true ]
! !

!RadioButtonMorph methodsFor: 'accessing' stamp: 'KenD 11/19/2013 20:26'!
toggleSelection

	self isSelected: self isSelected not
! !

!RadioButtonMorph methodsFor: 'event handling' stamp: 'KenD 11/19/2013 20:57'!
update: aParameter

	self redrawNeeded! !

!RadioButtonMorph class methodsFor: 'accessing' stamp: 'KenD 11/20/2013 14:05'!
defaultDiameter

	^ DefaultDiameter ! !

!RadioButtonMorph class methodsFor: 'class initialization' stamp: 'KenD 11/20/2013 14:09'!
initialize
"
	self initialize.
"

	DefaultDiameter := 20. "Pixels"! !

!RadioButtonMorph class methodsFor: 'instance creation' stamp: 'KenD 11/19/2013 20:05'!
ofSize: numPixels

	^ self new ofSize: numPixels! !

!PluggableScrollBar methodsFor: 'initialization' stamp: 'KenD 11/26/2013 21:12'!
initialize

	super initialize.
	slider morphExtent: self buttonExtent @ self buttonExtent.! !

!PluggableScrollBar methodsFor: 'accessing' stamp: 'KenD 11/25/2013 18:44'!
model: thang setValueSelector: setValueSym refreshValueSelector: getValueSym

	model := thang.
	setValueSelector := setValueSym.
	refreshValueSelector := getValueSym ! !

!PluggableScrollBar methodsFor: 'model access' stamp: 'KenD 11/25/2013 18:42'!
refreshValueFromModel
	"Called externally to reset value from model"

	refreshValueSelector ifNotNil: [
		self value:  (model perform: refreshValueSelector) ]! !

!ColorEditorWindow methodsFor: 'GUI building' stamp: 'KenD 11/27/2013 15:56'!
buildColorPaneColumn

	| colorPaneColumn selector |
	selector := self defaultRadioSelector asLowercase asSymbol.
	colorPane := (ColorPaneMorph 
								zSelector: self defaultRadioSelector 
								zValue:  (self model perform: selector)
								colorPoint: 10@10).
	colorPane updateColorFromModel: self model;
		layoutSpec: (LayoutSpec fixedWidth: 256 
										fixedHeight: 256 
										minorDirectionPadding: #center).
	colorPane when: #colorChanged send: #updateColorFromPane to: self.
	colorPaneColumn := LayoutMorph newColumn.
	colorPaneColumn 
		addMorph: colorPane
		layoutSpec: (LayoutSpec 
							fixedWidth: 276 
							proportionalHeight: 1 
							minorDirectionPadding: #center).
	
	^ colorPaneColumn ! !

!ColorEditorWindow methodsFor: 'GUI building' stamp: 'KenD 11/26/2013 20:58'!
buildMorphicWindow
	"Create a useful ColorEditor window"
	
	self layoutMorph beRow. " A row of columns"
	self addMorph: self buildColorPaneColumn. 
	self addMorph: self buildSliderColumn. 
	self addMorph: self buildRadioButtonColumn.
		
	self model when: #colorChanged send: #refreshColor to: self.
	
	^ self
! !

!ColorEditorWindow methodsFor: 'GUI building' stamp: 'KenD 11/24/2013 18:49'!
buildRadioButtonColumn

	| radioCol setupEntryMorph valueEntryMorph |
	rgbRadio := RadioGroup fromList: #(Red Green Blue).
	hsvRadio := RadioGroup fromList: #(Hue Saturation Brightness).
	rgbRadio when: #informRadioSelection send: #newRadioSelection: to: self.
	hsvRadio when: #informRadioSelection send: #newRadioSelection: to: self.
	setupEntryMorph := [ :sym :entryMorph | | selector |
		selector := sym asLowercase asSymbol.
		entryMorph valueAccessor: [ :model | model perform: selector ].
		entryMorph valueUpdator: [ :myValue | 
					self model perform: ( selector , ':' ) asSymbol with: myValue ].
		entryMorph refreshValueFrom: self model.
		self model when: #colorChanged send: #refreshValueFrom: to: entryMorph.
	].
	
	#(Red Green Blue) do: [ :sym | | entryMorph |
		entryMorph := SimpleNumberEntryMorph rgbOneOf.
		setupEntryMorph value: sym value: entryMorph.
		(rgbRadio rowFor: sym) addMorph: entryMorph.
	].
	valueEntryMorph := SimpleNumberEntryMorph circleDegreesExact.
	setupEntryMorph value: #Hue value: valueEntryMorph.
	(hsvRadio rowFor: #Hue) 
		addMorph: valueEntryMorph;
		addMorph: (StringMorph contents: ' deg')
			layoutSpec: (LayoutSpec 
							fixedWidth: 36 
							fixedHeight: 20
							minorDirectionPadding: #center).
.
	#(Saturation Brightness) do:  [ :sym | | entryMorph |
		entryMorph := SimpleNumberEntryMorph percentExact.
		setupEntryMorph value: sym value: entryMorph.
		(hsvRadio rowFor: sym) 
			addMorph: entryMorph;
			addMorph: (StringMorph contents: ' %') 
				layoutSpec: (LayoutSpec 
					fixedWidth: 20 
					fixedHeight: 20
					minorDirectionPadding: #center).
	].

	(rgbRadio buttonFor: #Green) select.

	radioCol := LayoutMorph newColumn.
	^ radioCol 
		separation: 6;
		addMorph: rgbRadio;
		addMorph: hsvRadio;
		addMorph: self colorSwatch;
		addMorph: self rgbString;
		yourself
	! !

!ColorEditorWindow methodsFor: 'GUI building' stamp: 'KenD 11/27/2013 15:12'!
buildSliderColumn

	sliderColumn := LayoutMorph newColumn.
	self resetSliderColumn: self defaultRadioSelector.
	
	^ sliderColumn 

	! !

!ColorEditorWindow methodsFor: 'private' stamp: 'KenD 11/26/2013 21:27'!
colorPane

	^ colorPane ! !

!ColorEditorWindow methodsFor: 'private' stamp: 'KenD 11/19/2013 21:15'!
colorSwatch

	^ colorSwatch! !

!ColorEditorWindow methodsFor: 'initialization' stamp: 'KenD 11/23/2013 17:09'!
colorSwatchExtent

	^ 64 @ 64! !

!ColorEditorWindow methodsFor: 'initialization' stamp: 'KenD 11/24/2013 18:58'!
defaultRadioSelector

	^ #Green! !

!ColorEditorWindow methodsFor: 'private' stamp: 'KenD 11/19/2013 21:14'!
hsvRadio

	^ hsvRadio! !

!ColorEditorWindow methodsFor: 'initialization' stamp: 'KenD 11/24/2013 17:07'!
initialize

	super initialize.
	model := ColorEditorModel new.
	colorSwatch := ImageMorph new.
	rgbString := StringMorph new.
	self refreshColorSwatch; refreshRGBString.

	! !

!ColorEditorWindow methodsFor: 'events-processing' stamp: 'KenD 11/27/2013 15:00'!
newRadioSelection: selectionSymbol

	"Only one radio group can be selected at a time"
	( #(Red, Green, Blue) includes: selectionSymbol ) 
		ifTrue: [ self hsvRadio unselectAll ].
	( #(Hue Saturation Brightness) includes: selectionSymbol ) 
		ifTrue: [ self rgbRadio unselectAll ].
		
	self resetSliderColumn: selectionSymbol.
	self colorPane fromModel: self model selector: selectionSymbol.
	self colorPane resetFocus.

	
	! !

!ColorEditorWindow methodsFor: 'events-processing' stamp: 'KenD 11/26/2013 21:28'!
refreshColor
	"model color has changed.  Refresh my views."
	
	self 
		refreshColorSwatch;
		refreshRGBString;
		refreshColorPane! !

!ColorEditorWindow methodsFor: 'color updating' stamp: 'KenD 11/27/2013 14:43'!
refreshColorPane
	"When selector changes.."

	self colorPane updateColorFromModel: self model.! !

!ColorEditorWindow methodsFor: 'color updating' stamp: 'KenD 11/27/2013 14:43'!
refreshColorSwatch
	"When color changes"
	
	colorSwatch image: (model color iconOrThumbnailOfSize: self colorSwatchExtent)! !

!ColorEditorWindow methodsFor: 'color updating' stamp: 'KenD 11/24/2013 08:51'!
refreshRGBString
	"Reset my rgbString from current model color"

	self rgbString contents: '16r' , self model hexStringRGB! !

!ColorEditorWindow methodsFor: 'GUI building' stamp: 'KenD 11/27/2013 15:20'!
resetSliderColumn: sliderSym
	"Radio selector changed.."

	| scrollBar labelString |
	"#(Red Green Blue Hue Saturation Brightness) inclides: sliderSym"
	scrollBar := PluggableScrollBar new.
	scrollBar
		model: self model 
			setValueSelector: (sliderSym asLowercase , 'Factor:') asSymbol
			refreshValueSelector: (sliderSym asLowercase , 'Factor') asSymbol;
		layoutSpec: (LayoutSpec 
							fixedWidth: scrollBar morphExtent x
							fixedHeight: scrollBar morphExtent y
							minorDirectionPadding: #center).
	
	(self sliderColumn submorphs 
					detect: [ :s | s class == PluggableScrollBar ] 
					ifNone: [ nil ]) 
		ifNotNil: [ :sb | self model removeDependent: sb ].
		
	self model when: #colorChanged send: #refreshValueFromModel to: scrollBar.
	scrollBar refreshValueFromModel.

	labelString := sliderSym asString.
	
	^self sliderColumn 
		removeAllMorphs;
		separation: 6;
		layoutSpec: (LayoutSpec 
						fixedWidth:  12 + (AbstractFont default 
												widthOfString: 'brightness') "longest string"
						proportionalHeight: 1 
						minorDirectionPadding: #center);
		addMorph: scrollBar;
		addMorph: (StringMorph contents: labelString font: AbstractFont default)
			layoutSpec: (LayoutSpec 
								fixedWidth: (AbstractFont default 
												widthOfString: labelString) + 2
								proportionalHeight: 1.0  
								minorDirectionPadding: #center);
		yourself
	! !

!ColorEditorWindow methodsFor: 'private' stamp: 'KenD 11/19/2013 21:14'!
rgbRadio

	^ rgbRadio! !

!ColorEditorWindow methodsFor: 'private' stamp: 'KenD 11/24/2013 08:48'!
rgbString
	"Answer my rgbString StringMorph"
	^ rgbString! !

!ColorEditorWindow methodsFor: 'initialization' stamp: 'KenD 11/24/2013 17:08'!
setColor: aColor

	self model setColor: aColor.
	self refreshColorSwatch.
"	self triggerEvent: #colorChange.  @@useful??@@"! !

!ColorEditorWindow methodsFor: 'private' stamp: 'KenD 11/25/2013 19:12'!
sliderColumn

	^ sliderColumn! !

!ColorEditorWindow methodsFor: 'events-processing' stamp: 'KenD 11/27/2013 16:02'!
updateColorFromPane
	"Someone changed color in colorPane.  Update my model"
	
	self model setColor: self colorPane focusColor! !

!ColorEditorWindow class methodsFor: 'initialization' stamp: 'KenD 11/24/2013 16:47'!
defaultColor

	^ Color periwinkle ! !

!ColorEditorWindow class methodsFor: 'initialization' stamp: 'KenD 11/25/2013 19:49'!
defaultExtent

	^ 556@340! !

!ColorEditorWindow class methodsFor: 'instance creation' stamp: 'KenD 11/24/2013 16:47'!
open
"
	self open.
"	
	^ self openColor: self defaultColor! !

!ColorEditorWindow class methodsFor: 'instance creation' stamp: 'KenD 11/24/2013 09:21'!
openColor: aColor
"
	self openColor: Color purple.
	self openColor: Color forestGreen.
"	
	|  window |
	window _ self new.
	^ window
		model: (ColorEditorModel new);
		buildMorphicWindow;
		setLabel: 'Color Editor';
		setColor: aColor;
		openInWorld: self runningWorld extent: self defaultExtent;
		yourself
! !

!ColorPaneMorph methodsFor: 'accessing' stamp: 'KenD 11/27/2013 15:48'!
colorPoint

	^ colorPoint ! !

!ColorPaneMorph methodsFor: 'accessing' stamp: 'KenD 11/27/2013 16:01'!
colorPoint: aPoint

	colorPoint := aPoint! !

!ColorPaneMorph methodsFor: 'accessing' stamp: 'KenD 11/27/2013 14:58'!
colorSelector

	^ #(red green blue hue saturation brightness) at: self zIndex ! !

!ColorPaneMorph methodsFor: 'accessing' stamp: 'KenD 11/27/2013 16:11'!
focusColor
	"Answer my focus color"
	
	^ ({
		[ :x :y :z | Color r: z/256 g: x/256 b: y/256 ] . "Red"
		[ :x :y :z | Color r: x/256 g: z/256 b: y/256 ] . "Green"
		[ :x :y :z | Color r: x/256 g: y/256 b: z/256 ] . "Blue"
		[ :x :y :z | Color h: z s: x/256 v: y/256 ]. "Hue"
		[ :x :y :z | Color h: x/256*360 s: z/256 v: y/256 ]. "Saturation"
		[ :x :y :z | Color h: z s: x/256 v: y/256 ]. "Brightness"
	} at: zIndex) value: colorPoint x value: colorPoint y value: zValue 

! !

!ColorPaneMorph methodsFor: 'accessing' stamp: 'KenD 11/26/2013 18:20'!
focusMorph

	^ focusMorph! !

!ColorPaneMorph methodsFor: 'initialization' stamp: 'KenD 11/26/2013 17:04'!
focusMorphDiameter
	
	^ 10! !

!ColorPaneMorph methodsFor: 'initialization' stamp: 'KenD 11/27/2013 14:45'!
fromModel: model selector: aSelector

	zIndex := self zIndexFromSelector: aSelector.
	self 
		updateColorFromModel: model;
		makeBaseForm;
		refreshForm 
! !

!ColorPaneMorph methodsFor: 'events' stamp: 'KenD 11/27/2013 15:29'!
handlesMouseDown: aMouseButtonEvent
	"Do I want to receive mouseDown events (mouseDown:, mouseMove:, mouseUp:)?"

	^true! !

!ColorPaneMorph methodsFor: 'events' stamp: 'KenD 11/27/2013 15:57'!
handlesMouseOver: evt
	"Do I want to receive mouseEnter: and mouseLeave: when the button is up and the hand is empty?" 
	
	^true! !

!ColorPaneMorph methodsFor: 'initialization' stamp: 'KenD 11/26/2013 18:43'!
initialize

	super initialize.
	self image: (Form extent: 256@256 depth: 32).
	self makeFocusMorph.! !

!ColorPaneMorph methodsFor: 'change processing' stamp: 'KenD 11/27/2013 09:44'!
makeBaseForm
	"answer a base form for color plane with (x,y,0)"

	| colorConstructors colorMaker |
	zeroPlaneForm := Form extent: 256@256 depth:  32.
	colorConstructors := {
		[ :x :y :z | Color r: z g: x/256 b: y/256 ] . "Red"
		[ :x :y :z | Color r: x/256 g: z b: y/256 ] . "Green"
		[ :x :y :z | Color r: x/256 g: y/256 b: z ] . "Blue"
		[ :x :y :z | Color h: z s: x/256 v: y/256 ]. "Hue"
		[ :x :y :z | Color h: x/256*360 s: z v: y/256 ]. "Saturation"
		[ :x :y :z | Color h: z s: x/256 v: y/256 ]. "Brightness"
	}.
	colorMaker := colorConstructors at: self zIndex.
	1 to: 256 do: [ :x |
		1 to: 256 do:  [ :y | 
			zeroPlaneForm colorAt: x @ y put: (colorMaker value: x value: y value: 0)
		]
	].


	"@@FIXME@@"
	! !

!ColorPaneMorph methodsFor: 'initialization' stamp: 'KenD 11/26/2013 18:43'!
makeFocusMorph

	focusMorph := EllipseMorph new. 
	focusMorph 
		morphExtent: self focusMorphDiameter @ self focusMorphDiameter;
		color: Color transparent;
		borderWidth: 2;
		borderColor: Color orange;
		morphPosition: 0@0.
		
	self addMorph: self focusMorph.! !

!ColorPaneMorph methodsFor: 'events-processing' stamp: 'KenD 11/27/2013 15:48'!
mouseButton1Up: aMouseButtonEvent localPosition: localEventPosition

	(self morphContainsPoint: localEventPosition)
		ifTrue: [ 
				self colorPoint: localEventPosition.
				self triggerEvent: #colorChanged
		]
! !

!ColorPaneMorph methodsFor: 'events-processing' stamp: 'KenD 11/27/2013 15:57'!
mouseEnter: event

	Cursor currentCursor: Cursor crossHair ! !

!ColorPaneMorph methodsFor: 'events-processing' stamp: 'KenD 11/27/2013 15:59'!
mouseLeave: event

	Cursor currentCursor: Cursor normal! !

!ColorPaneMorph methodsFor: 'change processing' stamp: 'KenD 11/27/2013 09:27'!
refreshForm
	"Create color pane from x,y base blending in z"

	| plane colorMaker |
	colorMaker := {
		[ Color r: self zValue / 256 g: 0 b: 0 ]. "Red"
		[ Color r: 0 g: self zValue / 256 b: 0 ]. "Green"
		[ Color r: 0 g: 0 b: self zValue / 256 ]. "Blue"
		[ Color h: self zValue s: 0 v: 0 ]. "Hue -- Nota Bene: 0..360.0 NOT 0..1.0"
		[ Color h: 0 s: self zValue / 100 v: 0 ]. "Saturation"
		[ Color h: 0 s: 0 v: self zValue / 100 ]. "Brightness"
	}.
	self image: (self zeroPlaneForm copy). "(x,y,0)"
	plane := ((colorMaker at: self zIndex) value) 
				iconOrThumbnailOfSize: 256@256. "(0,0,z)"
	self form copy: (0@0 corner: 256@256) from: plane to: 0@0 rule: 20 "rgbAdd"
! !

!ColorPaneMorph methodsFor: 'change processing' stamp: 'KenD 11/27/2013 14:54'!
resetFocus

	self focusMorph morphPosition: (colorPoint - (self focusMorphDiameter / 2))
	! !

!ColorPaneMorph methodsFor: 'events-processing' stamp: 'KenD 11/27/2013 14:56'!
updateColorFromModel: model
	"No selector change, but color changed"
	
	|  updateFuns |
	updateFuns := {
		[ zValue := model red. colorPoint := model green @ model blue ].
		[ zValue := model green. colorPoint := model red @ model blue ].
		[ zValue := model blue. colorPoint := model red @ model green ].
		[ zValue := model hue. colorPoint := model saturation @ model brightness ].
		[ zValue := model saturation. colorPoint := model hue @ model brightness ].
		[ zValue := model brightness. colorPoint := model hue @ model saturation ].
	}.
	(updateFuns at: self zIndex) value.
	self refreshForm.
	self resetFocus.
! !

!ColorPaneMorph methodsFor: 'accessing' stamp: 'KenD 11/26/2013 18:27'!
zIndex

	^ zIndex
! !

!ColorPaneMorph methodsFor: 'initialization' stamp: 'KenD 11/26/2013 21:35'!
zIndex: oneTo6 zValue: anInteger colorPoint: aPoint

	zIndex := oneTo6.
	zValue := anInteger.
	colorPoint := aPoint.
	self focusMorph morphPosition: (aPoint - (self focusMorphDiameter / 2)).
	self makeBaseForm.
	self refreshForm.
! !

!ColorPaneMorph methodsFor: 'initialization' stamp: 'KenD 11/27/2013 09:21'!
zIndexFromSelector: aSelector

	^ #(red green blue hue saturation brightness) 
			indexOf: aSelector asLowercase asSymbol
			ifAbsent: [ self error: 'Invalid selector' , aSelector asString ]! !

!ColorPaneMorph methodsFor: 'accessing' stamp: 'KenD 11/26/2013 13:29'!
zValue

	^ zValue ! !

!ColorPaneMorph methodsFor: 'accessing' stamp: 'KenD 11/26/2013 13:31'!
zValue: zeroTo255

	zValue := zeroTo255.  "Does NOT change colorPoint"
! !

!ColorPaneMorph methodsFor: 'accessing' stamp: 'KenD 11/26/2013 17:48'!
zeroPlaneForm

	^ zeroPlaneForm! !

!ColorPaneMorph class methodsFor: 'accessing' stamp: 'KenD 11/26/2013 14:33'!
blueIndex

	^ BlueIndex ! !

!ColorPaneMorph class methodsFor: 'accessing' stamp: 'KenD 11/26/2013 14:34'!
brightnessIndex

	^ BrightnessIndex ! !

!ColorPaneMorph class methodsFor: 'examples' stamp: 'KenD 11/26/2013 18:22'!
greenExample
	"RGB with Color Teal: r=2,g=147,b=134"
	"123"
"
	self greenExample.
"
	(self 
		zSelector: #Green
		zValue: 147 
		colorPoint: 2@134) openInWorld! !

!ColorPaneMorph class methodsFor: 'accessing' stamp: 'KenD 11/26/2013 14:33'!
greenIndex

	^ GreenIndex ! !

!ColorPaneMorph class methodsFor: 'accessing' stamp: 'KenD 11/26/2013 14:33'!
hueIndex

	^ HueIndex ! !

!ColorPaneMorph class methodsFor: 'class initialization' stamp: 'KenD 11/26/2013 18:04'!
initialize
	"self initialize"
	
	"See usage in ColorPaneMorph>>makeBaseForm"
	RedIndex := 1. 
	GreenIndex := 2.
	BlueIndex := 3.
	HueIndex := 4.
	SaturationIndex := 5.
	BrightnessIndex := 6.! !

!ColorPaneMorph class methodsFor: 'accessing' stamp: 'KenD 11/26/2013 14:33'!
redIndex

	^ RedIndex ! !

!ColorPaneMorph class methodsFor: 'accessing' stamp: 'KenD 11/26/2013 14:34'!
saturationIndex

	^ SaturationIndex ! !

!ColorPaneMorph class methodsFor: 'instance creation' stamp: 'KenD 11/26/2013 18:14'!
zSelector: aSymbol zValue: anInteger colorPoint: aPoint

	^ self new 
			zIndex: (#(Red Green Blue Hue Saturation Brightness) 
						 indexOf: aSymbol
						 ifAbsent: [ self error: 'Invalid selector' , aSymbol asString ])
			zValue: anInteger 
			colorPoint: aPoint! !

!RadioGroup methodsFor: 'accessing' stamp: 'KenD 11/24/2013 16:55'!
buttonFor: aSymbol
	"Return aRadioButton corresponding to selector"
	
	| symbols row |
	symbols := self list.
	row :=  submorphs at: ((symbols size) + 1 - (symbols indexOf: aSymbol ifAbsent: [ ^nil ])).
	^ row submorphs detect: [ :s | s class == RadioButtonMorph ] ifNone: [ nil ]! !

!RadioGroup methodsFor: 'accessing' stamp: 'KenD 11/19/2013 21:02'!
buttonOnLeft

	^ buttonOnLeft ! !

!RadioGroup methodsFor: 'initialization' stamp: 'KenD 11/20/2013 15:05'!
buttonOnLeft: aBoolean

	buttonOnLeft := aBoolean ! !

!RadioGroup methodsFor: 'accessing' stamp: 'KenD 11/20/2013 13:56'!
buttons

	^ buttons! !

!RadioGroup methodsFor: 'accessing' stamp: 'KenD 11/20/2013 13:56'!
buttons: arrayOfRadioButtons

	buttons := arrayOfRadioButtons.! !

!RadioGroup methodsFor: 'accessing' stamp: 'KenD 11/19/2013 19:46'!
font

	^ font! !

!RadioGroup methodsFor: 'initialization' stamp: 'KenD 11/19/2013 19:48'!
fromList: arrayOfSymbols

	self list: arrayOfSymbols ! !

!RadioGroup methodsFor: 'initialization' stamp: 'KenD 11/24/2013 09:03'!
initialize
	"Initialize self to harmless values"
	
	super initialize.
	self setList: #(); "see #list: setter"
		 setFont: Preferences standardButtonFont;
		 buttonOnLeft: true;
		 separation: 2;
		 color: Theme current background! !

!RadioGroup methodsFor: 'accessing' stamp: 'KenD 11/19/2013 19:45'!
labelStrings

	^ self list collect: [ :each | each asString ]! !

!RadioGroup methodsFor: 'accessing' stamp: 'KenD 11/19/2013 19:45'!
list
	"Answer my array of label symbols"

	^ list! !

!RadioGroup methodsFor: 'accessing' stamp: 'KenD 11/24/2013 09:18'!
list: arrayOfSymbols
	"Set up my submorphs from arrayOfSymbols"

	| maxStringWidth labelLayout buttonList labelList |
	maxStringWidth := 0.
	self removeAllMorphs; "Don't keep old stuff."
		 setList: arrayOfSymbols.
	buttonList := OrderedCollection new.
	labelList    := OrderedCollection new.
	arrayOfSymbols do: [ :labelSym | | newRow label button |
		newRow := LayoutMorph newRow.
		newRow separation: 2.
		button := (RadioButtonMorph ofSize: RadioButtonMorph defaultDiameter).
		label := StringMorph contents: labelSym asString font: self font.
		maxStringWidth := maxStringWidth max: (self font widthOfString: labelSym).
		(self buttonOnLeft)
			ifTrue: [ newRow  addMorph: button; addMorph: label ] 
			ifFalse: [ newRow addMorph: label; addMorph: button ].
		buttonList add: button.
		labelList add: label.
		self 
			addMorph: newRow 
			layoutSpec: (LayoutSpec
				fixedHeight: (self font height max: RadioButtonMorph defaultDiameter) + 2)

	].
	self buttons: buttonList asArray.
	self buttons do: [ :b | b when: #radioSelection send: #newSelection: to: self ].
	
	"Make all labels have same width"
	labelLayout := LayoutSpec 
			fixedWidth: maxStringWidth + 4
			fixedHeight: self font height
			minorDirectionPadding: #center.
	labelList do: [ :label | label layoutSpec: labelLayout ].

! !

!RadioGroup methodsFor: 'events-processing' stamp: 'KenD 11/20/2013 15:11'!
newSelection: radioButton

	"Unselect other buttons"
	self buttons do: [ :b | b == radioButton ifFalse: [ b isSelected: false ] ].
	self triggerEvent: #informRadioSelection with: (self symbolForButton: radioButton)
	! !

!RadioGroup methodsFor: 'accessing' stamp: 'KenD 11/23/2013 16:18'!
rowFor: aSymbol
	"My rows are submorphs inversly ordered from my list"
	
	| symbols |
	symbols := self list.

	^ self submorphs at: ((symbols size) + 1 - (symbols indexOf: aSymbol ifAbsent: [ ^nil ]))! !

!RadioGroup methodsFor: 'initialization' stamp: 'KenD 11/20/2013 15:06'!
setFont: aFont

	font := aFont ! !

!RadioGroup methodsFor: 'initialization' stamp: 'KenD 11/20/2013 15:06'!
setList: arrayOfSymbols

	list := arrayOfSymbols ! !

!RadioGroup methodsFor: 'accessing' stamp: 'KenD 11/20/2013 14:49'!
symbolForButton: radioButton

	^ self list at: (self buttons indexOf: radioButton)! !

!RadioGroup methodsFor: 'events-processing' stamp: 'KenD 11/25/2013 19:29'!
unselectAll

	self buttons do: [ :b | b isSelected: false ].
	self redrawNeeded 
	! !

!RadioGroup class methodsFor: 'class initialization' stamp: 'KenD 11/19/2013 19:38'!
fromList: buttonLables
	"Add label list as array of symbols to a new instance of me"

	| listOfSymbols |
	listOfSymbols := OrderedCollection new.
	buttonLables do: [ :each | listOfSymbols add: each asSymbol ].
	
	^ self newColumn fromList: listOfSymbols asArray ! !

!SimpleNumberEntryMorph methodsFor: 'drawing' stamp: 'KenD 11/21/2013 19:11'!
drawOn: aCanvas

	self hasSelection ifTrue: [ self drawSelectionOn: aCanvas ].
	self hasTextCursor ifTrue: [ self drawTextCursorOn: aCanvas ].
	aCanvas
		drawString: contents
		in: (2@0 extent: extent - 2)
		font: self fontToUse
		color: color.
		
	aCanvas
		frameRectangle: (0@0  extent: self morphExtent)
		color: Color black
		borderWidth: 2
		borderStyleSymbol: #simple
! !

!SimpleNumberEntryMorph methodsFor: 'accessing' stamp: 'KenD 11/21/2013 15:07'!
entryChars

	^ entryChars! !

!SimpleNumberEntryMorph methodsFor: 'events' stamp: 'KenD 11/23/2013 19:54'!
keyStroke: aKeyboardEvent
	"Check for legal char if in ASCII range, else let super so it"
	
	(aKeyboardEvent isKeystroke) ifTrue: [ | keyChar |
		keyChar := aKeyboardEvent keyCharacter.
		((keyChar asciiValue between: 32 and: 126) "space .. ~"
			and: [(self entryChars includes: keyChar) not])
			ifTrue: [ "reject"
				self flash.
				^ self
			]
	].

	super keyStroke: aKeyboardEvent! !

!SimpleNumberEntryMorph methodsFor: 'initialization' stamp: 'KenD 11/23/2013 19:57'!
legalChars: legalEntryChars numCharsToHold: nilOrInteger value: initialValue validator: aClosureToValidate toString: aClosureForString

	entryChars := legalEntryChars.
	numCharsToHold := nilOrInteger.
	theValue := initialValue.
	validator := aClosureToValidate.
	toString := aClosureForString.
	self contents: (self toString value: initialValue).
	self crAction: [ | newString newVal |
		newString := self editor string.
		(newString size = 0)
			ifTrue: [ newVal := nil ] "Empty String"
			ifFalse: [ newVal := self validator value: newString ].
		newVal ifNil: [ self flash.  "rejected"
						self contents: (self toString value: self value).
				 ]
				 ifNotNil: [ self setValue: newVal ]. "accepted"
	].
	self numCharsToHold 
		ifNotNil: [ | desiredExtent |
			desiredExtent := self measureContents.
			self layoutSpec: (LayoutSpec 
				fixedWidth: desiredExtent x 
				fixedHeight: desiredExtent y
				minorDirectionPadding: #center)
	].
! !

!SimpleNumberEntryMorph methodsFor: 'accessing' stamp: 'KenD 11/21/2013 16:48'!
measureContents
	| font |

	(self numCharsToHold) ifNil: [ ^ super measureContents ].
	
	font _ self fontToUse.
	^ (4 + (((font widthOfString: '0') * self numCharsToHold) max: 3)  @ font height).! !

!SimpleNumberEntryMorph methodsFor: 'accessing' stamp: 'KenD 11/21/2013 15:06'!
numCharsToHold

	^ numCharsToHold! !

!SimpleNumberEntryMorph methodsFor: 'events' stamp: 'KenD 11/22/2013 20:55'!
refreshValueFrom: model
	"Refresh my value from model"
	
	self valueAccessor ifNotNil: [ :accessor | 
				theValue := accessor value: model.
				self contents: (self toString value: self value).
				self redrawNeeded
	]! !

!SimpleNumberEntryMorph methodsFor: 'accessing' stamp: 'KenD 11/23/2013 19:55'!
setValue: newValue

	(theValue == newValue) ifTrue: [ ^self ].
	theValue := newValue.
	self contents: (self toString value: self value).
	self valueUpdator ifNotNil: [ :update | update value: newValue]! !

!SimpleNumberEntryMorph methodsFor: 'accessing' stamp: 'KenD 11/21/2013 15:08'!
toString

	^ toString! !

!SimpleNumberEntryMorph methodsFor: 'accessing' stamp: 'KenD 11/21/2013 15:08'!
validator

	^ validator! !

!SimpleNumberEntryMorph methodsFor: 'accessing' stamp: 'KenD 11/21/2013 16:22'!
value

	^ theValue ! !

!SimpleNumberEntryMorph methodsFor: 'accessing' stamp: 'KenD 11/22/2013 19:15'!
valueAccessor
	
	^ valueAccessor! !

!SimpleNumberEntryMorph methodsFor: 'accessing' stamp: 'KenD 11/22/2013 19:16'!
valueAccessor: aOneArgBlock
	
	valueAccessor := aOneArgBlock! !

!SimpleNumberEntryMorph methodsFor: 'accessing' stamp: 'KenD 11/22/2013 19:16'!
valueUpdator
	
	^ valueUpdator! !

!SimpleNumberEntryMorph methodsFor: 'accessing' stamp: 'KenD 11/22/2013 19:16'!
valueUpdator: aOneArgBlock
	
	valueUpdator := aOneArgBlock! !

!SimpleNumberEntryMorph class methodsFor: 'examples' stamp: 'KenD 11/23/2013 20:04'!
circleDegrees
	"Answer 0..360.0 or nil"

	^ self new
			legalChars: '12345.67890'
		     numCharsToHold: 5 
			value: 0 
			validator: [ :str | | degrees |
				degrees := [ str asNumber ] on: Error do: [ -1 ].
				(degrees between: 0 and: 360) 
					ifTrue: [ degrees ]
					ifFalse: [ nil ]
			]
			toString: [ :n | n printString ]! !

!SimpleNumberEntryMorph class methodsFor: 'examples' stamp: 'KenD 11/23/2013 20:03'!
circleDegreesExact
	"Answer 0..360 or nil"

	^ self new
			legalChars: '1234567890' "No $. "
		     numCharsToHold: 3 
			value: 0 
			validator: [ :str | | degrees |
				degrees := [ str asNumber ] on: Error do: [ -1 ].
				(degrees between: 0 and: 360) 
					ifTrue: [ degrees ]
					ifFalse: [ nil ]
			]
			toString: [ :n | n printString ]! !

!SimpleNumberEntryMorph class methodsFor: 'examples' stamp: 'KenD 11/23/2013 20:03'!
circleDegreesRounded
	"Answer 0..360 or nil"

	^ self new
			legalChars: '12345.67890' "Includes $. "
		     numCharsToHold: 3 
			value: 0 
			validator: [ :str | | degrees |
				degrees := [ str asNumber ] on: Error do: [ -1 ].
				(degrees between: 0 and: 360) 
					ifTrue: [ degrees rounded ] 
					ifFalse: [ nil ]
			]
			toString: [ :n | n printString ]! !

!SimpleNumberEntryMorph class methodsFor: 'examples' stamp: 'KenD 11/23/2013 20:01'!
hexEntryOfSize: numChars
	"Answer 0.FF* or nil"
	"E.g. size = 6 for  'FFFFFF' "

	^ self new
			legalChars: '1234567890ABCDEFabcdef'
		     numCharsToHold: numChars 
			value: 0 
			validator: [ :str | 
				(str size <= numChars)
				ifTrue: [[ ('16r', str asUppercase) asNumber ] on: Error do: [ nil ]]
				ifFalse: [ nil ]]
			toString: [ :n | n printStringHex ]! !

!SimpleNumberEntryMorph class methodsFor: 'instance creation' stamp: 'KenD 11/21/2013 14:35'!
legalChars: entryChars numCharsToHold: nilOrInteger value: initialValue validator: aClosureToValidate toString: aClosureForString

	self new legalChars: entryChars numCharsToHold: nilOrInteger value: initialValue validator: aClosureToValidate toString: aClosureForString! !

!SimpleNumberEntryMorph class methodsFor: 'examples' stamp: 'KenD 11/23/2013 20:01'!
percent
	"Answer 0..100.0 or nil"

	^ self new
			legalChars: '12345.67890'
		     numCharsToHold: 3 
			value: 0 
			validator: [ :str | | val | 
				val := [ str asNumber ] on: Error do: [ -1 ].
				(val between: 0 and: 100) ifFalse: [ nil ] ifTrue: [ val ]
			] 
			toString: [ :n | n printString ]! !

!SimpleNumberEntryMorph class methodsFor: 'examples' stamp: 'KenD 11/23/2013 20:01'!
percentExact
	"Answer 0..100 or nil"

	^ self new
			legalChars: '1234567890'  "No $. "
		     numCharsToHold: 3 
			value: 0 
			validator: [ :str | | val | 
				val := [ str asNumber ] on: Error do: [ -1 ].
				(val between: 0 and: 100) ifFalse: [ nil ] ifTrue: [ val ]
			] 
			toString: [ :n | n printString ]! !

!SimpleNumberEntryMorph class methodsFor: 'examples' stamp: 'KenD 11/23/2013 20:02'!
rgbOneOf
	"Answer 0..255 or nil"

	^ self new
			legalChars: '1234567890'
		     numCharsToHold: 3 
			value: 0 
			validator: [ :str | | val |
				 val := [str asNumber ] on: Error do: [ -1 ].
				(val between: 0 and: 255) 
					ifTrue: [ val ]
					ifFalse: [ nil ]
			]
			toString: [ :n | n printString ]! !
RadioButtonMorph initialize!
ColorPaneMorph initialize!
