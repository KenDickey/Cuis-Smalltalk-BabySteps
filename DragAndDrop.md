Understanding Drag and Drop Mechanics
=====================================

Event driven code allows multiple objects to interact without direct contact.

One example of this is ***Drag and Drop***.
One might, say "pick up" a color from a color palette,
and drop it on an area which may or may not be sensitive to colors.

How does this work?

Following is a brief discussion, with much code,
showing how events are used to pick up some value and drop onto some target morph.

You can take a look at the code via the #UI-Tools package and use
of a code or message names browser.


````Smalltalk
  Feature require: 'UI-Tools'.
````

###DRAG

First, let's look at picking up a value.

This is an "opt in" for a Morph.
Just as with mouse events, a Morph class can override #allowsSubmorphDrag to answer 'true'
or an individual Morph can set the property with that name.

````Smalltalk
Morph>>allowsSubmorphDrag
	"Answer whether our morphs can just be grabbed with the hand, instead of requiring the use of the halo. By default answer false."

	"Use a property test to allow individual instances to specify this."
	^ self hasProperty: #'allowsSubmorphDrag'
````

As with mouse events, the HandMorph does most of the interacting.

````Smalltalk
VisualPropertyMenuItem>>processMouseDown: evt localPosition: localEventPosition
	"Do nothing upon mouse-down except inform the hand to watch for a 
	click; wait until an ensuing #click: message gets dispatched"

	evt wasHandled: true.
	evt hand waitForClicksOrDrag: self
				event: evt
				dragSel: #dragEvent:localPosition:
				clkSel: #mouseButton1Down:localPosition:
````

````Smalltalk
Morph>>dragEvent: aMouseEvent localPosition: aPoint

	aMouseEvent hand halo: nil.
	aMouseEvent hand grabMorph: self
````

````Smalltalk
HandMorph>>grabMorph: aMorph
	"Grab the given morph (i.e., add it to this hand and remove it from its current owner) without changing its position. This is used to pick up a morph under the hand's current position, versus attachMorph: which is used to pick up a morph that may not be near this hand."

	^self grabMorph: aMorph moveUnderHand: false
````

````Smalltalk
grabMorph: aMorph moveUnderHand: moveUnderHand
	"Grab the given morph (i.e., add it to this hand and remove it from its current owner).
	If moveUnderHand is requested or it seems neccesary anyway, move the grabbed morph under the hand."

	| grabbed positionInHandCoordinates tx bounds |
	self releaseMouseFocus.	"Break focus"
	grabbed _ aMorph.
	aMorph owner ifNotNil: [ :o | grabbed _ o aboutToGrab: aMorph ].
	grabbed ifNil: [ ^ self ].
	grabbed _ grabbed aboutToBeGrabbedBy: self.
	grabbed ifNil: [ ^ self ].
	self hideHardwareCursor.
	self redrawNeeded.
"..."
````

````Smalltalk
DropColorMorph>>aboutToBeGrabbedBy: aHand
	"The receiver is being grabbed by a hand.
	Perform necessary adjustments (if any) and return the actual morph
	that should be added to the hand.
	Answer nil to reject the drag."
	"This message is sent to the dragged morph, not to the owner.
	It is included here just for reference."

	^ self class fromColor: self color "Grab a new sibling of me"
````


The above @@@


###DROP

OK.  What happens when we drop a morph representing a value somewhere?

````Smalltalk
HandMorph>>dropMorph: aMorph event: aMouseEvent
	"Drop the given morph which was carried by the hand"
	| morphData dropEvent |
	morphData := self grabMorphDataFor: aMorph.
	dropEvent _ DropEvent new 
			setPosition: self morphPosition 
			contents: aMorph 
			hand: self
			formerOwner: (morphData at: 1)
			formerPosition: (morphData at: 2).
	owner dispatchEvent: dropEvent.
	dropEvent wasHandled ifFalse: [ aMorph rejectDropMorphEvent: dropEvent ].
	self forgetGrabMorphDataFor: aMorph.
	self mouseOverHandler processMouseOver: aMouseEvent
````


````Smalltalk
DropEvent>>dispatchWith: aMorph
	"Drop is done on the innermost target that accepts it."
	| dropped |

	"Try to get out quickly"
	(aMorph fullIncludesPixel: position)
		ifFalse: [ ^#rejected ].

	"Go looking if any of our submorphs wants it"
	aMorph submorphsDo: [ :eachChild |
		(eachChild dispatchEvent: self) == #rejected ifFalse: [
			^self ]].

	(aMorph allowsMorphDrop and: [ (aMorph rejectsEvent: self) not and: [aMorph fullIncludesPixel: position] ])
		ifTrue: [
			"Do a symmetric check if both morphs like each other"
			dropped _ self contents.
			((aMorph wantsDroppedMorph: dropped event: self)	"I want her"
				and: [dropped wantsToBeDroppedInto: aMorph])		"she wants me"
					ifTrue: [
						^ self sendEventTo: aMorph ]].
	^#rejected
````


````Smalltalk
Morph>>wantsDroppedMorph: aMorph event: evt
	"Return true if the receiver wishes to accept the given morph, 
	 which is being dropped by a hand in response to the given event. 
	Note that for a successful drop operation both parties need to agree. 
	The symmetric check is done automatically via aMorph wantsToBeDroppedInto: self.
	 Individual Morpks may override by setting the corresponding property
	 to an appropriate two argument closure."

	^self valueOfProperty: #wantsDroppedMorph:event:
		 ifPresentDo: [ :wantsMorphEvt | wantsMorphEvt value: aMorph value: evt ]
		 ifAbsent: [ true ]
````


````Smalltalk
VisualPropertyMenuItem>>wantsDroppedMorph: aMorph event: evt
	"Return true if the receiver wishes to accept the given morph, which is being dropped by a hand in response to the given event. Note that for a successful drop operation both parties need to agree. The symmetric check is done automatically via aMorph wantsToBeDroppedInto: self."

	^ self allowsValue: aMorph valueWhenDropped
````

````Smalltalk
MorphEditLens>>wantsDroppedMorph: aMorph event: evt
	"Return true if the receiver wishes to accept the given morph, which is being dropped by a hand in response to the given event. Note that for a successful drop operation both parties need to agree. The symmetric check is done automatically via aMorph wantsToBeDroppedInto: self."

	^ (aMorph hasProperty: #DropActionMorph)
	or: [(Smalltalk includesKey: #MetaProperty)
		and: [((MetaProperty metaPropsForMorph: 
					self targetMorph)
				detect: [ :metaProp | 
						metaProp accepts: 
						  aMorph valueWhenDropped] 
				ifNone: [^false]).
			^true
		]
	]
````


````Smalltalk
DropColorMorph>>wantsToBeDroppedInto: aMorph
	"Who do I wish to be dropped onto?"

	((Smalltalk includesKey: #MorphEditLens) "May not be present"
	 and: [aMorph isKindOf: (Smalltalk at: #MorphEditLens)])
		ifTrue: [ ^true ].
		
	(aMorph hasProperty: #dropAction)
		ifTrue: [ ^true ].
		
	((Smalltalk includesKey: #VisualPropertyMenuItem)
	 and: [ aMorph isKindOf: (Smalltalk at: #VisualPropertyMenuItem) ])
		ifTrue: [ ^true ].
				
	^ false 
````


````Smalltalk
DropEvent>>sendEventTo: aMorph
	"Dispatch the receiver into aMorph"

	^aMorph processDropMorph: self
````

````Smalltalk
DropColorMorph>>processDropMorph: aDropEvent
	"I have already expressed a desire for the drop. Just do it."
	
	| dropedMorph dropAction |
	dropedMorph := aDropEvent contents.
	dropAction := self valueOfProperty: #dropAction ifAbsent: [ nil ]. 
	aDropEvent wasHandled: (dropAction notNil).
	dropAction ifNotNil: [ :doIt |
		doIt value: dropedMorph value:  dropedMorph valueWhenDropped.
	 ]
````

````Smalltalk
DropColorMorph>>processDropMorph: aDropEvent
	"I have already expressed a desire for the drop. Just do it."
	
	| dropedMorph dropAction |
	dropedMorph := aDropEvent contents.
	dropAction := self valueOfProperty: #dropAction ifAbsent: [ nil ]. 
	aDropEvent wasHandled: (dropAction notNil).
	dropAction ifNotNil: [ :doIt |
		doIt value: dropedMorph value:  dropedMorph valueWhenDropped.
	 ]
````


````Smalltalk
ColorEditorPanel>>colorSwatchesBeDroppable

	{alphaSwatch. colorPane. colorSwatch.} do: [ :dropTarget | 
		dropTarget
			setProperty:  #'allowsMorphDrop' toValue: true;
			setProperty: #wantsDroppedMorph:event: 
				toValue: [ :dropMorph :evt | dropMorph valueWhenDropped isKindOf: Color] ;
			setProperty: #dropAction 
				toValue: [ :dropMorph :colorValue |
					self setColor: colorValue. 
					dropMorph showAcceptAndDeleteSelf.
				]
	].
````


````Smalltalk
SignMorph>>rejectDropMorphEvent: dropEvent
	"The receiver has been rejected.  Disappear"
	
	self showReject; hide; delete.
	self world ifNotNil: [ :w | w activeHand removeMorph: self ].

````


````Smalltalk
SignMorph>>justDroppedInto: newOwnerMorph event: anEvent 
	"This message is sent to a dropped morph 
after it has been dropped on -- 
and been accepted by -- a drop-sensitive morph"

	self showAcceptAndDeleteSelf 
````

Introspection -- looking within.
Smalltalk knows about itself and can be asked about itself.
This lets us query internals and put up a choice list.


````Smalltalk
SignMorph>>dropAction: aDropTargetMorph
	"Find accepting MetaProperties of target morph
	 and allow user to choose action."
	
	| metaPropsForMyValue myValue choices selection |
	(Smalltalk includesKey: #MetaProperty) ifFalse: [^nil ].
	
	myValue := self valueWhenDropped.
	metaPropsForMyValue := 
		(MetaProperty metaPropsForMorph:  aDropTargetMorph targetMorph)
			select: [ :metaProp | metaProp accepts: myValue ]. 
	(metaPropsForMyValue size isZero) ifTrue: [^nil ].
	
	choices := OrderedCollection with: #Cancel.
	choices addAll: (metaPropsForMyValue keys).
	
	"I am being carried by the hand.  Disappear and let user make a choice."
	self delete.
	selection := PopUpMenu withCaption: 'Choose setter' 
						chooseFrom: choices.
	(selection = 1) ifFalse: [ "1 -> Cancel" | propName setterSym metaProp |
		propName := choices at: selection.
		setterSym := (propName , ':') asSymbol.
		metaProp := metaPropsForMyValue at: propName.
		(metaProp isKindOf: MetaPropertyMultiSelect)
			ifTrue: [myValue := metaProp encodeProc value: myValue].
		aDropTargetMorph targetMorph 
			perform: setterSym
			with: myValue ;
			triggerEvent: #propertyChanged.
	].
````


````Smalltalk

````


````Smalltalk

````
