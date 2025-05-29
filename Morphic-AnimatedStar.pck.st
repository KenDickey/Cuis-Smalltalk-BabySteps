'From Cuis7.3 [latest update: #7236] on 29 May 2025 at 8:24:22 am'!
'Description Like a Sample01Star, but with color, motion, spawning.
See class comment.'!
!provides: 'Morphic-AnimatedStar' 1 0!
!requires: 'Cuis-Base' 73 7236 nil!
SystemOrganization addCategory: #'Morphic-AnimatedStar'!


!classDefinition: #AnimatedStar category: #'Morphic-AnimatedStar'!
Sample01Star subclass: #AnimatedStar
	instanceVariableNames: 'color counter maxCount myDelta isTerminating'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-AnimatedStar'!
!classDefinition: 'AnimatedStar class' category: #'Morphic-AnimatedStar'!
AnimatedStar class
	instanceVariableNames: ''!


!AnimatedStar commentStamp: '<historical>' prior: 0!
I make colored 5 point stars which bounce off walls to change color and spawn other stars.

After maxCount bounces, my bubble pops (circular morph + self delete),

  AnimatedStar new.!

!AnimatedStar methodsFor: 'accessing' stamp: 'KenD 5/28/2025 12:47:08'!
color

	^ color! !

!AnimatedStar methodsFor: 'accessing' stamp: 'KenD 5/28/2025 12:46:52'!
color: aColor

	color := aColor! !

!AnimatedStar methodsFor: 'accessing' stamp: 'KenD 5/28/2025 13:06:19'!
maxCount

	^ maxCount ! !

!AnimatedStar methodsFor: 'accessing' stamp: 'KenD 5/28/2025 12:49:32'!
maxCount: aPositiveInteger

	maxCount := aPositiveInteger! !

!AnimatedStar methodsFor: 'accessing' stamp: 'KenD 5/28/2025 14:05:06'!
morphExtent

	^200 @ 200! !

!AnimatedStar methodsFor: 'accessing' stamp: 'KenD 5/29/2025 04:04:01'!
myDelta: aPoint

	myDelta := aPoint
! !

!AnimatedStar methodsFor: 'accessing' stamp: 'KenD 5/29/2025 08:12:34'!
numLiveInstances

	"Answer number of live instances of me.
	 GC works, or could count instances with non-nil owners.
	 GC is fast enough for this usage."

	Smalltalk garbageCollect. "Remove dead instances"
	^ self class allInstances size! !

!AnimatedStar methodsFor: 'accessing' stamp: 'KenD 5/29/2025 08:19:24'!
radius

	"Since a PlacedMorph has no extent, selecting
	 a Sample01Star morph shows my scale.  
	 I mostly fit within a circle of radius 100.
	 You can change my scale, but then must  
	 adjust my radius value as well."

	^100! !

!AnimatedStar methodsFor: 'accessing' stamp: 'KenD 5/28/2025 13:05:44'!
stepTime

	^ 60 "millisecondsToNextStep"! !

!AnimatedStar methodsFor: 'accessing' stamp: 'KenD 5/29/2025 03:23:28'!
strokeWidth

	^12! !

!AnimatedStar methodsFor: 'initialization' stamp: 'KenD 5/29/2025 03:18:04'!
initialize

	super initialize.
	color := Color random.
	counter := 0.
	maxCount := self class defaultMaxCount.
	myDelta := 20@30. "point for vector"
	isTerminating := false.
	self openInWorld; startStepping; yourself
	! !

!AnimatedStar methodsFor: 'updating' stamp: 'KenD 5/29/2025 08:14:09'!
animateAStep

	"Continue to move in direction or bounce off edge of containing owner"
	| ownerExtent hitWall otherDelta | 
	
	hitWall := false.
	self morphPosition: self morphPosition + myDelta.
	ownerExtent := self owner morphExtent.
	(self morphPosition x <= self radius) "Hit left wall"
		ifTrue: [ 
			hitWall := true.
			self morphPosition: self radius @ (self morphPosition y). 
			myDelta := myDelta x negated @ myDelta y.
			otherDelta := myDelta x @ myDelta y negated.
	].
	(self morphPosition y <= self radius) "Hit top wall"
		ifTrue: [ 
			hitWall := true.
			self morphPosition: (self morphPosition x) @ self radius. 
			myDelta := myDelta x  @  myDelta y negated.
			otherDelta := myDelta x negated @ myDelta y.
	].
	((self morphPosition x + self radius) >= ownerExtent x) "Hit right wall"
		ifTrue: [ 
			hitWall := true.
			self morphPosition: (ownerExtent x - self morphExtent x) 
									@ (self morphPosition y). 
			myDelta := myDelta x negated @ myDelta y.
			otherDelta := myDelta x @ myDelta y negated.
	].
	((self morphPosition y + self radius) >= ownerExtent y) "Hit bottom wall"
		ifTrue: [ 
			hitWall := true.
			self morphPosition: (self morphPosition x) 
									@ (ownerExtent y - self  morphExtent y). 
			myDelta := myDelta x  @ myDelta y negated.
			otherDelta := myDelta x negated @ myDelta y.
	].

	hitWall ifTrue: [ 
		counter := 1 + counter. "How many tims I have hit a wall"
		color := Color random.
		"clone self at different direction"	
		(self numLiveInstances < 12)	"Don't spawn exponentially"
		ifTrue: [ | myClone |
			myClone := self copy.
			myClone myDelta: otherDelta;
					color: Color random;
					openInWorld; 
					startStepping.
		]
	].
! !

!AnimatedStar methodsFor: 'updating' stamp: 'KenD 5/29/2025 03:55:09'!
startStepping

	| myWorld |
	myWorld := self runningWorld.
	myWorld ifNotNil: [
		myWorld startStepping: self 
		   		 at: Time localMillisecondClock 
		  		 selector: #step 
		  		 stepTime: self stepTime.
	]! !

!AnimatedStar methodsFor: 'updating' stamp: 'KenD 5/29/2025 03:55:52'!
step

	"If lifetime over, stop stepping and delete self, else animate a step"
	(counter < maxCount) 
		ifTrue:  [ self animateAStep ]
	 	ifFalse: [ self terminate ]! !

!AnimatedStar methodsFor: 'updating' stamp: 'KenD 5/29/2025 08:04:44'!
terminate

	isTerminating := true. "Visual 'bang'"
	self stopStepping; redrawNeeded.
	[(Delay forMilliseconds: 300) wait.
	  self delete] fork.! !

!AnimatedStar methodsFor: 'drawing' stamp: 'KenD 5/29/2025 07:58:06'!
drawCircle: aCanvas
 
	aCanvas 
		strokeWidth: self strokeWidth 
		color: color 
		fillColor: (color alpha: 0.3) do: [
			aCanvas circleCenter: 0@0 radius: self radius
	]! !

!AnimatedStar methodsFor: 'drawing' stamp: 'KenD 5/29/2025 03:43:09'!
drawOn: aCanvas

	isTerminating 
		ifTrue:  [ self drawCircle: aCanvas ]
	 	ifFalse: [ self drawStar:   aCanvas ]! !

!AnimatedStar methodsFor: 'drawing' stamp: 'KenD 5/29/2025 03:24:15'!
drawStar: aCanvas
	"A 5 point star -- with local color"

	aCanvas strokeWidth: self strokeWidth color: color do: [
		aCanvas
				moveTo: `(Point rho: 100 theta: 90 degreesToRadians)`;
				lineTo: `(Point rho: 100 theta: (360/5*2+90) degreesToRadians)`;
				lineTo: `(Point rho: 100 theta: (360/5*4+90) degreesToRadians)`;
				lineTo: `(Point rho: 100 theta: (360/5*6+90) degreesToRadians)`;
				lineTo: `(Point rho: 100 theta: (360/5*8+90) degreesToRadians)`;
				lineTo: `(Point rho: 100 theta: 90 degreesToRadians)`.
		].! !

!AnimatedStar class methodsFor: 'accessing' stamp: 'KenD 5/29/2025 03:50:40'!
defaultMaxCount

	^ 10  "Counter reaches this number and instance destructs."! !

!AnimatedStar class methodsFor: 'new-morph participation' stamp: 'KenD 5/28/2025 14:33:31'!
includeInNewMorphMenu
	"Return true for all classes that can be instantiated from the menu"
	^ false "not animating hand morph"! !
