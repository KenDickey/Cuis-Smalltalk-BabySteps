'From Cuis 6.0 [latest update: #5477] on 8 September 2022 at 2:05:11 pm'!
'Description An Entity has goals/jobs, health/status, observes, reacts (corrects course), and is able to answers questions.'!
!provides: 'Entity' 1 4!
SystemOrganization addCategory: 'Entity'!


!classDefinition: #Assessor category: 'Entity'!
Object subclass: #Assessor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Entity'!
!classDefinition: 'Assessor class' category: 'Entity'!
Assessor class
	instanceVariableNames: ''!

!classDefinition: #Entity category: 'Entity'!
Object subclass: #Entity
	instanceVariableNames: 'name objectives status location'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Entity'!
!classDefinition: 'Entity class' category: 'Entity'!
Entity class
	instanceVariableNames: ''!

!classDefinition: #Objectives category: 'Entity'!
Object subclass: #Objectives
	instanceVariableNames: 'goals steps metrics adjustments'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Entity'!
!classDefinition: 'Objectives class' category: 'Entity'!
Objectives class
	instanceVariableNames: ''!

!classDefinition: #SenseDatum category: 'Entity'!
Object subclass: #SenseDatum
	instanceVariableNames: 'value timeStamp'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Entity'!
!classDefinition: 'SenseDatum class' category: 'Entity'!
SenseDatum class
	instanceVariableNames: ''!

!classDefinition: #SenseDatumLocated category: 'Entity'!
SenseDatum subclass: #SenseDatumLocated
	instanceVariableNames: 'location'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Entity'!
!classDefinition: 'SenseDatumLocated class' category: 'Entity'!
SenseDatumLocated class
	instanceVariableNames: ''!

!classDefinition: #Status category: 'Entity'!
Object subclass: #Status
	instanceVariableNames: 'health fear'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Entity'!
!classDefinition: 'Status class' category: 'Entity'!
Status class
	instanceVariableNames: ''!


!Assessor commentStamp: '<historical>' prior: 0!
I assess (sense+measure) something.

I am an abstract class.  

My subclasses measure time, sound, duration, distance, color, .., whatever
and may cache older SenseDatum values, keep a bounded history, log to a file..
!

!Entity commentStamp: '<historical>' prior: 0!
I am an entity which observes, reacts, and answers questions.

My life is, for a given timeRate/dutyCycle, an infinite loop of:
   observe [update health sensors, location, orientation, ..]
   orient    [measure progress toward goals; identify threats; how am I doing?]
   decide   [alter course/plans to change rate, orientation, ..]
   act        [invoke next steps to make progress on plans toward goals]

location - e.g. space, time, heading: (North/East/South/West/Up/Down, temp/pressure gradient, ..)

Explain myself: 
	What can I do? What resources do I supply? 
	What am I doing now? Why? How am I doing? 
	See instance category 'questions'

[Sample entities: Model fish tank (fish entities); Your computer, Sally]
!

!Objectives commentStamp: '<historical>' prior: 0!
goals - Explain my purpose in life.  What am I doing here? What am I alive for?
steps - Incremental computations acting to carry out goals.
metrics - measured of goodness/progress of steps.  How am I doing?  What makes me happy?
adjustments - changes to steps to correct course or make better progress.!

!SenseDatum commentStamp: '<historical>' prior: 0!
I contain a value and a timeStamp when that value was created.

I am a separate class so that a collection of my values may be
  saved as a history
  logged to a file
!

!SenseDatumLocated commentStamp: '<historical>' prior: 0!
I am a SenseDatum sampled at a particular location.!

!Status commentStamp: '<historical>' prior: 0!
health      - a collection of green/yellow/red sensors & their readings
                   e.g. energy (battery charge/level), 
                         space (ram|disk), 
                         net connections (staus, bandwidth) 
fear         - am I damaged or in danger?!

!Assessor methodsFor: 'sampling' stamp: 'KenD 9/8/2022 13:27:37'!
sample
	"Sense something and make a measurement.
	 Answer a SenseDatum instance."
	
	self subclassResponsibility ! !

!Entity methodsFor: 'initialization' stamp: 'KenD 9/8/2022 14:02:58'!
name: aSymbolOrString objectives: aCollectionOfObjectives status: aStatus

	name := aSymbolOrString.
	objectives := aCollectionOfObjectives.
	status := aStatus ! !

!Entity methodsFor: 'initialization' stamp: 'KenD 9/8/2022 14:03:28'!
name: aSymbolOrString objectives: aCollectionOfObjectives status: aStatus location: aLocation

	name := aSymbolOrString.
	objectives := aCollectionOfObjectives.
	status := aStatus.
	location := aLocation ! !

!Entity methodsFor: 'accessing' stamp: 'KenD 9/8/2022 13:44:59'!
location
	"Answer some location designator
	  e.g. space, time, heading: (North/East/South/West/Up/Down,
	 temp/pressure gradient, ..).. or nil, if I am unsure."
	^ location ! !

!Entity methodsFor: 'accessing' stamp: 'KenD 9/8/2022 13:45:13'!
location: aLocationObject
	"Keep some location designator
	  e.g. space, time, heading: (North/East/South/West/Up/Down,
	 temp/pressure gradient, ..).."
	location := aLocationObject ! !

!Entity methodsFor: 'accessing' stamp: 'KenD 9/8/2022 13:37:29'!
name

	^ name! !

!Entity methodsFor: 'accessing' stamp: 'KenD 9/8/2022 13:37:55'!
name: aStringOrSymbol

	name := aStringOrSymbol! !

!Entity methodsFor: 'accessing' stamp: 'KenD 9/8/2022 13:38:16'!
objectives

	^ objectives! !

!Entity methodsFor: 'accessing' stamp: 'KenD 9/8/2022 13:38:57'!
objectives: aCollectionOfObjectives

	objectives := aCollectionOfObjectives! !

!Entity methodsFor: 'accessing' stamp: 'KenD 9/8/2022 13:48:01'!
status

	^ status ! !

!Entity methodsFor: 'accessing' stamp: 'KenD 9/8/2022 13:48:20'!
status: aStatus

	status := aStatus! !

!Entity methodsFor: 'questions' stamp: 'KenD 9/8/2022 13:59:20'!
whatAmI
	"Answer a Description.  What do I do? What is my purpose in life?"
	^ 'I am an entity which senses my environment and resonds to it.
 Ask me #whereAmIGoing or #whatsMyStatus.'! !

!Entity methodsFor: 'questions' stamp: 'KenD 9/8/2022 13:57:41'!
whatsMyStatus

	self status report! !

!Entity methodsFor: 'questions' stamp: 'KenD 9/8/2022 13:46:46'!
whereAmI

	^ self location ifNil: [ 'Unknown' ] ifNotNil: [ :somePlace | somePlace printString ]! !

!Entity methodsFor: 'questions' stamp: 'KenD 9/8/2022 13:58:03'!
whereAmIGoing

	self objectives report! !

!Entity methodsFor: 'questions' stamp: 'KenD 9/8/2022 13:37:14'!
whoAmI

	^ self name! !

!Entity class methodsFor: 'instance creation' stamp: 'KenD 9/8/2022 14:04:34'!
name: aSymbolOrString objectives: aCollectionOfObjectives status: aStatus

	^ self new 
		name: aSymbolOrString 
		objectives: aCollectionOfObjectives 
		status: aStatus! !

!Entity class methodsFor: 'instance creation' stamp: 'KenD 9/8/2022 14:04:18'!
name: aSymbolOrString objectives: aCollectionOfObjectives status: aStatus location: aLocation

	^ self new 
		name: aSymbolOrString 
		objectives: aCollectionOfObjectives 
		status: aStatus
		location: aLocation ! !

!Objectives methodsFor: 'reporting' stamp: 'KenD 9/8/2022 13:54:37'!
report
	"Goals: What Am I Doing?"
	self notYetImplemented ! !

!SenseDatum methodsFor: 'accessing' stamp: 'KenD 9/8/2022 13:09:51'!
timeStamp

	^ timeStamp! !

!SenseDatum methodsFor: 'accessing' stamp: 'KenD 9/8/2022 13:10:58'!
timeStamp: aDateAndTime

	timeStamp := aDateAndTime ! !

!SenseDatum methodsFor: 'accessing' stamp: 'KenD 9/8/2022 13:09:12'!
value

	^ value! !

!SenseDatum methodsFor: 'accessing' stamp: 'KenD 9/8/2022 13:12:59'!
value: newValue

	value := newValue.
	timeStamp := DateAndTime now.! !

!SenseDatum methodsFor: 'accessing' stamp: 'KenD 9/8/2022 13:12:34'!
value: newValue timeStamp: aDateAndTime

	value := newValue.
	timeStamp := aDateAndTime ! !

!SenseDatum class methodsFor: 'instance creation' stamp: 'KenD 9/8/2022 13:17:23'!
value: aValue

	^ self new value: aValue! !

!SenseDatum class methodsFor: 'instance creation' stamp: 'KenD 9/8/2022 13:17:15'!
value: aValue timeStamp: aDateAndTime

	^ self new value: aValue timeStamp: aDateAndTime! !

!SenseDatumLocated methodsFor: 'accessing' stamp: 'KenD 9/8/2022 13:17:47'!
location

	^ location ! !

!SenseDatumLocated methodsFor: 'accessing' stamp: 'KenD 9/8/2022 13:18:12'!
location: aLocation

	location := aLocation! !

!SenseDatumLocated methodsFor: 'accessing' stamp: 'KenD 9/8/2022 13:16:00'!
value: aValue location: aLocation

	value := aValue.
	timeStamp := DateAndTime now.
	location := aLocation ! !

!SenseDatumLocated methodsFor: 'accessing' stamp: 'KenD 9/8/2022 13:16:25'!
value: aValue location: aLocation timeStamp: aDateAndTime

	value := aValue.
	timeStamp := aDateAndTime.
	location := aLocation ! !

!SenseDatumLocated class methodsFor: 'instance creation' stamp: 'KenD 9/8/2022 13:20:26'!
value: aValue

	self error: 'I require a location'! !

!SenseDatumLocated class methodsFor: 'instance creation' stamp: 'KenD 9/8/2022 13:18:43'!
value: aValue location: aLocation

	^ self new value: aValue location: aLocation! !

!SenseDatumLocated class methodsFor: 'instance creation' stamp: 'KenD 9/8/2022 13:19:08'!
value: aValue location: aLocation timeStamp: aDateAndTime

	^ self new value: aValue location: aLocation timeStamp: aDateAndTime! !

!SenseDatumLocated class methodsFor: 'instance creation' stamp: 'KenD 9/8/2022 13:20:51'!
value: aValue timeStamp: aDateAndTime

	self error: 'I require a location'! !

!Status methodsFor: 'reporting' stamp: 'KenD 9/8/2022 13:55:46'!
report
	"My Current Status: How am I Doing?"
	self notYetImplemented ! !
