'From Cuis 5.0 [latest update: #4878] on 22 September 2021 at 12:35:54 pm'!
'Description Select from a Pallet of Playing Cards.'!
!provides: 'PickACard' 1 2!
!requires: 'Morphic-Games-Solitaire' 1 114 nil!
!requires: 'Morphic-Misc1' 1 187 nil!
SystemOrganization addCategory: 'PickACard'!


!classDefinition: #PickableCardMorph category: 'PickACard'!
CardMorph subclass: #PickableCardMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PickACard'!
!classDefinition: 'PickableCardMorph class' category: 'PickACard'!
PickableCardMorph class
	instanceVariableNames: ''!

!classDefinition: #PickACardImage category: 'PickACard'!
ImagePickerPanel subclass: #PickACardImage
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PickACard'!
!classDefinition: 'PickACardImage class' category: 'PickACard'!
PickACardImage class
	instanceVariableNames: ''!


!PickACardImage commentStamp: '<historical>' prior: 0!
I am just a way of getting an initializedInstance from the New Morph.. menu..  

See my class side.

	| pickerMorph savedExtent |
	pickerMorph := self pickACard.
	savedExtent := pickerMorph morphExtent.
	pickerMorph openInWorld. "openInWorld changes extent"
	pickerMorph morphExtent: savedExtent.!

!PickACardImage class methodsFor: 'instance creation' stamp: 'KenD 9/22/2021 12:34:50'!
initializedInstance
	"Answer a card picker pallet"
	^self pickACard.
! !

!PickableCardMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 9/18/2021 13:37:05'!
aboutToBeGrabbedBy: aHand 
	"I'm about to be grabbed by the hand."
	^ self ! !

!PickableCardMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 9/18/2021 12:45:47'!
allowsMorphDrop
	"Answer whether we accept dropping morphs. By default answer false."

	^ false! !

!PickableCardMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 9/18/2021 12:46:25'!
allowsSubmorphDrag
	"Answer whether our morphs can just be grabbed with the hand, instead of requiring the use of the halo. By default answer false."

	^ true! !

!PickableCardMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 9/18/2021 13:52:07'!
click: evt localPosition: localEventPosition
	"Ignored"
	^false! !

!PickableCardMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 9/18/2021 13:59:30'!
processMouseDown: evt localPosition: localEventPosition
	"Override the CardMorph override"
	(evt mouseButton1Pressed) ifTrue: [
		evt hand grabMorph: self. "Pick me up"
		evt wasHandled: true
	]
	ifFalse: [
		evt hand
			waitForClicksOrDrag: self 
			event: evt 
			dragSel: #click:localPosition:
			clkSel:  #click:localPosition: 
	]
! !

!PickableCardMorph methodsFor: 'dropping/grabbing' stamp: 'KenD 9/18/2021 13:32:40'!
wantsToBeDroppedInto: someMorph

	^ true! !

!PickACardImage class methodsFor: 'instance creation' stamp: 'KenD 9/18/2021 12:47:10'!
pickACard
	"Answer a pallet of CardMorph selections"
	| nameImageCollection   |
	nameImageCollection := OrderedCollection new: 52.
	#(Ace Two Three Four Five Six Seven Eight Nine Ten Jack Queen King)
	do: [ :face |
		#(Clubs Diamonds Hearts Spades) do: [ :value |
			nameImageCollection addLast:
			 ( (face, '+', value) 
			->
			(PickableCardMorph the: face of: value) ).
	]  ].

	^ self
		privateBuildPanelLabel:  'Pick a Card' 
		collection: nameImageCollection
		transducer: [:card |  card ] ! !

!PickACardImage class methodsFor: 'new-morph participation' stamp: 'KenD 9/18/2021 12:28:03'!
includeInNewMorphMenu
	"Return true for all classes that can be instantiated from the menu"
	
	^ true! !
