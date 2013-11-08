'From Cuis 4.2 of 25 July 2013 [latest update: #1862] on 6 November 2013 at 8:56:22.200147 pm'!
'Description Please enter a description for this package'!
!provides: 'Morphic-Views' 1 12!
!classDefinition: #ViewOfMorph category: #'Morphic-Views'!
ImageMorph subclass: #ViewOfMorph
	instanceVariableNames: 'morph viewExtent'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Views'!
!classDefinition: 'ViewOfMorph class' category: #'Morphic-Views'!
ViewOfMorph class
	instanceVariableNames: ''!


!ViewOfMorph commentStamp: '<historical>' prior: 0!
I am a view onto a #morph rendered into a form of extent #viewExtent.!

!ViewOfMorph methodsFor: 'accessing' stamp: 'KenD 11/6/2013 14:55'!
extentForView

	^ viewExtent ! !

!ViewOfMorph methodsFor: 'geometry' stamp: 'KenD 11/6/2013 18:30'!
extentWithSameAspect
	"Answer an extent which maintains the original aspect ratio but remains within my viewExtent.
	This is the point where a line from 0@0 to morphForView extent passes through my bottom or right sides "
	
	|  origExtent myExtent origTheta myTheta myX myY |
	origExtent := self morphForView morphExtent.
	myExtent := self extentForView.
	origTheta := origExtent theta.
	myTheta := myExtent theta.

	(myTheta = origTheta) ifTrue:  [ ^ self extentForView ].
	myX := myExtent x.
	myY := myExtent y.
	(myTheta < origTheta) 
		ifTrue: "line intersects bottom" [ ^ (((Float pi / 2 - origTheta) tan * myY) rounded) @ myY  ]
		ifFalse: "line intersects right" [ ^ myX @ (myX * (origTheta tan)) rounded ]! !

!ViewOfMorph methodsFor: 'initialization' stamp: 'KenD 11/6/2013 20:14'!
initialize
	"This default is typically not what you want.  
	Use  ViewOfMorph class>>morph:viewExtent:"

	super initialize.
	self morph: ImageMorph initializedInstance
		  viewExtent: 200@200! !

!ViewOfMorph methodsFor: 'initialization' stamp: 'KenD 11/6/2013 14:56'!
morph: aMorph viewExtent: aPoint

	morph := aMorph.
	viewExtent := aPoint.
	self refreshView! !

!ViewOfMorph methodsFor: 'accessing' stamp: 'KenD 11/6/2013 14:54'!
morphForView

	^ morph! !

!ViewOfMorph methodsFor: 'caching' stamp: 'KenD 11/6/2013 20:39'!
refreshView
	"Update my view, a thumbnail"
	
	| myMorph imageForm |
	myMorph := self morphForView.
	self setBalloonText: 
		((myMorph respondsTo: #label) 
			ifTrue: [ myMorph label ] 
			ifFalse: [ myMorph class name ]).
	
	"Copy the morph"
	imageForm := myMorph imageForm: 32.
	
	"Scale the result"
	self image: (imageForm magnifyTo: self extentWithSameAspect).
	self redrawNeeded.
	! !

!ViewOfMorph class methodsFor: 'examples' stamp: 'KenD 11/6/2013 19:57'!
example1
"
	self example1.
"
	(self morph: (ImageMorph initializedInstance) viewExtent: 200@200) openInWorld.
! !

!ViewOfMorph class methodsFor: 'instance creation' stamp: 'KenD 11/6/2013 14:55'!
morph: aMorph viewExtent: aPoint

	^ self new morph: aMorph viewExtent: aPoint! !
