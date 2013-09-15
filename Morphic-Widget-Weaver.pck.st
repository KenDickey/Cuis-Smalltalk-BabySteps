'From Cuis 4.2 of 25 July 2013 [latest update: #1820] on 13 September 2013 at 2:04:52.544016 pm'!
'Description UI construction by widget composition.'!
!provides: 'Morphic-Widget-Weaver' 1 11!
!classDefinition: #ViewLens category: #'Morphic-Widget-Weaver'!
SystemWindow subclass: #ViewLens
	instanceVariableNames: 'viewPort propertySheet'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Widget-Weaver'!
!classDefinition: 'ViewLens class' category: #'Morphic-Widget-Weaver'!
ViewLens class
	instanceVariableNames: ''!

!classDefinition: #ViewPort category: #'Morphic-Widget-Weaver'!
BorderedRectMorph subclass: #ViewPort
	instanceVariableNames: 'selectedMorph'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Widget-Weaver'!
!classDefinition: 'ViewPort class' category: #'Morphic-Widget-Weaver'!
ViewPort class
	instanceVariableNames: ''!


!ViewLens commentStamp: '<historical>' prior: 0!
I am SystemWindow which is selected via a ViewPort window.

I can be used to edit a Morph's salient instance variables (a.k.a. properties)!

!ViewPort commentStamp: '<historical>' prior: 0!
I am a port through which to select morphs.

I must be embedded in a ViewLens window.!

!ViewLens methodsFor: 'GUI building' stamp: 'KenD 9/6/2013 17:55'!
buildMorphicWindow

	| layout propTitle |
	viewPort := ViewPort new.
	
	propTitle := StringMorph 
		contents: 'Morph Properties' 
		font: nil 
		emphasis: AbstractFont boldCode.
	propTitle color: Color black.

	propertySheet := LayoutMorph newColumn.
	propertySheet 
		color: Color grey lighter;
		addMorph: propTitle.
	
	layout := self layoutMorph.
	
	layout beRow.
	layout 
		addMorph: viewPort 
		layoutSpec: (LayoutSpec 
							proportionalWidth: 1.0 
							proportionalHeight: 1.0).
	layout 
		addMorph: propertySheet 
		layoutSpec:  (LayoutSpec 
								fixedWidth: 200 
								proportionalHeight: 1.0
		 						minorDirectionPadding: #top).

		
	! !

!ViewLens methodsFor: 'initialization' stamp: 'KenD 9/5/2013 16:10'!
defaultColor
	"See through me"

	^ Color transparent! !

!ViewLens methodsFor: 'initialization' stamp: 'KenD 9/5/2013 16:18'!
openInWorld
	"Make  transparent"
	super openInWorld.
	self color: self defaultColor ! !

!ViewLens methodsFor: 'accessing' stamp: 'KenD 9/6/2013 17:56'!
propertySheet

	^ propertySheet ! !

!ViewLens methodsFor: 'accessing' stamp: 'KenD 9/6/2013 17:56'!
selectedMorph

	^ viewPort selectedMorph! !

!ViewLens methodsFor: 'accessing' stamp: 'KenD 9/6/2013 17:56'!
viewPort

	^ viewPort ! !

!ViewPort methodsFor: 'event handling' stamp: 'KenD 9/9/2013 18:17'!
click: evt localPosition: localEventPosition
	"Select the morph under me and notify my owner of the change"

	| globalPos morphsAtPoint morphsUnderMeAtPoint morphsToIgnore |
	globalPos := localEventPosition + self morphPositionInWorld.
	morphsToIgnore := OrderedCollection new.
	morphsToIgnore
		add: self owner; "the layout morph which contains me"
		addAll: self owner submorphs; "includes me"
		add: self owner owner; "the ViewLens window"
		add: self runningWorld. "The PasteUpMorph"
"
	Transcript newLine; show: (self name , ' got #click:localPosition:'). 
	('  at: ', localEventPosition asString) print.
	('Global position: ' , globalPos asString) print.
"
	"Find if a morph is under us"
	morphsAtPoint := self runningWorld morphsAt: globalPos unlocked: true.
	"NB: #morphsAt:behind:unlocked: never finds anything"
 	morphsUnderMeAtPoint := 
		morphsAtPoint reject: [ :elt | morphsToIgnore includes: elt ].

	(morphsUnderMeAtPoint isEmpty)
		ifTrue: [ selectedMorph := nil ]  
		ifFalse: [ 
			selectedMorph := morphsUnderMeAtPoint first.
			self frameMorphsInCollection: morphsUnderMeAtPoint withColor: Color red.
			self frameMorphsInCollection: { selectedMorph } withColor: Color green.
		].

"	selectedMorph ifNotNil: [ selectedMorph addHalo ].    proof of concept"! !

!ViewPort methodsFor: 'drawing' stamp: 'KenD 9/9/2013 18:13'!
frameMorphsInCollection: morphsCollection
	"Show frames of morphs in/under me"
	
	| canvas oldClipRect |
	canvas := Display getCanvas.
	oldClipRect := canvas clipRect.
	canvas setClipRect: (self morphBoundsInWorld ).
	[morphsCollection do: [ :m | 
		canvas frameRectangle:   (m morphBoundsInWorld )
				color: Color red
				borderWidth: 4
				borderStyleSymbol: #raised. ]
	] ensure: [canvas setClipRect: oldClipRect].! !

!ViewPort methodsFor: 'drawing' stamp: 'KenD 9/9/2013 18:15'!
frameMorphsInCollection: morphsCollection withColor: aColor
	"Show frames of morphs in/under me"
	
	| canvas oldClipRect |
	canvas := Display getCanvas.
	oldClipRect := canvas clipRect.
	canvas setClipRect: (self morphBoundsInWorld ).
	[morphsCollection do: [ :m | 
		canvas frameRectangle:   (m morphBoundsInWorld )
				color: aColor
				borderWidth: 4
				borderStyleSymbol: #raised. ]
	] ensure: [canvas setClipRect: oldClipRect].! !

!ViewPort methodsFor: 'event handling' stamp: 'KenD 9/5/2013 16:31'!
handlesMouseDown: evt 
"
	Transcript newLine; show: (self name , ' got #handlesMouseDown:').  
"
	^ true! !

!ViewPort methodsFor: 'initialization' stamp: 'KenD 9/5/2013 16:30'!
initialize

	super initialize.
	self color: (Color teal alpha: 0.3).! !

!ViewPort methodsFor: 'accessing' stamp: 'KenD 9/6/2013 18:05'!
myWindow
	"I am only used within SystemWindows"

	| o |
	o := self owner.
	[o isKindOf: SystemWindow]
		whileFalse: [ o := o owner ].
		
	^ o! !

!ViewPort methodsFor: 'event handling' stamp: 'KenD 9/5/2013 16:44'!
processMouseDown: evt localPosition: localEventPosition
	"Do nothing upon mouse-down except inform the hand to watch for a 
	click; wait until an ensuing #click: message gets dispatched"

	Transcript newLine; show: (self name , ' got #processMouseDown:localPosition:').  

" Never gets clicked. Click goes to World PasteUpMorph.  "
"
	evt hand waitForClicksOrDrag: self
				event: evt clkSel: #click:localPosition: dblClkSel:nil.
"
	"Handle click ourselves"
	evt wasHandled: true.
	self click: evt localPosition: localEventPosition
	! !

!ViewPort methodsFor: 'accessing' stamp: 'KenD 9/6/2013 17:57'!
selectedMorph

	^ selectedMorph! !
