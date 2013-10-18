'From Cuis 4.2 of 25 July 2013 [latest update: #1851] on 17 October 2013 at 5:53:30.286000112 pm'!
'Description I display a pallet of images (of things) to drag'!
!provides: 'Morphic-Display-Pallet' 1 25!
!classDefinition: #ImagePallet category: #'Morphic-Display-Pallet'!
PluggableScrollPane subclass: #ImagePallet
	instanceVariableNames: 'nameImageCollection imageFilter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Display-Pallet'!
!classDefinition: 'ImagePallet class' category: #'Morphic-Display-Pallet'!
ImagePallet class
	instanceVariableNames: ''!

!classDefinition: #ColorPallet category: #'Morphic-Display-Pallet'!
ImagePallet subclass: #ColorPallet
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Display-Pallet'!
!classDefinition: 'ColorPallet class' category: #'Morphic-Display-Pallet'!
ColorPallet class
	instanceVariableNames: ''!

!classDefinition: #MorphModifierPallet category: #'Morphic-Display-Pallet'!
ImagePallet subclass: #MorphModifierPallet
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Display-Pallet'!
!classDefinition: 'MorphModifierPallet class' category: #'Morphic-Display-Pallet'!
MorphModifierPallet class
	instanceVariableNames: ''!

!classDefinition: #WidgetPallet category: #'Morphic-Display-Pallet'!
PluggableScrollPane subclass: #WidgetPallet
	instanceVariableNames: ''
	classVariableNames: 'DirectWidgets ProcyWidgets'
	poolDictionaries: ''
	category: 'Morphic-Display-Pallet'!
!classDefinition: 'WidgetPallet class' category: #'Morphic-Display-Pallet'!
WidgetPallet class
	instanceVariableNames: ''!

!classDefinition: #PalletLayoutMorph category: #'Morphic-Display-Pallet'!
LayoutMorph subclass: #PalletLayoutMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Display-Pallet'!
!classDefinition: 'PalletLayoutMorph class' category: #'Morphic-Display-Pallet'!
PalletLayoutMorph class
	instanceVariableNames: ''!


!ImagePallet commentStamp: '<historical>' prior: 0!
I Display a pallet of widgets to grab a copy of to drop on something else

!

!ColorPallet commentStamp: '<historical>' prior: 0!
I am just a way of instantiating a Color Palette!

!MorphModifierPallet commentStamp: '<historical>' prior: 0!
I am just a way of instantiating a Morph Modifier Palette!

!PalletLayoutMorph commentStamp: '<historical>' prior: 0!
I am a LayoutMorph which allows grabbing (cloning) my submorphs.!

!ImagePallet methodsFor: 'initialize-release' stamp: 'KenD 9/14/2013 16:04'!
collection: aNameImageCollection
	"The default filter is the identity function"
	
	self collection: aNameImageCollection filter: [ :any | any ] 
! !

!ImagePallet methodsFor: 'initialize-release' stamp: 'KenD 10/17/2013 17:04'!
collection: aNameImageCollection filter: imageSelector

	| numImages imageExtent spaceWidth imageWidth maxWidth numAcross imageHeight numDown layoutExtent |
	nameImageCollection := aNameImageCollection.
	imageFilter := imageSelector.
	
	numImages := aNameImageCollection size.
	numImages isZero ifTrue: [Error signal: 'I require a non-empty collection to display!!'].
	numImages> 1000 ifTrue: [Error signal: 'Collection too large to display safely'].
	"@@FIXME: assumes all images same size@@"
	imageExtent := (self processImage: (aNameImageCollection anyOne value)) morphExtent.

	spaceWidth := 2. "Pixels between images"
	maxWidth := (DisplayScreen actualScreenSize x) // 1.4.
	imageWidth := (imageExtent x) + spaceWidth.
	numAcross := (((maxWidth - spaceWidth) // imageWidth) max: 1) min: numImages.
	numDown := (numImages / numAcross) ceiling.
	imageHeight := (imageExtent y) + spaceWidth.
	layoutExtent := (imageWidth * numAcross + spaceWidth) 
					@ (imageHeight * numDown + spaceWidth).
	
	self layoutImages: numAcross extent: layoutExtent.
	self morphExtent:  (layoutExtent min: ((DisplayScreen actualScreenSize) // 1.4)).

! !

!ImagePallet methodsFor: 'accessing' stamp: 'KenD 9/13/2013 16:33'!
imageDictionary

	^ imageDictionary ! !

!ImagePallet methodsFor: 'initialize-release' stamp: 'KenD 10/17/2013 16:31'!
layoutImages: numAcross extent: layoutExtent

	"Lay out images in self"
	| column nextRow count rowLayoutSpec numInLastRow |
	count := -1.
	rowLayoutSpec := LayoutSpec 
							fixedWidth: layoutExtent x  
							proportionalHeight: 1.0 
							minorDirectionPadding: #left.
							
	column := LayoutMorph newColumn separation: 2.
	self nameImageCollection do: [ :nameImageAssoc || name image imageMorph |
		      name := nameImageAssoc key.
			image := nameImageAssoc value.
			count := count + 1.  "Row count"
			(count \\ numAcross) isZero ifTrue: [ "Start a new Row"
				nextRow := PalletLayoutMorph newRow separation: 2.
				nextRow layoutSpec: rowLayoutSpec.
				column addMorph: nextRow.
			].
			imageMorph := self processImage: image.
			imageMorph setBalloonText: name asString.
			nextRow addMorph: imageMorph.
	].
	numInLastRow := (nextRow submorphs size).
	(numInLastRow > 0)
		ifTrue: [ | morphWidth | "Last row is short -- want Morphs together on left"
			morphWidth := nextRow submorphs first morphExtent x.
			nextRow layoutSpec: 
					(LayoutSpec 
							fixedWidth: ((morphWidth + 2) * numInLastRow + 2)
							proportionalHeight: 1.0 
							minorDirectionPadding: #left).
		].
	column addMorph: nextRow. "add last row"
	column layoutSpec: (LayoutSpec
							proportionalWidth: 1.0 
							fixedHeight: layoutExtent y 
							minorDirectionPadding: #top)..
	column morphExtent: layoutExtent.
	self addToScroller: column.


! !

!ImagePallet methodsFor: 'accessing' stamp: 'KenD 9/14/2013 16:33'!
nameImageCollection

	^ nameImageCollection ! !

!ImagePallet methodsFor: 'open/close' stamp: 'KenD 10/17/2013 17:24'!
openInWorld: aWorld
	"This msg and its callees result in the window being activeOnlyOnTop"
	aWorld addMorph: self.
	self morphBoundsInWorld: self morphExtent. "Trust setup code"
	aWorld startSteppingSubmorphsOf: self.
	"Do it deferred. Was needed for text cursor to start blinking if (Preferences disable: #focusFollowsMouse) "
	WorldState addDeferredUIMessage: [ self activate ]! !

!ImagePallet methodsFor: 'private' stamp: 'KenD 9/13/2013 20:08'!
processImage: anImage

	^ imageFilter value: anImage

	! !

!ImagePallet class methodsFor: 'instance creation' stamp: 'KenD 10/12/2013 17:24'!
fromCollection: nameImageAssociations

	^ self basicNew initialize collection: nameImageAssociations! !

!ImagePallet class methodsFor: 'instance creation' stamp: 'KenD 9/14/2013 16:31'!
fromCollection: nameImageAssociations imageFilter: aClosure

	^ self basicNew initialize collection: nameImageAssociations filter: aClosure ! !

!ImagePallet class methodsFor: 'new-morph participation' stamp: 'KenD 9/15/2013 16:40'!
includeInNewMorphMenu
	"Return true for all classes that can be instantiated from the menu"
	^ false! !

!ImagePallet class methodsFor: 'examples' stamp: 'KenD 10/17/2013 16:49'!
largerIcons
"
	ImagePallet largerIcons.
"
	| ip sw iconsCollection savedExtent sortedCollection extraExtent |
	iconsCollection := OrderedCollection new. 
	{ 'actions'. 'apps'. 'categories'. 'devices'. 'emblems'. 'emotes'. 'mimetypes'. 'places'. 'smalltalk'. 'status'. } do: [ :category |
		iconsCollection addAll: (Theme content get: {'Theme'. '16x16'. category}) array.
	].
	sortedCollection := SortedCollection sortBlock: [ :a :b | a key < b key].
	sortedCollection addAll: (iconsCollection select: [ :assoc | assoc isNil not]).
	
	ip := ImagePallet 
			fromCollection: (sortedCollection collect: [ :assoc | 
				Association key: (assoc key sansPeriodSuffix) value: assoc value
			])
			imageFilter: [:form | ImageMorph new image: (form magnifyTo: 32 @ 32)].
	savedExtent := ip morphExtent.

	sw := SystemWindow new.
	sw addMorph: ip.
	sw setLabel: 'Pick an Icon'.
	sw openInWorld.
	extraExtent := ScrollBar scrollbarThickness + 3
					 @ (ScrollBar scrollbarThickness + 3 + sw labelRectangle height).
	sw morphExtent: (savedExtent + extraExtent
			min: ((DisplayScreen actualScreenSize) // 1.2)).  "openInWorld resets extent"! !

!ImagePallet class methodsFor: 'examples' stamp: 'KenD 10/17/2013 16:50'!
namedColors
"
	self useCSS3ColorDict.                    "" To get CSS3/Web color names""
	self useXKCDColorDict.                    "" To get XKCD color names""
	ImagePallet namedColors.
"
	| ip sw sortedColors a b savedExtent extraExtent |
	sortedColors := SortedCollection sortBlock: 
		 [ :aAssoc :bAssoc |
			a := aAssoc value.
			b := bAssoc value.
			(a hue < b hue) or: [(a hue = b hue) and: [a saturation < b saturation ]]
		].
	Color colorNamesDict associationsDo: [ :assoc | sortedColors add: assoc ].
	
	ip := ImagePallet 
			fromCollection: sortedColors
			imageFilter: [:color | ImageMorph new image: (color icon "magnifyTo: 20 @ 20")].
	savedExtent := ip morphExtent.

	sw := SystemWindow new.
	sw addMorph: ip;
		setLabel: 'Pick a Color'.
	sw openInWorld. 
	"openInWorld resets extent"
	extraExtent := ScrollBar scrollbarThickness + 4
					 @ (ScrollBar scrollbarThickness + 4 + sw labelRectangle height).
	sw morphExtent: (savedExtent + extraExtent
			min: ((DisplayScreen actualScreenSize) // 1.2)).  "openInWorld resets extent"! !

!ImagePallet class methodsFor: 'examples' stamp: 'KenD 10/17/2013 16:50'!
namedIcons
"
	ImagePallet namedIcons.
"
	| ip sw iconsCollection sortedCollection savedExtent extraExtent |
	iconsCollection := OrderedCollection new. 
	{ 'actions'. 'apps'. 'categories'. 'devices'. 'emblems'. 'emotes'.
	  'mimetypes'. 'places'. 'smalltalk'. 'status'. } do: [ :category |
		iconsCollection addAll: (Theme content get: {'Theme'. '16x16'. category}) array.
	].
	sortedCollection := SortedCollection sortBlock: [ :a :b | a key < b key].
	sortedCollection addAll: (iconsCollection select: [ :assoc | assoc isNil not]).
	
	ip := ImagePallet 
			fromCollection: (sortedCollection collect: [ :assoc | 
				Association key: (assoc key sansPeriodSuffix) value: assoc value
			])
			imageFilter: [:form | ImageMorph new image: form].
	savedExtent := ip morphExtent.

	sw := SystemWindow new.
	sw addMorph: ip.
	sw setLabel: 'Pick an Icon'.
	sw openInWorld.
	extraExtent := ScrollBar scrollbarThickness + 4
					 @ (ScrollBar scrollbarThickness + 4 + sw labelRectangle height).
	sw 	morphExtent: savedExtent + extraExtent.   "openInWorld algorithm resets extent"! !

!ImagePallet class methodsFor: 'instance creation' stamp: 'KenD 9/13/2013 16:10'!
new

	Error signal: self name asString, ' requires a collection of name->image associations to instantiate'! !

!ImagePallet class methodsFor: 'examples' stamp: 'KenD 9/15/2013 16:09'!
useCSS3ColorDict

	Feature require: 'CSS3-NamedColors'.
	Color setColorNamesDict: Color css3ColorDictionary.! !

!ImagePallet class methodsFor: 'examples' stamp: 'KenD 9/15/2013 16:14'!
useNBSISCCColorDict

	Feature require: 'NBSISCC-NamedColors'.
	Color setColorNamesDict: Color nbsisccColorDictionary.! !

!ImagePallet class methodsFor: 'examples' stamp: 'KenD 9/15/2013 16:12'!
useXKCDColorDict

	Feature require: 'XKCD-NamedColors'.
	Color setColorNamesDict: Color xkcdColorDictionary.! !

!WidgetPallet methodsFor: 'initialization' stamp: 'KenD 9/15/2013 17:23'!
initialize
	"Add morphs to clone"
	
	| column extent separation |
	super initialize.
	separation := 10.
	column := PalletLayoutMorph newColumn separation: separation.
	self class directWidgets do: [ :aClass | column addMorph: aClass initializedInstance ].
	"self class procyWidgets do:  [ :aClass | column addMorph: aClass initializedInstanceProxy ]."
	extent := 0 @ separation.
	column submorphs do: [ :m | | mXtent | 
		m setBalloonText: m class printString.
		mXtent := m morphExtent.
		extent := (extent x max: mXtent x) @ (extent y + separation + mXtent y).
	].
	column morphExtent: extent.
	self addToScroller: column.
	self morphExtent: extent.! !

!WidgetPallet class methodsFor: 'accessing' stamp: 'KenD 9/15/2013 16:58'!
directWidgets

	^DirectWidgets ! !

!WidgetPallet class methodsFor: 'class initialization' stamp: 'KenD 9/15/2013 17:25'!
initialize
"
	WidgetPallet initialize.
"
	"DirectWidget classes supply a clonable instance"
	DirectWidgets := { EllipseMorph. StringMorph. ImageMorph. RectangleLikeMorph.
			BorderedRectMorph. LayoutMorph. "FillInTheBlankMorph." "MagnifierMorph."
			OneLineEditorMorph. PartsBinMorph. }.
	"ProxyWidget classes require a proxy for cloning"
	ProcyWidgets := { }.! !

!WidgetPallet class methodsFor: 'examples' stamp: 'KenD 9/15/2013 17:28'!
newPallet
	"Open a widget pallet in the current world"
"
	WidgetPallet newPallet.
"

	| wp sw extent |
	wp := self new.
	extent := wp morphExtent.
	sw := SystemWindow new.
	sw addMorph: wp.
	sw setLabel: 'Pick a Widget'.
	sw openInWorld.
	sw morphExtent: extent + 40.
! !

!WidgetPallet class methodsFor: 'accessing' stamp: 'KenD 9/15/2013 16:59'!
procyWidgets

	^ ProcyWidgets ! !

!PalletLayoutMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 9/14/2013 16:00'!
aboutToGrab: aMorph
	"submorph is being grabbed by a hand.
	Perform necessary adjustments (if any) and return the actual morph
	that should be added to the hand.
	Answer nil to reject the drag."

	^aMorph copy! !

!PalletLayoutMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 9/14/2013 15:59'!
allowsSubmorphDrag
	"Answer whether our morphs can just be grabbed with the hand, instead of requiring the use of the halo. Redefined to answer true."

	^ true! !

!PalletLayoutMorph class methodsFor: 'new-morph participation' stamp: 'KenD 9/15/2013 16:40'!
includeInNewMorphMenu
	"Return true for all classes that can be instantiated from the menu"
	^ false! !
WidgetPallet initialize!
