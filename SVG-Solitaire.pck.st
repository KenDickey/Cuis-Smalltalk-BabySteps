'From Cuis 5.0 [latest update: #4854] on 11 September 2021 at 12:52:18 pm'!
'Description '!
!provides: 'SVG-Solitaire' 1 0!
!requires: 'Cuis-Base' 50 4854 nil!
!requires: 'SVG' 1 14 nil!
SystemOrganization addCategory: 'SVG-Solitaire'!


!classDefinition: #SVGCardMorph category: 'SVG-Solitaire'!
MovableMorph subclass: #SVGCardMorph
	instanceVariableNames: 'cardNumber grabPreowner isFaceDown'
	classVariableNames: 'Backs CardExtent ColorNames DropShadowMorph FaceNames Fronts Jokers SuitNames'
	poolDictionaries: ''
	category: 'SVG-Solitaire'!
!classDefinition: 'SVGCardMorph class' category: 'SVG-Solitaire'!
SVGCardMorph class
	instanceVariableNames: ''!


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

!SVGCardMorph methodsFor: 'drawing' stamp: 'KenD 9/11/2021 07:11:24'!
drawOn: aCanvas

	"VectorCanvas knows how to draw me without being told.."
! !

!SVGCardMorph methodsFor: 'geometry' stamp: 'KenD 9/11/2021 07:17:09'!
cardExtent

	^self class cardExtent! !

!SVGCardMorph methodsFor: 'geometry' stamp: 'KenD 9/11/2021 07:26:36'!
updateExtent

	| newExtent |
	newExtent := self class cardExtent.
	self allSubmorphsDo: [ :s | s fitInto:  newExtent ]! !

!SVGCardMorph class methodsFor: 'accessing' stamp: 'KenD 9/11/2021 12:10:03'!
morphHeight

	^self cardExtent morphHeight! !

!SVGCardMorph class methodsFor: 'accessing' stamp: 'KenD 9/11/2021 12:10:22'!
morphWidth

	^self cardExtent morphWidth! !

!SVGCardMorph class methodsFor: 'class initialization' stamp: 'KenD 9/11/2021 12:50:39'!
initialize
"
	SVGCardMorph initialize.
"
	| pathPrefix backDir baseIndex |
	pathPrefix := ((CodePackage installedPackages at: #'SVG-Solitaire')
				fullFileName pathAndLocalName at: 1) ,
				'/SVG-CardImages/'.
	ColorNames := #(Red Black).
	FaceNames  := #(Ace Two Three Four Five Six Seven Eight Nine Ten Jack Queen King).
	SuitNames   := #(Clubs Diamonds Hearts Spades).
	backDir := (pathPrefix , 'backs') asDirectoryEntry.
	Backs := backDir children collect: [ :aFileEntry |
			self SVGMorphFromFileEntry: aFileEntry
	].
	baseIndex := 0.
	Fronts := Array new: 52.
	#( #ace 2 3 4 5 6 7 8 9 10 #jack #queen #king ) do: [ :faceId |
		SuitNames do: [ :suitName | | suitId |
			suitId := suitName asLowercase.
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
	}.! !

!SVGCardMorph class methodsFor: 'fileIn/Out' stamp: 'KenD 9/11/2021 12:50:14'!
SVGMorphFromFile: aPath
	^self SVGMorphFromFileEntry: aPath asFileEntry! !

!SVGCardMorph class methodsFor: 'fileIn/Out' stamp: 'KenD 9/11/2021 12:49:43'!
SVGMorphFromFileEntry: aFileEntry
	| m |
	m := [ (SVGMainMorph fromFile: aFileEntry) ]
			on: SVGWarning
			do: [ :warning | "warning print. "warning resume ].
	m fitInto: self cardExtent.
	^m! !

!SVGCardMorph class methodsFor: 'geometry' stamp: 'KenD 9/11/2021 07:19:16'!
baseUnit
	"Answer a measure that scales with current font selection"
	
	^ Preferences windowTitleFont lineSpacing! !

!SVGCardMorph class methodsFor: 'geometry' stamp: 'KenD 9/11/2021 07:20:41'!
cardExtent

	CardExtent ifNil: [ | unit | 
		unit := self baseUnit. 
		CardExtent := (3 * unit) @ (7 * unit)
	].
	^CardExtent! !

!SVGCardMorph class methodsFor: 'geometry' stamp: 'KenD 9/11/2021 07:24:34'!
resetCardExtent
	"Font size changed"

	| newExtent | 
	CardExtent := nil.
	newExtent := self cardExtent.
	self allInstancesDo: [ :aCard | aCard updateExtent ].
	^newExtent! !

!SVGCardMorph class methodsFor: 'instance creation' stamp: 'KenD 9/11/2021 12:19:03'!
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
	newInst color: Color transparent.
	^newInst! !

!SVGCardMorph class methodsFor: 'new-morph participation' stamp: 'KenD 9/11/2021 12:11:23'!
includeInNewMorphMenu
	"Private"

	^false! !
SVGCardMorph initialize!
