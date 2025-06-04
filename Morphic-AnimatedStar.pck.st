'From Cuis7.3 [latest update: #7256] on 31 May 2025 at 2:45:38 pm'!
'Description Subclass of Sample01Star with color and step-based animation.'!
!provides: 'Morphic-AnimatedStar' 1 1!
!requires: 'Cuis-Base' 73 7256 nil!
SystemOrganization addCategory: #'Morphic-AnimatedStar'!


!classDefinition: #AnimatedStar category: #'Morphic-AnimatedStar'!
Sample01Star subclass: #AnimatedStar
	instanceVariableNames: 'color bounceCount isTerminating myDelta'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-AnimatedStar'!
!classDefinition: 'AnimatedStar class' category: #'Morphic-AnimatedStar'!
AnimatedStar class
	instanceVariableNames: ''!


!AnimatedStar commentStamp: '<historical>' prior: 0!
I make colored 5 point stars which bounce off walls to change color.

After maxCount bounces, my bubble pops (circular morph + self delete),

Usage:
   AnimatedStar new openInWorld startStepping.
!

!AnimatedStar methodsFor: 'initialization' stamp: 'KenD 5/31/2025 12:40:41'!
initialize

	super initialize.
	color := Color random.
	myDelta := 20@30. "point for vector"
	bounceCount := 0.
	isTerminating := false.
	! !

!AnimatedStar methodsFor: 'accessing' stamp: 'KenD 5/31/2025 13:19:29'!
color: aColor

	color := aColor! !

!AnimatedStar methodsFor: 'accessing' stamp: 'KenD 5/31/2025 12:49:26'!
maxBounce

	^ 10  "bounce off wall N times"! !

!AnimatedStar methodsFor: 'accessing' stamp: 'KenD 5/31/2025 13:11:33'!
myDelta: aPoint

	myDelta := aPoint ! !

!AnimatedStar methodsFor: 'accessing' stamp: 'KenD 5/31/2025 13:22:09'!
numLiveInstances

	"Answer number of live instances of me.
	 GC is fast enough for this usage."
	
	Smalltalk garbageCollect. "Remove dead instances"
	^ self class allInstances size


! !

!AnimatedStar methodsFor: 'accessing' stamp: 'KenD 5/29/2025 12:34:56'!
radius

	"Since a PlacedMorph has no extent, selecting
	 am AnimatedStar morph shows my scale.  
	 I mostly fit within a circle of radius 100.
	 You can change my scale, but then must  
	 adjust my radius value as well."

	^100! !

!AnimatedStar methodsFor: 'accessing' stamp: 'KenD 5/29/2025 11:56:17'!
stepTime

	^ 60 "millisecondsToNextStep"! !

!AnimatedStar methodsFor: 'accessing' stamp: 'KenD 5/29/2025 11:50:17'!
strokeWidth

	^ 12! !

!AnimatedStar methodsFor: 'drawing' stamp: 'KenD 5/31/2025 12:43:47'!
drawCircle: aCanvas
 
	aCanvas 
		strokeWidth: self strokeWidth 
		color: color 
		fillColor: (color alpha: 0.3) do: [
			aCanvas circleCenter: 0@0 radius: self radius
	]! !

!AnimatedStar methodsFor: 'drawing' stamp: 'KenD 5/31/2025 12:44:58'!
drawOn: aCanvas

	isTerminating 
		ifTrue:  [ self drawCircle: aCanvas ]
	 	ifFalse: [ self drawStarOn:   aCanvas ]! !

!AnimatedStar methodsFor: 'drawing' stamp: 'KenD 5/31/2025 12:42:40'!
drawStarOn: aCanvas
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

!AnimatedStar methodsFor: 'updating' stamp: 'KenD 5/31/2025 13:20:29'!
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
			self morphPosition: (ownerExtent x - self radius) 
									@ (self morphPosition y). 
			myDelta := myDelta x negated @ myDelta y.
			otherDelta := myDelta x @ myDelta y negated.
	].
	((self morphPosition y + self radius) >= ownerExtent y) "Hit bottom wall"
		ifTrue: [ 
			hitWall := true.
			self morphPosition: (self morphPosition x) 
									@ (ownerExtent y - self  radius). 
			myDelta := myDelta x  @ myDelta y negated.
			otherDelta := myDelta x negated @ myDelta y.
	].

	hitWall ifTrue: [ 
		color := Color random.
		bounceCount := 1 + bounceCount . "How many times I hit a wall"
		"clone self with different direction"	
		(self numLiveInstances < 10)	"Don't spawn exponentially"
		ifTrue: [ | myClone |
			myClone := self copy.
			myClone myDelta: otherDelta;
					color: Color random;
					openInWorld; 
					startStepping.
		]
	].


! !

!AnimatedStar methodsFor: 'updating' stamp: 'KenD 5/31/2025 12:58:23'!
startStepping

	| myWorld |
	myWorld := self runningWorld.
	myWorld ifNotNil: [
		myWorld startStepping: self 
		   		 at: Time localMillisecondClock 
		  		 selector: #step 
		  		 stepTime: self stepTime.
	]! !

!AnimatedStar methodsFor: 'updating' stamp: 'KenD 5/31/2025 12:47:54'!
step

	"If lifetime over, stop stepping and delete self, else animate a step"
	(bounceCount < self maxBounce) 
		ifTrue:  [ self animateAStep ]
	 	ifFalse: [ self terminate ]! !

!AnimatedStar methodsFor: 'updating' stamp: 'KenD 5/31/2025 12:50:53'!
terminate

	isTerminating := true. "Visual 'bang'"
	self stopStepping; redrawNeeded.
	[(Delay forMilliseconds: 300) wait.
	  self delete] fork.! !

!AnimatedStar methodsFor: 'menus' stamp: 'KenD 5/31/2025 12:28:59'!
addCustomMenuItems: aCustomMenu hand: aHandMorph
	"Add morph-specific items to the given menu which was invoked by the given hand.  This method provides is invoked both from the halo-menu and from the control-menu regimes."

	super addCustomMenuItems: aCustomMenu hand: aHandMorph.
	aCustomMenu 
		"addLine;"
		add: 'start stepping' action: #startStepping;
		add: 'stop stepping' action: #stopStepping! !
