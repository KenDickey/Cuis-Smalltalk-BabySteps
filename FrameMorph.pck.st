'From Cuis 4.2 of 25 July 2013 [latest update: #2280] on 8 May 2015 at 4:29:44.948866 pm'!
'Description I am a simple frame [hollow rectangle]'!
!provides: 'FrameMorph' 1 21!
!classDefinition: #AddedCursors category: #FrameMorph!
CursorWithMask subclass: #AddedCursors
	instanceVariableNames: ''
	classVariableNames: 'ClosedHand OpenHand'
	poolDictionaries: ''
	category: 'FrameMorph'!
!classDefinition: 'AddedCursors class' category: #FrameMorph!
AddedCursors class
	instanceVariableNames: ''!


!AddedCursors commentStamp: '<historical>' prior: 0!
Additional Cursors -- see class side!

!AddedCursors class methodsFor: 'constants' stamp: 'KenD 9/23/2013 20:17'!
closedHand
"
	self closedHand show.
"
	^ ClosedHand ! !

!AddedCursors class methodsFor: 'private' stamp: 'KenD 9/22/2013 19:23'!
historicalCruft
"
	self historicalCruft.
"

	| openHand openHandMask closedHand closedHandMask openHandCursor closedHandCursor |
	openHand := Form fromFileNamed: 'handOpen2.png'.
	openHandMask  := Form fromFileNamed: 'handOpen2-mask.png'.
	closedHand  :=  Form fromFileNamed: 'handClosed2.png'.
	closedHandMask  := Form fromFileNamed: 'handClosed2-mask.png'.

	openHandCursor := (CursorWithMask derivedFrom: openHand)  setMaskForm: openHandMask.
	closedHandCursor := (CursorWithMask derivedFrom: closedHand)  setMaskForm: closedHandMask.
	
	OpenHand := openHandCursor.
	ClosedHand := closedHandCursor.
	
	^ openHandCursor! !

!AddedCursors class methodsFor: 'class initialization' stamp: 'KenD 9/22/2013 19:35'!
initClosedHand
"
	self initClosedHand.
"
	ClosedHand := ((CursorWithMask
	extent: 16@16
	depth: 1
	fromArray: #(
		2r0000000000000000
		2r0000000000000000
		2r0000000000000000
		2r0000000000000000
		2r110110110100000000000000000
		2r1001001001010000000000000000
		2r1000000000010000000000000000
		2r111000000000010000000000000000
		2r1001000000000010000000000000000
		2r1000000000000010000000000000000
		2r1000000000000010000000000000000
		2r1000000000000110000000000000000
		2r100000000001110000000000000000
		2r10000000011100000000000000000
		2r1000000011000000000000000000
		2r100000011000000000000000000)
	offset: -1@-1) setMaskForm: (Form
	extent: 16@16
	depth: 1
	fromArray: #(
		2r0000000000000000
		2r0000000000000000
		2r0000000000000000
		2r1101101101000000000000000000
		2r11111111111100000000000000000
		2r11111111111110000000000000000
		2r1111111111111110000000000000000
		2r11111111111111110000000000000000
		2r11111111111111110000000000000000
		2r11111111111111110000000000000000
		2r11111111111111110000000000000000
		2r1111111111111100000000000000000
		2r111111111111000000000000000000
		2r11111111110000000000000000000
		2r1111111110000000000000000000
		2r1111111110000000000000000000)
	offset: 0@0)).! !

!AddedCursors class methodsFor: 'class initialization' stamp: 'KenD 9/28/2013 17:26'!
initOpenHand
"
	self initOpenHand.
"

	OpenHand :=  ((CursorWithMask
	extent: 16@16
	depth: 1
	fromArray: #(
		2r0000000000000000
		2r110110110000000000000000000
		2r1001001001100000000000000000
		2r1001001001010000000000000000
		2r1001001001010000000000000000
		2r1101001001001010000000000000000
		2r1011001001001010000000000000000
		2r1001001001001010000000000000000
		2r1001000000000010000000000000000
		2r1000100000000010000000000000000
		2r1000000000000010000000000000000
		2r1000000000000110000000000000000
		2r100000000001110000000000000000
		2r10000000011100000000000000000
		2r1000000011000000000000000000
		2r100000011000000000000000000)
	offset: -1@-1) setMaskForm: (Form
	extent: 16@16
	depth: 1
	fromArray: #(
		2r1101101100000000000000000000
		2r11111111111000000000000000000
		2r11111111111100000000000000000
		2r11111111111100000000000000000
		2r11011111111111100000000000000000
		2r11111111111111110000000000000000
		2r11111111111111110000000000000000
		2r11111111111111110000000000000000
		2r11111111111111110000000000000000
		2r11111111111111110000000000000000
		2r11111111111111110000000000000000
		2r1111111111111100000000000000000
		2r111111111111000000000000000000
		2r11111111110000000000000000000
		2r1111111110000000000000000000
		2r1111111110000000000000000000)
	offset: 0@0))! !

!AddedCursors class methodsFor: 'class initialization' stamp: 'KenD 9/22/2013 17:16'!
initialize
"
	self initialize.
"
	self initOpenHand.
	self initClosedHand.! !

!AddedCursors class methodsFor: 'constants' stamp: 'KenD 9/23/2013 20:17'!
openHand
"
	self openHand show.
"

	^ OpenHand ! !
AddedCursors initialize!
