'From Cuis 5.0 [latest update: #4895] on 1 October 2021 at 3:00:37 pm'!
'Description FreeCell and Klondike Solitaire using SVG Card Images'!
!provides: 'SVGSolitaire' 1 18!
!requires: 'Cuis-Base' 50 4894 nil!
!requires: 'Morphic-Games-Solitaire' 1 112 nil!
!requires: 'SVG' 1 13 nil!
!requires: 'Morphic-Misc1' 1 186 nil!
SystemOrganization addCategory: 'SVGSolitaire'!


!classDefinition: #SVGFreeCell category: 'SVGSolitaire'!
FreeCell subclass: #SVGFreeCell
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SVGSolitaire'!
!classDefinition: 'SVGFreeCell class' category: 'SVGSolitaire'!
SVGFreeCell class
	instanceVariableNames: ''!

!classDefinition: #PickASVGCardImagePallet category: 'SVGSolitaire'!
ImagePickerPanel subclass: #PickASVGCardImagePallet
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SVGSolitaire'!
!classDefinition: 'PickASVGCardImagePallet class' category: 'SVGSolitaire'!
PickASVGCardImagePallet class
	instanceVariableNames: ''!

!classDefinition: #SVGCardMorph category: 'SVGSolitaire'!
MovableMorph subclass: #SVGCardMorph
	instanceVariableNames: 'cardNumber grabPreowner isFaceDown'
	classVariableNames: 'Backs CardExtent ColorNames DropShadowMorph FaceNames Fronts Jokers SuitNames UpperLeftOffset'
	poolDictionaries: ''
	category: 'SVGSolitaire'!
!classDefinition: 'SVGCardMorph class' category: 'SVGSolitaire'!
SVGCardMorph class
	instanceVariableNames: ''!

!classDefinition: #SVGCardTests category: 'SVGSolitaire'!
TestCase subclass: #SVGCardTests
	instanceVariableNames: 'jackOfClubs aceOfSpades twoOfDiamonds threeOfHearts fiveOfHearts'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SVGSolitaire'!
!classDefinition: 'SVGCardTests class' category: 'SVGSolitaire'!
SVGCardTests class
	instanceVariableNames: ''!

!classDefinition: #SVGCardDeck category: 'SVGSolitaire'!
Object subclass: #SVGCardDeck
	instanceVariableNames: 'cards index seed'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SVGSolitaire'!
!classDefinition: 'SVGCardDeck class' category: 'SVGSolitaire'!
SVGCardDeck class
	instanceVariableNames: ''!


!SVGFreeCell commentStamp: '<historical>' prior: 0!
FreeCell Solitare using SVGCardMorphs

@@@REVISIT:  
	Could parameterize Card Class rather than subclass
	Subclass for now to prototype..!

!PickASVGCardImagePallet commentStamp: '<historical>' prior: 0!
I am just a way of getting an initializedInstance from the New Morph.. menu..  

See my class side.!

!SVGCardMorph commentStamp: '<historical>' prior: 0!
I have SVG front and back morphs as submorphs.
I hide and show to "flip" between them.

Currently, there is one universal size used for all cards. [@@REVISIT@@]

CardMorph the: #Ace of: #Clubs.
CardMorph the: 3 of: #Hearts.

IVARS:
 cardNumber: 1..52
  grabPreowner: When grabbed from CardContainer, goes back here on drop rejection

Structure:
 SuitNames		Array of Symbol -- #(Clubs Diamonds Hearts Spades)
 ColorNames		Array of Symbol -- #(Red Black)
 FaceNames		Array of Symbol -- #(Ace Two Three ... Ten Jack Queen King)
 Fronts -- 52 card SVG images
 Backs -- back SVG images [e.g. might use different backs for different decks]

There is a total ordering on cards
	A  A  A  A  2  2  2  2  3  3  3   3   4   4
	C  D  H  S  C  D H  S  C  D H   S   C   D ...
	0  1   2  3  4  5  6  7  8  9 10 11 12 13 ..

The SVG morph proto for the Three of Hearts is in Fronts: at 11 (its cardNumber + 1).
See faceNumber and suitNumber instance methods for the math.
There are 54 card images (two jokers, a red and a black).
!

!SVGCardTests commentStamp: '<historical>' prior: 0!
"Unit tests for SVGCardMorph and related classes"!

!SVGCardDeck commentStamp: '<historical>' prior: 0!
I am a 52 Card Deck you can shuffle and deal from.

aDeck shuffle.
aDeck dealACard.!

!PickASVGCardImagePallet class methodsFor: 'instance creation' stamp: 'KenD 9/30/2021 11:06:44'!
initializedInstance
	"Answer a pallet of SVG image selections"
	| deck sortedCollection |
	deck := SVGCardDeck new initialize.
	sortedCollection := OrderedCollection new: (deck cards size ).
	deck cards do: [  :card |  
		sortedCollection addLast: (card name)->card
	].
	
	^ self
		privateBuildPanelLabel:  'Pick a SVG card image' 
		collection: sortedCollection
		transducer: [ :cardImage | 
			cardImage scale: SVGCardMorph defaultScale 
		]
! !

!SVGCardMorph methodsFor: 'accessing' stamp: 'KenD 9/11/2021 15:34:11'!
name
	"e.g. Jack of Hearts"
	^((self face) asString), ' of ', ((self suit) asString)! !

!SVGFreeCell methodsFor: 'dropping/grabbing' stamp: 'KenD 9/12/2021 09:13:21'!
column: columnMorph wantsDropOf: aCardOrColumnMorph 
	"Answer true if Column is empty or if (lowest)
	card is opposit color and one higher in face value."
	
	"Ignore other game card instances"
	(self isMyCard: aCardOrColumnMorph) ifFalse: [^false]. 
	
	(aCardOrColumnMorph isKindOf: SVGCardMorph)
		ifTrue: [| topCard | 
			topCard := columnMorph topCard.
			topCard isNil
			ifTrue: [^true]
			ifFalse: [ ^ (aCardOrColumnMorph hasFaceOneLessThan: topCard)
					& (topCard hasDifferentColorThan: aCardOrColumnMorph)]]
		ifFalse: [
			Error signal: '@@FIXME: implement for column drops!!'.
			^ false]! !

!SVGFreeCell methodsFor: 'dropping/grabbing' stamp: 'KenD 9/12/2021 09:14:47'!
container: aContainerMorph wantsDropOf: aCardOrColumnMorph 
	"Answer true if legal drop by FreeCell game rules"
	| dropObjectClass |
	
	"Ignore other game card instances"
	(self isMyCard: aCardOrColumnMorph) ifFalse: [^false]. 
	
	dropObjectClass := aCardOrColumnMorph class.
	(dropObjectClass = CardColumnMorph) | (aCardOrColumnMorph isKindOf: SVGCardMorph)
	ifFalse: [ ^false ]
	ifTrue: [ aContainerMorph class = CardSpareMorph
		ifTrue: [^ self spare: aContainerMorph wantsDropOf: aCardOrColumnMorph]
		ifFalse: [aContainerMorph class = CardPileMorph
				ifTrue: [^ self pile: aContainerMorph wantsDropOf: aCardOrColumnMorph]
				ifFalse: [aContainerMorph class = CardColumnMorph
						ifTrue: [^ self column: aContainerMorph wantsDropOf: aCardOrColumnMorph]
						ifFalse: [^ false]]]]! !

!SVGFreeCell methodsFor: 'dropping/grabbing' stamp: 'KenD 9/12/2021 09:15:15'!
pile: pileMorph wantsDropOf: aCardOrColumnMorph 
	"Answer true if Pile is empty and Card is Ace or if  
	card is same suit and one higher in face value."
	
	| card |
	card := (aCardOrColumnMorph isKindOf: SVGCardMorph)
				ifTrue: [aCardOrColumnMorph]
				ifFalse: [aCardOrColumnMorph singletonCard].
				
	"Ignore other game card instances"
	(self isMyCard: card) ifFalse: [^false]. 
	
	card isNil
		ifTrue: [ ^nil ]
		ifFalse: [ pileMorph isEmpty
			ifTrue: [ ^ card face == #Ace ]
			ifFalse: [ | topCard | 
			topCard := pileMorph topCard.
			^ (topCard hasFaceOneLessThan: card)  & (topCard hasSameSuitAs: card)]]! !

!SVGFreeCell methodsFor: 'dropping/grabbing' stamp: 'KenD 9/12/2021 09:15:31'!
spare: spareMorph wantsDropOf: aCardOrColumnMorph 
	"Answer true if Spare is empty and Card is singleton."
	| card |
	aCardOrColumnMorph hideDropShadow.
	card := (aCardOrColumnMorph isKindOf: SVGCardMorph)
				ifTrue: [aCardOrColumnMorph]
				ifFalse: [aCardOrColumnMorph singletonCard].
				
	"Ignore other game card instances"
	(self isMyCard: card) ifFalse: [^false]. 
	
	spareMorph isEmpty
		ifTrue: [^ (card isNil not) and: [card submorphs size = 0]] "only holds 1 card"
		ifFalse: [^ false]! !

!SVGFreeCell methodsFor: 'fileIn/out' stamp: 'KenD 9/12/2021 09:20:14'!
restoreGameFromDataStream: aDataStream
	"Given an open DataStream, read and restore game state."
	
	"Game state consists of information to reconsitiute the deck, spares, piles, and columns."
	"NYI: undo stack save/restore."
	| stateArray |
	stateArray := aDataStream next.
	(stateArray at: 1) == #SVGFreeCell
	ifFalse: [ Error signal: 'Not a saved SVG FreeCell Game!!' ]
	ifTrue: [
		| columnInfo pileInfo spareInfo undoInfo |
		deck := SVGCardDeck new initializeFromArray: (stateArray at: 3).
		deck setScale: self scale.
		columnInfo := stateArray at: 5.
		pileInfo     := stateArray at: 7.
		spareInfo   := stateArray at: 9.
		undoInfo    := stateArray at: 11.
		
		1 to: NumColumns
			do: [ :idx |
				(self columns at: idx) restoreFromArray: (columnInfo at: idx) givenDeck: self deck ].
		
		1 to: NumSpares
			do: [ :idx |
				(self spares at: idx) restoreFromArray: (spareInfo at: idx) givenDeck: self deck ].
			
		1 to: NumPiles
			do: [ :idx |
				(self piles at: idx) restoreFromArray: (pileInfo at: idx) givenDeck: self deck ].
			
		undoInfo isNil
		ifTrue: [ self makeUndoStackEmpty ]
		ifFalse: [ Error signal: 'FIXME: Undo save/restore NYI' ].
	]! !

!SVGFreeCell methodsFor: 'fileIn/out' stamp: 'KenD 9/12/2021 09:19:27'!
saveGameToDataStream: aDataStream
	"Given an open DataStream, save the current game state."
	
	"Game state consists of information to reconsitiute the deck, spares, piles, and columns."
	"NYI: undo stack save/restore."
	| someData |
	someData := 	 { #SVGFreeCell. 
				#CardDeck.
				self deck saveStateToArray.
				#Columns.
				self columns 
					collect: [ :container | container saveStateToArray].
				#Piles.
				self piles 
					collect: [ :container | container saveStateToArray].
				#Spares.
				self spares 
					collect: [ :container | container saveStateToArray].
				#Undo.
				nil. "FIXME"
	}.
	aDataStream nextPut: someData.
! !

!SVGFreeCell methodsFor: 'geometry' stamp: 'KenD 9/12/2021 09:21:39'!
reScale
	"reScale self based on new font sizes"
	self notYetImplemented ! !

!SVGFreeCell methodsFor: 'initialization' stamp: 'KenD 9/12/2021 09:23:34'!
defaultExtent

	| cardWidth cardHeight tableExtent |
	cardWidth  := SVGCardMorph morphWidth.
	cardHeight := SVGCardMorph morphHeight.
	"buttonArea height 50; labelArea height 40; pilesArea CardHeight+30" 
	tableExtent := (cardWidth + self columnSeparation * 4)@(cardHeight * 6 + 120).

	^ tableExtent.! !

!SVGFreeCell methodsFor: 'initialization' stamp: 'KenD 10/1/2021 12:52:28'!
initializeWithSVGCards
	"Setup my layout.  Across the top are 4 Spares and 4 Piles,
	then a block of 8 Columns, then a Button area."

	super initialize.
	deck := SVGCardDeck new initialize.
	self makeLabelArea: 'FreeCell';
		 makePilesArea;
		 makeColumnArea;
		 makeButtonArea.
	self flag: #reVisit. "Card Class into Table ??"
	piles do: [ :p | p cardClass: SVGCardMorph ].
	spares do: [ :s | s cardClass: SVGCardMorph ].
	columns do: [ :c | c cardClass: SVGCardMorph ].
	self
		 dealCards;
		 "reScale;"
		 morphExtent: self minimumExtent;
		 yourself! !

!SVGFreeCell methodsFor: 'initialization' stamp: 'KenD 9/30/2021 14:11:49'!
initializeWithScale: aScale

	self flag: #FixMe. "Ignoring scale"
	scale := 1.
	super initialize.
	deck := SVGCardDeck new initializeWithScale: self scale.
	self makeLabelArea: 'SVG FreeCell';
		 makePilesArea;
		 makeColumnArea;
		 makeButtonArea.
		
	piles do: [ :p | p cardClass: SVGCardMorph ].
	spares cardClass: SVGCardMorph.
	columns do: [ :c | c cardClass: SVGCardMorph ].
		
	self
		 dealCards;
		 "reScale;"
		 morphExtent: self minimumExtent;
		 yourself! !

!SVGFreeCell class methodsFor: 'instance creation' stamp: 'KenD 10/1/2021 12:16:21'!
newSVGGame
	"Answer a new instance"
	"
	SVGFreeCell newSVGGame.
	"
	
	^ (self newColumn initializeWithSVGCards) openInWorld! !

!PickASVGCardImagePallet class methodsFor: 'new-morph participation' stamp: 'KenD 9/18/2021 07:56:33'!
includeInNewMorphMenu
	"Return true for all classes that can be instantiated from the menu"
	
	^ true! !

!SVGCardMorph methodsFor: 'accessing' stamp: 'KenD 9/11/2021 15:32:52'!
cardColor
	"Answer a symbol denoting the color of this card"
	"clubs diamonds hearts spades => black red red black"

	| suitNum |
	suitNum := self suitNumber.
	(suitNum = 1)
	ifTrue: [^ #Black]
	ifFalse: [(suitNum = 4)
			ifTrue: [ ^#Black ]
			ifFalse: [ ^#Red ]].! !

!SVGCardMorph methodsFor: 'accessing' stamp: 'KenD 9/11/2021 15:33:43'!
face
	"Answer a symbol denoting the face value of this card"

	^FaceNames at: (self faceNumber).! !

!SVGCardMorph methodsFor: 'accessing' stamp: 'KenD 9/11/2021 15:34:39'!
suit
	"Answer a symbol denoting the suit of this card"

	^SuitNames at: (self suitNumber).! !

!SVGCardMorph methodsFor: 'accessing' stamp: 'KenD 9/11/2021 15:34:49'!
suitColor
	"Answer a symbol denoting the color of this card"
	"clubs diamonds hearts spades => black red red black"

	| suitNum |
	suitNum := self suitNumber.
	(suitNum = 1)
	ifTrue: [^ #Black]
	ifFalse: [(suitNum = 4)
			ifTrue: [ ^#Black ]
			ifFalse: [ ^#Red ]].! !

!SVGCardMorph methodsFor: 'comparing' stamp: 'KenD 9/11/2021 15:50:31'!
< aCard
	"Absolute ordering over all cards in a 52 card deck."

	(aCard isKindOf: SVGCardMorph)
	ifTrue: [ ^ (self cardNumber) < (aCard cardNumber) ]
	ifFalse: [ ^false ].! !

!SVGCardMorph methodsFor: 'comparing' stamp: 'KenD 9/11/2021 15:50:11'!
= aCard
	(aCard isKindOf: SVGCardMorph)
	ifTrue: [ ^ (self cardNumber) = (aCard cardNumber) ]
	ifFalse: [ ^false ].! !

!SVGCardMorph methodsFor: 'comparing' stamp: 'KenD 9/11/2021 15:50:43'!
> aCard
	(aCard isKindOf: SVGCardMorph)
	ifTrue: [ ^ (self cardNumber) > (aCard cardNumber) ]
	ifFalse: [ ^false ].! !

!SVGCardMorph methodsFor: 'comparing' stamp: 'KenD 9/11/2021 15:47:59'!
hasDifferentColorThan: anotherCard
	"Answer true if anotherCard has the same color"
	
	(self hasSameColorAs: anotherCard)
	ifTrue: [ ^false ]
	ifFalse: [ ^true ].! !

!SVGCardMorph methodsFor: 'comparing' stamp: 'KenD 9/11/2021 15:48:27'!
hasFaceOneLessThan: anotherCard
	"Answer true if anotherCard has the same face value plus one"
	
	(anotherCard isKindOf: SVGCardMorph)
	ifTrue: [ ^(self faceNumber + 1) == (anotherCard faceNumber) ]
	ifFalse: [ Error signal: 'Expected a SVGCardMorph, got: ', (anotherCard asString) ].! !

!SVGCardMorph methodsFor: 'comparing' stamp: 'KenD 9/11/2021 15:48:54'!
hasSameColorAs: anotherCard
	"Answer true if anotherCard has the same color"
	
	(anotherCard isKindOf: SVGCardMorph)
	ifTrue: [ ^(self suitColor) == (anotherCard suitColor) ]
	ifFalse: [ Error signal: 'Expected a SVGCardMorph, got: ', (anotherCard asString) ].! !

!SVGCardMorph methodsFor: 'comparing' stamp: 'KenD 9/11/2021 15:49:12'!
hasSameFaceAs: anotherCard
	"Answer true if anotherCard has the same face value"
	
	(anotherCard isKindOf: SVGCardMorph)
	ifTrue: [ ^(self face) == (anotherCard face) ]
	ifFalse: [ Error signal: 'Expected a SVGCardMorph, got: ', (anotherCard asString) ].! !

!SVGCardMorph methodsFor: 'comparing' stamp: 'KenD 9/11/2021 15:49:30'!
hasSameSuitAs: anotherCard
	"Answer true if anotherCard has the same suit"
	
	(anotherCard isKindOf: SVGCardMorph)
	ifTrue: [ ^(self suit) == (anotherCard suit) ]
	ifFalse: [ Error signal: 'Expected a SVGCardMorph, got: ', (anotherCard asString) ].! !

!SVGCardMorph methodsFor: 'comparing' stamp: 'KenD 9/11/2021 15:49:50'!
hash
	"because = is implemented"
	^ (self cardNumber) hash! !

!SVGCardMorph methodsFor: 'display' stamp: 'KenD 9/11/2021 15:45:06'!
flip
	"Turn the card over"

	(isFaceDown := isFaceDown not)
	ifTrue:  [ "make face down"
		(submorphs at: 1) hide.  "face"
		(submorphs at: 2) show. "back"
	]
	ifFalse: [ "make face up"
		(submorphs at: 1) show. "face"
		(submorphs at: 2) hide.   "back"
	]! !

!SVGCardMorph methodsFor: 'display' stamp: 'KenD 9/11/2021 15:43:59'!
makeFaceDown

	self isFaceDown ifFalse: [ self flip ]! !

!SVGCardMorph methodsFor: 'display' stamp: 'KenD 9/11/2021 15:38:46'!
makeFaceUp

	self isFaceUp ifFalse: [ self flip ]! !

!SVGCardMorph methodsFor: 'drawing' stamp: 'KenD 9/11/2021 07:11:24'!
drawOn: aCanvas

	"VectorCanvas knows how to draw me without being told.."
! !

!SVGCardMorph methodsFor: 'dropShadow' stamp: 'KenD 9/12/2021 10:25:03'!
dropShadowShown

	self flag: #FixMe.
	^false! !

!SVGCardMorph methodsFor: 'dropShadow' stamp: 'KenD 9/12/2021 10:24:06'!
hideDropShadow

	self flag: #FixMe! !

!SVGCardMorph methodsFor: 'dropShadow' stamp: 'KenD 9/12/2021 10:24:14'!
setDropShadowMorph

	self flag: #FixMe! !

!SVGCardMorph methodsFor: 'dropShadow' stamp: 'KenD 9/12/2021 10:24:22'!
showDropShadow

	self flag: #FixMe! !

!SVGCardMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 9/30/2021 12:31:47'!
aboutToBeGrabbedBy: aHand 
	"I'm about to be grabbed by the hand. If other cards are above me in a 
	Card Container, then move them from the Container to being submorphs of me"

	self rememberPreowner.
	(self owner isKindOf: CardDeckMorph) | (self owner isNil)
	ifFalse: [
"
		Transcript newLine; show: ( self name , ' about to be grabbed by ' , aHand name ).
"
		super aboutToBeGrabbedBy: aHand.
		self collectCardsAboveMe;
		showDropShadow;
		yourself
	]
	ifTrue: [^nil]
! !

!SVGCardMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 9/30/2021 12:32:41'!
acceptDroppingMorph: aMorph event: evt 
	"Delegate to my owning Card Container"
	
	(self owner isKindOf: CardContainerMorph)
	ifTrue: [ ^(self owner) acceptDroppingMorph: aMorph event: evt ]
	ifFalse: [ ^false ]! !

!SVGCardMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 9/30/2021 12:32:52'!
allowsMorphDrop
	"Answer whether we accept dropping morphs. By default answer false."

	^ true! !

!SVGCardMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 9/30/2021 12:32:58'!
allowsSubmorphDrag
	"Answer whether our morphs can just be grabbed with the hand, instead of requiring the use of the halo. By default answer false."

	^ true! !

!SVGCardMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 10/1/2021 13:29:59'!
collectCardsAboveMe 
	"I'm about to be grabbed by the hand or otherwise moved. 
	If other cards are above me in a Card Container, then move 
	them from the Container to being submorphs of me"
	| idx cards |
	cards _ owner isNil ifTrue: [ nil ] ifFalse: [ owner submorphs ].
	cards isNil ifTrue: [ ^self ].
	idx _ cards indexOf: self ifAbsent: [^ self].
	idx = 1 ifTrue: [^ self].
	(cards copyFrom: 1 to: idx - 1)
		do: [:m | m class = self class
				ifTrue: [self addMorphBack: m]].
	"set my extent to include submorphs"
"	(self owner isKindOf: CardColumnMorph)
	ifTrue: [ 
		self morphExtent:
			(self width
			 @	
			 (self height + (self submorphCount * (
							self owner pixelsPerOverlap))))].
	(self owner isKindOf: CardDiscardMorph)
	ifTrue: [
		self morphExtent:
			(self width + (self submorphCount * (
							CardDiscardMorph  pixelsPerOverlap)))
			 @	
			 (self height)]."
	self redrawNeeded.! !

!SVGCardMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 9/30/2021 12:28:51'!
forgetPreowner
	
	grabPreowner  := nil! !

!SVGCardMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 9/30/2021 12:29:01'!
grabPreowner

	^grabPreowner ! !

!SVGCardMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 10/1/2021 13:12:50'!
justDroppedInto: aMorph event: anEvent
	"Someone just dropped me.."
	
	self hideDropShadow.
	"Tell my container"
	(self owner isKindOf: CardContainerMorph)
	ifTrue: [ ^ (self owner) dropComplete ]
	ifFalse: [^ false ]! !

!SVGCardMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 9/30/2021 12:33:21'!
rejectDropMorphEvent: evt
	"Drop rejected. If have submorphs, give them back to the container."
"	
	Transcript newLine; 
		show: ('>>rejectDropMorphEvent>> :' ,self name ,
		           ', grabPreowner ' , self grabPreowner name ).
"
	self hideDropShadow.
	
	(self grabPreowner isKindOf: CardContainerMorph)
	ifTrue: [self grabPreowner addCard: self.
		 	self submorphs reverseDo: [ :m | self grabPreowner addCard: m].
			(evt isNil) ifFalse: [evt wasHandled: true].
			self redrawNeeded ]
	ifFalse: [ super rejectDropMorphEvent: evt.].! !

!SVGCardMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 9/11/2021 15:35:26'!
rememberPreowner
	
	(self owner isKindOf: CardContainerMorph )
	ifTrue: [grabPreowner := self owner]
	ifFalse: [grabPreowner  := nil] "no funny stuff.."! !

!SVGCardMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 9/11/2021 15:36:19'!
theGrabPreowner
	"Accessor"
	^grabPreowner ! !

!SVGCardMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 9/30/2021 12:33:32'!
wantsDroppedMorph: aMorph event: evt 
	"Ask my container."
	
	(self owner isKindOf: CardContainerMorph)
	ifTrue: [ ^(self owner) wantsDroppedMorph: aMorph event: evt ]
	ifFalse: [^ false]! !

!SVGCardMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 9/30/2021 12:33:44'!
wantsToBeDroppedInto: aMorph 
	"I want to be dropped onto a Card or a Card Container"
	^ (aMorph isKindOf: CardContainerMorph)
		| (aMorph isKindOf: SVGCardMorph)! !

!SVGCardMorph methodsFor: 'event handling' stamp: 'KenD 9/30/2021 12:35:35'!
click: evt localPosition: localEventPosition
	"ignore this and wait until #firstClickTimedOut: arrives"
"
	Transcript newLine; show: (self name , ' got #click:localPosition:'). 
"
	(self owner isKindOf: CardDeckMorph)
	ifTrue: [ self owner click: evt localPosition: localEventPosition ]
	ifFalse: [ ^false ]! !

!SVGCardMorph methodsFor: 'event handling' stamp: 'KenD 9/30/2021 12:35:43'!
handlesMouseDown: evt 
"
	Transcript newLine; show: (self name , ' got #handlesMouseDown:').  
"
	^ true! !

!SVGCardMorph methodsFor: 'event handling' stamp: 'KenD 9/30/2021 12:35:54'!
processMouseDown: evt localPosition: localEventPosition
	"Do nothing upon mouse-down except inform the hand to watch for a 
	double-click; wait until an ensuing click:, doubleClick:, or drag: 
	message gets dispatched"
	| container containerOKsPickup |
"
     Transcript newLine; show: (self name , ' got #processMouseDown:localPosition:').  
"
	container := self owner.
	(container isKindOf: CardContainerMorph)
		ifFalse: [^ self].
	containerOKsPickup := (container okToPickUp: self).
	containerOKsPickup | (container isKindOf: CardDeckMorph)
	ifFalse: [
		evt wasHandled:  true. "@@ Don't let World open a menu"
		^ self]
	ifTrue: [
			evt hand waitForClicksOrDrag: self 
					 event: evt 
					 dragSel: #click:localPosition:
					 clkSel:  #click:localPosition: .
		containerOKsPickup
		ifTrue: [ |hand|
			hand := self runningWorld activeHand.
			(localEventPosition < self morphExtent )
			ifTrue: [hand grabMorph: self] "Close to cursor"
			ifFalse: [self aboutToBeGrabbedBy: hand. "Far from cursor"
					hand attachMorph: self].
			evt wasHandled:  true
		]
	]
! !

!SVGCardMorph methodsFor: 'geometry' stamp: 'KenD 9/11/2021 07:17:09'!
cardExtent

	^self class cardExtent! !

!SVGCardMorph methodsFor: 'geometry' stamp: 'KenD 9/30/2021 12:37:09'!
height

	^self class cardExtent y! !

!SVGCardMorph methodsFor: 'geometry' stamp: 'KenD 9/11/2021 15:46:04'!
minimumExtent
	"Same as maximum extent"
	^ self cardExtent! !

!SVGCardMorph methodsFor: 'geometry' stamp: 'KenD 9/18/2021 10:01:23'!
morphExtent

	^self class cardExtent! !

!SVGCardMorph methodsFor: 'geometry' stamp: 'KenD 9/22/2021 13:07:47'!
morphHeight

	^self class cardExtent y! !

!SVGCardMorph methodsFor: 'geometry' stamp: 'KenD 9/22/2021 13:07:57'!
morphWidth

	^self class cardExtent x! !

!SVGCardMorph methodsFor: 'geometry' stamp: 'KenD 9/29/2021 14:46:48'!
rotationCenter
	
	^ self class rotationCenter ! !

!SVGCardMorph methodsFor: 'geometry' stamp: 'KenD 9/11/2021 07:26:36'!
updateExtent

	| newExtent |
	newExtent := self class cardExtent.
	self allSubmorphsDo: [ :s | s fitInto:  newExtent ]! !

!SVGCardMorph methodsFor: 'geometry' stamp: 'KenD 9/30/2021 12:37:17'!
width

	^self class cardExtent x! !

!SVGCardMorph methodsFor: 'geometry testing' stamp: 'KenD 9/30/2021 12:38:21'!
submorphsMightProtrude

	^true! !

!SVGCardMorph methodsFor: 'initialization' stamp: 'KenD 9/30/2021 11:02:38'!
withCardNumber: cardNum
	"See my class comment on card numbering"
	
	|  face back |
	"NB: Must set cardNumber before #initialize"
	cardNumber := cardNum. 
	super initialize.
	"self morphExtent: SVGCardMorph cardExtent."
	grabPreowner := nil.
	face := self class faceAt: cardNumber.
	back := self class defaultBack.
	self addMorphFront: face.
	self addMorphBack: back.
	back hide.
	face show.
	isFaceDown := false.
	self setProperty:  #balloonText toValue: self name.
	^ self	
	
	
		! !

!SVGCardMorph methodsFor: 'testing' stamp: 'KenD 9/11/2021 15:39:17'!
isBlack

	^(self suitColor) == #Black! !

!SVGCardMorph methodsFor: 'testing' stamp: 'KenD 9/11/2021 15:39:26'!
isCardMorph
	
	^true! !

!SVGCardMorph methodsFor: 'testing' stamp: 'KenD 9/11/2021 15:39:33'!
isFaceDown

	^isFaceDown! !

!SVGCardMorph methodsFor: 'testing' stamp: 'KenD 9/11/2021 15:39:41'!
isFaceUp

	^ self isFaceDown not! !

!SVGCardMorph methodsFor: 'testing' stamp: 'KenD 9/11/2021 15:39:49'!
isRed

	^(self suitColor) == #Red! !

!SVGCardMorph methodsFor: 'private' stamp: 'KenD 9/11/2021 15:33:28'!
cardNumber
	"private"

	^cardNumber! !

!SVGCardMorph methodsFor: 'private' stamp: 'KenD 9/11/2021 15:38:01'!
faceNumber
	"Private;  Answer 1..13"

	^((cardNumber // 4) + 1)! !

!SVGCardMorph methodsFor: 'private' stamp: 'KenD 9/30/2021 12:53:21'!
saveImageToFile: aFileName
	"NB: overrited file without question"

	(self imageForm: 32) writeJPEGfileNamed:aFileName! !

!SVGCardMorph methodsFor: 'private' stamp: 'KenD 9/11/2021 15:37:07'!
suitNumber
	"Private: Answer 1..4"

	^((cardNumber rem: 4) + 1)! !

!SVGCardMorph class methodsFor: 'accessing' stamp: 'KenD 9/11/2021 15:23:49'!
backAt: index

	"Must copy prototype else try to be submorph of multple supers"
	^(Backs at: index) duplicate! !

!SVGCardMorph class methodsFor: 'accessing' stamp: 'KenD 9/18/2021 08:00:00'!
backs

	^Backs! !

!SVGCardMorph class methodsFor: 'accessing' stamp: 'KenD 9/29/2021 14:36:50'!
cardExtent
	"Set in class initializer"
	^ CardExtent ! !

!SVGCardMorph class methodsFor: 'accessing' stamp: 'KenD 9/11/2021 15:27:56'!
defaultBack

	"Blue back is current default"
	^ self backAt: 1! !

!SVGCardMorph class methodsFor: 'accessing' stamp: 'KenD 9/12/2021 10:28:08'!
faceAt: index
	"Convert zero based to 1 based index"
	"Must copy prototype else try to be submorph of multple supers"
	^(Fronts at: index + 1) duplicate! !

!SVGCardMorph class methodsFor: 'accessing' stamp: 'KenD 9/18/2021 07:59:52'!
fronts

	^Fronts! !

!SVGCardMorph class methodsFor: 'accessing' stamp: 'KenD 9/18/2021 08:00:09'!
jokers

	^Jokers! !

!SVGCardMorph class methodsFor: 'accessing' stamp: 'KenD 9/22/2021 13:10:29'!
morphHeight

	^self cardExtent y! !

!SVGCardMorph class methodsFor: 'accessing' stamp: 'KenD 9/22/2021 13:10:11'!
morphWidth

	^self cardExtent x! !

!SVGCardMorph class methodsFor: 'class initialization' stamp: 'KenD 9/29/2021 15:03:54'!
initialize
"
	SVGCardMorph initialize.
"
	| pathPrefix baseIndex  |
	pathPrefix := ((CodePackage installedPackages at: #'SVG')
				fullFileName pathAndLocalName at: 1) ,
				'/../Games/Solitaire/SVG-CardImages/'.
	ColorNames := #(Red Black).
	FaceNames  := #(Ace Two Three Four Five Six Seven Eight Nine Ten Jack Queen King).
	SuitNames   := #(Clubs Diamonds Hearts Spades).
	Backs := {
		self SVGMorphFromFile: pathPrefix, 'backs/blue.svg'.
		self SVGMorphFromFile: pathPrefix, 'backs/red.svg'.
	}.
	CardExtent := (Backs at: 1) fullBoundsInOwner extent.
	UpperLeftOffset :=  (Backs at: 1) fullBoundsInOwner center negated.
	
	baseIndex := 0.
	Fronts := Array new: 52.
	#( #ace 2 3 4 5 6 7 8 9 10 #jack #queen #king ) do: [ :faceId |
		SuitNames do: [ :suitName | | suitId |
			suitId := suitName asLowercase.
			baseIndex := baseIndex + 1.
			Fronts at: baseIndex
				    put: (self  SVGMorphFromFile: 
							pathPrefix, 
							'fronts/',
							 suitId asString , '_',
							 faceId asString, '.svg')
		]
	].
	Jokers := { 
		self  SVGMorphFromFile:  pathPrefix, 'fronts/joker_black.svg'.
		self  SVGMorphFromFile:  pathPrefix, 'fronts/joker_red.svg'.
	}.
	self scaleCards.! !

!SVGCardMorph class methodsFor: 'class initialization' stamp: 'KenD 9/30/2021 09:51:32'!
scaleCards
"
	SVGCardMorph scaleCards.
"
	| cardScale |
	cardScale := self defaultScale.
	
	Fronts do: [ :f |  f scale: cardScale ].
	Backs  do: [ :b | b scale: cardScale ].	
	Jokers  do: [ :j |  j scale: cardScale ].	! !

!SVGCardMorph class methodsFor: 'fileIn/Out' stamp: 'KenD 9/11/2021 12:50:14'!
SVGMorphFromFile: aPath
	^self SVGMorphFromFileEntry: aPath asFileEntry! !

!SVGCardMorph class methodsFor: 'fileIn/Out' stamp: 'Install-SVG-Solitaire 9/11/2021 15:12:26'!
SVGMorphFromFileEntry: aFileEntry
	| m |
	m := [ (SVGMainMorph fromFile: aFileEntry) ]
			on: SVGWarning
			do: [ :warning | "warning print. "warning resume ].
	"m fitInto: self cardExtent."
	^m! !

!SVGCardMorph class methodsFor: 'geometry' stamp: 'KenD 9/11/2021 07:19:16'!
baseUnit
	"Answer a measure that scales with current font selection"
	
	^ Preferences windowTitleFont lineSpacing! !

!SVGCardMorph class methodsFor: 'geometry' stamp: 'KenD 9/29/2021 15:06:08'!
defaultScale
	"Answer a scale which makes my extent about the same as a CardMorph."
	^ 0.36! !

!SVGCardMorph class methodsFor: 'geometry' stamp: 'KenD 9/11/2021 07:24:34'!
resetCardExtent
	"Font size changed"

	| newExtent | 
	CardExtent := nil.
	newExtent := self cardExtent.
	self allInstancesDo: [ :aCard | aCard updateExtent ].
	^newExtent! !

!SVGCardMorph class methodsFor: 'geometry' stamp: 'KenD 9/29/2021 14:46:18'!
rotationCenter
	"Answer the Upper Left Corner (set at class initialization)"
	^ UpperLeftOffset! !

!SVGCardMorph class methodsFor: 'instance creation' stamp: 'KenD 9/11/2021 16:14:34'!
the: face of: suit
	"Return an Card instance"
	
	"CardMorph the: #Jack of: #Hearts."
	"CardMorph the: 11 of: #spades"
	"CardMorph the: 11 of: 3."
	
	| faceNum suitNum newInst |
	(suit isSymbol)
	ifTrue: [ suitNum := SuitNames indexOf: (suit capitalized) ]
	ifFalse: [ (suit isInteger) & (1 <= suit) & (suit <= 4)
		ifTrue: [suitNum := suit]
		ifFalse: [suitNum := 0]].
	(suitNum = 0) 
		ifTrue: [Error signal: ('bad suit: ', suit asString)].
	
	(face isSymbol)
	ifTrue: [ faceNum := FaceNames indexOf: (face capitalized) ]
	ifFalse: [ (face isInteger) & (1 <= face) & (face <= 13)
		ifTrue: [faceNum := face]
		ifFalse: [faceNum := 0]].
	(faceNum = 0) 
		ifTrue: [Error signal: ('bad face: ', face asString)].
	
	"Translate between zero based cardNumber and 1 based arrays"
	newInst := (super basicNew) withCardNumber: (suitNum - 1 + (4 * (faceNum - 1))).
	^newInst! !

!SVGCardMorph class methodsFor: 'new-morph participation' stamp: 'KenD 9/11/2021 12:11:23'!
includeInNewMorphMenu
	"Private"

	^false! !

!SVGCardTests methodsFor: 'setUp/tearDown' stamp: 'KenD 9/11/2021 16:11:05'!
setUp
	jackOfClubs        := SVGCardMorph the: #Jack of: #Clubs.
	aceOfSpades      := SVGCardMorph the: #Ace of: #spades.
	twoOfDiamonds  := SVGCardMorph the: 2 of: #diamonds.
	threeOfHearts    := SVGCardMorph the: 3 of: #hearts.
	fiveOfHearts      := SVGCardMorph the: #five of: #hearts! !

!SVGCardTests methodsFor: 'testing' stamp: 'KenD 9/11/2021 15:55:41'!
testColor
	self assert: (jackOfClubs cardColor == #Black).
	self assert: (twoOfDiamonds cardColor == #Red).
	self assert: (threeOfHearts cardColor == #Red).
	self assert: (aceOfSpades cardColor == #Black).
	self assert: (fiveOfHearts cardColor == #Red).
	
	self assert: (jackOfClubs hasSameColorAs: aceOfSpades).
	self assert: (fiveOfHearts hasSameColorAs: twoOfDiamonds).
	self deny:  (fiveOfHearts hasSameColorAs: aceOfSpades).
	self deny:  (jackOfClubs hasSameColorAs: threeOfHearts).
	
	self assert: (jackOfClubs     isBlack).
	self assert: (twoOfDiamonds isRed).
	self deny:  (jackOfClubs     isRed).
	self deny:  (twoOfDiamonds isBlack)! !

!SVGCardTests methodsFor: 'testing' stamp: 'KenD 9/11/2021 16:15:57'!
testComparisons
	self deny: (jackOfClubs < aceOfSpades).
	self deny: (jackOfClubs = aceOfSpades).
	self assert: (aceOfSpades <  jackOfClubs).
	self assert: (threeOfHearts = (SVGCardMorph the: 3 of: #hearts)).
	
	self assert: (aceOfSpades hasDifferentColorThan: threeOfHearts).
	self deny: (fiveOfHearts hasDifferentColorThan: twoOfDiamonds).
	
	self deny: (aceOfSpades hasSameColorAs: threeOfHearts).
	self assert: (fiveOfHearts hasSameColorAs: twoOfDiamonds).
	
	self deny: (aceOfSpades hasSameFaceAs: threeOfHearts).
	self assert: (fiveOfHearts hasSameFaceAs: (SVGCardMorph the: 5 of: #Hearts)).
	
	self deny: (aceOfSpades hasSameSuitAs: threeOfHearts).
	self assert: (fiveOfHearts hasSameSuitAs: threeOfHearts).
	
	self deny: (#randomSymbol isKindOf: SVGCardMorph).
	self assert: (aceOfSpades isKindOf: SVGCardMorph)! !

!SVGCardTests methodsFor: 'testing' stamp: 'KenD 9/11/2021 15:55:56'!
testFace
	self assert: (jackOfClubs face == #Jack).
	self assert: (twoOfDiamonds face == #Two).
	self assert: (threeOfHearts face == #Three).
	self assert: (aceOfSpades face == #Ace).
	self assert: (fiveOfHearts face == #Five)! !

!SVGCardTests methodsFor: 'testing' stamp: 'KenD 9/11/2021 15:56:03'!
testFlip

	self assert: (jackOfClubs isFaceUp).
	self deny:  (jackOfClubs isFaceDown).
	jackOfClubs flip.
	self deny:  (jackOfClubs isFaceUp).
	self assert: (jackOfClubs isFaceDown).
	jackOfClubs flip.! !

!SVGCardTests methodsFor: 'testing' stamp: 'KenD 9/11/2021 15:56:18'!
testIllegal

	self 
		should: [jackOfClubs hasDifferentColorThan: 3] 
		raise: TestResult error.
	self 
		should: [jackOfClubs hasSameColorAs: #randomSymbol] 
		raise: TestResult error.
	self 
		should: [jackOfClubs hasSameFaceAs: 'some string'] 
		raise: TestResult error.
	self 
		should: [jackOfClubs hasSameSuitAs: 3/4] 
		raise: TestResult error.
	self 
		should: [CardMorph the: 23 of: #Jacks] 
		raise: TestResult error.
	self 
		should: [CardMorph the: 13 of: #Jacks] 
		raise: TestResult error
! !

!SVGCardTests methodsFor: 'testing' stamp: 'KenD 9/11/2021 15:56:25'!
testName
	self assert: (jackOfClubs name =  'Jack of Clubs').
	self assert: (twoOfDiamonds name = 'Two of Diamonds').
	self assert: (threeOfHearts name = 'Three of Hearts').
	self assert: (aceOfSpades name = 'Ace of Spades').
	self assert: (fiveOfHearts name = 'Five of Hearts')! !

!SVGCardTests methodsFor: 'testing' stamp: 'KenD 9/11/2021 15:56:34'!
testPrivate
	self assert: (jackOfClubs suitNumber = 1).
	self assert: (twoOfDiamonds suitNumber = 2).
	self assert: (threeOfHearts suitNumber = 3).
	self assert: (aceOfSpades suitNumber = 4).
	self assert: (fiveOfHearts suitNumber = 3).
	
	self assert: (jackOfClubs faceNumber = 11).
	self assert: (twoOfDiamonds faceNumber = 2).
	self assert: (threeOfHearts faceNumber = 3).
	self assert: (aceOfSpades faceNumber = 1).
	self assert: (fiveOfHearts faceNumber = 5).
	
	self assert: (jackOfClubs cardNumber = 40).
	self assert: (aceOfSpades  cardNumber = 3).
	self assert: (twoOfDiamonds  cardNumber = 5).
	self assert: (threeOfHearts cardNumber = 10).
	self assert: (fiveOfHearts cardNumber = 18)! !

!SVGCardTests methodsFor: 'testing' stamp: 'KenD 9/11/2021 15:56:42'!
testSuit
	self assert: (jackOfClubs suit == #Clubs).
	self assert: (twoOfDiamonds suit == #Diamonds).
	self assert: (threeOfHearts suit == #Hearts).
	self assert: (aceOfSpades suit == #Spades).
	self assert: (fiveOfHearts suit == #Hearts)! !

!SVGCardDeck methodsFor: 'accessing' stamp: 'KenD 9/30/2021 12:24:55'!
cardColor
	"Answer a symbol denoting the color of this card"
	"clubs diamonds hearts spades => black red red black"

	| suitNum |
	suitNum := self suitNumber.
	(suitNum = 1)
	ifTrue: [^ #Black]
	ifFalse: [(suitNum = 4)
			ifTrue: [ ^#Black ]
			ifFalse: [ ^#Red ]].! !

!SVGCardDeck methodsFor: 'accessing' stamp: 'KenD 9/12/2021 08:17:16'!
cardFromNumber: anInteger
	"Given card number 1..52 answer the corresponding CardMorph from this deck."

	"(anInteger < 0) | (anInteger > 52)
	ifTrue: [ Error signal: 'Card Number out of Range 1..52' ]
	ifFalse: [^ self cards detect: [ :card | card cardNumber = anInteger ]]"
	
	^ self cards detect: [ :card | card cardNumber = anInteger ]! !

!SVGCardDeck methodsFor: 'accessing' stamp: 'KenD 9/12/2021 08:17:41'!
cards
	"Private"

	^cards! !

!SVGCardDeck methodsFor: 'accessing' stamp: 'KenD 9/12/2021 08:17:50'!
cardsLeft
	"Answer the number of undealt Cards"

	^(52 - index)! !

!SVGCardDeck methodsFor: 'accessing' stamp: 'KenD 9/12/2021 08:18:09'!
dealACard
	"Answer the next Card or nil"

	(self isEmpty)
	ifTrue: [ ^nil ]
	ifFalse: [ index := index + 1. ^cards at: index ]! !

!SVGCardDeck methodsFor: 'dropping/grabbing' stamp: 'KenD 9/12/2021 08:20:21'!
dropEnabled
	"I do NOT accept drops"

	^false! !

!SVGCardDeck methodsFor: 'initialization' stamp: 'KenD 9/30/2021 13:55:31'!
initialize
	"Create an unshuffled deck of Cards."

	super initialize.
	seed := Random new initialize next.
	index := 0.  "Index incremented gives next Card"
	cards := Array new: 52.
	1 to: 52 
		do: [ :idx | | aCard |
			aCard := (SVGCardMorph 
						the: (((idx - 1) // 4) + 1)    "1..13"
						of: (idx - 1 rem: 4) + 1).    "1..4"
			aCard setProperty: #balloonText toValue: aCard name.
			cards 
				at: idx 
				put: aCard
		].
	self setScale: 0.8.
	^self
	! !

!SVGCardDeck methodsFor: 'initialization' stamp: 'KenD 9/30/2021 13:56:59'!
initializeWithScale: aScale

	^ self 
		initialize;
		setScale: aScale;
		yourself
	! !

!SVGCardDeck methodsFor: 'save/restore' stamp: 'KenD 9/30/2021 09:49:27'!
initializeFromArray: stateArray
	"Reconstiture a Card Deck."
	"stateArray contains 52 card numbers, an index, a seed, and #CardDeck, which abstracts a deck's state"

	super initialize.
	(stateArray at: 55) == #SVGCardDeck
	ifFalse: [ Error signal: 'Improper state array for CardDeck' ].
	seed  := stateArray at: 54.
	index := stateArray at: 53.  "Index incremented gives next Card"
	cards := Array new: 52.
	1 to: 52 
		do: [ :idx | 
			| cardNum |
			cardNum := stateArray at: idx.
			cards at: idx 
				put: (SVGCardMorph new withCardNumber: cardNum) ]. 
	^self 
! !

!SVGCardDeck methodsFor: 'save/restore' stamp: 'KenD 9/12/2021 08:18:42'!
saveStateToArray
	"Answer a n Array of size 55 which contains card numbers for this deck,
	the index, the seed and symbol #CardDeck."

	| stateArray |
	stateArray := Array new: 55.
	stateArray at: 53 put: index.
	stateArray at: 54 put: seed.
	stateArray at: 55 put: #SVGCardDeck.
	1 to: 52 
		do: [ :idx |  stateArray at: idx put: (cards at: idx) cardNumber ].

	^stateArray! !

!SVGCardDeck methodsFor: 'shuffle' stamp: 'KenD 9/30/2021 13:05:27'!
shuffle
	"Shuffle the cards & deal from 0"
	| newRand numCards |
	
	[seed := (Time millisecondClockValue bitAnd: 16r3FFFFFFF). "bitXor: self hash."
	 seed = 0] whileTrue: ["Try again if ever get a seed = 0"].

	index := 0.
	newRand := Random new seed: seed.
	numCards := cards size.
	1 to: 23 do:
		[ :ignoredIndex | 
			"minor Shuffle"
			numCards to: 1 by: -1 do: 
				[:idx | cards swap: idx with: ((1 to: idx) atRandom: newRand)]
		]
! !

!SVGCardDeck methodsFor: 'testing' stamp: 'KenD 9/12/2021 08:19:45'!
contains: aCard
	"Answer true if this deck instance owns this card instance"

	^self cards anySatisfy: [:each | each == aCard] ! !

!SVGCardDeck methodsFor: 'testing' stamp: 'KenD 9/12/2021 08:19:54'!
isEmpty
	"I am 'empty' when I have dealt all my cards"

	^(index = 52)! !

!SVGCardDeck methodsFor: 'use' stamp: 'KenD 9/12/2021 08:19:22'!
startOver
	"Re-deal the same cards."

	index := 0! !

!SVGCardDeck methodsFor: 'private' stamp: 'KenD 9/30/2021 13:58:03'!
scaleToDefault

	self setScale: SVGCardMorph defaultScale.! !

!SVGCardDeck methodsFor: 'private' stamp: 'KenD 9/12/2021 08:18:56'!
seed
	"Answer my random number seed"

	^seed! !

!SVGCardDeck methodsFor: 'private' stamp: 'KenD 9/12/2021 08:19:06'!
seed: anInteger
	"Set my random number seed"

	(anInteger isInteger)
	ifFalse: [Error signal: 'seed must be an Integer' ]
	ifTrue: [ seed := anInteger ].
	^anInteger! !

!SVGCardDeck methodsFor: 'private' stamp: 'KenD 9/30/2021 13:06:41'!
setScale: scale

	1 to: cards size do: [ :idx |
		(cards at: idx) scale: scale
	].! !

!CardContainerMorph methodsFor: '*svgsolitaire' stamp: 'KenD 9/12/2021 08:35:48'!
initializeSVG
	"Set my typical properties; Assume displayed on a Green table."

	super initialize.
	self color: Color transparent;
		borderColor: Color yellow;
		borderWidth: 2; "pixels"
		cardClass: SVGCardMorph ;
		morphWidth:  cardClass morphWidth + 4;
		morphHeight: cardClass morphHeight + 4;
		layoutSpec: self defaultLayout; "subclasses may mutate or replace"
		yourself! !

!SVGMainMorph methodsFor: '*svgsolitaire' stamp: 'KenD 9/30/2021 10:15:42'!
morphExtent

	^ self fullBoundsInOwner extent! !

!SVGMainMorph methodsFor: '*svgsolitaire' stamp: 'Install-SVGSolitaire 10/1/2021 12:51:13'!
morphLocalBounds
	"Lie"
	self flag: #FIXME.
	^`0@0` extent: 100@100.! !
SVGCardMorph initialize!
