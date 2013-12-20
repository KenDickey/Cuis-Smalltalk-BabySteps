'From Cuis 4.2 of 25 July 2013 [latest update: #1880] on 19 December 2013 at 5:15:31.166688 pm'!
'Description A ColorEditor'!
!provides: 'Morphic-ColorEditor' 1 59!
!requires: 'Graphics-Files-Additional' 1 nil nil!
!requires: 'CSS3-NamedColors' 1 0 nil!
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
	instanceVariableNames: 'colorPane colorSwatch sliderColumn closeColorSwatch closeColorLabel closestRGB radioSelection rgbRadio hsvRadio closestColordictColor rgbString'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-ColorEditor'!
!classDefinition: 'ColorEditorWindow class' category: #'Morphic-ColorEditor'!
ColorEditorWindow class
	instanceVariableNames: ''!

!classDefinition: #DropTargetMorph category: #'Morphic-ColorEditor'!
SystemWindow subclass: #DropTargetMorph
	instanceVariableNames: 'targetMorph'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-ColorEditor'!
!classDefinition: 'DropTargetMorph class' category: #'Morphic-ColorEditor'!
DropTargetMorph class
	instanceVariableNames: ''!

!classDefinition: #ColorPaneMorph category: #'Morphic-ColorEditor'!
ImageMorph subclass: #ColorPaneMorph
	instanceVariableNames: 'zeroPlaneForm zIndex zValue colorPoint focusMorph'
	classVariableNames: 'BlueIndex BrightnessForm BrightnessIndex BrightnessOverlay GBForm GreenIndex HueIndex HueOverlay RBForm RGForm RedIndex SaturationForm SaturationIndex SaturationOverlay'
	poolDictionaries: ''
	category: 'Morphic-ColorEditor'!
!classDefinition: 'ColorPaneMorph class' category: #'Morphic-ColorEditor'!
ColorPaneMorph class
	instanceVariableNames: ''!

!classDefinition: #ColorSliderMorph category: #'Morphic-ColorEditor'!
ImageMorph subclass: #ColorSliderMorph
	instanceVariableNames: 'colorPane sliderMorph maxZValue'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-ColorEditor'!
!classDefinition: 'ColorSliderMorph class' category: #'Morphic-ColorEditor'!
ColorSliderMorph class
	instanceVariableNames: ''!

!classDefinition: #DropColorMorph category: #'Morphic-ColorEditor'!
ImageMorph subclass: #DropColorMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-ColorEditor'!
!classDefinition: 'DropColorMorph class' category: #'Morphic-ColorEditor'!
DropColorMorph class
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

!DropTargetMorph commentStamp: '<historical>' prior: 0!
I am a transcient drop target for a morph.

I allow one to drop morphs which make changes to myMorph.
Each such morph has property DropActionMorph set to true.
!

!ColorPaneMorph commentStamp: '<historical>' prior: 0!
I present a plane in a color cube.

The x and y selectors map to a 256 x 256 plane (slice of a 3d cube) with a constant z.
	o-------> X
	|
	|				X and Y coordinates are as per Smalltalk view coordinates 
	v                    (y increasing downward)
	Y
The z value is "mixed in" to give a (x,y,z) color plane. [see #refreshForm]

The selected color point (x,y) is visually noted by a focusMorph "ring".
One may click on the pane to update the colorPoint.
Click and hold to pick up a color swatch.
The z value corresponds to the slider/scroller position mapped to the range:
	R/G/B       0..255
	Hue          0..360 (degrees)
	Sat/Bright 0..100 (%).

Note that RGB are additive colors.   
  E.g. for (x,y)=(red,blue);z=green 
  The "background" varies over r&b and a fixed g overlay is added.
HSV is more complex
  Basically an alpha is used to blend background and overlay.

See ColorPaneMorph>>refreshForm and 
	ColorPaneMorph class>>make*Form  and 
	>>make*Overlay  methods for details!

!ColorSliderMorph commentStamp: '<historical>' prior: 0!
I am a slider (a kind of ScrollBar) which shows a color range as a background.

The associated ColorPane has a Focus Color (x,y) at constant z.
This pane shows the range of color of z at the focus point -- constant (x,y)
!

!DropColorMorph commentStamp: '<historical>' prior: 0!
I am picked up to be dropped on another morph.

I change that morph's color to my color.

See method #dropAction:!

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

!Morph methodsFor: '*morphic-coloreditor' stamp: 'KenD 12/3/2013 17:34'!
addCustomMenuItems: aCustomMenu hand: aHandMorph
	"Add morph-specific items to the given menu which was invoked by the given hand.  This method provides is invoked both from the halo-menu and from the control-menu regimes."

	aCustomMenu 
		addLine;
		add: 'Show my Drop Target' action: #showDropTarget! !

!Morph methodsFor: '*morphic-coloreditor' stamp: 'KenD 12/3/2013 18:33'!
showDropTarget
	"Display a DropTargetMorph for me"

	DropTargetMorph openFor: self! !

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

!ColorEditorModel methodsFor: 'accessing' stamp: 'KenD 11/27/2013 20:09'!
greenFactor: zeroToOne

	self setColor: (Color 
		r: self color red
		g: (zeroToOne * 255 / 255) asFloat 
		b: self color blue)! !

!ColorEditorModel methodsFor: 'printing' stamp: 'KenD 12/8/2013 09:16'!
hexStringRGB
	"Answer my RGB as hex but with no 16r prefix"

"	^ (self red    printPaddedWith: $0 to: 2 base: 16) , 
	  (self green printPaddedWith: $0 to: 2 base: 16) , 
	  (self blue   printPaddedWith: $0 to: 2 base: 16)
	"
	^ self class hexStringRGB: self color! !

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

!ColorEditorModel methodsFor: 'printing' stamp: 'KenD 12/2/2013 15:36'!
rgbValue
	"Answer my RGB as an integer"

	^ ( '16r', 
	    (self red    printPaddedWith: $0 to: 2 base: 16) ,
	    (self green printPaddedWith: $0 to: 2 base: 16) , 
	    (self blue   printPaddedWith: $0 to: 2 base: 16) ) asNumber! !

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

!ColorEditorModel methodsFor: 'accessing' stamp: 'KenD 12/2/2013 16:24'!
setRGBColorFromInteger: anInteger
	"Set my color from integer interpreted as RGB value"
	
	| aColor |
	aColor := Color 
					r: ((anInteger bitShift: -16) bitAnd: 255)	/ 255
					g: ((anInteger bitShift: -8) bitAnd: 255) / 255
					b: (anInteger bitAnd: 255) / 255.
			
	^ self setColor: aColor

! !

!ColorEditorModel class methodsFor: 'instance creation' stamp: 'KenD 11/23/2013 15:55'!
color: aColor

	^ self new setColor: aColor! !

!ColorEditorModel class methodsFor: 'printing' stamp: 'KenD 12/6/2013 18:51'!
hexStringRGB: aColor
	"Answer aColor RGB as hex but with no 16r prefix"

	^ (((aColor red    * 255) rounded)  printPaddedWith: $0 to: 2 base: 16) , 
	  (((aColor green * 255) rounded)  printPaddedWith: $0 to: 2 base: 16) , 
	  (((aColor blue   * 255) rounded)   printPaddedWith: $0 to: 2 base: 16)! !

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

!RadioButtonMorph class methodsFor: 'new-morph participation' stamp: 'KenD 12/6/2013 19:06'!
includeInNewMorphMenu
	"Return true for all classes that can be instantiated from the menu"
	
	^ false! !

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

!PluggableScrollBar class methodsFor: 'new-morph participation' stamp: 'KenD 12/6/2013 19:06'!
includeInNewMorphMenu
	"Return true for all classes that can be instantiated from the menu"
	
	^ false! !

!ColorEditorWindow methodsFor: 'GUI building' stamp: 'KenD 12/5/2013 19:56'!
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
		separation: 6;
		addMorph: colorPane.
	
	^ colorPaneColumn ! !

!ColorEditorWindow methodsFor: 'GUI building' stamp: 'KenD 12/8/2013 08:03'!
buildMorphicWindow
	"Create a useful ColorEditor window"
	
	self layoutMorph beRow; " A row of columns"
		 separation: 6;
		 addMorph: self buildColorPaneColumn;
			 layoutSpec: (LayoutSpec 
							fixedWidth: 256 
							fixedHeight: 256 
							minorDirectionPadding: #center);
		 addMorph: self buildSliderColumn
			 layoutSpec: (LayoutSpec 
							proportionalWidth: 0.05
							proportionalHeight: 1 
							minorDirectionPadding: #center);
		 addMorph: self buildRadioButtonColumn
			 layoutSpec: (LayoutSpec 
							proportionalWidth: 0.7
							proportionalHeight: 1 
							minorDirectionPadding: #center);
		layoutSpec: (LayoutSpec keepMorphExtent).
		
	self model when: #colorChanged send: #refreshColor to: self.
	
	^ self
! !

!ColorEditorWindow methodsFor: 'GUI building' stamp: 'KenD 12/6/2013 19:02'!
buildRadioButtonColumn

	| radioCol setupEntryMorph valueEntryMorph hexDisplayLayout swatchLayout aLayout |
	rgbRadio := RadioGroup fromList: #(Red Green Blue).
	hsvRadio := RadioGroup fromList: #(Hue Saturation Brightness).
	rgbRadio when: #informRadioSelection send: #newRadioSelection: to: self.
	hsvRadio when: #informRadioSelection send: #newRadioSelection: to: self.
	setupEntryMorph := [ :sym :entryMorph | | selector |
		selector := sym asLowercase asSymbol.
		entryMorph valueAccessor: [ :myModel | myModel perform: selector ].
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
	
	hexDisplayLayout := LayoutMorph newRow.
	hexDisplayLayout 
		addMorph: (StringMorph new contents: '16r') 
			layoutSpec: (LayoutSpec keepMorphExtent);
		addMorph: self rgbString 
			layoutSpec: (LayoutSpec keepMorphExtent);
		addMorph: (StringMorph new contents: ' hexRGB') 
			layoutSpec: (LayoutSpec keepMorphExtent).

	self rgbString 
		valueAccessor: [ :myModel | myModel rgbValue ];
		valueUpdator: [ :myValue | self model setRGBColorFromInteger: myValue ];
		refreshValueFrom: self model.
	self model when: #colorChanged send: #refreshValueFrom: to: rgbString.

	swatchLayout := LayoutMorph newRow.
	aLayout := LayoutMorph newColumn.
	closeColorSwatch := ImageMorph new.
	closeColorLabel	:= StringMorph new contents: ''.
	aLayout
		addMorph: closeColorSwatch;
		addMorph: closestRGB layoutSpec: (LayoutSpec 	keepMorphExtent);
		addMorph: closeColorLabel layoutSpec: (LayoutSpec 	keepMorphExtent).

	swatchLayout 
		addMorph: self colorSwatch;
		addMorph: aLayout;
		layoutSpec: (LayoutSpec
						 proportionalWidth: 1.0
						 fixedHeight: 32
						 minorDirectionPadding: #left).

	radioCol := LayoutMorph newColumn.
	^ radioCol 
		separation: 6;
		addMorph: rgbRadio;
		addMorph: hsvRadio;
		addMorph: swatchLayout;
		addMorph: hexDisplayLayout 
		    layoutSpec: (LayoutSpec fixedWidth: 300 
											fixedHeight: 20
											minorDirectionPadding: #center);
		yourself
	! !

!ColorEditorWindow methodsFor: 'GUI building' stamp: 'KenD 12/5/2013 19:53'!
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

!ColorEditorWindow methodsFor: 'initialization' stamp: 'KenD 12/6/2013 18:44'!
initialize

	super initialize.
	model := ColorEditorModel new.
	colorSwatch := DropColorMorph fromColor: model color.
	rgbString := SimpleNumberEntryMorph hexRGBEntry.
	closestRGB := StringMorph new contents: ''.
	self refreshColorSwatch.

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

!ColorEditorWindow methodsFor: 'color updating' stamp: 'KenD 12/7/2013 15:24'!
refreshCloseColor
	"model color has changed.  Refresh my views."
	
	| closeAssoc |
	closeAssoc := self model color closestAssocFrom: Color css3ColorDictionary.
	closeColorSwatch image: (closeAssoc value iconOrThumbnailOfSize: 32).
	closeColorLabel contents: closeAssoc key asString.
	closestRGB contents: '16r', (ColorEditorModel hexStringRGB: closeAssoc value).
! !

!ColorEditorWindow methodsFor: 'color updating' stamp: 'KenD 12/5/2013 21:57'!
refreshColor
	"model color has changed.  Refresh my views."
	
	self 
		refreshColorSwatch;
		refreshColorPane;
		refreshCloseColor! !

!ColorEditorWindow methodsFor: 'color updating' stamp: 'KenD 11/27/2013 14:43'!
refreshColorPane
	"When selector changes.."

	self colorPane updateColorFromModel: self model.! !

!ColorEditorWindow methodsFor: 'color updating' stamp: 'KenD 11/30/2013 19:38'!
refreshColorSwatch
	"When color changes"
	
	colorSwatch image: (model color iconOrThumbnailOfSize: self colorSwatchExtent).
	colorSwatch color: self model color! !

!ColorEditorWindow methodsFor: 'GUI building' stamp: 'KenD 12/5/2013 19:48'!
resetSliderColumn: sliderSym
	"Radio selector changed.."

	| scrollBar sliderLabel |
	"#(Red Green Blue Hue Saturation Brightness) inclides: sliderSym"
	scrollBar := ColorSliderMorph colorPane: self colorPane.
	
	(self sliderColumn submorphs 
					detect: [ :s | s class == ColorSliderMorph ] 
					ifNone: [ nil ]) 
		ifNotNil: [ :sb | self colorPane removeDependent: sb ].
		
	self colorPane when: #colorChanged send: #refreshColorFromModel to: scrollBar.
	self colorPane when: #resetFocus send: #redrawBackground to: scrollBar.

	sliderLabel := sliderSym asString.
	
	^self sliderColumn 
		removeAllMorphs;
		separation: 6;
		layoutSpec: (LayoutSpec 
						fixedWidth:  12 + (AbstractFont default 
												widthOfString: 'brightness') "longest string"
						proportionalHeight: 1 
						minorDirectionPadding: #center);
		addMorph: scrollBar;
		addMorph: (StringMorph contents: sliderLabel font: AbstractFont default)
			layoutSpec: (LayoutSpec 
								fixedWidth: (AbstractFont default 
												widthOfString: sliderLabel) + 2
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

!ColorEditorWindow class methodsFor: 'new-morph participation' stamp: 'KenD 12/6/2013 19:09'!
includeInNewMorphMenu
	"Return true for all classes that can be instantiated from the menu"
	
	^ true! !

!ColorEditorWindow class methodsFor: 'instance creation' stamp: 'KenD 12/6/2013 19:10'!
initializedInstance

	|  window |
	window _ self new.
	^ window
		model: (ColorEditorModel new);
		buildMorphicWindow;
		setLabel: 'Color Editor';
		setColor: self defaultColor ;
		morphExtent: self defaultExtent;
		yourself
! !

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

!DropTargetMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 12/3/2013 19:33'!
allowsMorphDrop
	"Answer whether we accept dropping morphs. By default answer false."

	^ true! !

!DropTargetMorph methodsFor: 'initialization' stamp: 'KenD 12/3/2013 18:25'!
defaultBorderColor

	^ Color orange! !

!DropTargetMorph methodsFor: 'initialization' stamp: 'KenD 12/3/2013 18:25'!
defaultColor
	"See through me"

	^ Color transparent! !

!DropTargetMorph methodsFor: 'initialization' stamp: 'KenD 12/3/2013 19:16'!
initialize

	super initialize.
	self widgetsColor: self defaultBorderColor.

! !

!DropTargetMorph methodsFor: 'initialization' stamp: 'KenD 12/3/2013 19:26'!
openFor: aMorph

	targetMorph := aMorph.
	"Nota Bene: must set my extent before asking about label"
	self 
		morphExtent: aMorph morphExtent + self boxExtent;
		setLabel: ('DropTarget for: ', (aMorph printStringLimitedTo: 64));
		openInWorld; "Ignores settings; RESET them!!!!"
		morphPosition: aMorph morphPositionInWorld - self boxExtent ;
		morphExtent: aMorph morphExtent + self boxExtent;
		color: (Color teal alpha: 0.3);
		yourself
	
! !

!DropTargetMorph methodsFor: 'access' stamp: 'KenD 12/3/2013 19:25'!
targetMorph

	^ targetMorph! !

!DropTargetMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 12/3/2013 19:32'!
wantsDroppedMorph: aMorph event: evt
	"Return true if the receiver wishes to accept the given morph, which is being dropped by a hand in response to the given event. Note that for a successful drop operation both parties need to agree. The symmetric check is done automatically via aMorph wantsToBeDroppedInto: self."

	^ (aMorph hasProperty: #DropActionMorph)! !

!DropTargetMorph class methodsFor: 'new-morph participation' stamp: 'KenD 12/6/2013 19:06'!
includeInNewMorphMenu
	"Return true for all classes that can be instantiated from the menu"
	
	^ false! !

!DropTargetMorph class methodsFor: 'instance creation' stamp: 'KenD 12/3/2013 18:40'!
openFor: aMorph

	^ self basicNew initialize openFor: aMorph ! !

!ColorPaneMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 11/30/2013 19:33'!
aboutToGrab: aMorph
	"submorph is being grabbed by a hand.
	Perform necessary adjustments (if any) and return the actual morph
	that should be added to the hand.
	Answer nil to reject the drag."

	^ DropColorMorph fromColor: self focusColor! !

!ColorPaneMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 11/30/2013 19:35'!
allowsSubmorphDrag
	"Answer whether our morphs can just be grabbed with the hand, instead of requiring the use of the halo. Redefined to answer true."
	
	"Click and hold"

	^ true! !

!ColorPaneMorph methodsFor: 'private' stamp: 'KenD 12/5/2013 20:50'!
colorConstructors
	"Answer a closure which takes values from my (x,y,z) and answers a Color.
	The radio button value is Z which determines the 'slider'.
	X and Y range from 0 to 256.
	Z ranges 0 to 255 (rgb) 360 (hue) or 100 (sv).
	
	Hue scale is 0..360; all others are 0..1.0"

	"self colorConstructors at: self zIndex"
	^ {
		[ :x :y :z | Color r: z/255 g: x/255 b: y/255  ] . "Red"
		[ :x :y :z | Color r: x/255 g: z/255 b: y/255 ] . "Green"
		[ :x :y :z | Color r: x/255 g: y/255 b: z/255 ] . "Blue"
		[ :x :y :z | Color h: z s: x/255 v: y/255 ]. "Hue"
		[ :x :y :z | Color h: x/255*360 s: z/100 v: y/255 ]. "Saturation"
		[ :x :y :z | Color h: x/255*360 s: y/255 v: z/100]. "Brightness"
	}! !

!ColorPaneMorph methodsFor: 'accessing' stamp: 'KenD 11/27/2013 15:48'!
colorPoint

	^ colorPoint ! !

!ColorPaneMorph methodsFor: 'accessing' stamp: 'KenD 12/7/2013 15:17'!
colorPoint: aPoint

	(colorPoint = aPoint)
		ifFalse: [ 
			colorPoint := aPoint.
			self triggerEvent: #colorChanged with: self
		]! !

!ColorPaneMorph methodsFor: 'accessing' stamp: 'KenD 11/27/2013 14:58'!
colorSelector

	^ #(red green blue hue saturation brightness) at: self zIndex ! !

!ColorPaneMorph methodsFor: 'accessing' stamp: 'KenD 12/5/2013 20:20'!
focusColor
	"Answer my focus color"
	
	^ (self colorConstructors at: zIndex) value: colorPoint x value: colorPoint y value: zValue 

! !

!ColorPaneMorph methodsFor: 'accessing' stamp: 'KenD 11/26/2013 18:20'!
focusMorph

	^ focusMorph! !

!ColorPaneMorph methodsFor: 'initialization' stamp: 'KenD 11/26/2013 17:04'!
focusMorphDiameter
	
	^ 10! !

!ColorPaneMorph methodsFor: 'initialization' stamp: 'KenD 11/29/2013 14:35'!
fromModel: model selector: aSelector

	zIndex := self zIndexFromSelector: aSelector.
	self updateColorFromModel: model
! !

!ColorPaneMorph methodsFor: 'change processing' stamp: 'KenD 12/5/2013 17:13'!
hackHSVform
	"answer a base form for color plane over (x,y) with constant z.
	This is turtle slow, but accurate"

	| colorMaker displayForm |
	displayForm := Form extent: 256@256 depth: 32.
	colorMaker := self colorConstructors at: self zIndex.
	1 to: 256 do: [ :x |
		1 to: 256 do:  [ :y | 
			displayForm colorAt: x @ y put: (colorMaker value: x value: y value: self zValue)
		]
	].
	self image: displayForm

	! !

!ColorPaneMorph methodsFor: 'events' stamp: 'KenD 12/4/2013 21:52'!
handlesMouseDown: aMouseButtonEvent
	"Do I want to receive mouseDown events (mouseDown:, mouseMove:, mouseUp:)?"

	^ true! !

!ColorPaneMorph methodsFor: 'events' stamp: 'KenD 12/4/2013 21:52'!
handlesMouseOver: evt
	"Do I want to receive mouseEnter: and mouseLeave: when the button is up and the hand is empty?" 
	
	^ true! !

!ColorPaneMorph methodsFor: 'initialization' stamp: 'KenD 11/26/2013 18:43'!
initialize

	super initialize.
	self image: (Form extent: 256@256 depth: 32).
	self makeFocusMorph.! !

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

!ColorPaneMorph methodsFor: 'events-processing' stamp: 'KenD 11/29/2013 00:12'!
mouseButton1Up: aMouseButtonEvent localPosition: localEventPosition

	(self morphContainsPoint: localEventPosition)
		ifTrue: [ 
				self 
					colorPoint: localEventPosition;
					resetFocus;
					triggerEvent: #colorChanged
		]
! !

!ColorPaneMorph methodsFor: 'events-processing' stamp: 'KenD 11/27/2013 15:57'!
mouseEnter: event

	Cursor currentCursor: Cursor crossHair ! !

!ColorPaneMorph methodsFor: 'events-processing' stamp: 'KenD 11/27/2013 15:59'!
mouseLeave: event

	Cursor currentCursor: Cursor normal! !

!ColorPaneMorph methodsFor: 'accessing' stamp: 'KenD 11/28/2013 22:32'!
pureColorForm
	"Create form from current color"

	^ self focusColor iconOrThumbnailOfSize: 256@256

! !

!ColorPaneMorph methodsFor: 'accessing' stamp: 'KenD 11/28/2013 23:20'!
rORgORbForm
	"Answer a pureColorForm of my z component -- which must be Red, Green, or Blue"

	|  colorMaker |
	colorMaker := {
		[ Color r: self zValue / 256 g: 0 b: 0 ]. "Red"
		[ Color r: 0 g: self zValue / 256 b: 0 ]. "Green"
		[ Color r: 0 g: 0 b: self zValue / 256 ]. "Blue"
		[ nil ]. "Hue"
		[ nil ]. "Saturation"
		[ nil ]. "Brightness"
	}.

	^ (colorMaker at: self zIndex) value iconOrThumbnailOfSize: 256@256
	
! !

!ColorPaneMorph methodsFor: 'change processing' stamp: 'KenD 12/1/2013 18:15'!
refreshForm
	"Create color pane from x,y base blending in z"

	| formMaker |
	formMaker := {
		[  "Red"
				self image: (self class gbForm copy). "(x,y,0)"
				self form 
					copy: (0@0 corner: 256@256) 
					from: self rORgORbForm "(0,0,z)"
					to: 0@0 
					rule: 20. "rgbAdd (x,y,0) to (0,0,z)"
		].
		[  "Green"
				self image: (self class rbForm copy). "(x,y,0)"
				self form 
					copy: (0@0 corner: 256@256) 
					from: self rORgORbForm "(0,0,z)"
					to: 0@0 
					rule: 20. "rgbAdd (x,y,0) to (0,0,z)"
		]. 
		[  "Blue"
				self image: (self class rgForm copy). "(x,y,0)"
				self form 
					copy: (0@0 corner: 256@256) 
					from: self rORgORbForm "(0,0,z)"
					to: 0@0 
					rule: 20. "rgbAdd (x,y,0) to (0,0,z)"
		]. 
		[  "Hue"
			self image: ((Color h: zValue s:1 v: 1) iconOrThumbnailOfSize: 256@256). 
			self form 
				copy: (0@0 corner: 256@256) 
				from: self class hueOverlay copy
				to: 0@0 
				rule: Form blend.		
		].
		[  "Saturation"
			self image: self class saturationForm copy.
			self form 
				copyBits: self class saturationOverlay 
				at: 0@0 
				translucent: (100 - zValue  / 100) asFloat
		].
		[  "Brightness"
			self image: self class brightnessForm copy.
			self form 
				copyBits:  (Color black iconOrThumbnailOfSize: 256@256)
				at: 0@0 
				translucent: (100 - zValue / 100) asFloat
		].
	}.
	(formMaker at: zIndex) value
	! !

!ColorPaneMorph methodsFor: 'change processing' stamp: 'KenD 12/5/2013 19:41'!
resetFocus

	self focusMorph morphPosition: (colorPoint - (self focusMorphDiameter / 2)).
	self focusMorph borderColor: self focusColor negated. "Show up against background"
	self triggerEvent: #resetFocus.
	! !

!ColorPaneMorph methodsFor: 'events-processing' stamp: 'KenD 11/29/2013 00:08'!
updateColorFromModel: model
	"No selector change, but color changed"
	
	|  updateFuns |
	updateFuns := {
		[ zValue := model red. colorPoint := model green @ model blue ].
		[ zValue := model green. colorPoint := model red @ model blue ].
		[ zValue := model blue. colorPoint := model red @ model green ].
		[ zValue := model hue.
			colorPoint := (255* (model saturationFactor)) rounded 
				@ (255* (model brightnessFactor)) rounded ].
		[ zValue := model saturation. 
			colorPoint := (255* (model hueFactor)) rounded
				@ (255* (model brightnessFactor)) rounded ].
		[ zValue := model brightness. 
			colorPoint := (255* (model hueFactor)) rounded 
				@ (255* (model saturationFactor)) rounded ].
	}.

	(updateFuns at: self zIndex) value.
	self refreshForm.
	self resetFocus.
! !

!ColorPaneMorph methodsFor: 'accessing' stamp: 'KenD 11/26/2013 18:27'!
zIndex

	^ zIndex
! !

!ColorPaneMorph methodsFor: 'initialization' stamp: 'KenD 12/8/2013 08:07'!
zIndex: oneTo6 zValue: anInteger colorPoint: aPoint

	zIndex := oneTo6.
	zValue := anInteger.
	colorPoint := aPoint.
	self focusMorph morphPosition: (aPoint - (self focusMorphDiameter / 2)).
	self refreshForm;
		 triggerEvent: #colorChanged
! !

!ColorPaneMorph methodsFor: 'initialization' stamp: 'KenD 11/27/2013 09:21'!
zIndexFromSelector: aSelector

	^ #(red green blue hue saturation brightness) 
			indexOf: aSelector asLowercase asSymbol
			ifAbsent: [ self error: 'Invalid selector' , aSelector asString ]! !

!ColorPaneMorph methodsFor: 'accessing' stamp: 'KenD 11/26/2013 13:29'!
zValue

	^ zValue ! !

!ColorPaneMorph methodsFor: 'accessing' stamp: 'KenD 12/7/2013 15:16'!
zValue: zeroTo255 "or ..100 or ..360"

	(zValue = zeroTo255)
		ifFalse: [ 
			zValue := zeroTo255.  "Does NOT change colorPoint"
			self triggerEvent: #colorChanged with: self.
		]
! !

!ColorPaneMorph methodsFor: 'accessing' stamp: 'KenD 11/26/2013 17:48'!
zeroPlaneForm

	^ zeroPlaneForm! !

!ColorPaneMorph class methodsFor: 'accessing' stamp: 'KenD 11/26/2013 14:33'!
blueIndex

	^ BlueIndex ! !

!ColorPaneMorph class methodsFor: 'accessing' stamp: 'KenD 11/28/2013 23:12'!
brightnessForm

	^ BrightnessForm! !

!ColorPaneMorph class methodsFor: 'accessing' stamp: 'KenD 11/26/2013 14:34'!
brightnessIndex

	^ BrightnessIndex ! !

!ColorPaneMorph class methodsFor: 'accessing' stamp: 'KenD 11/28/2013 23:13'!
brightnessOverlay

	^ BrightnessOverlay ! !

!ColorPaneMorph class methodsFor: 'initialization' stamp: 'KenD 12/3/2013 21:28'!
defaultColor

	^ Color transparent! !

!ColorPaneMorph class methodsFor: 'accessing' stamp: 'KenD 11/28/2013 22:59'!
gbForm

	^ GBForm! !

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

!ColorPaneMorph class methodsFor: 'accessing' stamp: 'KenD 11/28/2013 23:11'!
hueOverlay

	^ HueOverlay! !

!ColorPaneMorph class methodsFor: 'new-morph participation' stamp: 'KenD 12/6/2013 19:05'!
includeInNewMorphMenu
	"Return true for all classes that can be instantiated from the menu"
	
	^ false! !

!ColorPaneMorph class methodsFor: 'class initialization' stamp: 'KenD 12/1/2013 16:13'!
initialize
"	
	self initialize.
"
	
	"This is the index of the z dimension -- the selected slider"
	RedIndex := 1. 
	GreenIndex := 2.
	BlueIndex := 3.
	HueIndex := 4.
	SaturationIndex := 5.
	BrightnessIndex := 6.
	
	SaturationForm := self makeSaturationForm.
	SaturationOverlay := self makeSaturationOverlay.
	BrightnessForm := self makeBrightnessForm.
	RBForm := self makeRBForm.
	RGForm := self makeRGForm.
	GBForm := self makeGBForm.
	HueOverlay := self makeHueOverlay.
	! !

!ColorPaneMorph class methodsFor: 'class initialization' stamp: 'KenD 12/1/2013 16:12'!
makeBrightnessForm
	"Briightness is the slider; This is a background/base slice of hue and value"

	| hueFactor briteForm |
	hueFactor := 256 / 360.
	briteForm := Form extent: 256@256 depth:  32.
	1 to: 256 do: [ :x |
		1 to: 256 do:  [ :y | 
			briteForm colorAt: x @ y put: (Color h: (x / hueFactor) s: (y / 256) v: 1.0)
		]
	].

	^ briteForm
! !

!ColorPaneMorph class methodsFor: 'class initialization' stamp: 'KenD 12/1/2013 18:28'!
makeGBForm
	"(x,y)=(g,b), slider value adds z=red"
"
	(ImageMorph new image: ColorPaneMorph makeGBForm) openInWorld.
"
	| rbForm |
	rbForm := Form extent: 256@256 depth:  32.
	0 to: 256 do: [ :x |
		0 to: 256 do:  [ :y | 
			rbForm colorAt: x @ y put: (Color r: 0 g: x/256 b: y/256)
		]
	].

	^ rbForm
! !

!ColorPaneMorph class methodsFor: 'class initialization' stamp: 'KenD 12/1/2013 18:29'!
makeHueOverlay
	"This is a combination of Saturation+Brightness which is mixed with a Hue"
"
	(ImageMorph new image: ColorPaneMorph makeHueOverlay) openInWorld.
"
	| hueForm valForm satForm |
	"Brightness (Value) component [y] from Black to White"
	valForm := Form extent: 256@256 depth:  32.
	0 to: 256 do: [ :x |
		0 to: 256 do:  [ :y | 
			valForm colorAt: x @ y put: ((Color h: 0 s: 0 v: (y/256)) alpha: (256-y)/256)
		]
	].
	"Saturation component [x] white mixed in from full to none"
	satForm := Form extent: 256@256 depth:  32.
	1 to: 256 do: [ :x |
		1 to: 256 do:  [ :y |
			satForm colorAt: x @ y put: (Color white alpha: (256-x)/256)
		]
	].
	hueForm := satForm.
	hueForm 
		copy: (0@0 corner: 256@256) 
		from: valForm 
		to: 0@0
		rule: Form blend.  "Mix S and V"
	
	^ hueForm
! !

!ColorPaneMorph class methodsFor: 'class initialization' stamp: 'KenD 12/1/2013 18:29'!
makeRBForm
	"(x,y)=(r,b), slider value adds z=green"
"
	(ImageMorph new image: ColorPaneMorph makeRBForm) openInWorld.
"
	| rbForm |
	rbForm := Form extent: 256@256 depth:  32.
	0 to: 256 do: [ :x |
		0 to: 256 do:  [ :y | 
			rbForm colorAt: x @ y put: (Color r: x/256 g: 0 b: y/256)
		]
	].

	^ rbForm
! !

!ColorPaneMorph class methodsFor: 'class initialization' stamp: 'KenD 12/1/2013 18:29'!
makeRGForm
	"(x,y)=(r,g), slider value adds z=blue"
"
	(ImageMorph new image: ColorPaneMorph makeRGForm) openInWorld.
"
	| rbForm |
	rbForm := Form extent: 256@256 depth:  32.
	0 to: 256 do: [ :x |
		0 to: 256 do:  [ :y | 
			rbForm colorAt: x @ y put: (Color r: x/256 g: y/256 b: 0)
		]
	].

	^ rbForm
! !

!ColorPaneMorph class methodsFor: 'class initialization' stamp: 'KenD 12/1/2013 18:29'!
makeSaturationForm
	"Saturation is the slider.  Hue is the base and Brightness/Value the overlay"
"
	(ImageMorph new image: ColorPaneMorph makeSaturationForm) openInWorld.
"
	| hueFactor satForm |
	hueFactor := 256 / 360.
	satForm := Form extent: 256@256 depth:  32.
	0 to: 256 do: [ :x |
		0 to: 256 do:  [ :y | 
			satForm colorAt: x @ y put: (Color h: (x / hueFactor) s: 1.0 v: (y / 256))
		]
	].

	^ satForm
! !

!ColorPaneMorph class methodsFor: 'class initialization' stamp: 'KenD 12/1/2013 18:29'!
makeSaturationOverlay
	"Overlay is Value/Brightness"
"
	(ImageMorph new image: ColorPaneMorph makeSaturationOverlay) openInWorld.
"
	| satOverlay |
	satOverlay := Form extent: 256@256 depth:  32.
	0 to: 256 do: [ :x |
		0 to: 256 do:  [ :y | 
			satOverlay colorAt: x @ y put: (Color h: 0 s: 0 v: (y / 256))
		]
	].

	^ satOverlay
! !

!ColorPaneMorph class methodsFor: 'accessing' stamp: 'KenD 11/28/2013 22:59'!
rbForm

	^ RBForm! !

!ColorPaneMorph class methodsFor: 'accessing' stamp: 'KenD 11/26/2013 14:33'!
redIndex

	^ RedIndex ! !

!ColorPaneMorph class methodsFor: 'accessing' stamp: 'KenD 11/28/2013 22:59'!
rgForm

	^ RGForm! !

!ColorPaneMorph class methodsFor: 'accessing' stamp: 'KenD 11/28/2013 23:12'!
saturationForm

	^ SaturationForm! !

!ColorPaneMorph class methodsFor: 'accessing' stamp: 'KenD 11/26/2013 14:34'!
saturationIndex

	^ SaturationIndex ! !

!ColorPaneMorph class methodsFor: 'accessing' stamp: 'KenD 11/28/2013 23:13'!
saturationOverlay

	^ SaturationOverlay! !

!ColorPaneMorph class methodsFor: 'instance creation' stamp: 'KenD 11/26/2013 18:14'!
zSelector: aSymbol zValue: anInteger colorPoint: aPoint

	^ self new 
			zIndex: (#(Red Green Blue Hue Saturation Brightness) 
						 indexOf: aSymbol
						 ifAbsent: [ self error: 'Invalid selector' , aSymbol asString ])
			zValue: anInteger 
			colorPoint: aPoint! !

!ColorSliderMorph methodsFor: 'accessing' stamp: 'KenD 12/4/2013 22:03'!
colorPane

	^ colorPane ! !

!ColorSliderMorph methodsFor: 'initialization' stamp: 'KenD 12/5/2013 17:42'!
colorPane: aColorPaneMorph

	colorPane := aColorPaneMorph.
	self 
		refreshColorFromModel; 
		redrawBackground.! !

!ColorSliderMorph methodsFor: 'events' stamp: 'KenD 12/5/2013 17:52'!
handlesMouseDown: aMouseButtonEvent
	"Do I want to receive mouseDown events (mouseDown:, mouseMove:, mouseUp:)?"
	
	^ true! !

!ColorSliderMorph methodsFor: 'events' stamp: 'KenD 12/5/2013 17:52'!
handlesMouseStillDown: evt
	"Return true if the receiver wants to get repeated #mouseStillDown: messages between #mouseDown: and #mouseUp"
	
	^ true! !

!ColorSliderMorph methodsFor: 'initialization' stamp: 'KenD 12/5/2013 19:11'!
initialize

	super initialize.
	sliderMorph := BorderedRectMorph new.
	sliderMorph 
		color: Color transparent;
		borderColor: Color black;
		borderWidth: 3;
		morphExtent:28@10;
		morphPosition: -4@5.
		
	maxZValue := 256. "Default"

	self 
		image: (Form extent: 20@256 depth: 32);
		layoutSpec: (LayoutSpec 
							fixedWidth: 28 
							fixedHeight: 256 
							minorDirectionPadding: #center);
		addMorph: sliderMorph.! !

!ColorSliderMorph methodsFor: 'accessing' stamp: 'KenD 12/5/2013 19:38'!
maxZValue

	^ maxZValue "100, 256, or 360"! !

!ColorSliderMorph methodsFor: 'events' stamp: 'KenD 12/5/2013 21:09'!
mouseButton1Down: aMouseButtonEvent localPosition: localEventPosition
	"Update visual feedback"

	super mouseButton1Down: aMouseButtonEvent localPosition: localEventPosition.
	self colorPane zValue: (self zValueFromY: localEventPosition y).
	self resetSliderPosition.! !

!ColorSliderMorph methodsFor: 'events' stamp: 'KenD 12/5/2013 21:09'!
processMouseStillDown: anEvent localPosition: localEventPosition

	super processMouseStillDown: anEvent localPosition: localEventPosition.
	self colorPane zValue: (self zValueFromY: localEventPosition y).
	self resetSliderPosition.! !

!ColorSliderMorph methodsFor: 'event handling' stamp: 'KenD 12/5/2013 21:11'!
redrawBackground
	"Draw the color scale as background and set maxZValue"
	
	| colorMaker myForm pointX pointY scaleZ |
	"r g b h s v"
	maxZValue := #(255 255 255 359 100 100) at: self colorPane zIndex. 
	scaleZ := {
		[ :z | z ]. [ :z | z ]. [ :z | z ]. "r g b"
		[ :z | z / 255 * 360 ]. [ :z | z / 255 * 100 ]. [ :z | z / 255 * 100 ]. "h s v"
	} at: self colorPane zIndex.
	
	colorMaker := self colorPane colorConstructors at: self colorPane zIndex.
	pointX := self colorPane colorPoint x.
	pointY := self colorPane colorPoint y.
	myForm  := self form.
	1 to: 20 do: [ :x |
		0 to: 255 do:  [ :y | 
			myForm colorAt: x@y 
					    put: (colorMaker value: pointX 
											value: pointY 
											value: (scaleZ value: 255-y))
		]
	].
	self resetSliderPosition.
	self redrawNeeded.! !

!ColorSliderMorph methodsFor: 'event handling' stamp: 'KenD 12/5/2013 19:33'!
refreshColorFromModel

	self resetSliderPosition.

	! !

!ColorSliderMorph methodsFor: 'event handling' stamp: 'KenD 12/5/2013 19:05'!
resetSliderPosition
	"Center me over selected Z position"
	
	self sliderMorph morphPosition: 0 @ (self scaledZPosition) - 5! !

!ColorSliderMorph methodsFor: 'accessing' stamp: 'KenD 12/5/2013 20:16'!
scaledZPosition
	"Answer color Z value scaled to 0..256 as Y position (zero low .. 256 high)"

	^ 256 - ((self colorPane zValue / self maxZValue) * 256)! !

!ColorSliderMorph methodsFor: 'accessing' stamp: 'KenD 12/4/2013 22:03'!
sliderMorph

	^ sliderMorph ! !

!ColorSliderMorph methodsFor: 'private' stamp: 'KenD 12/5/2013 21:17'!
zValueFromY: zeroTo255

	| newY |
	newY := (zeroTo255 min: 255 max: 0).

	^ ((255 - newY) / 255) * self maxZValue! !

!ColorSliderMorph class methodsFor: 'instance creation' stamp: 'KenD 12/5/2013 17:31'!
colorPane: aColorPaneMorph

	^ self new colorPane: aColorPaneMorph! !

!ColorSliderMorph class methodsFor: 'new-morph participation' stamp: 'KenD 12/6/2013 19:06'!
includeInNewMorphMenu
	"Return true for all classes that can be instantiated from the menu"
	
	^ false! !

!DropColorMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 11/30/2013 20:07'!
aboutToBeGrabbedBy: aHand
	"The receiver is being grabbed by a hand.
	Perform necessary adjustments (if any) and return the actual morph
	that should be added to the hand.
	Answer nil to reject the drag."
	"This message is sent to the dragged morph, not to the owner.
	It is included here just for reference."

	^ self class fromColor: self color "Grab a new sibling of me"! !

!DropColorMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 11/30/2013 20:15'!
aboutToGrab: aMorph
	"submorph is being grabbed by a hand.
	Perform necessary adjustments (if any) and return the actual morph
	that should be added to the hand.
	Answer nil to reject the drag."

	^ self class fromColor: aMorph color   "Pick up a copy of me"! !

!DropColorMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 11/30/2013 19:41'!
allowsSubmorphDrag
	"Answer whether our morphs can just be grabbed with the hand, instead of requiring the use of the halo. Redefined to answer true."
	
	"Click and hold"

	^ true! !

!DropColorMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 12/3/2013 20:13'!
dropAction: aDropTargetMorph
	"Set a color"

	| colorSetters choices |
	colorSetters := (((aDropTargetMorph targetMorph class withAllSuperclasses 
		collect: [ :c | c selectors ] andFold: [ :a :b | a union: b]) "all selectors"
			select: [ :s | ('*color*:' match: s) and: [('*:*:' match: s) not]] ) asArray).
			
	(colorSetters size = 1)
		ifTrue: [ aDropTargetMorph targetMorph perform: (colorSetters at: 1) with: self color ]
		ifFalse: [ | selection |
			choices := OrderedCollection with: #Cancel.
			choices addAll: colorSetters.
			self delete. "Remove me from hand so user can choose"
			selection := PopUpMenu withCaption: 'Choose color setter' 
											chooseFrom: choices.
			(selection = 1) ifFalse: [ "1 -> Cancel"
				aDropTargetMorph targetMorph 
						perform: (colorSetters at: selection - 1) 
						with: self color
			]
		].
	aDropTargetMorph delete. "Remove the DropTargetMorph. It's job is done!!"! !

!DropColorMorph methodsFor: 'initialization' stamp: 'KenD 12/3/2013 19:29'!
fromColor: aColor

	self 
		color: aColor;
		image: (self color icon magnifyTo: 32@32);
		setProperty: #DropActionMorph toValue: #setColor
	! !

!DropColorMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 12/3/2013 20:03'!
rejectDropMorphEvent: evt
	"Rejected drop of me.  Remove me from the hand."
	
	self world ifNotNil: [ :w | w activeHand removeMorph: self ]
! !

!DropColorMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 12/3/2013 19:52'!
wantsToBeDroppedInto: aMorph
	"I wish to be dropped on a DropTargeMorph"

	(aMorph isKindOf: DropTargetMorph)
		ifTrue: [ self dropAction: aMorph ].
	^ false  "Always be rejected after doing the drop action"! !

!DropColorMorph class methodsFor: 'instance creation' stamp: 'KenD 11/30/2013 19:24'!
fromColor: aColor

	^ self new fromColor: aColor ! !

!DropColorMorph class methodsFor: 'new-morph participation' stamp: 'KenD 12/6/2013 19:06'!
includeInNewMorphMenu
	"Return true for all classes that can be instantiated from the menu"
	
	^ false! !

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

!RadioGroup methodsFor: 'accessing' stamp: 'KenD 12/15/2013 21:56'!
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
	self layoutSpec: (LayoutSpec fixedHeight: self naturalHeight).

! !

!RadioGroup methodsFor: 'geometry' stamp: 'KenD 12/15/2013 21:57'!
naturalHeight
	"Answer the combined heights of my elements"
	
	^ 4 + (self list size * ((self font height max: RadioButtonMorph defaultDiameter) + 2))! !

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

!RadioGroup class methodsFor: 'new-morph participation' stamp: 'KenD 12/6/2013 19:07'!
includeInNewMorphMenu
	"Return true for all classes that can be instantiated from the menu"
	
	^ false! !

!SimpleNumberEntryMorph methodsFor: 'drawing' stamp: 'KenD 12/2/2013 16:33'!
drawOn: aCanvas

	self hasSelection ifTrue: [ self drawSelectionOn: aCanvas ].
	self hasTextCursor ifTrue: [ self drawTextCursorOn: aCanvas ].
	aCanvas
		drawString: contents
		in: (2@0 extent: extent - 2)
		font: self fontToUse
		color: color.
		
	aCanvas
		frameRectangle: (0@0 extent: self morphExtent)
		color: Color black
		borderWidth: 2
		borderStyleSymbol: #simple
! !

!SimpleNumberEntryMorph methodsFor: 'accessing' stamp: 'KenD 11/21/2013 15:07'!
entryChars

	^ entryChars! !

!SimpleNumberEntryMorph methodsFor: 'events' stamp: 'KenD 12/2/2013 16:31'!
keyStroke: aKeyboardEvent
	"Check for legal char if in ASCII range, else let super so it"
	
	(aKeyboardEvent isKeystroke) ifTrue: [ | keyChar |
		keyChar := aKeyboardEvent keyCharacter.
		((keyChar asciiValue between: 32 and: 126) "space .. ~"
			and: [((self entryChars includes: keyChar) not)
					or: [self contents size >= self numCharsToHold]])
			ifTrue: [ "reject"
				self flash.
				^ self
			]
	].

	super keyStroke: aKeyboardEvent! !

!SimpleNumberEntryMorph methodsFor: 'events' stamp: 'KenD 12/19/2013 17:14'!
keyboardFocusChange: aBoolean 

	super keyboardFocusChange: aBoolean.
	aBoolean ifFalse: [ self crAction ifNotNil: [ :thunk | thunk value ]].! !

!SimpleNumberEntryMorph methodsFor: 'initialization' stamp: 'KenD 12/2/2013 16:47'!
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
			desiredExtent := self measureContents + 4.
			self layoutSpec: (LayoutSpec 
				fixedWidth: desiredExtent x 
				fixedHeight: desiredExtent y
				minorDirectionPadding: #center)
	].
! !

!SimpleNumberEntryMorph methodsFor: 'accessing' stamp: 'KenD 12/2/2013 16:56'!
measureContents
	| myFont |

	(self numCharsToHold) ifNil: [ ^ super measureContents ].
	
	myFont := self fontToUse.
	"Use a wide character as sample for the character width"
	^ (4 + (((font widthOfString: 'A') * self numCharsToHold) max: 3)  @ myFont height).! !

!SimpleNumberEntryMorph methodsFor: 'accessing' stamp: 'KenD 11/21/2013 15:06'!
numCharsToHold

	^ numCharsToHold! !

!SimpleNumberEntryMorph methodsFor: 'events' stamp: 'KenD 12/17/2013 14:03'!
refreshValueFrom: model
	"Refresh my value from model"
	
	self valueAccessor ifNotNil: [ :accessor | 
				theValue := accessor value: model.
				self contents: (self toString value: self value).
				self morphExtent: self measureContents + 4.
				self redrawNeeded
	]! !

!SimpleNumberEntryMorph methodsFor: 'accessing' stamp: 'KenD 12/2/2013 16:53'!
setValue: newValue

	(theValue == newValue) ifTrue: [ ^self ].
	theValue := newValue.
	self contents: (self toString value: self value).
	self morphExtent: self measureContents + 4.
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

!SimpleNumberEntryMorph class methodsFor: 'examples' stamp: 'KenD 12/2/2013 16:23'!
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

!SimpleNumberEntryMorph class methodsFor: 'examples' stamp: 'KenD 12/2/2013 16:23'!
circleDegreesRounded
	"Answer 0..360.0 or nil"

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

!SimpleNumberEntryMorph class methodsFor: 'examples' stamp: 'KenD 12/2/2013 16:18'!
hexRGBEntry
	"Answer 0.FFFFFF or nil"

	^ self new
			legalChars: '1234567890ABCDEFabcdef'
		     numCharsToHold: 6 
			value: 0 
			validator: [ :str | 
				(str size <= 6)
				ifTrue: [[ ('16r', str asUppercase) asNumber ] on: Error do: [ nil ]]
				ifFalse: [ nil ]]
			toString: [ :n | n printPaddedWith: $0 to: 6 base: 16 ]! !

!SimpleNumberEntryMorph class methodsFor: 'new-morph participation' stamp: 'KenD 12/6/2013 19:07'!
includeInNewMorphMenu
	"Return true for all classes that can be instantiated from the menu"
	
	^ false! !

!SimpleNumberEntryMorph class methodsFor: 'examples' stamp: 'KenD 12/16/2013 17:20'!
integerRangeFrom: min to: max maxNumChars: numChars
	"min..max"

	^ self new
			legalChars: '1234567890'  
		     numCharsToHold: numChars
			value: min
			validator: [ :str | | val | 
				val := [ str asNumber ] on: Error do: [ -1 ].
				(val between: min and: max) ifFalse: [ nil ] ifTrue: [ val ]
			] 
			toString: [ :n | n printString ]! !

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

!SimpleNumberEntryMorph class methodsFor: 'examples' stamp: 'KenD 12/15/2013 19:57'!
percentForFixedFactor: factorMax
	"Entry and display as 0..100; internal value as 0.0..factorMax
	where factorMax is an integer."
"
	SimpleNumberEntryMorph percentForFixedFactor: 255.
	100% -> 255
"
	| ratio |
	ratio := 100 / factorMax.
	^ self new
			legalChars: '1234567890'  "No $. "
		     numCharsToHold: 3 
			value: 0 
			validator: [ :str | | val | 
				val := [ str asNumber ] on: Error do: [ -1 ].
				(val between: 0 and: 100) ifFalse: [ nil ] ifTrue: [ (val / ratio) rounded ]
			] 
			toString: [ :n | (n * ratio) rounded printString ]! !

!SimpleNumberEntryMorph class methodsFor: 'examples' stamp: 'KenD 12/15/2013 19:58'!
percentForRealFactor: factorMax
	"Entry and display as 0..100; internal value as 0.0..factorMax
	where factorMax is a float."
"
	SimpleNumberEntryMorph percentForRealFactor: 1.0
	40% -> 0.4
"
	| ratio |
	ratio := 100 / factorMax.
	^ self new
			legalChars: '1234567890'  "No $. "
		     numCharsToHold: 3 
			value: 0 
			validator: [ :str | | val | 
				val := [ str asNumber ] on: Error do: [ -1 ].
				(val between: 0 and: 100) ifFalse: [ nil ] ifTrue: [ val / ratio ]
			] 
			toString: [ :n | (n * ratio) rounded printString ]! !

!SimpleNumberEntryMorph class methodsFor: 'examples' stamp: 'KenD 12/16/2013 17:08'!
realFactor: factorMax
	"0.0..factorMax
	where factorMax is a float."

	^ self new
			legalChars: '12345.67890'  
		     numCharsToHold: 3 
			value: 0 
			validator: [ :str | | val | 
				val := [ str asNumber ] on: Error do: [ -1 ].
				(val between: 0 and: 1.0) ifFalse: [ nil ] ifTrue: [ val ]
			] 
			toString: [ :n | n asFloat printString ]! !

!SimpleNumberEntryMorph class methodsFor: 'examples' stamp: 'KenD 12/16/2013 17:09'!
realFactor: factorMax maxNumChars: numChars
	"0.0..factorMax
	where factorMax is a float."

	^ self new
			legalChars: '12345.67890'  
		     numCharsToHold: numChars
			value: 0 
			validator: [ :str | | val | 
				val := [ str asNumber ] on: Error do: [ -1 ].
				(val between: 0 and: 1.0) ifFalse: [ nil ] ifTrue: [ val ]
			] 
			toString: [ :n | n asFloat printString ]! !

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
