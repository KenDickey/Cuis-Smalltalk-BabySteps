'From Cuis 4.2 of 25 July 2013 [latest update: #1824] on 29 September 2013 at 8:49:51.500178 am'!
!classDefinition: #ConnectorMorph category: #FrameMorph!
BorderedRectMorph subclass: #ConnectorMorph
	instanceVariableNames: 'connectionEndPoint connection state'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FrameMorph'!
!ConnectorMorph commentStamp: '<historical>' prior: 0!
I am a connection endpoint!


!ConnectorMorph methodsFor: 'initialization' stamp: 'KenD 9/28/2013 20:36'!
initialize
	
	| arrowImage |
	super initialize.
	self morphExtent: 40@40.
	self borderWidth: 6.
	self state: #unselected.
	arrowImage := ImageMorph new 
						image: (FormCanvas arrowWithGradientOfDirection: #right).
	self addMorph: arrowImage.
	arrowImage morphPosition: (self morphExtent // 2) 
										- (arrowImage morphExtent // 2).  "center"
	! !



!ConnectorMorph methodsFor: 'private' stamp: 'KenD 9/28/2013 20:14'!
state

	^ state! !

!ConnectorMorph methodsFor: 'private' stamp: 'KenD 9/28/2013 20:18'!
state: newState

	(#(unselected selected connected) asSet includes: newState)
		ifFalse: [ Error signal: 'Cennection state must be one of ',
									'#(unselected selected connected)'
		].
	
	state := newState! !


!ConnectorMorph methodsFor: 'connection state' stamp: 'KenD 9/28/2013 20:21'!
connect: otherConnector

	connection := otherConnector.
	self borderColor: self connectedBorderColor.
	self color: self connectedColor.
	self state: #connected.! !

!ConnectorMorph methodsFor: 'connection state' stamp: 'KenD 9/28/2013 20:04'!
connectedBorderColor

	^ Color orange! !

!ConnectorMorph methodsFor: 'connection state' stamp: 'KenD 9/28/2013 20:04'!
connectedColor

	^ Color green! !

!ConnectorMorph methodsFor: 'connection state' stamp: 'KenD 9/28/2013 20:14'!
select

	self borderColor: self selectedBorderColor.
	self color: self selectedColor.
	self state: #selected.! !

!ConnectorMorph methodsFor: 'connection state' stamp: 'KenD 9/28/2013 20:03'!
selectedBorderColor

	^ Color yellow! !

!ConnectorMorph methodsFor: 'connection state' stamp: 'KenD 9/28/2013 20:04'!
selectedColor

	^ Color orange! !

!ConnectorMorph methodsFor: 'connection state' stamp: 'KenD 9/28/2013 20:03'!
unSelectedBorderColor

	^ Color black! !

!ConnectorMorph methodsFor: 'connection state' stamp: 'KenD 9/28/2013 20:03'!
unSelectedColor

	^ Color orange! !

!ConnectorMorph methodsFor: 'connection state' stamp: 'KenD 9/28/2013 20:19'!
unselect

	self borderColor: self unSelectedBorderColor.
	self color: self unSelectedColor.
	self state: #unselected.! !
