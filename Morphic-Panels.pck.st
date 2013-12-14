'From Cuis 4.2 of 25 July 2013 [latest update: #1867] on 11 December 2013 at 3:29:02.083222 pm'!
'Description Please enter a description for this package'!
!provides: 'Morphic-Panels' 1 6!
!classDefinition: #Panel category: #'Morphic-Panels'!
PluggableMorph subclass: #Panel
	instanceVariableNames: 'labelString widgetsColor layoutMorph'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Panels'!
!classDefinition: 'Panel class' category: #'Morphic-Panels'!
Panel class
	instanceVariableNames: ''!

!classDefinition: #LayoutMorphEditPanel category: #'Morphic-Panels'!
Panel subclass: #LayoutMorphEditPanel
	instanceVariableNames: 'layoutPutty paddingLayout rowPad colPad'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Panels'!
!classDefinition: 'LayoutMorphEditPanel class' category: #'Morphic-Panels'!
LayoutMorphEditPanel class
	instanceVariableNames: ''!

!classDefinition: #LayoutSpecEditPanel category: #'Morphic-Panels'!
Panel subclass: #LayoutSpecEditPanel
	instanceVariableNames: 'theLayoutSpec extentSelect widthSelect heightSelect widthAux heightAux'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Panels'!
!classDefinition: 'LayoutSpecEditPanel class' category: #'Morphic-Panels'!
LayoutSpecEditPanel class
	instanceVariableNames: ''!

!classDefinition: #TestPanel category: #'Morphic-Panels'!
Panel subclass: #TestPanel
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Panels'!
!classDefinition: 'TestPanel class' category: #'Morphic-Panels'!
TestPanel class
	instanceVariableNames: ''!

!classDefinition: #FramedLayoutMorph category: #'Morphic-Panels'!
LayoutMorph subclass: #FramedLayoutMorph
	instanceVariableNames: 'borderWidth borderColor frameSelector'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Panels'!
!classDefinition: 'FramedLayoutMorph class' category: #'Morphic-Panels'!
FramedLayoutMorph class
	instanceVariableNames: ''!

!classDefinition: #LabelMorph category: #'Morphic-Panels'!
StringMorph subclass: #LabelMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Panels'!
!classDefinition: 'LabelMorph class' category: #'Morphic-Panels'!
LabelMorph class
	instanceVariableNames: ''!


!Panel commentStamp: '<historical>' prior: 0!
I am a very simple window with a label.

You need to add buttons, drop-downs, fill-ins to make me useful 
!

!LayoutMorphEditPanel commentStamp: '<historical>' prior: 0!
I am a simple editor for a LayoutMorph.

iVars:
  model (inherited) -- the LayoutMorph being 'edited'  -- unchanged until user OKs
  layoutPutty -- clone of theLayoutMorph which holds edit state
  rowPad, colPad -- hold parts for paddingLayout

LayoutMorphEditPanel open: (LayoutMorph newRow).!

!LayoutSpecEditPanel commentStamp: '<historical>' prior: 0!
I am a simple editor for a LayoutSpec.

!

!TestPanel commentStamp: '<historical>' prior: 0!
A Panel with a close button


TestPanel open: nil label: 'Test Panel'.!

!FramedLayoutMorph commentStamp: '<historical>' prior: 0!
I add a simple frame to a LayoutMorph!

!LabelMorph commentStamp: '<historical>' prior: 0!
I am a StringMorph used as a label!

!Panel methodsFor: 'submorphs-add/remove' stamp: 'KenD 12/9/2013 16:44'!
addMorph: aMorph 
	"Add a submorph to our client area."

	layoutMorph addMorph: aMorph! !

!Panel methodsFor: 'submorphs-add/remove' stamp: 'KenD 12/9/2013 16:44'!
addMorph: aMorph layoutSpec: aLayoutSpec
	"Add a submorph to our client area."

	layoutMorph addMorph: aMorph layoutSpec: aLayoutSpec! !

!Panel methodsFor: 'drawing' stamp: 'KenD 12/9/2013 17:08'!
addPossiblyUncoveredAreasIn: aRectangle to: aCollection
	"Answer an array of rectangles encompassing those areas in aRectangle not completely
	covered by self. These are the areas that might require further drawing (of morphs below us)
	All areas that might possibly be uncovered must be included."
	 | r |
	color mightBeTranslucent ifTrue: [
		aCollection add: aRectangle.
		^self ].

	"Solid rectangle.
	This will be the fastest in many cases. So, please disable rounded corners if on slow hardware!!"
	Theme current roundWindowCorners ifFalse: [
		aRectangle areasOutside: self morphBoundsInWorld do: [ :rr |  aCollection add: rr ].
		^self ].

	"The solid rectangle does not include the corners.
	Report a couple of rows (top and bottom) or columns (left and right) as uncovered areas.
	We could also try to be more careful and answer each rounded corner...
	Right now, report top and bottom rows as uncovered areas"
	r _ Theme current roundedWindowRadius.
	aRectangle areasOutside: (self morphBoundsInWorld insetBy: 0@r) do: [ :rr |  aCollection add: rr ]! !

!Panel methodsFor: 'layout' stamp: 'KenD 12/9/2013 16:46'!
beColumn
	layoutMorph
		ifNotNil: [ layoutMorph beColumn ]
		ifNil: [
			layoutMorph _ LayoutMorph newColumn.
			self addMorphFront: layoutMorph ]! !

!Panel methodsFor: 'layout' stamp: 'KenD 12/9/2013 16:46'!
beRow
	layoutMorph
		ifNotNil: [ layoutMorph beRow ]
		ifNil: [
			layoutMorph _ LayoutMorph newRow.
			self addMorphFront: layoutMorph ]! !

!Panel methodsFor: 'initialization' stamp: 'KenD 12/9/2013 17:02'!
boxExtent
	"answer the extent to use in all the buttons. 
	 
	the label height is used to be proportional to the fonts preferences"
	| e |
	e _ Preferences windowTitleFont height.
	^e@e! !

!Panel methodsFor: 'GUI building' stamp: 'KenD 12/9/2013 18:55'!
buildMorphicWindow

	self subclassResponsibility ! !

!Panel methodsFor: 'GUI building' stamp: 'KenD 12/9/2013 18:42'!
buttonColor

	^ Theme current buttonColorFrom: self widgetsColor! !

!Panel methodsFor: 'initialization' stamp: 'KenD 12/9/2013 17:05'!
defaultBorderWidth
	"answer the default border width for the receiver"

	^ Theme current roundWindowCorners
		ifTrue: [ 3 ]
		ifFalse: [ 2 ]! !

!Panel methodsFor: 'GUI building' stamp: 'KenD 12/9/2013 18:42'!
defaultButtonPaneHeight
	"Answer the user's preferred default height for new button panes."

	^ Preferences standardButtonFont height * 14 // 8! !

!Panel methodsFor: 'initialization' stamp: 'KenD 12/9/2013 16:43'!
defaultExtent

	^ 300 @ 200! !

!Panel methodsFor: 'drawing' stamp: 'KenD 12/9/2013 17:08'!
drawClassicFrameOn: aCanvas color: titleColor
	"Window border encompasses title area. No round corners. No title gradient."

	aCanvas fillRectangle: (0@0 extent: extent) color: color borderWidth: borderWidth borderStyleSymbol: #simple baseColorForBorder: self widgetsColor.

	"A border was drawn at the left, top and right of the title area.
	The look is that the title area is inside the window"
	aCanvas fillRectangle: (borderWidth@borderWidth extent: extent x - (2*borderWidth)@ self labelHeight) color: titleColor! !

!Panel methodsFor: 'drawing' stamp: 'KenD 12/9/2013 17:08'!
drawLabelOn: aCanvas

	Theme current embossedTitles
		ifFalse: [
			aCanvas
				drawString: labelString
				in: self labelRectangle
				font: Preferences windowTitleFont
				color: Theme current windowLabel ]
		ifTrue: [
			aCanvas
				drawStringEmbossed: labelString
				in: self labelRectangleForEmbossed
				font: Preferences windowTitleFont
				color: Theme current windowLabel ]! !

!Panel methodsFor: 'drawing' stamp: 'KenD 12/9/2013 19:04'!
drawOn: aCanvas

	| titleColor roundCorners |

	titleColor _ self widgetsColor.
	roundCorners _ Theme current roundWindowCorners.
	roundCorners
		ifTrue: [
			"Round corners. Optional title gradient."
			self drawRoundedFrameOn: aCanvas color: titleColor ]
		ifFalse: [
			"No round corners. No title gradient."
			self drawClassicFrameOn: aCanvas color: titleColor ].

	self drawLabelOn: aCanvas! !

!Panel methodsFor: 'drawing' stamp: 'KenD 12/9/2013 17:08'!
drawRoundedFrameOn: aCanvas color: widgetsColor
	"Title area is not inside window borders"
	| bottomFactor topFactor |
	Theme current useWindowTitleGradient
		ifTrue: [
			topFactor _ Theme current titleGradientTopFactor.
			bottomFactor _ Theme current titleGradientBottomFactor ]
		ifFalse: [
			topFactor _ 1.
			bottomFactor _ 1 ].
	aCanvas
		windowFrame: (0@0 extent: extent)
		color: widgetsColor * Theme current titleGradientExtraLightness
		radius: Theme current roundedWindowRadius
		border: borderWidth
		labelHeight: self labelHeight + borderWidth
		gradientTop: topFactor
		gradientBottom: bottomFactor
		insideColor: color! !

!Panel methodsFor: 'initialization' stamp: 'KenD 12/9/2013 17:04'!
initialize
	"Initialize a system window. Add label, stripes, etc., if desired"

	super initialize.
	labelString ifNil: [ labelString _ 'Untitled Window'].
	
	extent := self defaultExtent.

	"by default"
	self beColumn! !

!Panel methodsFor: 'change reporting' stamp: 'KenD 12/9/2013 17:09'!
invalidateTitleArea

	"not really pretty... also invalidating the top border, regardless of it being above or below the title area
	(Different themes use various looks, this covers them all)"
	self invalidateRect: (0@0 extent: extent x @ (self labelHeight + borderWidth))! !

!Panel methodsFor: 'testing' stamp: 'KenD 12/9/2013 16:45'!
is: aSymbol
	^ aSymbol == #Panel or: [ super is: aSymbol ]! !

!Panel methodsFor: 'testing' stamp: 'KenD 12/9/2013 16:45'!
isOpaqueMorph
	"Not really used, as we also reimplement #addPossiblyUncoveredAreasIn:to:"
	^ (Theme current roundWindowCorners or: [ color mightBeTranslucent ]) not! !

!Panel methodsFor: 'label' stamp: 'KenD 12/9/2013 16:49'!
label

	^ labelString! !

!Panel methodsFor: 'label' stamp: 'KenD 12/9/2013 16:49'!
labelHeight
	"Answer the height for the window label."

	^ self boxExtent y+1! !

!Panel methodsFor: 'geometry' stamp: 'KenD 12/9/2013 17:05'!
labelRectangle
	"Actually the whole label area"

	| e x0 y0 x1 y1|
	e _ self boxExtent.
	x0 _  e x * 4 + 14.
	y0 _ 2.
	x1 _ extent x - 1.
	y1 _ e y + 1.
	^x0@y0 corner: x1@y1
	
	
	
! !

!Panel methodsFor: 'geometry' stamp: 'KenD 12/9/2013 17:05'!
labelRectangleForEmbossed
	"Actually the whole label area"

	| e x0 y0 x1 y1 |
	e _ self boxExtent.
	x0 _ e x * 4 + 14.
	y0 _ 1.
	x1 _ extent x - 1.
	y1 _ e y + 2.
	^x0@y0 corner: x1@y1
	
	
	
! !

!Panel methodsFor: 'geometry' stamp: 'KenD 12/9/2013 17:06'!
layoutBounds
	"Return the bounds for laying out children of the receiver"
	"Exclude the label area"

	^ super layoutBounds insetBy: (0 @ (self labelHeight) corner: 0 @ 0)! !

!Panel methodsFor: 'layout' stamp: 'KenD 12/9/2013 16:47'!
layoutMorph

	^ layoutMorph! !

!Panel methodsFor: 'layout' stamp: 'KenD 12/9/2013 16:48'!
layoutSubmorphs
	"Compute a new layout of submorphs based on the given layout bounds."

	| myBounds |
	layoutMorph ifNotNil: [
		myBounds _ self layoutBounds.
		layoutMorph
			morphPosition: myBounds origin;
			morphExtent: myBounds extent 
	].
	
	layoutNeeded _ false! !

!Panel methodsFor: 'drawing' stamp: 'KenD 12/9/2013 17:08'!
makeMeFullyVisible 

	self world extent > (0@0) ifFalse: [^ self].

	(self position >= (0@0) and: [ self position < (self world extent-self extent)]) ifTrue: [
		^ self "OK -- visible"].

	self position: (RealEstateAgent initialFrameFor: self initialExtent: self morphBoundsInWorld world: self world) topLeft! !

!Panel methodsFor: 'drawing' stamp: 'KenD 12/9/2013 17:08'!
makeMeVisible 

	self world morphExtent > (0@0) ifFalse: [^ self].

	(self morphPosition >= (0@0) and: [ self morphPosition < (self world morphExtent-self labelHeight)]) ifTrue: [
		^ self "OK -- at least my top left is visible"].

	"window not on screen (probably due to reframe) -- move it now"
	self morphPosition: (RealEstateAgent initialFrameFor: self initialExtent: extent world: self world) topLeft! !

!Panel methodsFor: 'geometry' stamp: 'KenD 12/9/2013 17:06'!
minPaneHeightForReframe

	^ StrikeFont default height + 10! !

!Panel methodsFor: 'geometry' stamp: 'KenD 12/9/2013 17:06'!
minPaneWidthForReframe

	^ ScrollBar scrollbarThickness * 3! !

!Panel methodsFor: 'geometry' stamp: 'KenD 12/9/2013 17:06'!
morphExtent: aPoint 
	"Set the receiver's extent to value provided. Honor my minimumExtent."

	super morphExtent: (aPoint max: self minimumExtent)! !

!Panel methodsFor: 'initialization' stamp: 'KenD 12/9/2013 17:04'!
openInWorld
	"Ensure all widgets have proper colors before opening"
	
	self widgetsColor: self widgetsColor.
	super openInWorld! !

!Panel methodsFor: 'printing' stamp: 'KenD 12/9/2013 16:40'!
printOn: aStream 

	super printOn: aStream.
	aStream nextPutAll: '('.
	aStream
		print: labelString asString;
		nextPutAll: ')'! !

!Panel methodsFor: 'label' stamp: 'KenD 12/9/2013 16:49'!
relabel

	| newLabel |
	newLabel _ FillInTheBlankMorph 
		request: 'New title for this window'
		initialAnswer: labelString.
	newLabel isEmpty ifTrue: [^self].
	self setLabel: newLabel! !

!Panel methodsFor: 'label' stamp: 'KenD 12/9/2013 16:49'!
setLabel: aString

	labelString _ aString.
	self invalidateTitleArea! !

!Panel methodsFor: 'GUI building' stamp: 'KenD 12/9/2013 18:42'!
textBackgroundColor

	^ Theme current paneBackgroundFrom: self widgetsColor! !

!Panel methodsFor: 'label' stamp: 'KenD 12/9/2013 17:02'!
update: aSymbol

	super update: aSymbol.
	aSymbol == #relabel
		ifTrue: [ model ifNotNil: [ self setLabel: model labelString ]]! !

!Panel methodsFor: 'events' stamp: 'KenD 12/9/2013 17:07'!
wantsToBeDroppedInto: aMorph
	"Return true if it's okay to drop the receiver into aMorph"
	
	^ aMorph isWorldMorph! !

!Panel methodsFor: 'accessing' stamp: 'KenD 12/9/2013 16:42'!
widgetsColor

	widgetsColor ifNotNil: [ ^ widgetsColor ].
	^Display depth > 2
		ifTrue: [ self windowColor ]
		ifFalse: [ Color white ]! !

!Panel methodsFor: 'accessing' stamp: 'KenD 12/9/2013 16:42'!
widgetsColor: aColor
	"aColor will be used for titles, borders, etc.
	A variation of it, #paneColorFrom:, will be used for panes background"

	widgetsColor _ aColor.
	self color: self textBackgroundColor.
	self adoptWidgetsColor: widgetsColor! !

!Panel methodsFor: 'GUI building' stamp: 'KenD 12/9/2013 18:46'!
windowColor
	"Some default"
	
	^ Theme current transcript  "model class windowColor"! !

!Panel class methodsFor: 'instance creation' stamp: 'KenD 12/9/2013 18:53'!
open: model

	^self open: model label: nil! !

!Panel class methodsFor: 'instance creation' stamp: 'KenD 12/9/2013 19:26'!
open: model label: aString
"
	self open: nil label: 'Test Me !!!!'.
"
	|  window |
	window _ self new.
	window
		model: model;
		buildMorphicWindow.
	aString ifNotNil: [ window setLabel: aString ].
	^ window 
		openInWorld;
		yourself! !

!LayoutMorphEditPanel methodsFor: 'GUI building' stamp: 'KenD 12/11/2013 15:28'!
buildMorphicWindow
	
	| leftCol rightCol rowColRadio separationLayout colorLayout |
	self layoutMorph beRow. "A row of two columns"
	labelString := 'LayoutMorph'.
	rowColRadio := FramedLayoutMorph newColumn.
	rowColRadio 
		addMorph: (LabelMorph contents: 'Direction')
			layoutSpec: (LayoutSpec keepMorphExtent); 
		addMorph: (RadioGroup fromList: #( Row Column )).
		
	paddingLayout := FramedLayoutMorph newColumn.
	paddingLayout 
		addMorph: (LabelMorph contents: 'Padding')
			layoutSpec: (LayoutSpec keepMorphExtent);
		addMorph: (RadioGroup fromList: #(Top Center Bottom Specify)). "@@@"
		
	leftCol := LayoutMorph newColumn.
	leftCol 
		separation: 4;
		addMorph: rowColRadio;
		addMorph: paddingLayout.
	self layoutMorph addMorph: leftCol.

	separationLayout := FramedLayoutMorph newColumn.
	separationLayout 
		separation: 4;
		addMorph: (LabelMorph contents: 'Separation')  
			layoutSpec: (LayoutSpec keepMorphExtent);
		addMorph: (RadioGroup fromList: #(X Y)). "@@@"
		
	colorLayout := FramedLayoutMorph newRow.
	colorLayout
		addMorph: (LabelMorph contents: 'Color')  
			layoutSpec: (LayoutSpec keepMorphExtent).
	"@@add color@@"
	
	rightCol := LayoutMorph newColumn.
	rightCol 
		separation: 4;
		addMorph: separationLayout;
		addMorph: colorLayout.
		
	self layoutMorph addMorph: rightCol.
	
	"init self state from model=LayourMorph"
! !

!LayoutMorphEditPanel methodsFor: 'initialization' stamp: 'KenD 12/10/2013 21:09'!
defaultExtent

	^ 350 @ 310! !

!LayoutMorphEditPanel methodsFor: 'initialization' stamp: 'KenD 12/11/2013 15:02'!
initialize

	super initialize.
	layoutPutty := self model copy.
	self layoutMorph separation: 4.
! !

!LayoutSpecEditPanel methodsFor: 'GUI building' stamp: 'KenD 12/10/2013 18:48'!
buildMorphicWindow
	
	self notYetImplemented;
		addMorph: (PluggableButtonMorph model: self action: #close label: 'Close Me')
		layoutSpec: (LayoutSpec 
							proportionalWidth: 0.3
		 					proportionalHeight: 0.3 
							minorDirectionPadding: #center).! !

!TestPanel methodsFor: 'GUI building' stamp: 'KenD 12/9/2013 19:06'!
buildMorphicWindow

	self 
		addMorph: (PluggableButtonMorph model: self action: #close label: 'Close Me')
		layoutSpec: (LayoutSpec 
							proportionalWidth: 0.3
		 					proportionalHeight: 0.3 
							minorDirectionPadding: #center).! !

!TestPanel methodsFor: 'events' stamp: 'KenD 12/9/2013 19:27'!
close

	self setProperty: #userSelection toValue: #cancel.
	self delete.
! !

!FramedLayoutMorph methodsFor: 'accessing' stamp: 'KenD 12/11/2013 14:33'!
borderColor

	^ borderColor! !

!FramedLayoutMorph methodsFor: 'accessing' stamp: 'KenD 12/11/2013 14:33'!
borderColor: aColor

	borderColor = aColor ifFalse: [
		borderColor _ aColor.
		self redrawNeeded]! !

!FramedLayoutMorph methodsFor: 'accessing' stamp: 'KenD 12/11/2013 14:34'!
borderWidth

	^ borderWidth! !

!FramedLayoutMorph methodsFor: 'accessing' stamp: 'KenD 12/11/2013 14:33'!
borderWidth: anInteger

	borderWidth = anInteger ifFalse: [
		borderColor ifNil: [ borderColor _ Color black ].
		borderWidth _ anInteger max: 0.
		self redrawNeeded ]! !

!FramedLayoutMorph methodsFor: 'geometry' stamp: 'KenD 12/11/2013 14:45'!
clippingRect
	"In own coordinates!!
	Return the bounds to which any submorphs should be clipped if the property is set"
	"Should be a region, like our shadow"

	self flag: #jmvVer2.
	^ super clippingRect insetBy: borderWidth! !

!FramedLayoutMorph methodsFor: 'initialization' stamp: 'KenD 12/11/2013 14:40'!
defaultBorderColor

	^ Color black! !

!FramedLayoutMorph methodsFor: 'initialization' stamp: 'KenD 12/11/2013 14:40'!
defaultBorderWidth

	^ 2 "pixels"! !

!FramedLayoutMorph methodsFor: 'initialization' stamp: 'KenD 12/11/2013 14:39'!
defaultFrameSelector

	^ #simple "or inset or raised"
	! !

!FramedLayoutMorph methodsFor: 'drawing' stamp: 'KenD 12/11/2013 14:42'!
drawOn: aCanvas
	"A canvas is already set with a proper transformation from our coordinates to those of the Canvas target."
	"If you redefine this method in a subclass, please take a look at the comment at #isOpaqueMorph"
	super drawOn: aCanvas.
	aCanvas
		frameRectangle: (0@0 extent: extent) 
		color: borderColor 
		borderWidth: borderWidth 
		borderStyleSymbol: frameSelector! !

!FramedLayoutMorph methodsFor: 'accessing' stamp: 'KenD 12/11/2013 14:36'!
frameSelector

	^ frameSelector! !

!FramedLayoutMorph methodsFor: 'accessing' stamp: 'KenD 12/11/2013 14:38'!
frameSelector: simpleInsetOrRaised

	(frameSelector = simpleInsetOrRaised)
		ifFalse: [
			frameSelector := simpleInsetOrRaised.
			self redrawNeeded
		]! !

!FramedLayoutMorph methodsFor: 'initialization' stamp: 'KenD 12/11/2013 14:41'!
initialize
	"Set harmless defaults"
	
	super initialize.
	borderColor     := self defaultBorderColor.
	borderWidth    := self defaultBorderWidth.
	frameSelector := self defaultFrameSelector.! !

!FramedLayoutMorph methodsFor: 'geometry' stamp: 'KenD 12/11/2013 14:44'!
layoutBounds
	"Return the bounds for laying out children of the receiver"
	
	self flag: #jmvVer2.
	^ super layoutBounds insetBy: borderWidth! !

!LabelMorph methodsFor: 'accessing' stamp: 'KenD 12/11/2013 15:27'!
initWithContents: aString font: aFont emphasis: emphasisCode 
	self initialize.
	
	aFont ifNotNil: [ font := aFont ] ifNil: [ font := AbstractFont default ].
	(emphasisCode = 0) 
		ifTrue: [ emphasis := AbstractFont boldCode ] 
		ifFalse: [ emphasis := emphasisCode ].
	self contents: aString! !

!LabelMorph methodsFor: 'initialization' stamp: 'KenD 12/11/2013 15:16'!
initialize

	super initialize.
	self
		font: (AbstractFont default);
		emphasis: AbstractFont boldCode;
		layoutSpec: (LayoutSpec keepMorphExtent).! !
