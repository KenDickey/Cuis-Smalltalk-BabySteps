'From Cuis 4.2 of 25 July 2013 [latest update: #1824] on 14 September 2013 at 8:22:50.302613 pm'!
'Description I display a pallet of images (of things) to drag'!
!provides: 'Morphic-Display-Pallet' 1 8!
!classDefinition: #ImagePallet category: #'Morphic-Display-Pallet'!
PluggableScrollPane subclass: #ImagePallet
	instanceVariableNames: 'nameImageCollection imageFilter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Display-Pallet'!
!classDefinition: 'ImagePallet class' category: #'Morphic-Display-Pallet'!
ImagePallet class
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
I Display a pallet of images to grab a copy of to drop on something else

An nameImageCollection is a collection of associations name->image
An ImageFilter is a closure to apply to an image before use.

See examples in Class side:

	ImagePallet namedColors.
	ImagePallet namedIcons.
	ImagePallet largerIcons.
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

!ImagePallet class methodsFor: 'examples' stamp: 'KenD 9/14/2013 20:21'!
namedColors
"
	Feature require: 'CSS3-NamedColors'.
	Color setColorNamesDict: (Color css3ColorDictionary).
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
