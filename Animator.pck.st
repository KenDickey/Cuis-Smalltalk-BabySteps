'From Cuis 4.2 of 25 July 2013 [latest update: #1832] on 27 September 2013 at 3:26:42.11968 pm'!
'Description Simple animation for random Morph instances'!
!provides: 'Animator' 1 8!
!classDefinition: #Animator category: #Animator!
Object subclass: #Animator
	instanceVariableNames: 'actor action stepTime'
	classVariableNames: 'Animators'
	poolDictionaries: ''
	category: 'Animator'!
!classDefinition: 'Animator class' category: #Animator!
Animator class
	instanceVariableNames: ''!


!Animator commentStamp: '<historical>' prior: 0!
My inatances animate individual Morphs without subclassing

-- see examples in class siide!

!Animator methodsFor: 'accessing' stamp: 'KenD 9/20/2013 04:53'!
action

	^ action! !

!Animator methodsFor: 'accessing' stamp: 'KenD 9/20/2013 04:53'!
action: aOneArgClosure

	action := aOneArgClosure! !

!Animator methodsFor: 'accessing' stamp: 'KenD 9/20/2013 04:51'!
actor

	^ actor! !

!Animator methodsFor: 'accessing' stamp: 'KenD 9/20/2013 04:52'!
actor: aMorph

	actor := aMorph! !

!Animator methodsFor: 'initialize-release' stamp: 'KenD 9/20/2013 05:01'!
actor: aMorph action: aOneArgClosure stepTime: milllisecondsBetweenSteps

	self actor: aMorph;
	      action: aOneArgClosure;
	      stepTime: milllisecondsBetweenSteps;
	      yourself! !

!Animator methodsFor: 'stepping' stamp: 'KenD 9/20/2013 05:27'!
shouldGetStepsFrom: aWorld

	^ true! !

!Animator methodsFor: 'stepping' stamp: 'KenD 9/20/2013 05:26'!
startStepping
	"Start stepping the receiver"
	| w |
	w _ self runningWorld.
	w ifNotNil: [
		  w startStepping: self 
		   	at: Time localMillisecondClock 
			selector: #step 
			arguments: nil 
			stepTime: self stepTime]! !

!Animator methodsFor: 'stepping' stamp: 'KenD 9/20/2013 04:55'!
step

	self action value: self actor ! !

!Animator methodsFor: 'accessing' stamp: 'KenD 9/20/2013 04:53'!
stepTime

	^ stepTime! !

!Animator methodsFor: 'accessing' stamp: 'KenD 9/20/2013 04:54'!
stepTime: millisecondsToNextStep

	stepTime := millisecondsToNextStep! !

!Animator methodsFor: 'stepping' stamp: 'KenD 9/20/2013 05:23'!
stopStepping
	"Stop getting sent the 'step' message."

	| w |
	w _ self runningWorld.
	w ifNotNil: [w stopStepping: self].
! !

!Animator methodsFor: 'as yet unclassified'!
world
	^ self runningWorld.! !

!Animator class methodsFor: 'instance creation' stamp: 'KenD 9/20/2013 05:01'!
actor: aMorph action: aOneArgClosure

	^ self new actor: aMorph action: aOneArgClosure stepTime: self defaultStepTime ! !

!Animator class methodsFor: 'instance creation' stamp: 'KenD 9/20/2013 05:02'!
actor: aMorph action: aOneArgClosure stepTime: milllisecondsBetweenSteps

	^ self new actor: aMorph action: aOneArgClosure stepTime: milllisecondsBetweenSteps! !

!Animator class methodsFor: 'actions' stamp: 'KenD 9/20/2013 09:10'!
blinkAction
	"blink"
	
	| toggle |
	toggle := true.
	^ [ :aMorph | 
			toggle := toggle not.
			toggle ifTrue:  [ aMorph hide]
					ifFalse: [ aMorph show ]
	  ]! !

!Animator class methodsFor: 'actions' stamp: 'KenD 9/27/2013 15:22'!
cycleColors: aColorCollection forSelector: collorSetter
	"Follow a path"
	
	| colorIndex |
	colorIndex := 0.
	^ [ :aMorph | 
			colorIndex := colorIndex + 1.
			colorIndex > aColorCollection size ifTrue:  [ colorIndex := 1 ].
			aMorph perform: collorSetter with: (aColorCollection at: colorIndex).
			aMorph redrawNeeded.
	  ]! !

!Animator class methodsFor: 'accessing' stamp: 'KenD 9/20/2013 04:57'!
defaultStepTime
	"Twice a second"

	^ 500 "milliSeconds"! !

!Animator class methodsFor: 'examples' stamp: 'KenD 9/27/2013 15:23'!
example1    "Blinking"
"
	self example1.
"
	| morph animator |
	morph := ImageMorph initializedInstance openInWorld.
	morph morphPosition: 200 @ 100.
	animator := self actor: morph 
						 action: self blinkAction.
	animator startStepping.
	^ animator ! !

!Animator class methodsFor: 'examples' stamp: 'KenD 9/27/2013 15:24'!
example2    "Grow &Shrink"
"
	self example2.
	
	Animator stopStepping.
"
	| morph animator |
	morph := BorderedRectMorph initializedInstance openInWorld.
	morph morphPosition: 200 @ 100.
	animator := self actor: morph 
						 action: (self growShrinkAction: 20 numSteps: 6)
						 stepTime: 100.
	animator startStepping.
	^ animator ! !

!Animator class methodsFor: 'examples' stamp: 'KenD 9/27/2013 15:24'!
example3    "Follow a path, repeatedly"
"
	self example3.
	
	Animator stopStepping.
"
	
	| morph animator |
	morph := ImageMorph initializedInstance openInWorld.
	animator := self actor: morph 
						 action: (self followPathAction: 
			{ 20@20. 40@26. 80@30. 90@40. 90@80. 70@100.  40@90.  30@60. 34@40. } )
						 stepTime: 100.
	animator startStepping.
	^ animator ! !

!Animator class methodsFor: 'examples' stamp: 'KenD 9/27/2013 15:24'!
example4    "Bounces off walls of container"
"
	self example4.
	
	Animator stopStepping.
"
	
	| morph animator |
	morph := EllipseMorph initializedInstance openInWorld.
	animator := self actor: morph 
						 action: (self simpleMoveBounceAction: 20@30 )
						 stepTime: 60.
	animator startStepping.
	^ animator ! !

!Animator class methodsFor: 'examples' stamp: 'KenD 9/27/2013 15:25'!
example5  "Compose actions:  grow&shring + path"
"
	self example5.  
	
	Animator stopStepping.
"
	| morph actions animator |
	morph := BorderedRectMorph initializedInstance.
	morph morphPosition: 120@120;
	 		 openInWorld.
	actions := { 
	    self growShrinkAction: 20 numSteps: 6.
	    self followPathAction: 
			{ 120@120. 140@126. 180@130. 
			   190@140. 190@180. 170@200.  140@190.  130@160. 134@140. } .
			}.
	animator := self actor: morph 
			  			 action: [ : someMorph | actions do: [ :action | action value: someMorph ] ]
						stepTime: 200.
	animator startStepping.
	^ animator ! !

!Animator class methodsFor: 'examples' stamp: 'KenD 9/27/2013 15:25'!
example6  "Compose actions -- alternative:  grow&shring + path"
"
	self example6.  
	
	Animator stopStepping.
"
	| morph originalAction newAction animator |
	morph := EllipseMorph initializedInstance.
	morph morphPosition: 120@120;
	 		 openInWorld.
			
	animator := self actor: morph 
			  			 action: (self growShrinkAction: 20 numSteps: 6)
						 stepTime: 200.
	"compose actions"
	originalAction := animator action.
	newAction := self followPathAction: 
			{ 120@120. 140@126. 180@130. 
			   190@140. 190@180. 170@200.  140@190.  130@160. 134@140. } .
	"Update with composed action"
	animator action: [ :m | originalAction value: m. newAction value: m ].
	
	animator startStepping.
	^ animator ! !

!Animator class methodsFor: 'examples' stamp: 'KenD 9/27/2013 15:23'!
example7  "Color Cycling"
"
	self example7.  
"
	| morph colors animator |
	morph := BorderedRectMorph initializedInstance.
	morph borderWidth: 4;
		      morphPosition: 100@200.
	colors := { Color green. Color brightGreen.}.
	animator :=  
		Animator actor: morph 
					   action: (Animator cycleColors: colors 
											  forSelector: #borderColor:)
					   stepTime: 300.
	morph openInWorld.
	animator startStepping.
	^ animator ! !

!Animator class methodsFor: 'actions' stamp: 'KenD 9/20/2013 11:53'!
followPathAction: aPointCollection
	"Follow a path"
	
	| pathIndex |
	pathIndex := 0.
	^ [ :aMorph | 
			pathIndex := pathIndex + 1.
			pathIndex > aPointCollection size ifTrue:  [ pathIndex := 1 ].
			aMorph morphPosition: (aPointCollection at: pathIndex).
			aMorph redrawNeeded.
	  ]! !

!Animator class methodsFor: 'actions' stamp: 'KenD 9/20/2013 11:58'!
growShrinkAction: growSizeinPixels numSteps: numSteps
	"grow then shrink"
	
	| count isGrowing delta  |
	count := 0.
	isGrowing := true.
	growSizeinPixels even  "Want even number of pixels for centering"
		ifTrue: [ delta := growSizeinPixels ]
		ifFalse: [ delta := growSizeinPixels + 1 ].
	^ [ :aMorph | 
			isGrowing ifTrue:  [
				count := count + 1.
				aMorph morphExtent: aMorph morphExtent + delta.
				aMorph morphPosition: aMorph morphPosition - (delta / 2). "recenter"
				count >= numSteps ifTrue: [ isGrowing := false ].
			]
			ifFalse: [
				count := count - 1.
				aMorph morphExtent: aMorph morphExtent - delta.
				aMorph morphPosition: aMorph morphPosition + (delta / 2). "recenter"
				count < 1 ifTrue: [ isGrowing := true ].
			]
	  ]! !

!Animator class methodsFor: 'stepping' stamp: 'KenD 9/20/2013 15:57'!
restartStepping
	"Start all my instances"

	Smalltalk garbageCollectMost. "Clean out stale instances"
	self allInstancesDo: [ :a | a startStepping ].! !

!Animator class methodsFor: 'actions' stamp: 'KenD 9/20/2013 15:26'!
simpleMoveBounceAction: aPoint
	"Move around and vector off container edges"
	
	| ownerExtent deltaPoint |
	deltaPoint := aPoint.
	
	^ [ :aMorph |
		aMorph morphPosition: aMorph morphPosition + deltaPoint.
		ownerExtent := aMorph owner morphExtent.
		(aMorph morphPosition x <= 0) "Hit left wall"
			ifTrue: [ 
				aMorph morphPosition: 0 @ (aMorph morphPosition y). 
				deltaPoint := deltaPoint x negated @ deltaPoint y 
		].
		(aMorph morphPosition y <= 0) "Hit top wall"
			ifTrue: [ 
				aMorph morphPosition: (aMorph morphPosition x) @ 0. 
				deltaPoint := deltaPoint x  @  deltaPoint y negated.
		].
		((aMorph morphPosition x + aMorph morphExtent x) >= ownerExtent x) "Hit right wall"
			ifTrue: [ 
				aMorph morphPosition: (ownerExtent x - aMorph morphExtent x) 
										@ (aMorph morphPosition y). 
				deltaPoint := deltaPoint x negated @ deltaPoint y 
		].
		((aMorph morphPosition y + aMorph morphExtent y) >= ownerExtent y) "Hit bottom wall"
			ifTrue: [ 
				aMorph morphPosition: (aMorph morphPosition x) 
										@ (ownerExtent y - aMorph  morphExtent y). 
				deltaPoint := deltaPoint x  @ deltaPoint y negated.
		].
	]
! !

!Animator class methodsFor: 'stepping' stamp: 'KenD 9/20/2013 12:04'!
stopStepping
	"Stop all my instances"

	self allInstancesDo: [ :a | a stopStepping ].! !
