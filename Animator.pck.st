'From Cuis 4.2 of 25 July 2013 [latest update: #2464] on 20 August 2015 at 5:18:18.972991 pm'!
'Description Simple animation for random Morph instances'!
!provides: 'Animator' 1 16!
!requires: 'Cuis-Base' 42 2198 nil!
!classDefinition: #Animator category: #Animator!
Object subclass: #Animator
	instanceVariableNames: 'actor action stepTime doneProc stepping'
	classVariableNames: 'Animators'
	poolDictionaries: ''
	category: 'Animator'!
!classDefinition: 'Animator class' category: #Animator!
Animator class
	instanceVariableNames: ''!


!Animator commentStamp: '<historical>' prior: 0!
My instances animate individual Morphs without subclassing via stepping.
This means animations are asynchronous/non-blocking.

actor -- the morph acted upon
action -- a one argument closure which gets the actor morph as an argument
stepTime -- the step time increment
doneProc -- a one arg closure which answers false if animation is to continue

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

!Animator methodsFor: 'initialize-release' stamp: 'KenD 2/27/2015 15:07'!
actor: aMorph action: aOneArgClosure stepTime: milllisecondsBetweenSteps

	^self actor: aMorph
	       action: aOneArgClosure
	       stepTime: milllisecondsBetweenSteps
	       doneProc: [ :iaMorph | false ]  "never done -> loops continuously"! !

!Animator methodsFor: 'initialize-release' stamp: 'KenD 2/27/2015 15:22'!
actor: aMorph action: oneArgClosure stepTime: milllisecondsBetweenSteps doneProc: predicateClosure

	self actor: aMorph;
	      action: oneArgClosure;
	      stepTime: milllisecondsBetweenSteps;
		 doneProc: predicateClosure;
	      yourself! !

!Animator methodsFor: 'accessing' stamp: 'KenD 2/27/2015 14:45'!
doneProc

	^doneProc! !

!Animator methodsFor: 'accessing' stamp: 'KenD 2/27/2015 14:45'!
doneProc: aOneArgClosure

	doneProc := aOneArgClosure! !

!Animator methodsFor: 'stepping' stamp: 'jmv 5/14/2015 17:32'!
isStepping
	stepping  ifNil: [stepping _ false ].
	^stepping ! !

!Animator methodsFor: 'stepping' stamp: 'KenD 9/20/2013 05:27'!
shouldGetStepsFrom: aWorld

	^ true! !

!Animator methodsFor: 'stepping' stamp: 'jmv 5/14/2015 17:32'!
startStepping
	"Start stepping the receiver"
	
	| w |
	w _ self runningWorld.
	w ifNotNil: [
		  w startStepping: self 
		   	at: Time localMillisecondClock 
			selector: #step 
			stepTime: self stepTime.
		stepping _ true].
		! !

!Animator methodsFor: 'stepping' stamp: 'KenD 2/27/2015 14:50'!
step

	self action value: self actor.
	(self doneProc value: self actor)
		ifTrue: [self stopStepping].! !

!Animator methodsFor: 'accessing' stamp: 'KenD 9/20/2013 04:53'!
stepTime

	^ stepTime! !

!Animator methodsFor: 'accessing' stamp: 'KenD 9/20/2013 04:54'!
stepTime: millisecondsToNextStep

	stepTime := millisecondsToNextStep! !

!Animator methodsFor: 'stepping' stamp: 'jmv 5/14/2015 17:31'!
stopStepping
	"Stop getting sent the 'step' message."

	| w |
	w _ self runningWorld.
	w ifNotNil: [w stopSteppingMorph: self].
	stepping _ false! !

!Animator methodsFor: 'accessing' stamp: 'KenD 8/20/2015 17:18'!
world
	"I am not directly associated with any particular world"
	
	^ nil ! !

!Animator class methodsFor: 'instance creation' stamp: 'KenD 9/20/2013 05:01'!
actor: aMorph action: aOneArgClosure

	^ self new actor: aMorph action: aOneArgClosure stepTime: self defaultStepTime ! !

!Animator class methodsFor: 'instance creation' stamp: 'KenD 2/27/2015 15:25'!
actor: aMorph action: aOneArgClosure stepTime: milllisecondsBetweenSteps

	^ self new actor: aMorph action: aOneArgClosure stepTime: milllisecondsBetweenSteps doneProc: self alwaysFalse! !

!Animator class methodsFor: 'instance creation' stamp: 'KenD 2/27/2015 15:23'!
actor: aMorph action: aOneArgClosure stepTime: milllisecondsBetweenSteps doneProc: predicateClosure

	^ self new actor: aMorph action: aOneArgClosure stepTime: milllisecondsBetweenSteps doneProc: predicateClosure! !

!Animator class methodsFor: 'doneTestProc' stamp: 'KenD 2/27/2015 15:24'!
alwaysFalse
	"Answer a closure which takes a morph and always answers false.
	 Used for continuous loop animations."
	
	^ [ :aMorph | false ]! !

!Animator class methodsFor: 'actionProc' stamp: 'KenD 2/27/2015 15:05'!
blinkAction
	"Answers a closure which takes a morph and makes it blink
	 by hiding ans showing it."
	
	| toggle |
	toggle := true.
	^ [ :aMorph | 
			toggle := toggle not.
			toggle ifTrue:  [ aMorph hide]
					ifFalse: [ aMorph show ]
	  ]! !

!Animator class methodsFor: 'examples' stamp: 'KenD 5/13/2015 14:08'!
blinkingExample    "Blinking"
"
	self blinkingExample.
	
	Animator stopStepping.
"
	| morph animator |
	morph := ImageMorph initializedInstance openInWorld.
	morph morphPosition: 200 @ 100.
	animator := Animator actor: morph 
						 action: self blinkAction.
	animator startStepping.
	^ animator ! !

!Animator class methodsFor: 'examples' stamp: 'KenD 5/13/2015 14:08'!
bouncingBallExample    "Bounces off walls of container"
"
	self bouncingBallExample.
	
	Animator stopStepping.
"
	
	| morph animator |
	morph := EllipseMorph initializedInstance openInWorld.
	animator := Animator
						 actor: morph 
						 action: (Animator simpleMoveBounceAction: 20@30 )
						 stepTime: 60.
	animator startStepping.
	^ animator ! !

!Animator class methodsFor: 'examples' stamp: 'KenD 2/27/2015 15:14'!
colorCyclingExample  "Color Cycling"
"
	self colorCyclingExample.  
"
	| morph colors animator |
	morph := BorderedRectMorph initializedInstance.
	morph borderWidth: 6;
		      morphPosition: 100@200.
	colors := { Color green. Color lightGreen. Color brightGreen. Color forestGreen.  }.
	animator :=  
		Animator actor: morph 
					   action: (Animator cycleColors: colors 
											  forSelector: #borderColor:)
					   stepTime: 300.
	morph openInWorld.
	animator startStepping.
	^ animator ! !

!Animator class methodsFor: 'examples' stamp: 'KenD 2/26/2015 14:50'!
composedActionExample1  "Compose actions:  grow&shring + path"
"
	self composedActionExample1.  
	
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

!Animator class methodsFor: 'examples' stamp: 'KenD 5/13/2015 14:08'!
composedActionExample2  "Compose actions -- alternative:  grow&shring + path"
"
	self composedActionExample2.  
	
	Animator stopStepping.
"
	| morph originalAction newAction animator |
	morph := EllipseMorph initializedInstance.
	morph morphPosition: 120@120;
	 		 openInWorld.
			
	animator := self actor: morph 
			  			 action: (Animator growShrinkAction: 20 numSteps: 6)
						 stepTime: 200.
	"compose actions"
	originalAction := animator action.
	newAction := Animator followPathAction: 
			{ 120@120. 140@126. 180@130. 
			   190@140. 190@180. 170@200.  140@190.  130@160. 134@140. } .
	"Update with composed action"
	animator action: [ :m | originalAction value: m. newAction value: m ].
	
	animator startStepping.
	^ animator ! !

!Animator class methodsFor: 'actionProc' stamp: 'KenD 2/27/2015 15:04'!
cycleColors: aColorCollection forSelector: collorSetter
	"Answers a closure which takes a morph and cycles the
	 morph's Color through aColorCollection"
	
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

!Animator class methodsFor: 'doneTestProc' stamp: 'KenD 5/13/2015 12:21'!
doneAfterNTimes: anInteger
	"Answers a closure which reduces a counter by 1 each time called.
	The closure answers false if counter > 0"

	| counter count |
	count := anInteger. "remember for later"
	counter := count.
	^ [ :aMorph | 
		counter := counter - 1.
		(counter <= 0) "true when count exhausted"
		ifTrue: [ counter := count. true ] "enable reuse"
		ifFalse: [ false ]
	  ]! !

!Animator class methodsFor: 'actionProc' stamp: 'KenD 2/27/2015 15:01'!
followPathAction: aPointCollection
	"Answers a closure which takes a morph and sets its morphPosition
	to each point in aPointCollection, circularly"
	
	| pathIndex |
	pathIndex := 0.
	^ [ :aMorph | 
			pathIndex := pathIndex + 1.
			pathIndex > aPointCollection size ifTrue:  [ pathIndex := 1 ].
			aMorph morphPosition: (aPointCollection at: pathIndex).
			aMorph redrawNeeded.
	  ]! !

!Animator class methodsFor: 'examples' stamp: 'KenD 5/13/2015 14:07'!
growAndShrinkExample    "Grow &Shrink"
"
	self growAndShrinkExample.
	
	Animator stopStepping.
"
	| morph animator |
	morph := BorderedRectMorph initializedInstance openInWorld.
	morph morphPosition: 200 @ 100.
	animator := Animator
						 actor: morph 
						 action: (Animator growShrinkAction: 20 numSteps: 6)
						 stepTime: 100.
	animator startStepping.
	^ animator ! !

!Animator class methodsFor: 'actionProc' stamp: 'KenD 2/27/2015 15:03'!
growShrinkAction: growSizeinPixels numSteps: numSteps
	"Answers a closure which takes a morph and sets its morphExtent 
	 to grow then shrink in numSteps, keeping the morph centered on
	 its original morphPosition."
	
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

!Animator class methodsFor: 'examples' stamp: 'KenD 2/28/2015 10:55'!
moveMorphExample
	"Nota Bene: Asynchronous"
"
	Animator moveMorphExample.
"
	Animator 
		slide: (ImageMorph initializedInstance openInWorld) 
		from: (10@10) "Origin initially at 0@0"
		to: (200@400)
		nSteps: 10
		delay: 20. "milliseconds"! !

!Animator class methodsFor: 'examples' stamp: 'KenD 5/12/2015 15:29'!
pathExample    "Follow a path, once"
"
	self pathExample.
	
"
	
	| morph pathPoints animator |
	morph := ImageMorph initializedInstance openInWorld.
	pathPoints := { 20@20. 40@26. 80@30. 90@40. 90@80. 
						70@100.  40@90.  30@60. 34@40. }.
	animator := self actor: morph 
						 action: (self followPathAction: pathPoints)
						 stepTime: 100
						 doneProc: (Animator doneAfterNTimes: (pathPoints size)).
	animator startStepping.
	^ animator ! !

!Animator class methodsFor: 'examples' stamp: 'KenD 2/26/2015 14:55'!
pathLoopExample    "Follow a path, repeatedly"
"
	self pathLoopExample.
	
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

!Animator class methodsFor: 'stepping' stamp: 'KenD 9/20/2013 15:57'!
restartStepping
	"Start all my instances"

	Smalltalk garbageCollectMost. "Clean out stale instances"
	self allInstancesDo: [ :a | a startStepping ].! !

!Animator class methodsFor: 'actionProc' stamp: 'KenD 9/20/2013 15:26'!
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

!Animator class methodsFor: 'moveMorph' stamp: 'KenD 2/27/2015 20:02'!
slide: aMorph from: startPoint to: endPoint nSteps: numberOfMoveSteps delay: milliSeconds
	"Move aMorph along a straightline path from startPoint to endPoint"

	| delta point pathPoints animator  | 
	point := startPoint.
	delta := (endPoint - startPoint) / numberOfMoveSteps.
	pathPoints := OrderedCollection new.
	numberOfMoveSteps timesRepeat: [ pathPoints add: (point := point + delta)].
	pathPoints := pathPoints collect: [ :pt | pt rounded ].
	animator := Animator 
						actor: aMorph
						action: (Animator followPathAction: pathPoints)
						stepTime: milliSeconds 
						doneProc: (Animator doneAfterNTimes: numberOfMoveSteps).
	animator startStepping.! !

!Animator class methodsFor: 'stepping' stamp: 'KenD 9/20/2013 12:04'!
stopStepping
	"Stop all my instances"

	self allInstancesDo: [ :a | a stopStepping ].! !
