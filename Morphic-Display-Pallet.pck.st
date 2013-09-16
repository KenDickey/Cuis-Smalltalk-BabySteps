'From Cuis 4.2 of 25 July 2013 [latest update: #1824] on 15 September 2013 at 5:28:46.448988 pm'!
'Description I display a pallet of images (of things) to drag'!
!provides: 'Morphic-Display-Pallet' 1 11!
!classDefinition: #ImagePallet category: #'Morphic-Display-Pallet'!
PluggableScrollPane subclass: #ImagePallet
	instanceVariableNames: 'nameImageCollection imageFilter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Display-Pallet'!
!classDefinition: 'ImagePallet class' category: #'Morphic-Display-Pallet'!
ImagePallet class
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

!PalletLayoutMorph commentStamp: '<historical>' prior: 0!
I am a LayoutMorph which allows grabbing (cloning) my submorphs.!

!ImagePallet methodsFor: 'initialize-release' stamp: 'KenD 9/14/2013 16:04'!
collection: aNameImageCollection
	"The default filter is the identity function"
	
	self collection: aNameImageCollection filter: [ :any | any ] 
! !

!ImagePallet methodsFor: 'initialize-release' stamp: 'KenD 9/14/2013 16:33'!
collection: aNameImageCollection filter: imageSelector

	| numImages imageExtent spaceWidth imageWidth maxWidth numAcross imageHeight numDown |
	nameImageCollection := aNameImageCollection.
	imageFilter := imageSelector.
	
	numImages := aNameImageCollection size.
	numImages isZero ifTrue: [Error signal: 'I require a non-empty collection to display!!'].
	numImages> 1000 ifTrue: [Error signal: 'Collection too large to display safely'].
	"@@FIXME: assumes all images same size@@"
	imageExtent := (self processImage: (aNameImageCollection anyOne value)) layoutBounds extent.

	spaceWidth := 5. "Pixels between images"
	maxWidth := (DisplayScreen actualScreenSize x) // 2.
	imageWidth := (imageExtent x) + spaceWidth.
	numAcross := ((maxWidth - spaceWidth) // imageWidth) max: 1.
	numDown := numImages // numAcross + 1.
	imageHeight := (imageExtent y) + spaceWidth.

	self layoutImages: numAcross 
		 extent: (imageWidth * numAcross + spaceWidth) 
				@ (imageHeight * numDown + spaceWidth).

! !

!ImagePallet methodsFor: 'accessing' stamp: 'KenD 9/13/2013 16:33'!
imageDictionary

	^ imageDictionary ! !

!ImagePallet methodsFor: 'initialize-release' stamp: 'KenD 9/13/2013 20:26'!
initialize
	"initialize the state of the receiver"
	super initialize.! !

!ImagePallet methodsFor: 'initialize-release' stamp: 'KenD 9/14/2013 20:21'!
layoutImages: numAcross extent: layoutExtent

	"Lay out images in self"
	| column nextRow count |
	count := -1.
	column := LayoutMorph newColumn separation: 5.
	self nameImageCollection do: [ :nameImageAssoc || name image imageMorph |
		     name := nameImageAssoc key.
			image := nameImageAssoc value.
			count := count + 1.  "Row count"
			(count \\ numAcross) isZero ifTrue: [ "Start a new Row"
				nextRow := PalletLayoutMorph newRow separation: 5.
				column addMorph: nextRow.
			].
			imageMorph := self processImage: image.
			imageMorph setBalloonText: name asString.
			nextRow addMorph: imageMorph.
	].
	column addMorph: nextRow. "add last row"
	column morphExtent: layoutExtent.
	self addToScroller: column.
	self morphExtent: layoutExtent. ! !

!ImagePallet methodsFor: 'accessing' stamp: 'KenD 9/14/2013 16:33'!
nameImageCollection

	^ nameImageCollection ! !

!ImagePallet methodsFor: 'private' stamp: 'KenD 9/13/2013 20:08'!
processImage: anImage

	^ imageFilter value: anImage

	! !

!ImagePallet class methodsFor: 'instance creation' stamp: 'KenD 9/14/2013 16:31'!
fromCollection: nameImageAssociations

	^ self basicNew collection: nameImageAssociations! !

!ImagePallet class methodsFor: 'instance creation' stamp: 'KenD 9/14/2013 16:31'!
fromCollection: nameImageAssociations imageFilter: aClosure

	^ self basicNew initialize collection: nameImageAssociations filter: aClosure ! !

!ImagePallet class methodsFor: 'new-morph participation' stamp: 'KenD 9/15/2013 16:40'!
includeInNewMorphMenu
	"Return true for all classes that can be instantiated from the menu"
	^ false! !

!ImagePallet class methodsFor: 'examples' stamp: 'KenD 9/14/2013 20:21'!
largerIcons
"
	ImagePallet largerIcons.
"
	| ip sw iconsCollection savedExtent sortedCollection |
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
	sw 	morphExtent: savedExtent + (30 @ 36).   "Layout algorithm resets extent"! !

!ImagePallet class methodsFor: 'examples' stamp: 'KenD 9/15/2013 16:21'!
namedColors
"
	self useCSS3ColorDict.                    "" To get CSS3/Web color names""
	self useXKCDColorDict.                    "" To get XKCD color names""
	ImagePallet namedColors.
"
	| ip sw sortedColors a b savedExtent |
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
	"Layout resets sw extent"
	sw 	morphExtent: savedExtent + (30 @ 34).   "Layout algorithm resets extent"
! !

!ImagePallet class methodsFor: 'examples' stamp: 'KenD 9/14/2013 20:21'!
namedIcons
"
	ImagePallet namedIcons.
"
	| ip sw iconsCollection sortedCollection savedExtent |
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
	sw 	morphExtent: savedExtent + (30 @ 36).   "Layout algorithm resets extent"! !

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
