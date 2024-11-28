'From Cuis7.1 [latest update: #6843] on 27 November 2024 at 6:26:21 pm'!
'Description An instance of a UI class can get instance specific behavior by adding a subclass of its original class and overriding methods in that subclass.  The instance then becomes of that subclass.

This is a test.  This is only a test.  If this were a real alert you would be dead by now.  Use with caution!!'!
!provides: 'InstanceSpecificSubclass' 1 9!
!requires: 'Cuis-Base' 42 2702 nil!
!requires: 'UI-Shapes' 1 46 nil!
SystemOrganization addCategory: #InstanceSpecificSubclass!


!classDefinition: #SubclassUtils category: #InstanceSpecificSubclass!
Object subclass: #SubclassUtils
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'InstanceSpecificSubclass'!
!classDefinition: 'SubclassUtils class' category: #InstanceSpecificSubclass!
SubclassUtils class
	instanceVariableNames: ''!


!SubclassUtils commentStamp: '<historical>' prior: 0!
The basic idea is to add instance specific behaviors to a Morph without paying a cost when unused and only a modest cost when used.

This is done by subclassing the Morph's Class, adding instance specific methods to the subclass, and changing the Morph's class to be the subclass.

The subclass answers true to #isInstanceSpecificSubclass.  This allows one to avoid subclassing the subclass when incrementally adding methods.

A finalizer is addid to remove the subclass when the Morph is garbage collected.

"============================" 
"Workspace Example"

"Animator in -- Feature require: #'MorphIt' -- from Cuis-Smalltalk-BabySteps"

testMorph :=   EllipseMorph initializedInstance. "<Whatever name is dropped>"
testMorph openInHand. "put it down where you can see it"
subclass := SubclassUtils makeInstanceSubclassFor: testMorph.
subclass isInstanceSpecificSubclass.
Morph isInstanceSpecificSubclass.

testMorph class == subclass. "true"
testMorph class allInstances size. "1"

"============================"

subclass compile: 'addColorCycleAnimator 
   self setProperty: #animator 
	toValue: (Animator 
		actor: self 
		action: (Animator cycleColors: 
  { Color green. Color blue. Color red. Color yellow. }
				  forSelector: #color:)
		stepTime: 300)'.

subclass compile: 'mouseEnter: evt  
   self valueOfProperty: #animator 
	ifPresentDo: [:a | a startStepping ]'.

subclass compile: 'mouseLeave: evt  
   self valueOfProperty: #animator 
	ifPresentDo: [:a | a stopStepping ]'.
	
subclass compile: 'handlesMouseOver: evt  ^true'.

testMorph addColorCycleAnimator.

"MouseOver cloned ellipse now cycles colors.."!

!SubclassUtils class methodsFor: 'examples' stamp: 'KenD 4/5/2016 10:25'!
ellipseMouseOverExample
"
	SubclassUtils ellipseMouseOverExample.
"
	| testMorph subclass |

	testMorph :=   EllipseMorph initializedInstance. 
	testMorph openInWorld.
	subclass := SubclassUtils makeInstanceSubclassFor: testMorph.

	subclass compile: 
'mouseEnter: evt
	self color: Color red'
			   classified: 'events'
			   notifying: nil.
			
	subclass compile: 
'mouseLeave: evt
	self color: Color yellow'
			   classified: 'events'
			   notifying: nil.
			
	subclass compile: 
'handlesMouseOver: evt  
	^true'
			   classified: 'events'
			   notifying: nil.

	testMorph setProperty: #'balloonText' toValue: 'MouseOver makes me Red'.
	
	^testMorph! !

!SubclassUtils class methodsFor: 'transmorgify' stamp: 'KenD 4/5/2016 12:46'!
makeInstanceSubclassFor: anObject
	"Create a subclass and answer it"
	| subclassName oldClass subclass subclassInst  |
	subclassName := (anObject nameForWorkspace, 'Class') capitalized asSymbol.
	oldClass := anObject class.
	subclass := oldClass 
			subclass: subclassName
	 		instanceVariableNames: '' 
			classVariableNames: 'MyRegistry'
			poolDictionaries: ''
			category: oldClass category.
	Smalltalk at: subclassName asSymbol put: subclass.
	subclass class compile: 
'isInstanceSpecificSubclass 
    ^true' 
					 classified: '*instancespecific' 
					 notifying: nil.
	subclass class compile: 
'register: myInstance 
	MyRegistry := WeakRegistry new: 1.
	MyRegistry add: myInstance' 
					 classified: '*instancespecific' 
					 notifying: nil.
	subclassInst := subclass newFrom: anObject.
	subclassInst become: anObject.
	subclass compile:
'finalize  
	Smalltalk removeClassNamed: ''', subclassName, ''''
				   classified: 'finalization'
				   notifying: nil.
	anObject class register: anObject.
	^subclass
	! !

!Class methodsFor: '*instancespecificsubclass' stamp: 'KenD 3/26/2016 15:11'!
isInstanceSpecificSubclass
	^false! !
