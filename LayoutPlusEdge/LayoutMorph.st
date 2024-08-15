'From Cuis7.1 [latest update: #6591] on 15 August 2024 at 3:24:26 pm'!
!classDefinition: #LayoutMorph category: #'Morphic-Layouts'!
BoxedMorph subclass: #LayoutMorph
	instanceVariableNames: 'direction separation axisEdgeWeight doAdoptWidgetsColor useEdgeSpace'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Layouts'!
!LayoutMorph commentStamp: '<historical>' prior: 0!
A row or column of Morphs, does layout by placing them along either a horizontal axis or a vertical axis.

Submorphs might specify a LayoutSpec. If some don't, then, for a column, the column width is taken as the width, and any morph height is kept. Same for rows: submorph width would be maintained, and submorph height would be made equal to row height.

Notes:
  - Contained submorphs may have fixed or minimum sizes.
  - We can specify fixed separation.
  - We can offset to left or right.
  - Contained submorphs can, via LayoutSpecs, ask for a proportion of
    the space which is left over after the minimum extent.

  One subtlety with the proportional layouts is that the sum of
  proportions may add up to more than 100%.

  We want to allocate fairly.

  Say we have 2 submorphs which ask for 80% and 50%.

  They should be normalized to get 80/130 and 50/130 of the excess space.

Instance Variables:
  direction - either #horizontal (row) or #vertical (column).
  separation - Number of (unscaled) pixels between Morphs:
	separation for both x and y axes or a point: (xSeparation @ ySeparation)
  axisEdgeWeight  - Along the Major or Layout Axis, subMorphs may be attracted 
	toward one side (0.0) or the other (1.0).  
	See comment in method #axisEdgeWeight:
  doAdoptWidgetsColor - see method #adoptWidgetsColor:
  useEdgeSpace - When true, x and y separation are kept between submorphs and the
	edge of our extent, othersize no space is kept between submorphs 
	and our outer edge.

!


!LayoutMorph methodsFor: 'accessing' stamp: 'jmv 8/17/2023 09:35:25'!
addMorphFrontFromWorldPosition: aMorph

	aMorph isPlacedMorph ifFalse: [ self error: 'Only PlacedMorphs can be used in Layouts' ].
	aMorph layoutSpec.
	self addMorphFront: aMorph.
	self layoutSubmorphs.
! !

!LayoutMorph methodsFor: 'accessing' stamp: 'jmv 3/10/2018 22:12:27'!
adoptWidgetsColor: paneColor
	super adoptWidgetsColor: paneColor.
	doAdoptWidgetsColor
		ifTrue: [ self color: (Theme current buttonColorFrom: paneColor) ]
		ifFalse: [ self color: `Color transparent` ]! !

!LayoutMorph methodsFor: 'accessing' stamp: 'jmv 9/28/2021 12:30:37'!
axisEdgeWeight

	^ axisEdgeWeight ifNil: [
		direction == #horizontal
			ifTrue: [0.0]
			ifFalse: [0.5]]! !

!LayoutMorph methodsFor: 'accessing' stamp: 'KenD 6/4/2020 18:28:12'!
axisEdgeWeight: aSymbolOrNumber
	"Along the Major or Layout Axis, subMorphs may be attracted toward one side (0.0) or the other (1.0).  This is the 	 	 LayoutMorph's axisEdgeWeight.  A numeric value is between 0.0 and 1.0

	If a Row, one can specify this weight symbolically as
	  { #rowLeft (0.0), #center (0.5), #rowRight (1.0)}

	If a Column, one can specify the weight symbolically as:
	  { #columnTop (0.0), #center (0.5), #columnBottom (1.0) }"
"	
	self axisEdgeWeight: #rowLeft.	-- axis must be horizontal 
	self axisEdgeWeight: #columnTop.	-- axis must be vertical
"
	| edgeWeight |
	(aSymbolOrNumber is: #Number)
		ifTrue: [ (aSymbolOrNumber between: 0.0 and: 1.0)
			ifTrue: [edgeWeight := aSymbolOrNumber ] 
			ifFalse: [self error: 'axisEdgeWeight ', aSymbolOrNumber printString, ' is out of range 0.0 to 1.0']
		]
		ifFalse: [
			(self direction = #horizontal) 
				ifTrue: [ "Row"
					edgeWeight := aSymbolOrNumber
						caseOf: {
							[ #rowLeft ] -> [ 0.0 ].
							[ #center ] -> [ 0.5 ].
							[ #rowRight ] -> [ 1.0 ]
						}
						otherwise: [ self error: 'bad axisEdgeWeight for Row: ', aSymbolOrNumber printString ].
				]
				ifFalse: [ "vertical => Column"
					edgeWeight := aSymbolOrNumber
						caseOf: {
							[ #columnTop ] -> [ 0.0 ].
							[ #center ] -> [ 0.5 ].
							[ #columnBottom ] -> [ 1.0 ]
						}
						otherwise: [ self error: 'bad axisEdgeWeight for Column: ', aSymbolOrNumber printString ].
				]
		].
	axisEdgeWeight := edgeWeight.
	self layoutSubmorphs! !

!LayoutMorph methodsFor: 'accessing' stamp: 'jmv 2/23/2011 16:55'!
direction
	^direction! !

!LayoutMorph methodsFor: 'accessing' stamp: 'KenD 6/4/2020 13:13:50'!
direction: horizOrVert

	direction := horizOrVert! !

!LayoutMorph methodsFor: 'accessing' stamp: 'KenD 6/4/2020 18:27:53'!
separation: aNumberOrPoint
	separation := aNumberOrPoint.
	self layoutSubmorphs ! !

!LayoutMorph methodsFor: 'accessing' stamp: 'RMV 8/14/2024 18:32:08'!
useEdgeSpace
	^ useEdgeSpace! !

!LayoutMorph methodsFor: 'accessing' stamp: 'RMV 8/14/2024 18:31:59'!
useEdgeSpace: aBoolean
	useEdgeSpace := aBoolean! !

!LayoutMorph methodsFor: 'accessing' stamp: 'jmv 12/30/2011 12:11'!
xSeparation
	^separation isNumber
		ifTrue: [ separation ]
		ifFalse: [ separation x ]! !

!LayoutMorph methodsFor: 'accessing' stamp: 'jmv 12/30/2011 12:11'!
ySeparation
	^separation isNumber
		ifTrue: [ separation ]
		ifFalse: [ separation y ]! !


!LayoutMorph methodsFor: 'adjust' stamp: 'jmv 7/21/2021 10:42:59'!
adjustBy: aLayoutAdjustMorph at: aGlobalPoint
	"See Class Comment of LayoutAdjustingMorph"

	| localPoint |
	localPoint := self internalizeFromWorld: aGlobalPoint.
	direction == #horizontal ifTrue: [
		self adjustHorizontallyBy: aLayoutAdjustMorph at: localPoint ].

	direction == #vertical ifTrue: [
		self adjustVerticallyBy: aLayoutAdjustMorph at: localPoint ].! !

!LayoutMorph methodsFor: 'adjust' stamp: 'jmv 9/28/2021 15:23:25'!
adjustHorizontallyBy: aLayoutAdjustMorph at: localPoint
	| delta l ls r rs lNewWidth rNewWidth i lCurrentWidth rCurrentWidth |
	i := submorphs indexOf: aLayoutAdjustMorph.
	((i = 1) or: [i = self submorphs size]) ifTrue: [
			 self inform: 'LayoutAdjustingMorphs require morphs before and after'.
			^self 
	].
	l := self submorphs at: i +1.
	ls := l layoutSpec.
	lCurrentWidth := l morphExtentInOwner x max: 1.	"avoid division by zero"
	r := self submorphs at: i - 1.
	rs := r layoutSpec.
	rCurrentWidth := r morphExtentInOwner x max: 1.	"avoid division by zero"
	delta := localPoint x - aLayoutAdjustMorph referencePositionInOwner x.
	delta := delta max: l minimumShrinkWidth - lCurrentWidth.
	delta := delta min: rCurrentWidth - r minimumShrinkWidth.
	delta = 0 ifTrue: [ ^self ].
	rNewWidth := rCurrentWidth - delta.
	lNewWidth := lCurrentWidth + delta.
	(ls isProportionalWidth and: [ rs isProportionalWidth ])
		ifTrue: [ | leftNewProportion rightNewProportion toDistribute |	"If both proportional, update them"
			leftNewProportion := lNewWidth / (lNewWidth + rNewWidth).
			rightNewProportion := 1.0 - leftNewProportion.
			toDistribute := ls proportionalLayoutWidth + rs proportionalLayoutWidth.
			ls setProportionalWidth: leftNewProportion * toDistribute.
			rs setProportionalWidth: rightNewProportion * toDistribute ]
		ifFalse: ["If at least one is fixed, update only the fixed"
			ls isProportionalWidth ifFalse: [
				ls fixedOrMorphWidth: lNewWidth ].
			rs isProportionalWidth ifFalse: [
				rs fixedOrMorphWidth: rNewWidth ]].
	self layoutSubmorphs.! !

!LayoutMorph methodsFor: 'adjust' stamp: 'jmv 9/28/2021 15:23:58'!
adjustVerticallyBy: aLayoutAdjustMorph at: localPoint
	| delta t ts b bs tNewHeight bNewHeight i tCurrentHeight bCurrentHeight |
	i := submorphs indexOf: aLayoutAdjustMorph.
	((i = 1) or: [i = self submorphs size]) ifTrue: [
			 self inform: 'LayoutAdjustingMorphs require morphs above and below'.
			^self 
	].	t := self submorphs at: i +1.
	ts := t layoutSpec.
	tCurrentHeight := t morphExtentInOwner y max: 1.	"avoid division by zero"
	b := self submorphs at: i - 1.
	bs := b layoutSpec.
	bCurrentHeight := b morphExtentInOwner y max: 1.	"avoid division by zero"
	delta := localPoint y - aLayoutAdjustMorph referencePositionInOwner y.
	delta := delta max: t minimumShrinkHeight - tCurrentHeight.
	delta := delta min: bCurrentHeight - b minimumShrinkHeight.
	delta = 0 ifTrue: [ ^self ].
	tNewHeight := tCurrentHeight + delta.
	bNewHeight := bCurrentHeight - delta.
	(ts isProportionalHeight and: [ bs isProportionalHeight ])
		ifTrue: [ | bottomNewProportion toDistribute topNewProportion |	"If both proportional, update them"
			topNewProportion := tNewHeight / (tNewHeight + bNewHeight).
			bottomNewProportion := 1.0 - topNewProportion.
			toDistribute := ts proportionalLayoutHeight + bs proportionalLayoutHeight.
			ts setProportionalHeight: topNewProportion * toDistribute.
			bs setProportionalHeight: bottomNewProportion * toDistribute ]
		ifFalse: ["If at least one is fixed, update only the fixed"
			ts isProportionalHeight ifFalse: [
				ts fixedOrMorphHeight: tNewHeight ].
			bs isProportionalHeight ifFalse: [
				bs fixedOrMorphHeight: bNewHeight ]].
	self layoutSubmorphs! !


!LayoutMorph methodsFor: 'convenience methods' stamp: 'jmv 2/24/2011 14:53'!
addAdjusterAndMorph: aMorph fixedHeight: aNumber
	"Convenience method.
	Add others as necessary."
	self addAdjusterAndMorph: aMorph layoutSpec: (LayoutSpec fixedHeight: aNumber)! !

!LayoutMorph methodsFor: 'convenience methods' stamp: 'jmv 2/24/2011 14:47'!
addAdjusterAndMorph: aMorph layoutSpec: aLayoutSpec
	"Add a submorph, at the bottom or right, with aLayoutSpec"
	self
		addAdjusterMorph;
		addMorph: aMorph layoutSpec: aLayoutSpec! !

!LayoutMorph methodsFor: 'convenience methods' stamp: 'jmv 2/24/2011 14:55'!
addAdjusterAndMorph: aMorph proportionalHeight: aNumber
	"Convenience method.
	Add others as necessary."
	self addAdjusterAndMorph: aMorph layoutSpec: (LayoutSpec proportionalHeight: aNumber)! !

!LayoutMorph methodsFor: 'convenience methods' stamp: 'jmv 2/24/2011 14:47'!
addAdjusterAndMorph: aMorph proportionalWidth: aNumber
	"Convenience method.
	Add others as necessary."
	self addAdjusterAndMorph: aMorph layoutSpec: (LayoutSpec proportionalWidth: aNumber)! !

!LayoutMorph methodsFor: 'convenience methods' stamp: 'jmv 2/24/2011 14:54'!
addMorph: aMorph fixedHeight: aNumber
	"Convenience method.
	Add others as necessary."
	self addMorph: aMorph layoutSpec: (LayoutSpec fixedHeight: aNumber)! !

!LayoutMorph methodsFor: 'convenience methods' stamp: 'jmv 2/25/2011 09:15'!
addMorph: aMorph fixedWidth: aNumber
	"Convenience method.
	Add others as necessary."
	self addMorph: aMorph layoutSpec: (LayoutSpec fixedWidth: aNumber)! !

!LayoutMorph methodsFor: 'convenience methods' stamp: 'jmv 2/24/2011 14:56'!
addMorph: aMorph proportionalHeight: aNumber
	"Convenience method.
	Add others as necessary."
	self addMorph: aMorph layoutSpec: (LayoutSpec proportionalHeight: aNumber)! !

!LayoutMorph methodsFor: 'convenience methods' stamp: 'jmv 2/24/2011 14:47'!
addMorph: aMorph proportionalWidth: aNumber
	"Convenience method.
	Add others as necessary."
	self addMorph: aMorph layoutSpec: (LayoutSpec proportionalWidth: aNumber)! !

!LayoutMorph methodsFor: 'convenience methods' stamp: 'DM 8/21/2015 17:23'!
addMorphKeepMorphHeight: aMorph
	"Convenience method.
	Add others as necessary."
	self addMorph: aMorph layoutSpec: (LayoutSpec new useMorphHeight)! !

!LayoutMorph methodsFor: 'convenience methods' stamp: 'jmv 2/24/2011 14:52'!
addMorphUseAll: aMorph
	"Convenience method.
	Add others as necessary."
	self addMorph: aMorph layoutSpec: LayoutSpec useAll! !

!LayoutMorph methodsFor: 'convenience methods' stamp: 'jmv 2/24/2011 14:48'!
addMorphs: morphs
	"All morphs are made equal width"
	morphs do: [ :m |
		self addMorph: m proportionalWidth: 1 ]! !

!LayoutMorph methodsFor: 'convenience methods' stamp: 'jmv 2/27/2011 19:16'!
addMorphs: morphs widthProportionalTo: widths
	"Widths can be in any arbitrary unit. The actual widths will be proportional to them."
	morphs with: widths do: [ :m :w |
		self addMorph: m proportionalWidth: w ]! !


!LayoutMorph methodsFor: 'geometry' stamp: 'jmv 5/21/2020 15:12:52'!
desiredLayoutHeight

	| fixed proportional |
	proportional := 0.
	fixed := 0.
	self submorphsToLayout do: [ :m | | ls |
		ls := m layoutSpec.
		ls isProportionalHeight ifTrue: [
			proportional := proportional max: ls fixedOrMinimumLayoutHeight / ls proportionalLayoutHeight ]
		ifFalse: [
			fixed := fixed + ls fixedOrMinimumLayoutHeight ]].
	^fixed + proportional! !

!LayoutMorph methodsFor: 'geometry' stamp: 'jmv 10/23/2023 11:24:40'!
minimumExtent
	"Answer size sufficient to frame my submorphs."
	
	^self minimumExtent: IdentityDictionary new! !

!LayoutMorph methodsFor: 'geometry' stamp: 'RMV 8/14/2024 19:47:20'!
minimumExtent: cachedValues
	"Answer size sufficient to frame my submorphs."
	
	| width height mle |
	width  := 0.
	height := 0.
	(self direction = #vertical)
		ifTrue: [ "Column"
			self submorphsToLayout do: [ :sm |
				mle := sm minimumLayoutExtent: cachedValues.
				"use maximum width across submorphs"
				width := width max: mle x.
				"sum up submorph heights, including separation"
				height := height + mle y + self ySeparation.
			].
			useEdgeSpace
				ifTrue: [
					height := height + self ySeparation. "one side already separated"
					width := width + (2 * self xSeparation). "separation on each side"
				]
				ifFalse: [
					height := height - self ySeparation. "one side already separated"
				].
		]
		ifFalse: [ "Row"
			self submorphsToLayout do: [ :sm |
				mle := sm minimumLayoutExtent: cachedValues.
				"sum up submorphs width"
				width := width + mle x + self xSeparation.
				"use maximum height across submorph"
				height := height max: mle y.
			].
			useEdgeSpace
				ifTrue: [
					width := width + self xSeparation. "one side already separated"
					height := height + (2 * self ySeparation). "separation on each side"
				]
				ifFalse: [
					width := width - self xSeparation. "one side already separated"
				].
		].

	^ (width @ height) + self extentBorder! !


!LayoutMorph methodsFor: 'initialization' stamp: 'jmv 9/28/2021 12:29:22'!
beColumn
	"Establish the major layout axis, with default edge weight" 

	direction := #vertical.
	axisEdgeWeight ifNil: [self axisEdgeWeight: #center].
	self layoutSubmorphs.! !

!LayoutMorph methodsFor: 'initialization' stamp: 'jmv 9/28/2021 12:29:27'!
beRow
	"Establish the major layout axis, with default edge weight" 

	direction := #horizontal.
	axisEdgeWeight ifNil: [self axisEdgeWeight: #rowLeft].
	self layoutSubmorphs.! !

!LayoutMorph methodsFor: 'initialization' stamp: 'jmv 10/12/2020 21:00:28'!
defaultBorderWidth
	"answer the default border width for the receiver"
	^ 0! !

!LayoutMorph methodsFor: 'initialization' stamp: 'jmv 3/25/2024 11:43:54'!
defaultColor
	^ `Color lightGray`! !

!LayoutMorph methodsFor: 'initialization' stamp: 'jmv 11/29/2015 13:16'!
doAdoptWidgetsColor
	doAdoptWidgetsColor := true! !

!LayoutMorph methodsFor: 'initialization' stamp: 'jmv 7/15/2024 11:27:34'!
doClipSubmorphs
	self setProperty: #doClipSubmorphs toValue: true.! !

!LayoutMorph methodsFor: 'initialization' stamp: 'KenD 6/4/2020 14:22:33'!
initialize
	super initialize.
	separation := 0.
	axisEdgeWeight := 0.0.
	useEdgeSpace := true.
	doAdoptWidgetsColor := false! !


!LayoutMorph methodsFor: 'layout' stamp: 'jmv 2/2/2024 15:44:51'!
heightsFor: visibleSubs within: overallHeight minLayoutExtentCache: cache
	"Answer array of morphHeights for visibleSubs."
	"Preconditions: 
		ySepararations already subtracted from overallHeight.
		overallHeight is large enough to contain minimumLayoutHeights of visibleSubs."

	| numSubs scaleFactor heightToAllocate
	  sumOfPropMin sumOfPropDesired sumOfPropOriginallyDesired sumOfFixedMin
	  allocatedHeights propIndices desiredProps
	  maxOfMinAllocHeight |
	numSubs := visibleSubs size.
	sumOfFixedMin := 0.  "pixels"
	sumOfPropMin := 0.  "pixels"
	sumOfPropDesired := 0. "sum of percentage fractions; may be more than 100%"
	sumOfPropOriginallyDesired := 0. "Different from sumOfPropDesired if some #maximumLayoutHeight"
	allocatedHeights := Array new: numSubs.
	desiredProps := Array new: numSubs.
	propIndices := Set new. "keep set of proportional morph indices"
	1 to: numSubs do: [ :index | | sm layoutHeightMin |
		sm := visibleSubs at: index.
		layoutHeightMin := (sm minimumLayoutExtent: cache) y.
		allocatedHeights at: index put: layoutHeightMin.
		(sm isProportionalHeight)
			ifTrue:  [ | propDesired maxHeight |
				propDesired := sm layoutSpec privateProportionalHeight.
				sumOfPropOriginallyDesired := sumOfPropOriginallyDesired + propDesired.
				maxHeight := sm maximumLayoutHeight.
				(maxHeight notNil and: [ maxHeight < (propDesired * overallHeight)])
					ifTrue: [
						allocatedHeights at: index put: maxHeight.
						sumOfFixedMin := sumOfFixedMin + maxHeight ]
					ifFalse: [
						propIndices add: index.
						desiredProps at: index put: propDesired.
						sumOfPropDesired := sumOfPropDesired + propDesired.
						sumOfPropMin := sumOfPropMin + layoutHeightMin ]]
			ifFalse: [ "Allocate height for non-proportional-height morphs"
				sumOfFixedMin := sumOfFixedMin + layoutHeightMin ]].

	((propIndices size = 0) "already finished"
	  or: [(overallHeight - (sumOfFixedMin + sumOfPropMin)) < 2]) "close enough"
		ifTrue: [ ^ allocatedHeights ]. 
			
	"All fixed heights allocated; rest is for proportional + leftOver"
	heightToAllocate := (overallHeight - sumOfFixedMin) max: 0.
	scaleFactor := 1.0.
	"If sum of requested proportional heights is more than 1.0,
	scale to make it all fit."
	sumOfPropOriginallyDesired > 0.999 ifTrue: [
		scaleFactor := 1.0 / sumOfPropDesired ].

	"Do simple default scaling"
	propIndices do: [ :morphIndex |
		allocatedHeights at: morphIndex 
			put:  ((allocatedHeights at: morphIndex) max:
				(heightToAllocate 
					* scaleFactor 
						* (desiredProps at: morphIndex))) ].

	"Find the min alloc size at which adding height is above max of minHeights
	 Keep the proportions over the minHeights at this allocation."
	maxOfMinAllocHeight := propIndices max: [ :morphIndex | 
		(visibleSubs at: morphIndex) allocHeightForFactor: scaleFactor minLayoutExtentCache: cache ].

	"Below the balance point, calculate proportions from belowBalanceDeltas,
	above, use desiredProps"
	(heightToAllocate <= maxOfMinAllocHeight) ifTrue: [ | belowBalanceDeltas sumOfDeltas | 
		(sumOfPropDesired < 1.0) "Trim off space to save"
			ifTrue: [ heightToAllocate := heightToAllocate * sumOfPropDesired ].
		belowBalanceDeltas := Array new: visibleSubs size.
		propIndices do: [ :morphIndex | | heightAtBalance | 
			heightAtBalance := maxOfMinAllocHeight * scaleFactor * (desiredProps at: morphIndex).
			belowBalanceDeltas at: morphIndex
				put: heightAtBalance "delta above min height"
			 	  	- (((visibleSubs at: morphIndex) minimumLayoutExtent: cache) y)].
		sumOfDeltas := belowBalanceDeltas sum: [ :b | b ifNil: [0]].
		(sumOfDeltas > propIndices size) ifTrue: [ "space desired < 100%"
			propIndices do: [ :morphIndex | 
				allocatedHeights at: morphIndex
					put: (((visibleSubs at: morphIndex) minimumLayoutExtent: cache) y)
						+ (((heightToAllocate - sumOfPropMin ) max: 0.0)
							* (belowBalanceDeltas at: morphIndex) / sumOfDeltas)]]].
	
	^ allocatedHeights! !

!LayoutMorph methodsFor: 'layout' stamp: 'jmv 10/23/2020 15:37:44'!
layoutBounds
	"Return the bounds for laying out children of the receiver"

	^ self morphLocalBounds insetBy: borderWidth! !

!LayoutMorph methodsFor: 'layout' stamp: 'jmv 7/17/2024 10:39:12'!
layoutSubmorphs
	"Compute a new layout based on the given layout bounds."

	submorphs isEmpty ifTrue: [
		self layoutNeeded: false.
		^self].

	"Invariant: morphExtent >=  minimumLayoutExtent"
	self refreshExtent.
	
	direction == #horizontal ifTrue: [
		self layoutSubmorphsHorizontallyIn: self layoutBounds ].

	direction == #vertical ifTrue: [
		self layoutSubmorphsVerticallyIn: self layoutBounds ].

	self invalidateBounds.
	self layoutNeeded: false.! !

!LayoutMorph methodsFor: 'layout' stamp: 'RMV 8/14/2024 18:32:47'!
layoutSubmorphsHorizontallyIn: boundsForLayout
	"Compute a new layout based on the given layout bounds."

	| visibleSubmorphs gap gapCount widths widthToAllocate leftOver x height y cache |
	"Preconditions: self isRow & morphExtent >= minimumLayoutExtent"
	(visibleSubmorphs := self submorphsToLayout reversed  "Display Order")
		ifEmpty: [ ^ self. "Nothing to layout, besides `sum` below, would fail" ].
	
	gap := self xSeparation.
	gapCount := useEdgeSpace ifTrue: [ visibleSubmorphs size + 1 ] ifFalse: [ visibleSubmorphs size - 1].
	widthToAllocate := (boundsForLayout width - (gapCount * gap)).
	"widthToAllocate := (boundsForLayout width - ((visibleSubmorphs size - 1) * gap))."
	cache := IdentityDictionary new.
	widths := self widthsFor: visibleSubmorphs within: widthToAllocate minLayoutExtentCache: cache.
	leftOver := widthToAllocate - widths sum.
	x := boundsForLayout left + (leftOver * self axisEdgeWeight).
	useEdgeSpace ifTrue: [ x := x + gap ].

	visibleSubmorphs with: widths do: [ :sm :smWidth |
		height := self offAxisHeightFor: sm within: boundsForLayout height minLayoutExtentCache: cache.
		y := self offAxisYOffsetFor: sm within: boundsForLayout height - height.
		sm fitInto: (x @ (boundsForLayout top + y) extent: smWidth @ height).
		x := x + smWidth + gap.
	]! !

!LayoutMorph methodsFor: 'layout' stamp: 'KenD 8/15/2024 05:24:55'!
layoutSubmorphsVerticallyIn: boundsForLayout
	"Compute a new layout based on the given layout bounds."

	| visibleSubmorphs gap gapCount heights heightToAllocate leftOver y width x cache |
	"Preconditions: self isRow & morphExtent >= minimumLayoutExtent"
	(visibleSubmorphs := self submorphsToLayout reversed  "Display Order")
		ifEmpty: [ ^ self. "Nothing to layout, besides `sum` below, would fail" ].

	gap := self ySeparation.
	gapCount := useEdgeSpace ifTrue: [ visibleSubmorphs size + 1 ] ifFalse: [ visibleSubmorphs size - 1].
	heightToAllocate := (boundsForLayout height - (gapCount * gap)).
	cache := IdentityDictionary new.
	heights := self heightsFor: visibleSubmorphs within: heightToAllocate minLayoutExtentCache: cache.
	leftOver := heightToAllocate - heights sum.
	y := boundsForLayout top + (leftOver * self axisEdgeWeight).
	useEdgeSpace ifTrue: [ y := y + gap ].

	visibleSubmorphs with: heights do: [ :sm :smHeight |
		width := self offAxisWidthFor: sm within: boundsForLayout width minLayoutExtentCache: cache.
		x := self offAxisXOffsetFor: sm within: boundsForLayout width - width.
		sm fitInto: (boundsForLayout left + x @ y extent: width @ smHeight).
		y := y + smHeight + gap.
	]! !

!LayoutMorph methodsFor: 'layout' stamp: 'KenD 8/15/2024 05:41:15'!
offAxisHeightFor: aMorph within: availableHeight minLayoutExtentCache: cache
	"Answer height for a single morph -- offAxis calculation for a Row"
	
	| availableForPropHeight actualPropHeight |
	availableForPropHeight := useEdgeSpace 
		ifTrue: [ availableHeight  - (2 * self ySeparation) ]
		ifFalse: [ availableHeight ].
	actualPropHeight := (availableForPropHeight * aMorph layoutSpec proportionalLayoutHeight)
							 max: (aMorph minimumLayoutExtent: cache) y.
	^ actualPropHeight! !

!LayoutMorph methodsFor: 'layout' stamp: 'KenD 8/15/2024 05:42:45'!
offAxisWidthFor: aMorph within: availableWidth minLayoutExtentCache: cache
	"Answer width for a single morph -- offAxis calculation for a Column"

	| availableForPropWidth actualPropWidth |
	availableForPropWidth := useEdgeSpace 
		ifTrue: [ 	availableWidth - (2 * self xSeparation) ]
		 ifFalse: [ availableWidth ].
	actualPropWidth := (availableForPropWidth * aMorph layoutSpec proportionalLayoutWidth)
						 	max: (aMorph minimumLayoutExtent: cache) x.
	^ actualPropWidth! !

!LayoutMorph methodsFor: 'layout' stamp: 'RMV 8/14/2024 19:30:46'!
offAxisXOffsetFor: aMorph within: availableWidth
	"Answer x offset for a single morph -- offAxis calculation for a Column"

	| leftOver offset |
	leftOver := useEdgeSpace
		ifTrue: [availableWidth - (2 * self xSeparation)] 
		ifFalse: [availableWidth].
	offset := leftOver * aMorph layoutSpec offAxisEdgeWeight. 
	useEdgeSpace ifTrue: [ ^ self xSeparation + offset ].
	^ offset! !

!LayoutMorph methodsFor: 'layout' stamp: 'RMV 8/14/2024 19:30:50'!
offAxisYOffsetFor: aMorph within: availableHeight
	"Answer y offset for a single morph -- offAxis calculation for a Row"
	
	| leftOver offset |
	leftOver := useEdgeSpace
		ifTrue: [availableHeight - (2 * self ySeparation)] 
		ifFalse: [availableHeight].
	offset := leftOver * aMorph layoutSpec offAxisEdgeWeight.
	useEdgeSpace ifTrue: [ ^ self ySeparation + offset ].
	^offset! !

!LayoutMorph methodsFor: 'layout' stamp: 'jmv 8/5/2021 11:43:29'!
refreshExtent
	"Invariant: my morphExtent >= my minimumExtent"
		
	self morphExtent: (extent max: self minimumExtent)! !

!LayoutMorph methodsFor: 'layout' stamp: 'jmv 5/15/2015 13:09'!
submorphsToLayout
	"Select those that will be layout"

	^submorphs select: [ :m | m visible ]! !

!LayoutMorph methodsFor: 'layout' stamp: 'jmv 2/2/2024 15:44:56'!
widthsFor: visibleSubs within: overallWidth minLayoutExtentCache: cache
	"Answer array of morphWidths for visibleSubs."
	"Preconditions: 
		xSepararations already subtracted from overallWidth.
		overallWidth is large enough to contain minimumLayoutWidths of visibleSubs."
	
	| numSubs scaleFactor widthToAllocate
	  sumOfPropMin sumOfPropDesired sumOfFixedMin
	  allocatedWidths propIndices desiredProps
	  maxOfMinAllocWidth |
	numSubs := visibleSubs size.
	sumOfFixedMin := 0. "pixels"
	sumOfPropMin := 0. "pixels"
	sumOfPropDesired := 0. "sum of percentage fractions; may be more than 100%"
	allocatedWidths := Array new: numSubs.
	desiredProps := Array new: numSubs.
	propIndices := Set new. "keep set of proportional morph indices"
	1 to: numSubs do: [ :index | | sm layoutWidthMin |
		sm := visibleSubs at: index.
		layoutWidthMin := (sm minimumLayoutExtent: cache) x.
		allocatedWidths at: index put: layoutWidthMin.
		(sm isProportionalWidth)
			ifTrue:  [ | propDesired |
				propIndices add: index.
				propDesired := sm layoutSpec privateProportionalWidth.
				desiredProps at: index put: propDesired.
				sumOfPropDesired := sumOfPropDesired + propDesired.
				sumOfPropMin := sumOfPropMin + layoutWidthMin ]
			ifFalse: [ "Allocate width for non-proportional-width morphs"
				sumOfFixedMin := sumOfFixedMin + layoutWidthMin ]].

	((propIndices size = 0) "already finished"
	  or: [(overallWidth - (sumOfFixedMin + sumOfPropMin)) < 2]) "close enough"
		ifTrue: [ ^ allocatedWidths ]. 
			
	"All fixed widths allocated; rest is for proportional + leftOver"
	widthToAllocate := (overallWidth - sumOfFixedMin) max: 0.
	scaleFactor := 1.0.
	"If sum of requested proportional widths is more than 1.0,
	scale to make it all fit."
	sumOfPropDesired > 1.0 ifTrue: [
		scaleFactor := 1.0 / sumOfPropDesired ].
	
	"Do simple default scaling"
	propIndices do: [ :morphIndex |
		allocatedWidths at: morphIndex 
			put:  ((allocatedWidths at: morphIndex) max:
				(widthToAllocate 
					* scaleFactor 
						* (desiredProps at: morphIndex))) ].

	"Find the min alloc size at which adding width is above max of minWidths
	 Keep the proportions over the minWidths at this allocation."
	maxOfMinAllocWidth := propIndices max: [ :morphIndex | 
		(visibleSubs at: morphIndex) allocWidthForFactor: scaleFactor minLayoutExtentCache: cache ].

     "Below the balance point, calculate proportions from belowBalanceDeltas,
	above, use desiredProps"
	(widthToAllocate <= maxOfMinAllocWidth) ifTrue: [ | belowBalanceDeltas sumOfDeltas | 
		(sumOfPropDesired < 1.0) "Trim off space to save"
			ifTrue: [ widthToAllocate := widthToAllocate * sumOfPropDesired ].
		belowBalanceDeltas := Array new: visibleSubs size.
		propIndices do: [ :morphIndex | | widthAtBalance | 
			widthAtBalance := maxOfMinAllocWidth * scaleFactor * (desiredProps at: morphIndex).
			belowBalanceDeltas at: morphIndex
				put: widthAtBalance "delta above min width"
					- (((visibleSubs at: morphIndex) minimumLayoutExtent: cache) x)].
		sumOfDeltas := belowBalanceDeltas sum: [ :b | b ifNil: [0]].
		(sumOfDeltas > propIndices size) ifTrue: [ "space desired < 100%"
			propIndices do: [ :morphIndex |
				allocatedWidths at: morphIndex
					put: (((visibleSubs at: morphIndex) minimumLayoutExtent: cache) x) 
						+ (((widthToAllocate - sumOfPropMin ) max: 0.0)
							* (belowBalanceDeltas at: morphIndex) / sumOfDeltas)]]].
	
	^ allocatedWidths! !


!LayoutMorph methodsFor: 'submorphs-add/remove' stamp: 'len 11/14/2015 03:38'!
addAdjusterMorph
	"So the user can adjust layout"
	"twekear para ui grande..."

	| thickness |
	thickness := Theme current layoutAdjusterThickness.

	direction == #horizontal ifTrue: [
		self
			addMorph: LayoutAdjustingMorph new
			layoutSpec: (LayoutSpec fixedWidth: thickness) ].

	direction == #vertical ifTrue: [
		self
			addMorph: LayoutAdjustingMorph new
			layoutSpec: (LayoutSpec fixedHeight: thickness)]! !

!LayoutMorph methodsFor: 'submorphs-add/remove' stamp: 'jmv 8/12/2024 09:46:40'!
addMorph: aMorph layoutSpec: aLayoutSpec
	"Add a submorph, at the bottom or right, with aLayoutSpec"

	aMorph isPlacedMorph ifFalse: [ self error: 'Only PlacedMorphs can be used in Layouts' ].
	aMorph layoutSpec: aLayoutSpec.
	self addMorphFront: aMorph.! !

!LayoutMorph methodsFor: 'submorphs-add/remove' stamp: 'KenD 8/11/2024 07:22:55'!
addMorphBack: aMorph
	"Add a submorph, at the top or left, with a default LayoutSpec if none was provided."

	aMorph isPlacedMorph ifFalse: [ self error: 'Only PlacedMorphs can be used in Layouts' ].
	aMorph layoutSpec.
	super addMorphBack: aMorph.! !

!LayoutMorph methodsFor: 'submorphs-add/remove' stamp: 'jmv 8/17/2023 09:35:21'!
addMorphFront: aMorph
	"Add a submorph, at the bottom or right, with a default LayoutSpec if none was provided."

	aMorph isPlacedMorph ifFalse: [ self error: 'Only PlacedMorphs can be used in Layouts' ].
	aMorph layoutSpec.
	super addMorphFront: aMorph! !

!LayoutMorph methodsFor: 'submorphs-add/remove' stamp: 'KenD 5/28/2020 07:33:52'!
removedMorph: aMorph
	"One of my submorphs has been removed."

	super removedMorph: aMorph.
	self layoutSubmorphs! !


!LayoutMorph methodsFor: 'testing' stamp: 'jmv 2/25/2011 10:48'!
is: aSymbol
	^ aSymbol == #LayoutMorph or: [ super is: aSymbol ]! !

!LayoutMorph methodsFor: 'testing' stamp: 'KenD 5/4/2020 12:58:45'!
isColumn

	^ direction = #vertical! !

!LayoutMorph methodsFor: 'testing' stamp: 'KenD 5/4/2020 12:57:59'!
isRow

	^ direction = #horizontal! !


!LayoutMorph methodsFor: 'private' stamp: 'jmv 8/17/2023 09:37:31'!
privateAddAllMorphs: aCollection atIndex: index

	aCollection do: [ :m |
		m isPlacedMorph ifFalse: [ self error: 'Only PlacedMorphs can be used in Layouts' ].
		m layoutSpec ].
	^ super privateAddAllMorphs: aCollection atIndex: index.! !

!LayoutMorph methodsFor: 'private' stamp: 'jmv 8/17/2023 09:38:32'!
privateAddMorph: aMorph atIndex: index position: aPoint

	aMorph isPlacedMorph ifFalse: [ self error: 'Only PlacedMorphs can be used in Layouts' ].
	aMorph layoutSpec.
	^ super privateAddMorph: aMorph atIndex: index position: aPoint.! !


!LayoutMorph methodsFor: 'layout in owner' stamp: 'jmv 3/3/2016 09:43'!
layoutSpec
	"Layout specific. Return the layout spec describing where the
	receiver should appear in a proportional layout"

	layoutSpec ifNotNil: [ :ls | ^ ls ].
	layoutSpec := LayoutSpec useAll.
	layoutSpec morph: self.

	^ layoutSpec ! !


!LayoutMorph methodsFor: 'geometry testing' stamp: 'jmv 7/15/2024 11:34:26'!
clipsSubmorphs
	"LayoutMorphs usually not do not clip submorphs.
	A special case is Transcript. It doesn't include a ScrollPane (that usually does clipping).
	Note: for this to work, we can't be transparent, as transparent morphs can't clip submorphs.
		Senders may also call #doAdoptWidgetsColor.
	There may be other similar cases in the future."

	^self hasProperty: #doClipSubmorphs.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'LayoutMorph class' category: #'Morphic-Layouts'!
LayoutMorph class
	instanceVariableNames: ''!

!LayoutMorph class methodsFor: 'instance creation' stamp: 'KenD 8/8/2024 06:52:13'!
initializedInstance

	^self newRow! !

!LayoutMorph class methodsFor: 'instance creation' stamp: 'KenD 8/8/2024 06:53:03'!
new
	"Answer a row by default so the 'new morph' menu doesn't fail..."
	^self error: 'Use LayoutMorph newRow or LayoutMorph newColumn'.! !

!LayoutMorph class methodsFor: 'instance creation' stamp: 'jmv 3/9/2011 13:53'!
newColumn
	^self basicNew initialize beColumn! !

!LayoutMorph class methodsFor: 'instance creation' stamp: 'jmv 3/9/2011 13:53'!
newRow
	^self basicNew initialize beRow! !


!LayoutMorph class methodsFor: 'examples' stamp: 'jmv 12/30/2021 12:16:47'!
example1
"
	self example1
"
| pane row |
pane := (LayoutMorph newColumn separation: 5)	name: #example1.
pane color: Color red.

row := LayoutMorph newRow name: #Row1.
row
	color: Color red;
	addMorph: (BoxedMorph new color: (Color h: 60 s: 0.6 v: 0.6); name: #A)
		layoutSpec: (LayoutSpec fixedWidth: 10); 
	addMorph: (BoxedMorph new color: (Color blue); name: #B)
		layoutSpec: (LayoutSpec proportionalWidth: 0.8);
	addMorph: (BoxedMorph new color: (Color h: 30 s: 0.6 v: 0.6); name: #C)
		layoutSpec: (LayoutSpec proportionalWidth: 0.4);
	addMorph: (BoxedMorph new color: (Color h: 30 s: 0.6 v: 0.6); name: #D)
		layoutSpec: (LayoutSpec proportionalWidth: 0.15);
	addMorph: (BoxedMorph new color: (Color h: 60 s: 0.6 v: 0.6); name: #E)
		layoutSpec: (LayoutSpec fixedWidth: 200 fixedHeight: 200).
pane addMorph: row layoutSpec: LayoutSpec useAll.

row := (LayoutMorph newRow separation: 5) name: #Row2.
row
	color: Color red;
	addMorph: (BoxedMorph new color: (Color blue); name: #F)
		layoutSpec: (LayoutSpec proportionalWidth: 0.8);
	addMorph: (BoxedMorph new color: (Color h: 30 s: 0.6 v: 0.6); name: #G)
		layoutSpec: (LayoutSpec proportionalWidth: 0.4);
	addMorph: (BoxedMorph new color: (Color h: 30 s: 0.6 v: 0.6); name: #H)
		layoutSpec: (LayoutSpec proportionalWidth: 0.2).
pane addMorph: row layoutSpec: LayoutSpec useAll.

row := (LayoutMorph newRow separation: 5) name: #Row3.
row
	color: Color red;
	addMorph: (BoxedMorph new color: (Color h: 120 s: 0.6 v: 0.6); name: #J)
		layoutSpec: (LayoutSpec fixedWidth: 20 proportionalHeight: 0.8);
	addMorph: (BoxedMorph new color: (Color h: 90 s: 0.6 v: 0.6); name: #K)
		layoutSpec: (LayoutSpec  proportionalWidth: 0.5 fixedHeight: 40);
	addMorph: (BoxedMorph new color: (Color h: 150 s: 0.6 v: 0.6); name: #L)
		layoutSpec: (LayoutSpec fixedWidth: 30 proportionalHeight: 1.0).
pane addMorph: row layoutSpec: (LayoutSpec fixedHeight: 60).
pane morphPosition: 150@130 extent: 400@300.
pane openInWorld! !

!LayoutMorph class methodsFor: 'examples' stamp: 'jmv 12/30/2021 12:16:47'!
example10
"
	self example10 openInWorld
"
| pane row |
pane := (LayoutMorph newColumn separation: 5)	name: #example10.
pane color: Color red.

row := LayoutMorph newRow name: #Row1.
row
	color: Color red;
	addMorph: (BoxedMorph new color: (Color h: 60 s: 0.6 v: 0.6); name: #A)
		layoutSpec: (LayoutSpec fixedWidth: 10); 
	addAdjusterMorph; 
	addMorph: (BoxedMorph new color: (Color blue); name: #B)
		layoutSpec: (LayoutSpec proportionalWidth: 0.8);
	addAdjusterMorph; 
	addMorph: (BoxedMorph new color: (Color h: 30 s: 0.6 v: 0.6); name: #C)
		layoutSpec: (LayoutSpec proportionalWidth: 0.4);
	addAdjusterMorph; 
	addMorph: (BoxedMorph new color: (Color h: 30 s: 0.6 v: 0.6); name: #D)
		layoutSpec: (LayoutSpec proportionalWidth: 0.15);
	addAdjusterMorph; 
	addMorph: (BoxedMorph new color: (Color h: 60 s: 0.6 v: 0.6); name: #E)
		layoutSpec: (LayoutSpec fixedWidth: 20 fixedHeight: 20).
pane addMorph: row layoutSpec: LayoutSpec useAll.

row := (LayoutMorph newRow separation: 5) name: #Row2.
row
	color: Color red;
	addMorph: (BoxedMorph new color: (Color blue); name: #F)
		layoutSpec: (LayoutSpec proportionalWidth: 0.8);
	addMorph: (BoxedMorph new color: (Color h: 30 s: 0.6 v: 0.6); name: #G)
		layoutSpec: (LayoutSpec proportionalWidth: 0.4);
	addMorph: (BoxedMorph new color: (Color h: 30 s: 0.6 v: 0.6); name: #H)
		layoutSpec: (LayoutSpec proportionalWidth: 0.2).
pane addMorph: row layoutSpec: LayoutSpec useAll.

row := (LayoutMorph newRow separation: 5) name: #Row3.
row
	color: Color red;
	addMorph: (BoxedMorph new color: (Color h: 120 s: 0.6 v: 0.6); name: #J)
		layoutSpec: (LayoutSpec fixedWidth: 20 proportionalHeight: 0.8);
	addMorph: (BoxedMorph new color: (Color h: 90 s: 0.6 v: 0.6); name: #K)
		layoutSpec: (LayoutSpec  proportionalWidth: 0.5 fixedHeight: 40);
	addMorph: (BoxedMorph new color: (Color h: 150 s: 0.6 v: 0.6); name: #L)
		layoutSpec: (LayoutSpec fixedWidth: 30 proportionalHeight: 1.0).
pane addMorph: row layoutSpec: (LayoutSpec fixedHeight: 60).
^ pane! !

!LayoutMorph class methodsFor: 'examples' stamp: 'jmv 9/28/2021 16:24:36'!
example101VG
"
	self example101VG
"
| pane row |
pane := (LayoutMorph newColumn separation: 5)	name: #example1.
pane color: Color red.

row := LayoutMorph newRow name: #Row1.
row
	color: Color red;
	addMorph: (Sample09Clock new name: #A)
		layoutSpec: (LayoutSpec fixedWidth: 100); 
	addMorph: (Sample01Star new name: #B)
		layoutSpec: (LayoutSpec proportionalWidth: 0.8);
	addMorph: (Sample03Smiley new name: #C)
		layoutSpec: (LayoutSpec proportionalWidth: 0.4);
	addMorph: (BoxedMorph new color: (Color h: 30 s: 0.6 v: 0.6); name: #D)
		layoutSpec: (LayoutSpec proportionalWidth: 0.15);
	addMorph: (Sample03Smiley new name: #E)
		layoutSpec: (LayoutSpec fixedWidth: 200 fixedHeight: 200).
pane addMorph: row layoutSpec: LayoutSpec useAll.

row := (LayoutMorph newRow separation: 5) name: #Row2.
row
	color: Color lightRed;
	addMorph: (Sample02Bezier new name: #F)
		layoutSpec: (LayoutSpec proportionalWidth: 0.8);
	addMorph: (Sample02Bezier new  name: #G)
		layoutSpec: (LayoutSpec proportionalWidth: 0.4);
	addMorph: (Sample02Bezier new  name: #H)
		layoutSpec: (LayoutSpec proportionalWidth: 0.2).
pane addMorph: row layoutSpec: LayoutSpec useAll.

row := (LayoutMorph newRow separation: 5) name: #Row3.
row
	color: Color red;
	addMorph: (BoxedMorph new color: (Color h: 120 s: 0.6 v: 0.6); name: #J)
		layoutSpec: (LayoutSpec fixedWidth: 20 proportionalHeight: 0.8);
	addMorph: (BoxedMorph new color: (Color h: 90 s: 0.6 v: 0.6); name: #K)
		layoutSpec: (LayoutSpec  proportionalWidth: 0.5 fixedHeight: 40);
	addMorph: (BoxedMorph new color: (Color h: 150 s: 0.6 v: 0.6); name: #L)
		layoutSpec: (LayoutSpec fixedWidth: 30 proportionalHeight: 1.0).
pane addMorph: row layoutSpec: (LayoutSpec fixedHeight: 60).
pane morphPosition: 150@130 extent: 400@300.
pane openInWorld! !

!LayoutMorph class methodsFor: 'examples' stamp: 'jmv 12/30/2021 12:16:47'!
example11
"
	self example11
"
| pane row |
pane := (LayoutMorph newColumn separation: 5)	name: #example11.
pane color: Color red.

row := LayoutMorph newRow name: #Row1.
row
	color: Color red;
	addMorph: (BoxedMorph new color: (Color h: 60 s: 0.6 v: 0.6); name: #A)
		layoutSpec: (LayoutSpec fixedWidth: 10); 
	addAdjusterMorph; 
	addMorph: (BoxedMorph new color: (Color blue); name: #B)
		layoutSpec: (LayoutSpec proportionalWidth: 0.8);
	addAdjusterMorph; 
	addMorph: (BoxedMorph new color: (Color h: 30 s: 0.6 v: 0.6); name: #C)
		layoutSpec: (LayoutSpec proportionalWidth: 0.4);
	addAdjusterMorph; 
	addMorph: (BoxedMorph new color: (Color h: 30 s: 0.6 v: 0.6); name: #D)
		layoutSpec: (LayoutSpec proportionalWidth: 0.15);
	addAdjusterMorph; 
	addMorph: (BoxedMorph new color: (Color h: 60 s: 0.6 v: 0.6); name: #E)
		layoutSpec: (LayoutSpec fixedWidth: 20 fixedHeight: 20).
pane addMorph: row layoutSpec: LayoutSpec useAll.

row := (LayoutMorph newRow separation: 5) name: #Row2.
row
	color: Color red;
	addMorph: (BoxedMorph new color: (Color blue); name: #F)
		layoutSpec: (LayoutSpec proportionalWidth: 0.8);
	addMorph: (BoxedMorph new color: (Color h: 30 s: 0.6 v: 0.6); name: #G)
		layoutSpec: (LayoutSpec proportionalWidth: 0.4);
	addMorph: (BoxedMorph new color: (Color h: 30 s: 0.6 v: 0.6); name: #H)
		layoutSpec: (LayoutSpec proportionalWidth: 0.2).
pane addMorph: row layoutSpec: LayoutSpec useAll.

row := (LayoutMorph newRow separation: 5) name: #Row3.
row
	color: Color red;
	addMorph: (BoxedMorph new color: (Color h: 120 s: 0.6 v: 0.6); name: #J)
		layoutSpec: (LayoutSpec fixedWidth: 20 proportionalHeight: 0.8);
	addMorph: (BoxedMorph new color: (Color h: 90 s: 0.6 v: 0.6); name: #K)
		layoutSpec: (LayoutSpec  proportionalWidth: 0.5 fixedHeight: 40);
	addMorph: (BoxedMorph new color: (Color h: 150 s: 0.6 v: 0.6); name: #L)
		layoutSpec: (LayoutSpec fixedWidth: 30 proportionalHeight: 1.0).
pane addMorph: row layoutSpec: (LayoutSpec fixedHeight: 60).
pane morphPosition: 150@130 extent: 400@300.
pane openInWorld! !

!LayoutMorph class methodsFor: 'examples' stamp: 'jmv 12/30/2021 12:16:47'!
example13
	"
	self example13
	"
	| pane row innerRow |
pane := (LayoutMorph newColumn separation: 5)	name: #example13.
	pane color: Color red.
	row := (LayoutMorph newRow separation: 5) name: #Row.
	innerRow := (LayoutMorph newRow separation: 5) name: #InnerRow;
		color: Color red.
	innerRow
		addMorph: (BoxedMorph new name: #Box1)
			layoutSpec: (LayoutSpec fixedWidth: 10 fixedHeight: 10);
		addMorph: (BoxedMorph new name: #Box2)
			layoutSpec: (LayoutSpec fixedWidth: 10 fixedHeight: 10);
		addMorph: (BoxedMorph new name: #Bar)
		layoutSpec: (LayoutSpec proportionalWidth: 1.0 fixedHeight: 10).
	row
		color: (Color h: 270 s: 0.2 v: 0.6);
		addMorph: innerRow
			layoutSpec: (LayoutSpec proportionalWidth: 0.5 fixedHeight: 30 offAxisEdgeWeight: #center);
		addMorph: LayoutAdjustingMorph new layoutSpec: (LayoutSpec fixedWidth: 5); 
		addMorph: (BoxedMorph new color: (Color h: 90 s: 0.6 v: 0.6); name: #Rect1)
			layoutSpec: (LayoutSpec proportionalWidth: 0.5 fixedHeight: 40 offAxisEdgeWeight: #leftOrTop);
		addMorph: LayoutAdjustingMorph new layoutSpec: (LayoutSpec fixedWidth: 5); 
		addMorph: (BoxedMorph new color: (Color h: 150 s: 0.6 v: 0.6); name: #Rect2)
			layoutSpec: (LayoutSpec fixedWidth: 30 proportionalHeight: 1.0).
	pane addMorph: row layoutSpec: (LayoutSpec proportionalHeight: 0.9).
	pane morphPosition: 250@130 extent: 400@300.
	pane openInWorld! !

!LayoutMorph class methodsFor: 'examples' stamp: 'jmv 12/30/2021 12:16:47'!
example1b
"
Based on #example1, but using some ImageMorph instead of RectangleLikeMorph, so extent is not adjustable
	self example1b
"
| pane row |
pane := (LayoutMorph newColumn separation: 5)	name: #example1.
pane color: Color red.

row := LayoutMorph newRow name: #Row1.
row
	color: Color red;
	addMorph: (BoxedMorph new color: (Color h: 60 s: 0.6 v: 0.6); name: #A)
		layoutSpec: (LayoutSpec fixedWidth: 10); 
	addMorph: (ImageMorph new name: #B);
	addMorph: (BoxedMorph new color: (Color h: 30 s: 0.6 v: 0.6); name: #C)
		layoutSpec: (LayoutSpec proportionalWidth: 0.4);
	addMorph: (BoxedMorph new color: (Color h: 30 s: 0.6 v: 0.6); name: #D)
		layoutSpec: (LayoutSpec proportionalWidth: 0.15);
	addMorph: (BoxedMorph new color: (Color h: 60 s: 0.6 v: 0.6); name: #E)
		layoutSpec: (LayoutSpec fixedWidth: 20 fixedHeight: 20).
pane addMorph: row layoutSpec: LayoutSpec useAll.

row := (LayoutMorph newRow separation: 5) name: #Row2.
row
	color: Color red;
	addMorph: (BoxedMorph new color: (Color blue); name: #F)
		layoutSpec: (LayoutSpec proportionalWidth: 0.8);
	addMorph: (ImageMorph new name: #G);
	addMorph: (BoxedMorph new color: (Color h: 30 s: 0.6 v: 0.6); name: #H)
		layoutSpec: (LayoutSpec proportionalWidth: 0.2).
pane addMorph: row layoutSpec: LayoutSpec useAll.

row := (LayoutMorph newRow separation: 5) name: #Row3.
row
	color: Color red;
	addMorph: (ImageMorph new name: #J);
	addMorph: (BoxedMorph new color: (Color h: 90 s: 0.6 v: 0.6); name: #K)
		layoutSpec: (LayoutSpec  proportionalWidth: 0.5 fixedHeight: 40);
	addMorph: (BoxedMorph new color: (Color h: 150 s: 0.6 v: 0.6); name: #L)
		layoutSpec: (LayoutSpec fixedWidth: 30 proportionalHeight: 1.0).
pane addMorph: row layoutSpec: (LayoutSpec fixedHeight: 60).
pane morphPosition: 150@130 extent: 400@300.
pane openInWorld! !

!LayoutMorph class methodsFor: 'examples' stamp: 'jmv 12/30/2021 12:16:47'!
example2
	"
	self example2
	"
	| pane row |
	pane := (LayoutMorph newColumn separation: 5)	name: #example2.
	pane color: Color red.
	row := (LayoutMorph newRow separation: 5) name: #Row.
	row
		color: (Color h: 270 s: 0.2 v: 0.6);
		addMorph: (BoxedMorph new color: (Color h: 120 s: 0.6 v: 0.6); name: #A)
			layoutSpec: (LayoutSpec fixedWidth: 20 proportionalHeight: 0.8 offAxisEdgeWeight: #rightOrBottom);
		addMorph: (BoxedMorph new color: (Color h: 90 s: 0.6 v: 0.6); name: #B)
			layoutSpec: (LayoutSpec proportionalWidth: 0.8 fixedHeight: 40 offAxisEdgeWeight: #leftOrTop);
		addMorph: (BoxedMorph new color: (Color h: 150 s: 0.6 v: 0.6); name: #C)
			layoutSpec: (LayoutSpec fixedWidth: 30 proportionalHeight: 0.7 offAxisEdgeWeight: #center).
	pane addMorph: row layoutSpec: (LayoutSpec proportionalHeight: 0.9).
	pane morphPosition: 200@180 extent: 400@300.
	pane openInWorld! !

!LayoutMorph class methodsFor: 'examples' stamp: 'jmv 12/30/2021 12:16:47'!
example20
"
	self example20
"
| column |

column := (LayoutMorph newColumn separation: 5) name: #Column.
column
	color: Color red;
	addMorph: (BoxedMorph new color: (Color h: 120 s: 0.6 v: 0.6); name: #J)
		layoutSpec: (LayoutSpec proportionalWidth: 0.8 fixedHeight: 20);
	addMorph: (BoxedMorph new color: (Color h: 90 s: 0.6 v: 0.6); name: #K)
		layoutSpec: (LayoutSpec fixedWidth: 40 proportionalHeight: 0.5);
	addMorph: (BoxedMorph new color: (Color h: 150 s: 0.6 v: 0.6); name: #L)
		layoutSpec: (LayoutSpec proportionalWidth: 1.0 fixedHeight: 30).
column morphPosition: 150@130 extent: 400@300.
column openInWorld! !

!LayoutMorph class methodsFor: 'examples' stamp: 'jmv 12/30/2021 12:16:47'!
example3
	"
	self example3
	"
	| pane row innerRow |
pane := (LayoutMorph newColumn separation: 5)	name: #example3.
	pane color: Color red.
	row := (LayoutMorph newRow separation: 5) name: #Row.
	innerRow := (LayoutMorph newRow separation: 5) name: #InnerRow;
		color: Color red.
	innerRow
		addMorph: (BoxedMorph new name: #Box1)
			layoutSpec: (LayoutSpec fixedWidth: 10 fixedHeight: 10);
		addMorph: (BoxedMorph new name: #Box2)
			layoutSpec: (LayoutSpec fixedWidth: 10 fixedHeight: 10);
		addMorph: (BoxedMorph new name: #Bar)
		layoutSpec: (LayoutSpec proportionalWidth: 1.0 fixedHeight: 10).
	row
		color: (Color h: 270 s: 0.2 v: 0.6);
		addMorph: innerRow
			layoutSpec: (LayoutSpec proportionalWidth: 0.5 fixedHeight: 30 offAxisEdgeWeight: #center);
		addMorph: (BoxedMorph new color: (Color h: 90 s: 0.6 v: 0.6); name: #Rect1)
			layoutSpec: (LayoutSpec proportionalWidth: 0.5 fixedHeight: 40 offAxisEdgeWeight: #leftOrTop);
		addMorph: (BoxedMorph new color: (Color h: 150 s: 0.6 v: 0.6); name: #Rect2)
			layoutSpec: (LayoutSpec fixedWidth: 30 proportionalHeight: 1.0).
	pane addMorph: row layoutSpec: (LayoutSpec proportionalHeight: 0.9).
	pane morphPosition: 250@130 extent: 400@300.
	pane openInWorld! !

!LayoutMorph class methodsFor: 'examples' stamp: 'jmv 12/30/2021 12:16:47'!
example6
	"
	Useful example contributed by Ken Dickey
	All these should look the same, right? (mmmh this should be a test...)
	self example6
	"
| pane rect1 rect2 |
pane := LayoutMorph newRow separation: 5. "1"
pane addMorph: (LabelMorph contents: '1').

rect1 := BoxedMorph new color: (Color lightOrange); 
	morphExtent: 20 @ 30.
pane addMorphFront: rect1.
rect2 := BoxedMorph new color: (Color cyan); 
	morphExtent: 20 @ 30.
pane addMorphFront: rect2.
pane
	color: Color lightGreen;
	morphPosition: 120 @ 50 extent: 180 @ 100;
	openInWorld.

pane := LayoutMorph newRow separation: 5. "2"
pane addMorph: (LabelMorph contents: '2').

rect1 := BoxedMorph new color: (Color lightOrange);
	layoutSpec: (LayoutSpec  fixedWidth: 20 fixedHeight: 30 offAxisEdgeWeight: #center).
pane addMorph: rect1.
rect2 := BoxedMorph new color: (Color cyan).
pane addMorph: rect2
	layoutSpec: (LayoutSpec  fixedWidth: 20 fixedHeight: 30 offAxisEdgeWeight: #center).
pane
	color: Color lightGreen;
	morphPosition: 320 @ 50 extent: 180 @ 100;
	openInWorld.


pane := LayoutMorph newRow separation: 5. "3"
pane addMorph: (LabelMorph contents: '3').

rect1 := BoxedMorph new color: (Color lightOrange).
pane addMorph: rect1 
         layoutSpec: (LayoutSpec  fixedWidth: 20 fixedHeight: 30 offAxisEdgeWeight: #center).
rect2 := BoxedMorph new color: (Color cyan);
	layoutSpec: (LayoutSpec  fixedWidth: 20 fixedHeight: 30 offAxisEdgeWeight: #center).
pane addMorph: rect2.
pane
	color: Color lightGreen;
	morphPosition: 520 @ 50 extent: 180 @ 100;
	openInWorld! !

!LayoutMorph class methodsFor: 'examples' stamp: 'jmv 12/30/2021 12:16:47'!
example7
	"
	Useful example contributed by Ken Dickey
	All these should look the same, right? (mmmh this should be a test...)
	self example7
	"
	"============================================"
	| c colorHexValue colorName r w |
	w := SystemWindow new.
	r := LayoutMorph newRow separation: 30 @ 10.
	c := LayoutMorph newColumn separation: 20 @ 10.
	colorHexValue := LabelMorph contents:  'F97306'.
	colorName := LabelMorph contents: 'cornSilk'.

	r addMorph: colorHexValue.
	r addMorph: colorName.
	c addMorph: BoxedMorph new.
	c addMorph: r.
	w addMorph: c .
	w openInWorld.
	"============================================"! !

!LayoutMorph class methodsFor: 'examples' stamp: 'KenD 8/15/2024 05:26:44'!
exampleEdgesColumn
	"Show 2 cases :1 useEdgeSpace true and 1 false"
	" self exampleEdgesColumn "
	| withEdge noEdge upSpec downSpec |
	withEdge := self newColumn :: useEdgeSpace: true;  separation: 20.
	noEdge := self newColumn :: useEdgeSpace: false;  separation: 20.
	upSpec := LayoutSpec keepMorphExtent :: offAxisEdgeWeight: 0.
	upSpec proportionalWidth: 0.8 minimum: 100; proportionalHeight: 0.8 minimum: 100.
	downSpec := LayoutSpec keepMorphExtent :: offAxisEdgeWeight: 1.
	downSpec proportionalWidth: 0.5 minimum: 100; proportionalHeight: 0.5 minimum: 100.
	
	withEdge addMorph: (BoxedMorph new :: color: Color blue;  layoutSpec: upSpec).
	noEdge addMorph: (BoxedMorph new :: color: Color blue;  layoutSpec: upSpec).
	withEdge addMorph: (LabelMorph new :: contents: 'WITH Edge').
	noEdge addMorph: (LabelMorph new :: contents: 'withOUT Edge').
	withEdge addMorph: (BoxedMorph new :: layoutSpec: downSpec).
	noEdge addMorph: (BoxedMorph new ::  layoutSpec: downSpec).
	
	withEdge openInWorld.
	noEdge openInWorld.! !

!LayoutMorph class methodsFor: 'examples' stamp: 'KenD 8/15/2024 05:26:38'!
exampleEdgesRow
	"Show 2 cases: 1 useEdgeSpace true and 1 false"
	" self exampleEdgesRow "
	| withEdge noEdge upSpec downSpec |
	withEdge := self newRow :: useEdgeSpace: true;  separation: 20.
	noEdge := self newRow :: useEdgeSpace: false;  separation: 20.
	upSpec := LayoutSpec keepMorphExtent :: offAxisEdgeWeight: 0.
	upSpec proportionalWidth: 0.8 minimum: 100; proportionalHeight: 0.8 minimum: 100.
	downSpec := LayoutSpec keepMorphExtent :: offAxisEdgeWeight: 1.
	downSpec proportionalWidth: 0.5 minimum: 100; proportionalHeight: 0.5 minimum: 100.
	
	withEdge addMorph: (BoxedMorph new :: color: Color blue;  layoutSpec: upSpec).
	noEdge addMorph: (BoxedMorph new :: color: Color blue;  layoutSpec: upSpec).
	withEdge addMorph: (LabelMorph new :: contents: 'WITH Edge').
	noEdge addMorph: (LabelMorph new :: contents: 'withOUT Edge').
	withEdge addMorph: (BoxedMorph new :: layoutSpec: downSpec).
	noEdge addMorph: (BoxedMorph new ::  layoutSpec: downSpec).
	
	withEdge openInWorld.
	noEdge openInWorld.! !

!LayoutMorph class methodsFor: 'examples' stamp: 'jmv 5/1/2024 15:53:24'!
iconsExample
	"
	LayoutMorph iconsExample
	"
	| lm ilm counter |
	lm := LayoutMorph newColumn.
	ilm := LayoutMorph newRow.
	counter := 1.
	Theme methodsDo: [ :method | | sel | 
		(sel := method selector) numArgs = 0 ifTrue: [
			(sel endsWith: 'Icon') ifTrue: [ | mayBeForm |
				mayBeForm := Theme current perform: sel.
				(mayBeForm isKindOf: Form) ifTrue: [ | imageMorph |
					counter \\ 10 = 0 ifTrue: [
						lm addMorph: ilm.
						ilm := LayoutMorph newRow ].
					counter := counter + 1.
					ilm addMorph: (imageMorph := ImageMorph newWith: (mayBeForm magnifyBy: 2)).
					imageMorph 
						setBalloonText: 'Copy ''', sel storeString bold, ''' to the Clipboard';
						setProperty: #'handlesMouseDown:' toValue: true;
						setProperty: #mouseButton1Down:localPosition:  toValue: [ :event :pos |
							Clipboard storeObject: sel storeString ] ] ] ] ].
	lm 
		setProperty: #taskbarButtonIcon toValue: Theme current imageIcon;
		setBalloonText: 'Drag me here!!'.
	lm openInWorld
! !

!LayoutMorph class methodsFor: 'examples' stamp: 'jmv 3/10/2018 22:01:26'!
launcherExample
	"
	self launcherExample
	"
	| b1 b2 b3 row b4 random buttons |
	random := Random new.
	b1 := PluggableButtonMorph model: [ Date today print ] action: #value label: 'Date'.
	b2 := PluggableButtonMorph model: [ Time now print ] action: #value label: 'Time'.
	b3 := PluggableButtonMorph model: [ SystemVersion current print ] action: #value label: 'Version'.
	b4 := PluggableButtonMorph model: [ random next print ] action: #value label: 'Random'.
	buttons := {b1. b2. b3. b4}.
	buttons do: [ :button |
		button color: `Color lightRed` ].
	row := LayoutMorph newRow
		 color: `Color red`;
		 addMorphs: buttons;
		 morphExtent: 300 @ 40.
	^ row openInWorld! !


!LayoutMorph class methodsFor: 'new-morph participation' stamp: 'pb 6/8/2017 23:48:35'!
categoryInNewMorphMenu
	^ 'Layouts'! !
