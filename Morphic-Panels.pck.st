'From Cuis 4.2 of 25 July 2013 [latest update: #1880] on 18 December 2013 at 10:00:12.702043 pm'!
'Description Please enter a description for this package'!
!provides: 'Morphic-Panels' 1 27!
!requires: 'Morphic-ColorEditor' 1 53 nil!
!classDefinition: #Panel category: #'Morphic-Panels'!
PluggableMorph subclass: #Panel
	instanceVariableNames: 'labelString widgetsColor layoutMorph'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Panels'!
!classDefinition: 'Panel class' category: #'Morphic-Panels'!
Panel class
	instanceVariableNames: ''!

!classDefinition: #EditPanel category: #'Morphic-Panels'!
Panel subclass: #EditPanel
	instanceVariableNames: 'editModel'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Panels'!
!classDefinition: 'EditPanel class' category: #'Morphic-Panels'!
EditPanel class
	instanceVariableNames: ''!

!classDefinition: #LayoutMorphEditPanel category: #'Morphic-Panels'!
EditPanel subclass: #LayoutMorphEditPanel
	instanceVariableNames: 'directionArea paddingArea separationArea colorArea padRadio padEntry'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Panels'!
!classDefinition: 'LayoutMorphEditPanel class' category: #'Morphic-Panels'!
LayoutMorphEditPanel class
	instanceVariableNames: ''!

!classDefinition: #LayoutSpecEditPanel category: #'Morphic-Panels'!
EditPanel subclass: #LayoutSpecEditPanel
	instanceVariableNames: 'widthArea heightArea paddingArea padRadio padEntry'
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

!EditPanel commentStamp: '<historical>' prior: 0!
I abstract common edit methods for my concrete subclasses.

The gist is that my model is a reference to the original object.
My editModel is a "putty" or "shadow" copy to which all edit operations are applied.
If the user Update's then the changes are propagated from the editModel to the model.

Examples:
  LayoutMorphEditPanel open:  (LayoutMorph newRow).
  LayoutSpecEditPanel open: (LayoutSpec useAll).!

!LayoutMorphEditPanel commentStamp: '<historical>' prior: 0!
I am a simple editor for a LayoutMorph.

iVars:
  model (inherited) -- the LayoutMorph being 'edited'  -- unchanged until user OKs
  editModel (inherited) -- clone of theLayoutMorp; holds edit state until saved to original
  directionArea paddingArea separationArea colorArea -- are layouts for controls.

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

!LayoutSpec methodsFor: '*morphic-panels' stamp: 'KenD 12/17/2013 20:40'!
privateFixedHeight

	^ fixedHeight! !

!LayoutSpec methodsFor: '*morphic-panels' stamp: 'KenD 12/17/2013 20:39'!
privateFixedWidth

	^ fixedWidth! !

!LayoutSpec methodsFor: '*morphic-panels' stamp: 'KenD 12/17/2013 20:40'!
privateProportionalHeight

	^ proportionalHeight! !

!LayoutSpec methodsFor: '*morphic-panels' stamp: 'KenD 12/17/2013 20:40'!
privateProportionalWidth

	^ proportionalWidth ! !

!Morph methodsFor: '*morphic-panels' stamp: 'KenD 12/18/2013 21:37'!
addCustomMenuItems: aCustomMenu hand: aHandMorph
	"Add morph-specific items to the given menu which was invoked by the given hand.  This method provides is invoked both from the halo-menu and from the control-menu regimes."

	aCustomMenu 
		addLine;
		add: 'Show my Drop Target' action: #showDropTarget;
		add: 'Edit my layoutSpec' action: #editMyLayoutSpec! !

!Morph methodsFor: '*morphic-panels' stamp: 'KenD 12/18/2013 21:39'!
editMyLayoutSpec

	self layoutSpec ifNil: [ self layoutSpec: LayoutSpec keepMorphExtent ].
	LayoutSpecEditPanel open: self layoutSpec! !

!LayoutMorph methodsFor: '*morphic-panels' stamp: 'KenD 12/18/2013 21:47'!
addCustomMenuItems: aCustomMenu hand: aHandMorph
	"Add morph-specific items to the given menu which was invoked by the given hand.  This method provides is invoked both from the halo-menu and from the control-menu regimes."

	super addCustomMenuItems: aCustomMenu hand: aHandMorph.
	aCustomMenu 
		addLine;
		add: 'Edit me' action: #editMe! !

!LayoutMorph methodsFor: '*morphic-panels' stamp: 'KenD 12/17/2013 14:57'!
direction: horizOrVert

	self flag: #jmvVer. "Move to category #accessing"

	direction := horizOrVert! !

!LayoutMorph methodsFor: '*morphic-panels' stamp: 'KenD 12/17/2013 15:00'!
editMe

	LayoutMorphEditPanel open: self! !

!LayoutMorph methodsFor: '*morphic-panels' stamp: 'KenD 12/17/2013 14:02'!
padding

	self flag: #jmvVer. "Move to category #accessing"

	^ padding! !

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

!Panel methodsFor: 'initialization' stamp: 'KenD 12/16/2013 16:35'!
defaultSeparation

	^ 4 "Pixels between controls/layouts"! !

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

!Panel methodsFor: 'initialization' stamp: 'KenD 12/17/2013 19:20'!
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

!Panel methodsFor: 'initialization' stamp: 'KenD 12/16/2013 16:48'!
openInWorld
	"Ensure all widgets have proper colors before opening"
	
	self widgetsColor: self widgetsColor.
	super openInWorld.
	^ self! !

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

!Panel methodsFor: 'submorphs-add/remove' stamp: 'KenD 12/18/2013 19:36'!
replaceArea: oldArea with: newArea
	"Replace oldArea in its container with newArea and clean up any ActionMaps"
	
	oldArea owner replaceSubmorph: oldArea by: newArea.
	oldArea releaseActionMap.
	self model removeActionsWithReceiver: oldArea.
	oldArea submorphsDo: [ :sm | 
		sm releaseActionMap.
		self model removeActionsWithReceiver: sm
	].

! !

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

!EditPanel methodsFor: 'event handling' stamp: 'KenD 12/17/2013 19:00'!
cancelAndForgetEverything

	self delete! !

!EditPanel methodsFor: 'accessing' stamp: 'KenD 12/17/2013 19:25'!
editModel
	"A subclass may wish to supply a custom editModel rather than model clone"
	
	editModel ifNil: [	editModel := self model clone ].
	
	^ editModel! !

!EditPanel methodsFor: 'initialization' stamp: 'KenD 12/17/2013 19:02'!
editModel: anObject

	editModel := anObject! !

!EditPanel methodsFor: 'area layouts' stamp: 'KenD 12/17/2013 19:54'!
newButtonArea
	"Answer a LayoutMorph with Update and Cancel buttons"
	
	| buttonArea |
	buttonArea := LayoutMorph newRow.
	^ buttonArea 
		separation: 8@0;
		addMorph: (PluggableButtonMorph 
				model: self 
				action:  #updateMasterFromCopy
				label: 'Update')
			layoutSpec: (LayoutSpec 
							proportionalWidth: 0.3 
							proportionalHeight:  1 
							minorDirectionPadding: #center);
		addMorph: (PluggableButtonMorph 
				model: self 
				action:  #cancelAndForgetEverything
				label: 'Cancel')
			layoutSpec: (LayoutSpec 
							proportionalWidth: 0.3 
							proportionalHeight:  1 
							minorDirectionPadding: #center);
		layoutSpec: (LayoutSpec 
							proportionalWidth: 1 
							fixedHeight: 36
							minorDirectionPadding: #center);
		padding: #center;
		yourself

	! !

!EditPanel methodsFor: 'event handling' stamp: 'KenD 12/18/2013 19:38'!
replaceArea: oldArea with: newArea
	"Replace oldArea in its container with newArea and clean up any ActionMaps"
	
	super replaceArea: oldArea with: newArea.
	oldArea submorphsDo: [ :sm | 
		self editModel removeActionsWithReceiver: sm
	].
! !

!EditPanel methodsFor: 'event handling' stamp: 'KenD 12/17/2013 19:01'!
updateMasterFromCopy
	"Update model from editModel"
	
	self subclassResponsibility ! !

!LayoutMorphEditPanel methodsFor: 'GUI building' stamp: 'KenD 12/17/2013 19:23'!
buildMorphicWindow
	
	| controlArea leftCol rightCol  |	
	labelString := self model printStringLimitedTo: 30.
		
	directionArea    := self newDirectionArea.
	paddingArea     := self newPaddingArea.
	separationArea := self newSeparationtionArea.
	colorArea         := self newColorArea.

	controlArea :=  LayoutMorph newRow.  "A row of two columns"
	controlArea separation: self defaultSeparation.
		
	leftCol := LayoutMorph newColumn.
	leftCol 
		separation: self defaultSeparation;
		addMorph: directionArea;
		addMorph: paddingArea.
	controlArea addMorph: leftCol.

	rightCol := LayoutMorph newColumn.
	rightCol 
		separation: self defaultSeparation;
		addMorph: separationArea ;
		addMorph: colorArea .
	controlArea addMorph: rightCol.
	
	self layoutMorph 
		separation: self defaultSeparation;
		addMorph: controlArea;
		addMorph: self newButtonArea;
		padding: #center.

! !

!LayoutMorphEditPanel methodsFor: 'accessing' stamp: 'KenD 12/16/2013 15:29'!
colorArea

	^ colorArea! !

!LayoutMorphEditPanel methodsFor: 'accessing' stamp: 'KenD 12/17/2013 12:26'!
colorArea: newColorArea

	colorArea := newColorArea! !

!LayoutMorphEditPanel methodsFor: 'initialization' stamp: 'KenD 12/16/2013 21:26'!
defaultExtent

	^ 350 @ 272! !

!LayoutMorphEditPanel methodsFor: 'accessing' stamp: 'KenD 12/16/2013 15:29'!
directionArea

	^ directionArea! !

!LayoutMorphEditPanel methodsFor: 'accessing' stamp: 'KenD 12/17/2013 12:26'!
directionArea: newDirectonArea

	directionArea := newDirectonArea! !

!LayoutMorphEditPanel methodsFor: 'event handling' stamp: 'KenD 12/17/2013 12:35'!
modelBeColumn
	"My editModel should be a Column"

	self editModel beColumn.
	self refreshDirectionArea.
	self refreshPaddingArea.! !

!LayoutMorphEditPanel methodsFor: 'event handling' stamp: 'KenD 12/17/2013 12:36'!
modelBeRow
	"My editModel should be a Row"
	
	self editModel beRow.
	self refreshDirectionArea.
	self refreshPaddingArea.! !

!LayoutMorphEditPanel methodsFor: 'event handling' stamp: 'KenD 12/17/2013 12:35'!
modelColor: aColor
	
	self editModel color: aColor.
	self refreshColorArea.! !

!LayoutMorphEditPanel methodsFor: 'event handling' stamp: 'KenD 12/17/2013 12:36'!
modelPadding: numPixels
	
	self editModel padding: numPixels.
	self refreshPaddingArea.! !

!LayoutMorphEditPanel methodsFor: 'event handling' stamp: 'KenD 12/17/2013 12:36'!
modelXSeparation: numPixels

	self editModel separation: numPixels @ self editModel ySeparation.
	self refreshSeparationtionArea.! !

!LayoutMorphEditPanel methodsFor: 'event handling' stamp: 'KenD 12/17/2013 12:36'!
modelYSeparation: numPixels

	self editModel separation: (self editModel xSeparation @ numPixels).
	self refreshSeparationtionArea.! !

!LayoutMorphEditPanel methodsFor: 'area layouts' stamp: 'KenD 12/17/2013 14:07'!
newColorArea
	"Answer a FramedLayoutMorph showing color swatch and hex RGB entry"
	
	| colorArea label spec initialColor colorSwatch colorRGB hexEntry |
	colorArea := FramedLayoutMorph newColumn.
	label := LabelMorph contents: 'Color'.
	initialColor := self editModel color.
	colorSwatch := initialColor iconOrThumbnailOfSize: 64.
	colorRGB := SimpleNumberEntryMorph hexRGBEntry.
	spec := LayoutSpec fixedHeight:
		(2 * colorArea borderWidth)
		+ (label naturalHeight)
		+ (colorSwatch height)
		+ 28 "hexEntry height"
		+ 2.
		
	hexEntry := LayoutMorph newRow.
	hexEntry
		separation: 1; padding: #left;
		color: Theme current background;
		addMorph: (StringMorph contents: '16r') 
				layoutSpec: (LayoutSpec keepMorphExtent);
		addMorph: colorRGB;
		addMorph: (StringMorph contents: 'hexRGB') 
				layoutSpec: (LayoutSpec keepMorphExtent);
		layoutSpec: (LayoutSpec fixedHeight: 28). "@@@Tune@@@"
		
	"Setup"
	colorRGB valueAccessor: [ :model | | backgroundColor |
		backgroundColor := model color.
		( '16r', 
	    ((backgroundColor red    * 255) rounded printPaddedWith: $0 to: 2 base: 16) ,
	    ((backgroundColor green * 255) rounded printPaddedWith: $0 to: 2 base: 16) , 
	    ((backgroundColor blue   * 255) rounded printPaddedWith: $0 to: 2 base: 16) ) asNumber
	].
	colorRGB valueUpdator: [ :integerRGB |
			self modelColor: (Color 
					r: ((integerRGB bitShift: -16) bitAnd: 255)	/ 255
					g: ((integerRGB bitShift: -8) bitAnd: 255) / 255
					b: (integerRGB bitAnd: 255) / 255)
	].
	colorRGB refreshValueFrom: self editModel.
		
	^ colorArea
		layoutSpec: spec;
		padding: #center;
		addMorph: label;
		addMorph: (ImageMorph new image: colorSwatch)  
				layoutSpec: (LayoutSpec keepMorphExtent);
		addMorph: hexEntry;
		yourself 
	
	! !

!LayoutMorphEditPanel methodsFor: 'area layouts' stamp: 'KenD 12/17/2013 14:17'!
newDirectionArea
	"Answer a FramedLayoutMorph with controls for Direction (Row,Column)"
	
	| dirArea label radio spec direction |
	dirArea := FramedLayoutMorph newColumn.
	label := LabelMorph contents: 'Direction'.
	radio := RadioGroup fromList: #(Row Column).
	spec := LayoutSpec fixedHeight:
		(2 * dirArea borderWidth)
		+ (label naturalHeight)
		+ (radio naturalHeight).
		
	"Setup"
	direction := self editModel direction.
	(direction == #horizontal)
		ifTrue: [ (radio buttonFor: #Row) select ]
		ifFalse: [ (radio buttonFor: #Column) select ].

	radio when: #informRadioSelection send: #newDirectionSelection: to: self.
		
	^ dirArea
		layoutSpec: spec;
		addMorph: label;
		addMorph: radio;
		yourself 
	
	! !

!LayoutMorphEditPanel methodsFor: 'event handling' stamp: 'KenD 12/17/2013 14:18'!
newDirectionSelection: dirSymbol

	(dirSymbol = #Row)
		ifTrue: [ self modelBeRow ] 
		ifFalse: [ self modelBeColumn ]! !

!LayoutMorphEditPanel methodsFor: 'area layouts' stamp: 'KenD 12/17/2013 14:43'!
newPaddingArea
	"Answer a FramedLayoutMorph with controls for Padding"
	
	| padArea label spec direction |
	padArea := FramedLayoutMorph newColumn.
	label := LabelMorph contents: 'Padding'.
	direction := self editModel direction.
	padRadio := RadioGroup fromList: ( 
		(direction = #horizontal)
			ifTrue: [ #(Left Center Right Specify) ] 
			ifFalse: [ #(Top Center Bottom Specify) ]
	).
	spec := LayoutSpec fixedHeight:
		(2 * padArea borderWidth)
		+ (label naturalHeight)
		+ (padRadio naturalHeight).
		
	"Setup"
	padEntry := SimpleNumberEntryMorph realFactor: 1.0 maxNumChars: 3.
	(padRadio rowFor: #Specify) addMorph: padEntry.
	padEntry valueAccessor: [ :model | model padding ].
	padEntry valueUpdator: [ :newPad | self modelPadding: newPad ].
	padEntry refreshValueFrom: self editModel.
	self setPadRadio: padRadio fromPadFactor: padEntry value.
	
	padRadio when: #informRadioSelection send: #newPaddingSelection: to: self.
		
	^ padArea
		layoutSpec: spec;
		addMorph: label;
		addMorph: padRadio;
		yourself 
	
	! !

!LayoutMorphEditPanel methodsFor: 'area layouts' stamp: 'KenD 12/17/2013 14:51'!
newPaddingSelection: padSym

	| radio |
	radio := self padRadio.
	padSym caseOf: {
		[ #Left ] -> [ (radio buttons at: 1) select. self padEntry setValue: 0.0 ].
		[ #Top ] -> [ (radio buttons at: 1) select. self padEntry setValue: 0.0 ].
		[ #Center ] -> [ (radio buttons at: 2) select. self padEntry setValue: 0.5 ].
		[ #Right ] -> [ (radio buttons at: 3) select. self padEntry setValue: 1.0 ].
		[ #Bottom ] -> [ (radio buttons at: 3) select. self padEntry setValue: 1.0 ].
		[ #Specify ] ->  [ (radio buttons at: 4) select ].
	}.

! !

!LayoutMorphEditPanel methodsFor: 'area layouts' stamp: 'KenD 12/17/2013 14:08'!
newSeparationtionArea
	"Answer a FramedLayoutMorph with controls for x & y separation"
	
	| sepArea label spec xArea yArea xSep ySep |
	sepArea := FramedLayoutMorph newColumn.
	label := LabelMorph contents: 'Separation'.
	spec := LayoutSpec fixedHeight:
		(2 * sepArea borderWidth)
		+ (3 * label naturalHeight).
		
	"Setup"
	xSep := SimpleNumberEntryMorph 
			integerRangeFrom: 0 
			to: DisplayScreen actualScreenSize x 
			maxNumChars: 5.
	xArea := LayoutMorph newRow.
	xArea 
		color: Theme current background;
		addMorph: (LabelMorph contents: '  X ');
		addMorph: xSep;
		addMorph: (StringMorph contents: ' pixels').
		
	ySep := SimpleNumberEntryMorph 
			integerRangeFrom: 0 
			to: DisplayScreen actualScreenSize y
			maxNumChars: 5.
	yArea := LayoutMorph newRow.
	yArea 
		color: Theme current background;
		addMorph: (LabelMorph contents: '  Y ');
		addMorph: ySep;
		addMorph: (StringMorph contents: ' pixels').

	"Value flow"
	xSep valueAccessor: [ :model | model xSeparation ].
	xSep valueUpdator: [ :newX | self modelXSeparation: newX ].
	ySep valueAccessor: [ :model | model ySeparation ].
	ySep valueUpdator: [ :newY | self modelYSeparation: newY ].
	xSep refreshValueFrom: self editModel.
	ySep refreshValueFrom: self editModel.
		
	 ^ sepArea
		layoutSpec: spec;
		addMorph: label;
		addMorph: xArea;
		addMorph: yArea;
		yourself 
	
	! !

!LayoutMorphEditPanel methodsFor: 'accessing' stamp: 'KenD 12/17/2013 14:43'!
padEntry

	^ padEntry! !

!LayoutMorphEditPanel methodsFor: 'accessing' stamp: 'KenD 12/17/2013 14:34'!
padRadio

	^ padRadio! !

!LayoutMorphEditPanel methodsFor: 'accessing' stamp: 'KenD 12/16/2013 15:29'!
paddingArea

	^ paddingArea! !

!LayoutMorphEditPanel methodsFor: 'accessing' stamp: 'KenD 12/17/2013 12:27'!
paddingArea: newPaddingArea

	paddingArea := newPaddingArea! !

!LayoutMorphEditPanel methodsFor: 'area layouts' stamp: 'KenD 12/17/2013 12:30'!
refreshColorArea
	"Update my view"
	
	| oldArea newArea |
	oldArea := self colorArea.
	newArea := self newColorArea.
	self replaceArea: oldArea with: newArea.
	self colorArea: newArea 
	! !

!LayoutMorphEditPanel methodsFor: 'area layouts' stamp: 'KenD 12/17/2013 12:29'!
refreshDirectionArea
	"Update my view"
	
	| oldArea newArea |
	oldArea := self directionArea.
	newArea := self newDirectionArea.
	self replaceArea: oldArea with: newArea.
	self directionArea: newArea 
	! !

!LayoutMorphEditPanel methodsFor: 'area layouts' stamp: 'KenD 12/17/2013 12:29'!
refreshPaddingArea
	"Update my view"
	
	| oldArea newArea |
	oldArea := self paddingArea.
	newArea := self newPaddingArea.
	self replaceArea: oldArea with: newArea.
	self paddingArea: newArea 
	! !

!LayoutMorphEditPanel methodsFor: 'area layouts' stamp: 'KenD 12/17/2013 12:28'!
refreshSeparationtionArea
	"Update my view"
	
	| oldArea newArea |
	oldArea := self separationArea.
	newArea := self newSeparationtionArea.
	self replaceArea: oldArea with: newArea.
	self separationArea: newArea 
	! !

!LayoutMorphEditPanel methodsFor: 'accessing' stamp: 'KenD 12/16/2013 15:29'!
separationArea

	^ separationArea! !

!LayoutMorphEditPanel methodsFor: 'accessing' stamp: 'KenD 12/17/2013 12:27'!
separationArea: newSeparationArea

	separationArea := newSeparationArea! !

!LayoutMorphEditPanel methodsFor: 'area layouts' stamp: 'KenD 12/17/2013 14:29'!
setPadRadio: radio fromPadFactor: factor

	factor caseOf: {
		[0.0] -> [ (radio buttons at: 1) select ].
		[0.5] -> [ (radio buttons at: 2) select ].
		[1.0] -> [ (radio buttons at: 3) select ].
	} otherwise: [ (radio buttons at: 4) select ]! !

!LayoutMorphEditPanel methodsFor: 'event handling' stamp: 'KenD 12/18/2013 21:57'!
updateMasterFromCopy
	"Update model from editModel"
	
	| original editCopy |
	original := self model.
	editCopy := self editModel.
	original direction: editCopy direction.
	original padding: editCopy padding.
	original separation: ( editCopy xSeparation @ editCopy ySeparation ).
	original color: editCopy color.
	original layoutSubmorphs; redrawNeeded.
	
	self delete! !

!LayoutSpecEditPanel methodsFor: 'entry morphs' stamp: 'KenD 12/18/2013 20:41'!
addFixedHeightEntryMorphTo: radio
	"Add entry field to #Fixed radioButton row"

	| fixEntry spec layout rowForFixed | 
	spec :=  self editModel.
	fixEntry := SimpleNumberEntryMorph 
						integerRangeFrom: 0 
						to: DisplayScreen actualScreenSize y 
						maxNumChars: 4.
	fixEntry valueAccessor: [ :model | model privateFixedHeight ].
	fixEntry valueUpdator: [ :newFixPix | spec fixedHeight: newFixPix ].
	fixEntry refreshValueFrom: spec.
	"Do layout surgery to make room for added field"
	rowForFixed := (radio rowFor: #Fixed).
	layout := LayoutSpec 
			proportionalWidth: 0.4
			fixedHeight: rowForFixed layoutSpec privateFixedHeight
			minorDirectionPadding:  #left.
	rowForFixed
		layoutSpec: layout;
		addMorph: fixEntry.
"		addMorph: (StringMorph contents: 'pixels') 
			layoutSpec: (LayoutSpec keepMorphExtent)"! !

!LayoutSpecEditPanel methodsFor: 'entry morphs' stamp: 'KenD 12/18/2013 20:41'!
addFixedWidthEntryMorphTo: radio
	"Add entry field to #Fixed radioButton row"

	| fixEntry spec layout rowForFixed | 
	spec :=  self editModel.
	fixEntry := SimpleNumberEntryMorph 
						integerRangeFrom: 0 
						to: DisplayScreen actualScreenSize x 
						maxNumChars: 4.
	fixEntry valueAccessor: [ :model | model privateFixedWidth ].
	fixEntry valueUpdator: [ :newFixPix | spec fixedWidth: newFixPix ].
	fixEntry refreshValueFrom: spec.
	"Do layout surgery to make room for added field"
	rowForFixed := (radio rowFor: #Fixed).
	layout := LayoutSpec 
			proportionalWidth: 0.4
			fixedHeight: rowForFixed layoutSpec privateFixedHeight
			minorDirectionPadding:  #left.
	rowForFixed
		layoutSpec: layout;
		addMorph: fixEntry.
"		addMorph: (StringMorph contents: 'pixels') 
			layoutSpec: (LayoutSpec keepMorphExtent)"! !

!LayoutSpecEditPanel methodsFor: 'initialization' stamp: 'KenD 12/18/2013 21:03'!
auxHeight

	^ 48 "pixels"! !

!LayoutSpecEditPanel methodsFor: 'GUI building' stamp: 'KenD 12/18/2013 19:24'!
buildMorphicWindow

	| controlsArea |
	labelString := self model printStringLimitedTo: 30.
		
	widthArea     := self newWidthArea.
	heightArea    := self newHeightArea.
	paddingArea  := self newPaddingArea.
	
	controlsArea := LayoutMorph newRow.
	controlsArea 
		separation: self defaultSeparation;
		addMorph: widthArea;
		addMorph: heightArea;
		addMorph: paddingArea.

	"Setup is done in area creation methods"	

	self layoutMorph 
		separation: self defaultSeparation;
		addMorph: controlsArea;
		addMorph: self newButtonArea;
		padding: #center.

! !

!LayoutSpecEditPanel methodsFor: 'initialization' stamp: 'KenD 12/18/2013 21:03'!
defaultExtent

	^ 550@240! !

!LayoutSpecEditPanel methodsFor: 'accessing' stamp: 'KenD 12/17/2013 19:50'!
heightArea

	^ heightArea! !

!LayoutSpecEditPanel methodsFor: 'accessing' stamp: 'KenD 12/17/2013 19:51'!
heightArea: newHeightArea

	heightArea := newHeightArea! !

!LayoutSpecEditPanel methodsFor: 'area layouts' stamp: 'KenD 12/18/2013 18:21'!
heightSelectionSymbol

	| fix prop |
	fix    := self editModel privateFixedHeight.
	prop := self editModel privateProportionalHeight.
	
	^ prop 
		ifNil: [
			fix ifNil: [ #'use morph height' ] 
				ifNotNil: [ #Fixed ]
		]
		ifNotNil: [ #Proportional ].! !

!LayoutSpecEditPanel methodsFor: 'event handling' stamp: 'KenD 12/17/2013 20:22'!
modelPadding: numPixels
	
	self editModel minorDirectionPadding: numPixels.
	self refreshPaddingArea.! !

!LayoutSpecEditPanel methodsFor: 'area layouts' stamp: 'KenD 12/18/2013 19:53'!
newEmptyAuxArea

	| aux |
	aux := LayoutMorph newColumn.
	^ aux
		color: Theme current background;
		layoutSpec: (LayoutSpec 
					proportionalWidth: 1.0 
					fixedHeight: self auxHeight
					minorDirectionPadding: #center);
		separation: self defaultSeparation;
		yourself! !

!LayoutSpecEditPanel methodsFor: 'area layouts' stamp: 'KenD 12/18/2013 21:14'!
newHeightArea
	"Answer a FramedLayoutMorph with controls for Height"
	
	| heightArea label spec radio selected |
	heightArea := FramedLayoutMorph newColumn.
	label := LabelMorph contents: 'Height'.
	radio := RadioGroup fromList: #( 'use morph height' Fixed Proportional ).
	selected := self heightSelectionSymbol.

	spec := LayoutSpec fixedHeight:
		(2 * heightArea borderWidth)
		+ (label naturalHeight)
		+ (radio naturalHeight)
		+ (self auxHeight)
		+ 4.
		
	"Setup"
	self setRadioSelection: radio selectSym: selected.
	(selected == #Fixed) ifTrue: [ self addFixedHeightEntryMorphTo: radio ].
	"Nota Bene: be sure to setRadioSelection:selectSym: BEFORE when:send:to:"
	radio when: #informRadioSelection send: #newHeightSelection: to: self.
		
	^ heightArea
		layoutSpec: spec;
		addMorph: label;
		addMorph: radio;
		addMorph: ((selected == #Proportional)
			ifTrue: [self newProportionalHeightAuxArea]
			ifFalse: [self newEmptyAuxArea]);
		yourself 
! !

!LayoutSpecEditPanel methodsFor: 'event handling' stamp: 'KenD 12/18/2013 19:44'!
newHeightSelection: selectSym

	| spec origFix origProp |
	spec := self editModel.
	origFix   := spec privateFixedHeight.
	origProp := spec privateProportionalHeight.
	
	selectSym caseOf: {
		[ #Fixed ] -> [ 
			spec fixedHeight: (origFix ifNil: [ 0 ] ifNotNil: [ origFix ]) 
		].
		[ #Proportional ] -> [ 
			spec setProportionalHeight: (origProp ifNil: [ 1.0 ] ifNotNil: [ origProp ])
		].
		[ #'use morph height' ] -> [ self editModel useMorphHeight ].
	}.	
	
	self refreshHeightArea ! !

!LayoutSpecEditPanel methodsFor: 'area layouts' stamp: 'KenD 12/18/2013 20:29'!
newPaddingArea
	"Answer a FramedLayoutMorph with controls for Padding"
	
	| padArea label spec row |
	padArea := FramedLayoutMorph newColumn.
	label := LabelMorph contents: 'Padding'.
	padRadio := RadioGroup fromList:  #('Left/Top' Center 'Right/Bottom' Specify) .
	
	spec := LayoutSpec fixedHeight:
		(2 * padArea borderWidth)
		+ (label naturalHeight)
		+ (padRadio naturalHeight)
		+ 4.
		
	"Setup"
	padEntry := SimpleNumberEntryMorph realFactor: 1.0 maxNumChars: 3.
	row := (padRadio rowFor: #Specify).
	"Do layout surgery on row to make room for padEntry"
	row
		layoutSpec: (LayoutSpec proportionalWidth: 0.5
						fixedHeight: row layoutSpec privateFixedHeight
						minorDirectionPadding:  #left);
		addMorph: padEntry.
	padEntry valueAccessor: [ :model | model minorDirectionPadding ].
	padEntry valueUpdator: [ :newPad | self modelPadding: newPad ].
	padEntry refreshValueFrom: self editModel.
	self setPadRadio: padRadio fromPadFactor: padEntry value.
	
	padRadio when: #informRadioSelection send: #newPaddingSelection: to: self.
		
	^ padArea
		layoutSpec: spec;
		addMorph: label;
		addMorph: padRadio;
		yourself 
! !

!LayoutSpecEditPanel methodsFor: 'event handling' stamp: 'KenD 12/17/2013 20:24'!
newPaddingSelection: padSym

	| radio |
	radio := self padRadio.
	padSym caseOf: {
		[ #'Left/Top' ] -> [ (radio buttons at: 1) select. self padEntry setValue: 0.0 ].
		[ #Center ] -> [ (radio buttons at: 2) select. self padEntry setValue: 0.5 ].
		[ #'Right/Bottom' ] -> [ (radio buttons at: 3) select. self padEntry setValue: 1.0 ].
		[ #Specify ] ->  [ (radio buttons at: 4) select ].
	}.

! !

!LayoutSpecEditPanel methodsFor: 'entry morphs' stamp: 'KenD 12/18/2013 21:13'!
newProportionalHeightAuxArea
	"Add proportion factor and minSize fields"

	| aux |
	aux := LayoutMorph newColumn.
	^ aux
		color: Theme current background;
		layoutSpec: (LayoutSpec 
					proportionalWidth: 1.0 
					fixedHeight: self auxHeight
					minorDirectionPadding: #center);
		separation: self defaultSeparation;
		addMorph: self propHeightPercent;
		addMorph: self propHeightMinimum;
		yourself! !

!LayoutSpecEditPanel methodsFor: 'entry morphs' stamp: 'KenD 12/18/2013 21:15'!
newProportionalWidthAuxArea
	"Add proportion factor and minSize fields"

	| aux |
	aux := LayoutMorph newColumn.
	^ aux
		color: Theme current background;
		layoutSpec: (LayoutSpec 
					proportionalWidth: 1.0 
					fixedHeight: self auxHeight
					minorDirectionPadding: #center);
		separation: self defaultSeparation;
		addMorph: self propWidthPercent;
		addMorph: self propWidthMinimum;
		yourself! !

!LayoutSpecEditPanel methodsFor: 'area layouts' stamp: 'KenD 12/18/2013 21:19'!
newWidthArea
	"Answer a FramedLayoutMorph with controls for Width"
	
	| widthArea label spec radio selected |
	widthArea := FramedLayoutMorph newColumn.
	label := LabelMorph contents: 'Width'.
	radio := RadioGroup fromList: #( 'use morph width' Fixed Proportional ).
	selected := self widthSelectionSymbol.

	spec := LayoutSpec fixedHeight:
		(2 * widthArea borderWidth)
		+ (label naturalHeight)
		+ (radio naturalHeight)
		+ (self auxHeight)
		+ 4.
		
	"Setup"
	self setRadioSelection: radio selectSym: selected.	
	(selected == #Fixed) ifTrue: [ self addFixedWidthEntryMorphTo: radio ].
	"Nota Bene: be sure to setRadioSelection:selectSym: BEFORE when:send:to:"
	radio when: #informRadioSelection send: #newWidthSelection: to: self.
		
	^ widthArea
		layoutSpec: spec;
		addMorph: label;
		addMorph: radio;
		addMorph: ((selected == #Proportional)
			ifTrue: [self newProportionalWidthAuxArea]
			ifFalse: [self newEmptyAuxArea]);
		yourself 
! !

!LayoutSpecEditPanel methodsFor: 'event handling' stamp: 'KenD 12/18/2013 19:46'!
newWidthSelection: selectSym

	| spec origFix origProp |
	spec := self editModel.
	origFix   := spec privateFixedWidth.
	origProp := spec privateProportionalWidth.
	
	selectSym caseOf: {
		[ #Fixed ] -> [ 
			spec fixedWidth: (origFix ifNil: [ 0 ] ifNotNil: [ origFix ]) 
		].
		[ #Proportional ] -> [ 
			spec setProportionalWidth: (origProp ifNil: [ 1.0 ] ifNotNil: [ origProp ])
		].
		[ #'use morph width' ] -> [ self editModel useMorphWidth ].
	}.	
	
	self refreshWidthArea.
	
! !

!LayoutSpecEditPanel methodsFor: 'accessing' stamp: 'KenD 12/17/2013 19:49'!
padEntry

	^ padEntry! !

!LayoutSpecEditPanel methodsFor: 'accessing' stamp: 'KenD 12/17/2013 19:48'!
padRadio

	^ padRadio! !

!LayoutSpecEditPanel methodsFor: 'accessing' stamp: 'KenD 12/17/2013 19:49'!
paddingArea

	^ paddingArea! !

!LayoutSpecEditPanel methodsFor: 'accessing' stamp: 'KenD 12/17/2013 19:49'!
paddingArea: newPaddingArea

	paddingArea := newPaddingArea! !

!LayoutSpecEditPanel methodsFor: 'entry morphs' stamp: 'KenD 12/18/2013 21:12'!
propHeightMinimum
	"proportion percent"

	| row minEntry |
	row := LayoutMorph newRow.
	minEntry := SimpleNumberEntryMorph 
						integerRangeFrom: 0 
						to: DisplayScreen actualScreenSize y 
						maxNumChars: 4.
	minEntry valueAccessor: [ :model | 
		model privateFixedHeight ifNil: [ 0 ] ifNotNil: [ :height | height rounded ]
	].
	minEntry valueUpdator: [ :newMinPixels | 
		self editModel proportionalHeight: self editModel privateProportionalHeight
						  minimum: newMinPixels ].
	minEntry refreshValueFrom: self editModel.
	^ row
		addMorph: (StringMorph contents: 'minimum  ');
		addMorph: minEntry;
		addMorph: (StringMorph contents: ' pixels');
		yourself! !

!LayoutSpecEditPanel methodsFor: 'entry morphs' stamp: 'KenD 12/18/2013 21:34'!
propHeightPercent
	"proportion percent"

	| row propEntry |
	row := LayoutMorph newRow.
	propEntry := SimpleNumberEntryMorph percentForRealFactor: 1.0.
	propEntry valueAccessor: [ :model | 
		model privateProportionalHeight ifNil: [ 0 ] ifNotNil: [ :height | height ]
	].
	propEntry valueUpdator: [ :newFactor | 
		self editModel proportionalHeight: newFactor 
						  minimum: self editModel privateFixedHeight ].
	propEntry refreshValueFrom: self editModel.
	^ row
		addMorph: (StringMorph contents: '        ');
		addMorph: propEntry;
		addMorph: (StringMorph contents: '%');
		yourself! !

!LayoutSpecEditPanel methodsFor: 'entry morphs' stamp: 'KenD 12/18/2013 21:12'!
propWidthMinimum
	"proportion percent"

	| row minEntry |
	row := LayoutMorph newRow.
	minEntry := SimpleNumberEntryMorph 
						integerRangeFrom: 0 
						to: DisplayScreen actualScreenSize y 
						maxNumChars: 4.
	minEntry valueAccessor: [ :model | 
		model privateFixedWidth ifNil: [ 0 ] ifNotNil: [ :width | width rounded ]
	].
	minEntry valueUpdator: [ :newMinPixels | 
		self editModel proportionalWidth: self editModel privateProportionalWidth
						  minimum: newMinPixels ].
	minEntry refreshValueFrom: self editModel.
	^ row
		addMorph: (StringMorph contents: 'minimum  ');
		addMorph: minEntry;
		addMorph: (StringMorph contents: ' pixels');
		yourself! !

!LayoutSpecEditPanel methodsFor: 'entry morphs' stamp: 'KenD 12/18/2013 21:17'!
propWidthPercent
	"proportion percent"

	| row propEntry |
	row := LayoutMorph newRow.
	propEntry := SimpleNumberEntryMorph percentForRealFactor: 1.0.
	propEntry valueAccessor: [ :model | 
		model privateProportionalWidth ifNil: [ 1.0 ] ifNotNil: [ :width | width ]
	].
	propEntry valueUpdator: [ :newFactor | 
		self editModel proportionalWidth: newFactor 
						  minimum: self editModel privateFixedWidth ].
	propEntry refreshValueFrom: self editModel.
	^ row
		addMorph: (StringMorph contents: '        ');
		addMorph: propEntry;
		addMorph: (StringMorph contents: '%');
		yourself! !

!LayoutSpecEditPanel methodsFor: 'area layouts' stamp: 'KenD 12/17/2013 20:36'!
refreshHeightArea
	"Update my view"
	
	| oldArea newArea |
	oldArea := self heightArea.
	newArea := self newHeightArea.
	self replaceArea: oldArea with: newArea.
	self heightArea: newArea 
	! !

!LayoutSpecEditPanel methodsFor: 'area layouts' stamp: 'KenD 12/17/2013 19:55'!
refreshPaddingArea
	"Update my view"
	
	| oldArea newArea |
	oldArea := self paddingArea.
	newArea := self newPaddingArea.
	self replaceArea: oldArea with: newArea.
	self paddingArea: newArea 
	! !

!LayoutSpecEditPanel methodsFor: 'area layouts' stamp: 'KenD 12/17/2013 20:35'!
refreshWidthArea
	"Update my view"
	
	| oldArea newArea |
	oldArea := self widthArea.
	newArea := self newWidthArea.
	self replaceArea: oldArea with: newArea.
	self widthArea: newArea 
	! !

!LayoutSpecEditPanel methodsFor: 'area layouts' stamp: 'KenD 12/17/2013 19:55'!
setPadRadio: radio fromPadFactor: factor

	factor caseOf: {
		[0.0] -> [ (radio buttons at: 1) select ].
		[0.5] -> [ (radio buttons at: 2) select ].
		[1.0] -> [ (radio buttons at: 3) select ].
	} otherwise: [ (radio buttons at: 4) select ]! !

!LayoutSpecEditPanel methodsFor: 'area layouts' stamp: 'KenD 12/18/2013 19:45'!
setRadioSelection: radio selectSym: newSelectSym

	(radio buttonFor: newSelectSym) select! !

!LayoutSpecEditPanel methodsFor: 'event handling' stamp: 'KenD 12/18/2013 21:59'!
updateMasterFromCopy
	"Update model from editModel"
	
	| original editCopy |
	original := self model.
	editCopy := self editModel.
	original proportionalHeight: editCopy privateProportionalHeight 
			  minimum: editCopy privateFixedHeight.
	original proportionalWidth: editCopy privateProportionalWidth 
			  minimum: editCopy privateFixedWidth.
	original minorDirectionPadding: editCopy minorDirectionPadding.
	self owner ifNotNil: [ self owner layoutSubmorphs. self owner redrawNeeded ].
	
	self delete    "My job is done"! !

!LayoutSpecEditPanel methodsFor: 'accessing' stamp: 'KenD 12/17/2013 19:50'!
widthArea

	^ widthArea! !

!LayoutSpecEditPanel methodsFor: 'accessing' stamp: 'KenD 12/17/2013 19:51'!
widthArea: newWidthArea

	widthArea := newWidthArea ! !

!LayoutSpecEditPanel methodsFor: 'area layouts' stamp: 'KenD 12/18/2013 18:22'!
widthSelectionSymbol

	| fix prop |
	fix    := self editModel privateFixedWidth.
	prop := self editModel privateProportionalWidth.
	
	^ prop 
		ifNil: [
			fix ifNil: [ #'use morph width' ] 
				ifNotNil: [ #Fixed ]
		]
		ifNotNil: [ #Proportional ].! !

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

!LabelMorph methodsFor: 'geometry' stamp: 'KenD 12/15/2013 22:00'!
naturalHeight

	^ self morphExtent y! !
