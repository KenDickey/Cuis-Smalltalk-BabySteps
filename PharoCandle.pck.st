'From Cuis 6.0 [latest update: #5847] on 11 June 2023 at 11:23:17 am'!
'Description Minimalist Image Code From:
  https://github.com/guillep/PharoCandle
See:
  https://playingwithobjects.wordpress.com/2013/05/06/bootstrap-revival-the-basics/'!
!provides: 'PharoCandle' 1 2!
SystemOrganization addCategory: 'PharoCandle'!
SystemOrganization addCategory: 'PharoCandle-Kernel-Objects'!
SystemOrganization addCategory: 'PharoCandle-Kernel-Classes'!
SystemOrganization addCategory: 'PharoCandle-Kernel-Methods'!
SystemOrganization addCategory: 'PharoCandle-Kernel-Processes'!
SystemOrganization addCategory: 'PharoCandle-Kernel-System'!
SystemOrganization addCategory: 'PharoCandle-Kernel-Numeric'!
SystemOrganization addCategory: 'PharoCandle-Kernel-Collections-Abstract'!
SystemOrganization addCategory: 'PharoCandle-Kernel-Collections-Ordered'!
SystemOrganization addCategory: 'PharoCandle-Kernel-Collections-Unordered'!
SystemOrganization addCategory: 'PharoCandle-Kernel-Streams'!
SystemOrganization addCategory: 'PharoCandle-Kernel-Optional'!
SystemOrganization addCategory: 'PharoCandle-Kernel-Optional-Graphics'!


!classDefinition: #PCObject category: 'PharoCandle-Kernel-Objects'!
ProtoObject subclass: #PCObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Objects'!
!classDefinition: 'PCObject class' category: 'PharoCandle-Kernel-Objects'!
PCObject class
	instanceVariableNames: ''!

!classDefinition: #PCTrue category: 'PharoCandle-Kernel-Objects'!
PCObject subclass: #PCTrue
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Objects'!
!classDefinition: 'PCTrue class' category: 'PharoCandle-Kernel-Objects'!
PCTrue class
	instanceVariableNames: ''!

!classDefinition: #PCFalse category: 'PharoCandle-Kernel-Objects'!
PCTrue subclass: #PCFalse
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Objects'!
!classDefinition: 'PCFalse class' category: 'PharoCandle-Kernel-Objects'!
PCFalse class
	instanceVariableNames: ''!

!classDefinition: #PCUndefinedObject category: 'PharoCandle-Kernel-Objects'!
PCObject subclass: #PCUndefinedObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Objects'!
!classDefinition: 'PCUndefinedObject class' category: 'PharoCandle-Kernel-Objects'!
PCUndefinedObject class
	instanceVariableNames: ''!

!classDefinition: #PCBehavior category: 'PharoCandle-Kernel-Classes'!
PCObject subclass: #PCBehavior
	instanceVariableNames: 'superclass methodDict format'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Classes'!
!classDefinition: 'PCBehavior class' category: 'PharoCandle-Kernel-Classes'!
PCBehavior class
	instanceVariableNames: ''!

!classDefinition: #PCClass category: 'PharoCandle-Kernel-Classes'!
PCBehavior subclass: #PCClass
	instanceVariableNames: 'name instVarNames classVariables'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Classes'!
!classDefinition: 'PCClass class' category: 'PharoCandle-Kernel-Classes'!
PCClass class
	instanceVariableNames: ''!

!classDefinition: #PCMetaclass category: 'PharoCandle-Kernel-Classes'!
PCBehavior subclass: #PCMetaclass
	instanceVariableNames: 'soleInstance'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Classes'!
!classDefinition: 'PCMetaclass class' category: 'PharoCandle-Kernel-Classes'!
PCMetaclass class
	instanceVariableNames: ''!

!classDefinition: #PCClassBuilder category: 'PharoCandle-Kernel-Classes'!
PCObject subclass: #PCClassBuilder
	instanceVariableNames: 'superclass name instVarNames classVariablesNames formats'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Classes'!
!classDefinition: 'PCClassBuilder class' category: 'PharoCandle-Kernel-Classes'!
PCClassBuilder class
	instanceVariableNames: ''!

!classDefinition: #PCBlock category: 'PharoCandle-Kernel-Methods'!
PCObject subclass: #PCBlock
	instanceVariableNames: 'outerContext startpc nargs'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Methods'!
!classDefinition: 'PCBlock class' category: 'PharoCandle-Kernel-Methods'!
PCBlock class
	instanceVariableNames: ''!

!classDefinition: #PCContext category: 'PharoCandle-Kernel-Methods'!
PCObject subclass: #PCContext
	instanceVariableNames: 'sender pc stackp'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Methods'!
!classDefinition: 'PCContext class' category: 'PharoCandle-Kernel-Methods'!
PCContext class
	instanceVariableNames: ''!

!classDefinition: #PCMethodContext category: 'PharoCandle-Kernel-Methods'!
PCContext subclass: #PCMethodContext
	instanceVariableNames: 'method closureOrNil receiver'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Methods'!
!classDefinition: 'PCMethodContext class' category: 'PharoCandle-Kernel-Methods'!
PCMethodContext class
	instanceVariableNames: ''!

!classDefinition: #PCMessage category: 'PharoCandle-Kernel-Methods'!
PCObject subclass: #PCMessage
	instanceVariableNames: 'selector arguments lookupClass'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Methods'!
!classDefinition: 'PCMessage class' category: 'PharoCandle-Kernel-Methods'!
PCMessage class
	instanceVariableNames: ''!

!classDefinition: #PCProcess category: 'PharoCandle-Kernel-Processes'!
PCObject subclass: #PCProcess
	instanceVariableNames: 'nextLink suspendedContext priority myList threadId errorHandler'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Processes'!
!classDefinition: 'PCProcess class' category: 'PharoCandle-Kernel-Processes'!
PCProcess class
	instanceVariableNames: ''!

!classDefinition: #PCProcessorScheduler category: 'PharoCandle-Kernel-Processes'!
PCObject subclass: #PCProcessorScheduler
	instanceVariableNames: 'suspendedProcessLists activeProcess'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Processes'!
!classDefinition: 'PCProcessorScheduler class' category: 'PharoCandle-Kernel-Processes'!
PCProcessorScheduler class
	instanceVariableNames: ''!

!classDefinition: #PCSystem category: 'PharoCandle-Kernel-System'!
PCObject subclass: #PCSystem
	instanceVariableNames: ''
	classVariableNames: 'SpecialObjectsArray'
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-System'!
!classDefinition: 'PCSystem class' category: 'PharoCandle-Kernel-System'!
PCSystem class
	instanceVariableNames: 'SpecialObjectsArray'!

!classDefinition: #PCMagnitude category: 'PharoCandle-Kernel-Numeric'!
PCObject subclass: #PCMagnitude
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Numeric'!
!classDefinition: 'PCMagnitude class' category: 'PharoCandle-Kernel-Numeric'!
PCMagnitude class
	instanceVariableNames: ''!

!classDefinition: #PCCharacter category: 'PharoCandle-Kernel-Numeric'!
PCMagnitude subclass: #PCCharacter
	instanceVariableNames: 'value'
	classVariableNames: 'CharacterTable'
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Numeric'!
!classDefinition: 'PCCharacter class' category: 'PharoCandle-Kernel-Numeric'!
PCCharacter class
	instanceVariableNames: 'CharacterTable'!

!classDefinition: #PCNumber category: 'PharoCandle-Kernel-Numeric'!
PCMagnitude subclass: #PCNumber
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Numeric'!
!classDefinition: 'PCNumber class' category: 'PharoCandle-Kernel-Numeric'!
PCNumber class
	instanceVariableNames: ''!

!classDefinition: #PCInteger category: 'PharoCandle-Kernel-Numeric'!
PCNumber subclass: #PCInteger
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Numeric'!
!classDefinition: 'PCInteger class' category: 'PharoCandle-Kernel-Numeric'!
PCInteger class
	instanceVariableNames: ''!

!classDefinition: #PCLargePositiveInteger category: 'PharoCandle-Kernel-Numeric'!
PCInteger subclass: #PCLargePositiveInteger
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Numeric'!
!classDefinition: 'PCLargePositiveInteger class' category: 'PharoCandle-Kernel-Numeric'!
PCLargePositiveInteger class
	instanceVariableNames: ''!

!classDefinition: #PCLargeNegativeInteger category: 'PharoCandle-Kernel-Numeric'!
PCLargePositiveInteger subclass: #PCLargeNegativeInteger
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Numeric'!
!classDefinition: 'PCLargeNegativeInteger class' category: 'PharoCandle-Kernel-Numeric'!
PCLargeNegativeInteger class
	instanceVariableNames: ''!

!classDefinition: #PCSmallInteger category: 'PharoCandle-Kernel-Numeric'!
PCInteger subclass: #PCSmallInteger
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Numeric'!
!classDefinition: 'PCSmallInteger class' category: 'PharoCandle-Kernel-Numeric'!
PCSmallInteger class
	instanceVariableNames: ''!

!classDefinition: #PCFloat category: 'PharoCandle-Kernel-Optional'!
PCNumber subclass: #PCFloat
	instanceVariableNames: ''
	classVariableNames: 'E Epsilon Halfpi Infinity Ln10 Ln2 MaxVal MaxValLn MinValLogBase2 NaN NegativeInfinity NegativeZero Pi RadiansPerDegree Sqrt2 Twopi'
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Optional'!
!classDefinition: 'PCFloat class' category: 'PharoCandle-Kernel-Optional'!
PCFloat class
	instanceVariableNames: 'E Epsilon Halfpi Infinity Ln10 Ln2 MaxVal MaxValLn MinValLogBase2 NaN NegativeInfinity NegativeZero Pi RadiansPerDegree Sqrt2 Twopi'!

!classDefinition: #PCAssociation category: 'PharoCandle-Kernel-Collections-Unordered'!
PCMagnitude subclass: #PCAssociation
	instanceVariableNames: 'key value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Collections-Unordered'!
!classDefinition: 'PCAssociation class' category: 'PharoCandle-Kernel-Collections-Unordered'!
PCAssociation class
	instanceVariableNames: ''!

!classDefinition: #PCCollection category: 'PharoCandle-Kernel-Collections-Abstract'!
PCObject subclass: #PCCollection
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Collections-Abstract'!
!classDefinition: 'PCCollection class' category: 'PharoCandle-Kernel-Collections-Abstract'!
PCCollection class
	instanceVariableNames: ''!

!classDefinition: #PCSequenceableCollection category: 'PharoCandle-Kernel-Collections-Abstract'!
PCCollection subclass: #PCSequenceableCollection
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Collections-Abstract'!
!classDefinition: 'PCSequenceableCollection class' category: 'PharoCandle-Kernel-Collections-Abstract'!
PCSequenceableCollection class
	instanceVariableNames: ''!

!classDefinition: #PCProcessList category: 'PharoCandle-Kernel-Processes'!
PCSequenceableCollection subclass: #PCProcessList
	instanceVariableNames: 'firstLink lastLink'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Processes'!
!classDefinition: 'PCProcessList class' category: 'PharoCandle-Kernel-Processes'!
PCProcessList class
	instanceVariableNames: ''!

!classDefinition: #PCArrayedCollection category: 'PharoCandle-Kernel-Collections-Abstract'!
PCSequenceableCollection subclass: #PCArrayedCollection
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Collections-Abstract'!
!classDefinition: 'PCArrayedCollection class' category: 'PharoCandle-Kernel-Collections-Abstract'!
PCArrayedCollection class
	instanceVariableNames: ''!

!classDefinition: #PCArray category: 'PharoCandle-Kernel-Collections-Ordered'!
PCArrayedCollection variableSubclass: #PCArray
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Collections-Ordered'!
!classDefinition: 'PCArray class' category: 'PharoCandle-Kernel-Collections-Ordered'!
PCArray class
	instanceVariableNames: ''!

!classDefinition: #PCByteArray category: 'PharoCandle-Kernel-Collections-Ordered'!
PCArrayedCollection subclass: #PCByteArray
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Collections-Ordered'!
!classDefinition: 'PCByteArray class' category: 'PharoCandle-Kernel-Collections-Ordered'!
PCByteArray class
	instanceVariableNames: ''!

!classDefinition: #PCCompiledMethod category: 'PharoCandle-Kernel-Methods'!
PCByteArray subclass: #PCCompiledMethod
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Methods'!
!classDefinition: 'PCCompiledMethod class' category: 'PharoCandle-Kernel-Methods'!
PCCompiledMethod class
	instanceVariableNames: ''!

!classDefinition: #PCString category: 'PharoCandle-Kernel-Collections-Ordered'!
PCArrayedCollection subclass: #PCString
	instanceVariableNames: ''
	classVariableNames: 'AsciiOrder CaseInsensitiveOrder CaseSensitiveOrder LowercasingTable'
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Collections-Ordered'!
!classDefinition: 'PCString class' category: 'PharoCandle-Kernel-Collections-Ordered'!
PCString class
	instanceVariableNames: 'AsciiOrder CaseInsensitiveOrder CaseSensitiveOrder LowercasingTable'!

!classDefinition: #PCSymbol category: 'PharoCandle-Kernel-Collections-Ordered'!
PCString subclass: #PCSymbol
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Collections-Ordered'!
!classDefinition: 'PCSymbol class' category: 'PharoCandle-Kernel-Collections-Ordered'!
PCSymbol class
	instanceVariableNames: ''!

!classDefinition: #PCWordArray category: 'PharoCandle-Kernel-Optional-Graphics'!
PCArrayedCollection subclass: #PCWordArray
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Optional-Graphics'!
!classDefinition: 'PCWordArray class' category: 'PharoCandle-Kernel-Optional-Graphics'!
PCWordArray class
	instanceVariableNames: ''!

!classDefinition: #PCInterval category: 'PharoCandle-Kernel-Collections-Ordered'!
PCSequenceableCollection subclass: #PCInterval
	instanceVariableNames: 'start stop step'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Collections-Ordered'!
!classDefinition: 'PCInterval class' category: 'PharoCandle-Kernel-Collections-Ordered'!
PCInterval class
	instanceVariableNames: ''!

!classDefinition: #PCLinkedList category: 'PharoCandle-Kernel-Collections-Ordered'!
PCSequenceableCollection subclass: #PCLinkedList
	instanceVariableNames: 'firstLink lastLink'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Collections-Ordered'!
!classDefinition: 'PCLinkedList class' category: 'PharoCandle-Kernel-Collections-Ordered'!
PCLinkedList class
	instanceVariableNames: ''!

!classDefinition: #PCSemaphore category: 'PharoCandle-Kernel-Optional'!
PCLinkedList subclass: #PCSemaphore
	instanceVariableNames: 'excessSignals'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Optional'!
!classDefinition: 'PCSemaphore class' category: 'PharoCandle-Kernel-Optional'!
PCSemaphore class
	instanceVariableNames: ''!

!classDefinition: #PCOrderedCollection category: 'PharoCandle-Kernel-Collections-Ordered'!
PCSequenceableCollection subclass: #PCOrderedCollection
	instanceVariableNames: 'array firstIndex lastIndex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Collections-Ordered'!
!classDefinition: 'PCOrderedCollection class' category: 'PharoCandle-Kernel-Collections-Ordered'!
PCOrderedCollection class
	instanceVariableNames: ''!

!classDefinition: #PCSet category: 'PharoCandle-Kernel-Collections-Unordered'!
PCCollection subclass: #PCSet
	instanceVariableNames: 'tally array'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Collections-Unordered'!
!classDefinition: 'PCSet class' category: 'PharoCandle-Kernel-Collections-Unordered'!
PCSet class
	instanceVariableNames: ''!

!classDefinition: #PCDictionary category: 'PharoCandle-Kernel-Collections-Unordered'!
PCSet subclass: #PCDictionary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Collections-Unordered'!
!classDefinition: 'PCDictionary class' category: 'PharoCandle-Kernel-Collections-Unordered'!
PCDictionary class
	instanceVariableNames: ''!

!classDefinition: #PCMethodDictionary category: 'PharoCandle-Kernel-Methods'!
PCDictionary subclass: #PCMethodDictionary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Methods'!
!classDefinition: 'PCMethodDictionary class' category: 'PharoCandle-Kernel-Methods'!
PCMethodDictionary class
	instanceVariableNames: ''!

!classDefinition: #PCIdentityDictionary category: 'PharoCandle-Kernel-Optional'!
PCDictionary subclass: #PCIdentityDictionary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Optional'!
!classDefinition: 'PCIdentityDictionary class' category: 'PharoCandle-Kernel-Optional'!
PCIdentityDictionary class
	instanceVariableNames: ''!

!classDefinition: #PCIdentitySet category: 'PharoCandle-Kernel-Optional'!
PCSet subclass: #PCIdentitySet
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Optional'!
!classDefinition: 'PCIdentitySet class' category: 'PharoCandle-Kernel-Optional'!
PCIdentitySet class
	instanceVariableNames: ''!

!classDefinition: #PCValueLink category: 'PharoCandle-Kernel-Collections-Ordered'!
PCObject subclass: #PCValueLink
	instanceVariableNames: 'nextLink value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Collections-Ordered'!
!classDefinition: 'PCValueLink class' category: 'PharoCandle-Kernel-Collections-Ordered'!
PCValueLink class
	instanceVariableNames: ''!

!classDefinition: #PCReadStream category: 'PharoCandle-Kernel-Streams'!
PCObject subclass: #PCReadStream
	instanceVariableNames: 'collection position readLimit'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Streams'!
!classDefinition: 'PCReadStream class' category: 'PharoCandle-Kernel-Streams'!
PCReadStream class
	instanceVariableNames: ''!

!classDefinition: #PCWriteStream category: 'PharoCandle-Kernel-Streams'!
PCReadStream subclass: #PCWriteStream
	instanceVariableNames: 'writeLimit'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Streams'!
!classDefinition: 'PCWriteStream class' category: 'PharoCandle-Kernel-Streams'!
PCWriteStream class
	instanceVariableNames: ''!

!classDefinition: #PCFile category: 'PharoCandle-Kernel-Optional'!
PCObject subclass: #PCFile
	instanceVariableNames: 'name fileID'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Optional'!
!classDefinition: 'PCFile class' category: 'PharoCandle-Kernel-Optional'!
PCFile class
	instanceVariableNames: ''!

!classDefinition: #PCPoint category: 'PharoCandle-Kernel-Optional'!
PCObject subclass: #PCPoint
	instanceVariableNames: 'x y'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Optional'!
!classDefinition: 'PCPoint class' category: 'PharoCandle-Kernel-Optional'!
PCPoint class
	instanceVariableNames: ''!

!classDefinition: #PCBitBlt category: 'PharoCandle-Kernel-Optional-Graphics'!
PCObject subclass: #PCBitBlt
	instanceVariableNames: 'destForm sourceForm fillWords rule destX destY width height sourceX sourceY clipX clipY clipWidth clipHeight colorMap'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Optional-Graphics'!
!classDefinition: 'PCBitBlt class' category: 'PharoCandle-Kernel-Optional-Graphics'!
PCBitBlt class
	instanceVariableNames: ''!

!classDefinition: #PCForm category: 'PharoCandle-Kernel-Optional-Graphics'!
PCObject subclass: #PCForm
	instanceVariableNames: 'bits width height depth bitBlt'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PharoCandle-Kernel-Optional-Graphics'!
!classDefinition: 'PCForm class' category: 'PharoCandle-Kernel-Optional-Graphics'!
PCForm class
	instanceVariableNames: ''!


!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
-> anObject
	"Answer an Association with myself as its key and anObject as its value."

	^ PCAssociation new key: self value: anObject
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
= anObject
	"Answer whether the receiver and the argument represent the same 
	object. If = is redefined in any subclass, consider also redefining the 
	message hash."

	^ self == anObject
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
== anObject
	"Primitive. Answer whether the receiver and the argument are the same 
	object (have the same object pointer). Do not redefine the message == in 
	any other class!! Essential. No Lookup. Do not override in any subclass. 
	See Object documentation whatIsAPrimitive."

	<primitive: 110>
	self primitiveFailed
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
~= anObject
	"Answer whether the receiver and the argument do not represent the same object."

	^ self = anObject == false
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
~~ anObject
	"Answer whether the receiver and the argument are not the same object 
	(do not have the same object pointer)."

	^ self == anObject
		ifTrue: [ false ]
		ifFalse: [ true ]
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
asLink
	^ PCValueLink value: self
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
asString
	^ self printString
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
at: index
	"Primitive. Assumes receiver is indexable. Answer the value of an indexable element in the receiver. Fail if the argument index is not an  Integer or is out of bounds. Essential. Do not override in a subclass. See Object documentation whatIsAPrimitive."

	<primitive: 60>
	index isInteger
		ifTrue: [ self errorSubscriptBounds: index ].
	index isNumber
		ifTrue: [ ^ self basicAt: index asInteger ]
		ifFalse: [ self errorNonIntegerIndex ]
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
at: index put: value
	"Primitive. Assumes receiver is indexable. Store the second argument 
	value in the indexable element of the receiver indicated by index. Fail 
	if the index is not an Integer or is out of bounds. Or fail if the value is 
	not of the right type for this kind of collection. Answer the value that 
	was stored. Essential. Do not override in a subclass. See Object 
	documentation whatIsAPrimitive."

	<primitive: 61>
	index isInteger
		ifTrue: [ (index >= 1 and: [ index <= self size ])
				ifTrue: [ self errorImproperStore ]
				ifFalse: [ self errorSubscriptBounds: index ] ].
	index isNumber
		ifTrue: [ ^ self basicAt: index asInteger put: value ]
		ifFalse: [ self errorNonIntegerIndex ]
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
basicAt: index
	"Primitive. Assumes receiver is indexable. Answer the value of an indexable element in the receiver. Fail if the argument index is not an  Integer or is out of bounds. Essential. Do not override in a subclass. See Object documentation whatIsAPrimitive."

	<primitive: 60>
	index isInteger
		ifTrue: [ self errorSubscriptBounds: index ].
	index isNumber
		ifTrue: [ ^ self basicAt: index asInteger ]
		ifFalse: [ self errorNonIntegerIndex ]
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
basicAt: index put: value
	"Primitive. Assumes receiver is indexable. Store the second argument 
	value in the indexable element of the receiver indicated by index. Fail 
	if the index is not an Integer or is out of bounds. Or fail if the value is 
	not of the right type for this kind of collection. Answer the value that 
	was stored. Essential. Do not override in a subclass. See Object 
	documentation whatIsAPrimitive."

	<primitive: 61>
	index isInteger
		ifTrue: [ (index >= 1 and: [ index <= self size ])
				ifTrue: [ self errorImproperStore ]
				ifFalse: [ self errorSubscriptBounds: index ] ].
	index isNumber
		ifTrue: [ ^ self basicAt: index asInteger put: value ]
		ifFalse: [ self errorNonIntegerIndex ]
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
basicCopy
	"Answer a copy of the receiver that shares the receiver's instance variables. This is usually handled by the primitive, so the code below is for documentation."

	<primitive: 148>
	| class result sz |
	class := self class.
	class isVariable
		ifTrue: [ sz := self basicSize.
			result := class basicNew: sz.
			1 to: sz do: [ :i | result basicAt: i put: (self basicAt: i) ] ]
		ifFalse: [ result := class basicNew ].
	1 to: class instSize do: [ :i | result instVarAt: i put: (self instVarAt: i) ].
	^ result
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
basicIdentityHash
	"Answer a SmallInteger whose value is related to the receiver's identity.
	This method must not be overridden, except by SmallInteger.
	Primitive. Fails if the receiver is a SmallInteger. Essential.
	See Object documentation whatIsAPrimitive.

	Do not override. Use #identityHash unless you really know what you're doing.'"

	<primitive: 75>
	self primitiveFailed
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
basicSize
	"Primitive. Answer the number of indexable variables in the receiver. This value is the same as the largest legal subscript. Essential. Do not override in any subclass. See Object documentation whatIsAPrimitive."

	<primitive: 62>
	^ 0	"for fixed-size objects"
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
become: otherObject
	"Swap the object pointers of the receiver and the argument. After this, all variables in the entire system that used to point to the receiver now point to the argument, and vice-versa. Fails if either object is a SmallInteger."

	(PCArray with: self)
		elementsExchangeIdentityWith: (PCArray with: otherObject)
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
beep
	"Emit a short beep sound. Do nothing if the primitive fails."

	<primitive: 140>
	
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
class
	"Primitive. Answer the object which is the receiver's class. Essential. See Object documentation whatIsAPrimitive."

	<primitive: 111>
	self primitiveFailed
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
copy
	"Answer a copy of me. Subclasses should usually override this method to change copying behavior, not basicCopy. The exception is classes with unique instances, such as Symbol. This operation does not generally copy all the objects that I refer to.."

	^ self basicCopy
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
doesNotUnderstand: aMessage
	"Handle a failed attempt to send the given message to the receiver because the receiver does not implement or inherit a method for the message selector. The 'doesNotUnderstand:' message is sent by the virtual machine when a message send fails. If the receiver has an error handling block, invoke it. Otherwise, report an error."

	"PCObject new argh"

	| errorString handler |
	errorString := 'Message not understood: ' , aMessage selector.
	(handler := Processor activeProcess errorHandler)
		ifNil: [ self handleExceptionName: errorString context: thisContext ]
		ifNotNil: [ handler value: errorString value: self ].
	^ aMessage sentTo: self	"resend the message if the user proceeds from the debugger"
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
error: aString
	"The default behavior for error: is the same as halt:. The code is replicated in order to avoid having an extra message send on the stack. This additional message is the one a subclass should override in order to change the error handling behavior."

	"PCPbject new error: 'test error'"

	| handler |
	(handler := Processor activeProcess errorHandler)
		ifNil: [ self handleExceptionName: aString context: thisContext ]
		ifNotNil: [ handler value: aString value: self ]
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
errorImproperStore
	"Error: an improper store was attempted."

	self error: 'Improper store into indexable object.'
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
errorNonIntegerIndex
	"Error: attempting to use a non-integer object as an index."

	self error: 'Only integers should be used as indices.'
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
errorSubscriptBounds: index
	"Error: the given index is out of range."

	self error: 'Subscript is out of bounds: ' , index printString
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
handleExceptionName: aString context: aContext
	"Handle an error or halt with the given name in the given context."

	"Not yet implemented. For now, just print the error and exit."

	PCObject superclass
		ifNil: [ self
				putString: aString;
				putcr.
			PCSystem exitToDebugger ]
		ifNotNil: [ super error: aString ]	"exit to the VM debugger"
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
hash
	"Answer a SmallInteger whose value is related to the receiver's identity.
	May be overridden, and should be overridden in any classes that define = "

	^ self identityHash
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
identityHash
	"Answer a SmallInteger whose value is related to the receiver's identity. This method must not be overridden, except by SmallInteger. Primitive. Fails if the receiver is a SmallInteger. Essential. See Object documentation whatIsAPrimitive. Do not override!!"

	^ self basicIdentityHash bitShift: 18
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
ifNil: nilBlock
	"Return self, or evaluate the block if I'm == nil (q.v.)"

	^ self
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
ifNil: nilBlock ifNotNil: ifNotNilBlock
	"Evaluate the block, unless I'm == nil (q.v.)"

	^ ifNotNilBlock value
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
ifNotNil: ifNotNilBlock
	"Evaluate the block, unless I'm == nil (q.v.)"

	^ ifNotNilBlock value
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
ifNotNil: ifNotNilBlock ifNil: nilBlock
	"If I got here, I am not nil, so evaluate the block ifNotNilBlock"

	^ ifNotNilBlock value
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
initialize
	"Initialize this object. Usually called by new when a new object is created. This default implementation does nothing."

	^ self
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
instVarAt: index
	"Primitive. Answer a fixed variable in an object. The numbering of the 
	variables corresponds to the named instance variables. Fail if the index 
	is not an Integer or is not the index of a fixed variable. Essential. See 
	Object documentation whatIsAPrimitive."

	"Access beyond fixed variables."

	<primitive: 73>
	^ self basicAt: index - self class instSize
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
instVarAt: anInteger put: anObject
	"Primitive. Store a value into a fixed variable in the receiver. The 
	numbering of the variables corresponds to the named instance variables. 
	Fail if the index is not an Integer or is not the index of a fixed variable. 
	Answer the value stored as the result. Using this message violates the 
	principle that each object has sovereign control over the storing of 
	values into its instance variables. Essential. See Object documentation 
	whatIsAPrimitive."

	"Access beyond fixed fields"

	<primitive: 74>
	^ self basicAt: anInteger - self class instSize put: anObject
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
isBehavior
	"Answer true if I am a subclass of Behavior."

	^ false
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
isCompiledMethod
	^ false
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
isContextPart
	^ false
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
isInteger
	"Overridden to return true in Integer."

	^ false
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
isKindOf: aClass
	"Answer whether the class, aClass, is a superclass or class of the receiver."

	self class == aClass
		ifTrue: [ ^ true ]
		ifFalse: [ ^ self class inheritsFrom: aClass ]
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
isNil
	"Answer true if the receiver is nil."

	^ false
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
isNumber
	"Overridden to return true in Number, natch"

	^ false
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
isSelfEvaluating
	^ false
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
isSmallInteger
	^ false
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
mustBeBoolean
	"Error: attempt to use a non-Boolean object as if it were true or false. This message is sent by the virtual machine."

	self error: 'NonBoolean receiver.'.
	^ true
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
nextInstance
	"Primitive. Answer the next instance after the receiver in the enumeration of all instances of this class. Fails if all instances have been enumerated. Essential. See Object documentation whatIsAPrimitive."

	<primitive: 78>
	^ nil
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
nextObject
	"Primitive. Answer the next object after the receiver in the enumeration of all objects. Answer 0 when all objects have been enumerated."

	<primitive: 139>
	self primitiveFailed
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
perform: aSymbol
	"Primitive. Send the receiver the unary message indicated by the 
	argument. The argument is the selector of the message. Invoke 
	messageNotUnderstood: if the number of arguments expected by the 
	selector is not zero. Optional. See Object documentation whatIsAPrimitive."

	<primitive: 83>
	^ self perform: aSymbol withArguments: (PCArray new: 0)
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
perform: aSymbol with: anObject
	"Primitive. Send the receiver the keyword message indicated by the 
	arguments. The first argument is the selector of the message. The other 
	argument is the argument of the message to be sent. Invoke 
	messageNotUnderstood: if the number of arguments expected by the 
	selector is not one. Optional. See Object documentation whatIsAPrimitive."

	<primitive: 83>
	^ self perform: aSymbol withArguments: (PCArray with: anObject)
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
perform: selector withArguments: anArray
	"Primitive. Send the receiver the keyword message indicated by the 
	arguments. The argument, selector, is the selector of the message. The 
	arguments of the message are the elements of anArray. Invoke 
	messageNotUnderstood: if the number of arguments expected by the 
	selector is not the same as the length of anArray. Essential. See Object 
	documentation whatIsAPrimitive."

	<primitive: 84>
	selector class = PCSymbol
		ifFalse: [ ^ self error: 'selector argument must be a Symbol' ].
	self primitiveFailed
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
perform: selector withArguments: argArray inSuperclass: lookupClass
	"NOTE:  This is just like perform:withArguments: except that the message lookup process begins, not with the receivers's class, but with the supplied superclass instead. It will fail if lookupcannot be found among the receiver's superclasses. Primitive. Essential. See Object documentation whatIsAPrimitive."

	<primitive: 100>
	selector class = PCSymbol
		ifFalse: [ ^ self error: 'selector argument must be a Symbol' ].
	selector numArgs = argArray size
		ifFalse: [ ^ self error: 'incorrect number of arguments' ].
	(self class == lookupClass
		or: [ self class inheritsFrom: lookupClass ])
		ifFalse: [ ^ self error: 'lookupClass is not in my inheritance chain' ].
	self primitiveFailed
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
pointsTo: anObject
	"Answer true if the receiver contains a reference to the given object."

	<primitive: 132>
	1 to: self class instSize do: [ :i | 
		(self instVarAt: i) == anObject
			ifTrue: [ ^ true ] ].
	1 to: self basicSize do: [ :i | 
		(self basicAt: i) == anObject
			ifTrue: [ ^ true ] ].
	^ false
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
primitiveFailed
	"Announce that a primitive has failed."

	self error: 'a primitive has failed'
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
printOn: aStream
	"Print a description of me on the given stream."

	| n |
	n := self class name.
	aStream
		nextPutAll:
			(n first isVowel
				ifTrue: [ 'an ' ]
				ifFalse: [ 'a ' ]) , n
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
printString
	"Answer a string describing me."

	| stream |
	stream := PCWriteStream on: (PCString new: 100).
	self printOn: stream.
	^ stream contents
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
putAscii: asciiValue
	"Put the given ascii character (0..255) to standard output. Do nothing if this primitive is not supported."

	<primitive: 249>
	
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
putString: aString
	"Write the given string to the standard output stream."

	aString do: [ :ch | self putAscii: ch asciiValue ]
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
putcr
	"Write a carriage return to the standard output stream."

	self putAscii: 13
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
respondsTo: aSymbol
	"Answer whether the receiver's class or one of its superclasses has the given symbol as a message selector."

	^ self class canUnderstand: aSymbol
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
shouldBePrintedAsLiteral
	^ false
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
shouldNotImplement
	"Announce that, although the receiver inherits this message, it should not implement it."

	self error: 'This message is not appropriate for this object'
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
someObject
	"Primitive. Answer the first object in the enumeration of all objects."

	<primitive: 138>
	self primitiveFailed
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
species
	"Answer the preferred class for reconstructing the receiver, which is typically some kind of collection. For example, the response to this message determines the type of object returned by the collect: or select: messages. Species and class are not always the same. For example, the species of Interval is Array."

	^ self class
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
subclassResponsibility
	"This message sets up a framework for the behavior of subclasses of this class. Announce that the subclass should have implemented this message."

	self error: 'My subclass should have overridden one of my messages.'
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
tryPrimitive: primIndex withArgs: argumentArray
	"This method is a template that the Smalltalk simulator uses to 
	execute primitives. See Object documentation whatIsAPrimitive."

	<primitive: 118 error: #code>
	self primitiveFailed
! !

!PCObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
yourself
	"Answer the receiver. Useful in cascaded message expressions."

	^ self
! !

!PCObject class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
cannotInstantiate
	"This message is sent if you try to create new instances of classes with unique instances such as booleans or characters."

	self error: 'You cannot create new instances of ' , self name
! !

!PCObject class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
new
	"Create a new instance of me and initialize it."

	^ self basicNew initialize
! !

!PCTrue methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
& alternativeObject
	"Answer true if both the receiver AND the argument are true. Unlike and:, the argument is always evaluted."

	^ alternativeObject
! !

!PCTrue methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
| aBoolean
	"Answer true if either the receiver OR the argument are true. Unlike or:, the argument is always evaluted."

	^ true
! !

!PCTrue methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
and: alternativeBlock
	"Answer true if both the receiver AND the result of evaluating the given block are true. Only evaluate the given block if the receiver is true."

	^ alternativeBlock value
! !

!PCTrue methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
basicCopy
	"There is the only one instance of me, so answer myself."

	^ self
! !

!PCTrue methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
ifFalse: falseBlock
	"If the receiver is false, answer the result of evaluating the given block. Otherwise, answer nil. Raise an error notification if the receiver is not a boolean. Execution does not actually reach here because the expression is compiled in-line."

	^ nil
! !

!PCTrue methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
ifTrue: trueBlock
	"If the receiver is true, answer the result of evaluating the given block. Otherwise, answer nil. Raise an error notification if the true is not a boolean. Execution does not actually reach here because the expression is compiled in-line."

	^ trueBlock value
! !

!PCTrue methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
ifTrue: trueBlock ifFalse: falseBlock
	"If the receiver is true, answer the result of evaluating trueBlock. Otherwise, answer the result of evaluating falseBlock. Raise an error notification if the receiver is not a boolean. Execution does not actually reach here because this message is compiled in-line."

	^ trueBlock value
! !

!PCTrue methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
not
	"Answer the negation of the receiver."

	^ false
! !

!PCTrue methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
or: alternativeBlock
	"Answer true if either the receiver OR the argument are true. Only evaluate the given block if the receiver is false."

	^ true
! !

!PCTrue methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
printOn: aStream
	aStream nextPutAll: 'true'
! !

!PCTrue class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
new
	"There is a single unique instance of each boolean."

	self cannotInstantiate
! !

!PCFalse methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
& aBoolean
	"Answer true if both the receiver AND the argument are true. Unlike and:, the argument is always evaluted."

	^ false
! !

!PCFalse methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
| aBoolean
	"Answer true if either the receiver OR the argument are true. Unlike or:, the argument is always evaluted."

	^ aBoolean
! !

!PCFalse methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
and: alternativeBlock
	"Answer true if both the receiver AND the result of evaluating the given block are true. Only evaluate the given block if the receiver is true."

	^ false
! !

!PCFalse methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
ifFalse: falseBlock
	"If the receiver is false, answer the result of evaluating the given block. Otherwise, answer nil. Raise an error notification if the receiver is not a boolean. Execution does not actually reach here because the expression is compiled in-line."

	^ falseBlock value
! !

!PCFalse methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
ifTrue: trueBlock
	"If the receiver is true, answer the result of evaluating the given block. Otherwise, answer nil. Raise an error notification if the true is not a boolean. Execution does not actually reach here because the expression is compiled in-line."

	^ nil
! !

!PCFalse methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
ifTrue: trueBlock ifFalse: falseBlock
	"If the receiver is true, answer the result of evaluating trueBlock. Otherwise, answer the result of evaluating falseBlock. Raise an error notification if the receiver is not a boolean. Execution does not actually reach here because this message is compiled in-line."

	^ falseBlock value
! !

!PCFalse methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
not
	"Answer the negation of the receiver."

	^ true
! !

!PCFalse methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
or: alternativeBlock
	"Answer true if either the receiver OR the argument are true. Only evaluate the given block if the receiver is false."

	^ alternativeBlock value
! !

!PCFalse methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
printOn: aStream
	aStream nextPutAll: 'false'
! !

!PCUndefinedObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
basicCopy
	"There is the only one instance of me, so answer myself."

	^ self
! !

!PCUndefinedObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
ifNil: aBlock
	"A convenient test, in conjunction with Object ifNil:"

	^ aBlock value
! !

!PCUndefinedObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
ifNil: nilBlock ifNotNil: ifNotNilBlock
	"Evaluate the block for nil because I'm == nil"

	^ nilBlock value
! !

!PCUndefinedObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
ifNotNil: aBlock
	"A convenient test, in conjunction with Object ifNotNil:"

	^ self
! !

!PCUndefinedObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
isNil
	"Answer true if the receiver is nil."

	^ true
! !

!PCUndefinedObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
printOn: aStream
	aStream nextPutAll: 'nil'
! !

!PCUndefinedObject methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
subclass: subclassName instanceVariableNames: instVarNames classVariableNames: classVarNames
	^ PCClassBuilder new
		superclass: self;
		name: subclassName;
		instVarNames: instVarNames;
		classVariableNames: classVarNames;
		build
! !

!PCUndefinedObject class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
new
	"There is a single unique instance of me."

	self cannotInstantiate
! !

!PCBehavior methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
>> aSelector
	^ self methodDict at: aSelector
! !

!PCBehavior methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
allInstVarNames
	"Answer an Array of the names of all my instance variables."

	^ (1 to: self instSize) collect: [ :i | 'instVar' , i printString ]
! !

!PCBehavior methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
allInstances
	"Answer a collection of all current instances of the receiver."

	| all |
	all := PCOrderedCollection new.
	self
		allInstancesDo: [ :x | 
			x == all
				ifFalse: [ all add: x ] ].
	^ all asArray
! !

!PCBehavior methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
allInstancesDo: aBlock
	"Evaluate the given block for each instance of the receiver."

	| inst |
	self == PCUndefinedObject
		ifTrue: [ ^ aBlock value: nil ].
	inst := self someInstance.
	[ inst == nil ]
		whileFalse: [ aBlock value: inst.
			inst := inst nextInstance ]
! !

!PCBehavior methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
basicNew
	"Primitive. Answer an instance of the receiver (which is a class) with no indexable fields. Fail if the class is variable-sized. Essential. See Object documentation whatIsAPrimitive."

	<primitive: 70>
	self isVariable
		ifTrue: [ ^ self basicNew: 0 ].	"space must be low"
	self error: 'low space'
! !

!PCBehavior methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
basicNew: desiredSize
	"Primitive. Answer an instance of this class with the given number of indexable variables. Fail if this class is not indexable, if the argument is not a positive Integer, or if there is not enough memory available. Essential. See Object documentation whatIsAPrimitive."

	<primitive: 71>
	self isVariable
		ifFalse: [ self error: self name , ' is not variable-sized' ].
	(desiredSize isInteger not or: [ desiredSize < 0 ])
		ifTrue: [ self error: 'bad size' ].
	self error: 'low space'
! !

!PCBehavior methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
canUnderstand: selector
	"Answer whether the receiver can respond to the message whose selector is the argument. The selector can be in the method dictionary of the receiver's class or any of its superclasses."

	^ (self lookupSelector: selector) ~~ nil
! !

!PCBehavior methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
classPool
	^ nil
! !

!PCBehavior methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
format
	"Answer a integer that encodes the format of instances of this class receiver."

	^ format
! !

!PCBehavior methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
indexIfCompact
	"If my compact class index is non-zero, then instances of this class will be compact, and their class will have an entry in Smalltalk compactClassesArray."

	^ (format bitShift: -11) bitAnd: 16r1F
! !

!PCBehavior methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
inheritsFrom: aClass
	"Answer whether the argument is on the receiver's superclass chain."

	| this |
	this := superclass.
	[ this == nil ]
		whileFalse: [ this == aClass
				ifTrue: [ ^ true ].
			this := this superclass ].
	^ false
! !

!PCBehavior methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
initialize
	"Default initialization."

	superclass := PCObject.
	format := 2.
	methodDict := PCMethodDictionary new
! !

!PCBehavior methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
instSize
	"Answer the number of named instance variables of the receiver. Objects can have up to 255 instance variables."

	^ ((format bitShift: -10) bitAnd: 16rC0)
		+ ((format bitShift: -1) bitAnd: 16r3F) - 1
! !

!PCBehavior methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
instSpec
	^ (format bitShift: -7) bitAnd: 16rF
! !

!PCBehavior methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
isBehavior
	"Answer true if I am a subclass of Behavior."

	^ true
! !

!PCBehavior methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
isBits
	"Answer whether the receiver contains just bits (not pointers)."

	^ self instSpec >= 6
! !

!PCBehavior methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
isBytes
	"Answer true if the receiver is byte-indexable. This is always false for non-indexable and pointer objects."

	^ self instSpec >= 8
! !

!PCBehavior methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
isCompact
	^ self indexIfCompact ~= 0
! !

!PCBehavior methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
isPointers
	"Answer true if the receiver contains object pointers (versus bytes or words)."

	^ self isBits not
! !

!PCBehavior methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
isVariable
	"Answer true if the receiver has indexable fields."

	^ self instSpec >= 2
! !

!PCBehavior methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
lookupSelector: selector
	"Look up the given selector in the methodDictionaries of every class in my superclass chain and answer the corresponding method if found. Answer nil if no method is found."

	| lookupClass mDict |
	lookupClass := self.
	[ lookupClass == nil ]
		whileFalse: [ mDict := lookupClass methodDict.
			(mDict includesKey: selector)
				ifTrue: [ ^ mDict at: selector ].
			lookupClass := lookupClass superclass ].
	^ nil
! !

!PCBehavior methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
methodDict
	"Answer my method dictionary."

	^ methodDict
! !

!PCBehavior methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
name
	"Answer a String that names the receiver as well possible. Overridden by my subclasses."

	superclass
		ifNil: [ ^ 'a subclass of nil' ]
		ifNotNil: [ ^ 'a subclass of ' , superclass name ]
! !

!PCBehavior methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
new
	^ self basicNew
! !

!PCBehavior methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
new: desiredSize
	^ self basicNew: desiredSize
! !

!PCBehavior methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
printOn: aStream
	aStream nextPutAll: self name
! !

!PCBehavior methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
selectorAtMethod: method setClass: classResultBlock
	"Answer the message selector associated with the compiled method and evaluate the classResultBlock on the class in which that selector is defined."

	"Note: This method is here only to support the debugger."

	| sel |
	sel := self methodDict
		keyAtIdentityValue: method
		ifAbsent: [ superclass
				ifNil: [ classResultBlock value: self.
					^ #DoIt ].
			sel := superclass
				selectorAtMethod: method
				setClass: classResultBlock.
			sel == #DoIt
				ifTrue: [ classResultBlock value: self ].	"if selector is DoIt, set class to me"
			^ sel ].
	classResultBlock value: self.
	^ sel
! !

!PCBehavior methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
setCompactClassIndex: ccIndex
	"If my compact class index is non-zero, then instances of this class will be compact, and their class will have an entry in Smalltalk compactClassesArray."

	(ccIndex > 0 and: [ ccIndex <= 31 ])
		ifFalse: [ ^ self error: 'compact class index must 1-31' ].
	self indexIfCompact = 0
		ifFalse: [ ^ self error: self name , ' is already compact!!' ].
	format := format + (ccIndex bitShift: 11)
! !

!PCBehavior methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
setFormat: anInteger
	"Warning!! Risky operation. Should only be done when there are not instances of this class."

	format := anInteger
! !

!PCBehavior methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
sharedPools
	^ nil
! !

!PCBehavior methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
someInstance
	"Primitive. Answer the first instance in the enumeration of all instances of the receiver. Answer nil if there are none. Essential. See Object documentation whatIsAPrimitive."

	<primitive: 77>
	^ nil
! !

!PCBehavior methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
superclass
	"Answer my superclass."

	^ superclass
! !

!PCBehavior methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
superclass: aBehaviorOrNil
	"Set my superclass."

	superclass := aBehaviorOrNil
! !

!PCClass methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
classSide
	^ self class
! !

!PCClass methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
classVariables
	"Answer the dictionary of class variables that I share with my sole instance, or nil if I have none."

	^ classVariables
! !

!PCClass methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
classVariables: aDictionary
	"Answer the dictionary of class variables that I share with my sole instance, or nil if I have none."

	^ classVariables := aDictionary
! !

!PCClass methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
initFrom: aPharoClass methodDict: newMethodDict
	"Fill in my instance variables from the given Class using the given MethodDictionary."

	superclass := PCObject.	"corrected later"
	methodDict := newMethodDict.
	format := aPharoClass format.
	name := (aPharoClass name copyFrom: 2 to: aPharoClass name size)
		asSymbol.	"omit leading M"
	instVarNames := aPharoClass instVarNames.
	classVariables := aPharoClass classPool.
	instVarNames size = 0
		ifTrue: [ instVarNames := nil ].
	classVariables size = 0
		ifTrue: [ classVariables := nil ]
! !

!PCClass methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
instVarNames
	"Answer an Array of the receiver's instance variable names."

	instVarNames ifNil: [ ^ #() ].
	^ instVarNames
! !

!PCClass methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
instVarNames: anArray
	instVarNames := anArray
! !

!PCClass methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
isMeta
	^ false
! !

!PCClass methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
name
	^ name
! !

!PCClass methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
name: aSymbol
	name := aSymbol
! !

!PCClass methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
newClassBuilderForSubclass: subclassName instanceVariableNames: instVarNames classVariableNames: classVarNames
	^ PCClassBuilder new
		superclass: self;
		name: subclassName;
		instVarNames: instVarNames;
		classVariableNames: classVarNames;
		yourself
! !

!PCClass methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
subclass: subclassName instanceVariableNames: someInstVarNames classVariableNames: classVarNames
	^ (self
		newClassBuilderForSubclass: subclassName
		instanceVariableNames: someInstVarNames
		classVariableNames: classVarNames) build
! !

!PCClass methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
theNonMetaClass
	^ self
! !

!PCClass methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
variableByteSubclass: subclassName instanceVariableNames: someInstVarNames classVariableNames: classVarNames
	^ (self
		newClassBuilderForSubclass: subclassName
		instanceVariableNames: someInstVarNames
		classVariableNames: classVarNames)
		beBytes;
		build
! !

!PCClass methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
variableSubclass: subclassName instanceVariableNames: someInstVarNames classVariableNames: classVarNames
	^ (self
		newClassBuilderForSubclass: subclassName
		instanceVariableNames: someInstVarNames
		classVariableNames: classVarNames)
		beVariable;
		build
! !

!PCClass methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
variableWordSubclass: subclassName instanceVariableNames: someInstVarNames classVariableNames: classVarNames
	^ (self
		newClassBuilderForSubclass: subclassName
		instanceVariableNames: someInstVarNames
		classVariableNames: classVarNames)
		beWords;
		build
! !

!PCClass methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
weakSubclass: subclassName instanceVariableNames: someInstVarNames classVariableNames: classVarNames
	^ (self
		newClassBuilderForSubclass: subclassName
		instanceVariableNames: someInstVarNames
		classVariableNames: classVarNames)
		beWeak;
		build
! !

!PCMetaclass methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
initMethodDict: newMethodDict
	"Initialize myself with the given method dictionary. Create but do not initialize my soleInstance."

	superclass := PCClass.
	methodDict := newMethodDict.
	format := PCClass format.	"all metaclasses have the same format as PClass"
	soleInstance := self basicNew
! !

!PCMetaclass methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
isMeta
	^ true
! !

!PCMetaclass methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
name
	"Answer my name, either 'Metaclass' or the name of my class followed by ' class'."

	soleInstance
		ifNil: [ ^ 'Metaclass' ]
		ifNotNil: [ ^ soleInstance name , ' class' ]
! !

!PCMetaclass methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
new
	"Each metaclass should have exactly one instance."

	self cannotInstantiate
! !

!PCMetaclass methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
soleInstance: aClass
	soleInstance := aClass
! !

!PCMetaclass methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
theNonMetaClass
	"Answer my only instance."

	^ soleInstance
! !

!PCClassBuilder methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
beBytes
	self isCompiledMethodClassIndex
		ifTrue: [ ^ self beCompiledMethod ].
	^ formats := #(#variable #bytes)
! !

!PCClassBuilder methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
beCompiledMethod
	^ formats := #(#compiledMethod #variable #bytes)
! !

!PCClassBuilder methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
bePointers
	^ formats := #(#pointers)
! !

!PCClassBuilder methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
beVariable
	^ formats := #(#variable #pointers)
! !

!PCClassBuilder methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
beWeak
	^ formats := #(#weak #variable #pointers)
! !

!PCClassBuilder methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
beWords
	^ formats := #(#variable #words)
! !

!PCClassBuilder methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
build
	| metaclass theClass supermetaclass |
	supermetaclass := superclass
		ifNil: [ PCClass ]
		ifNotNil: [ superclass class ].
	metaclass := PCMetaclass new.
	metaclass superclass: supermetaclass.
	metaclass setFormat: supermetaclass format.
	theClass := metaclass basicNew initialize.
	theClass superclass: superclass.
	theClass setFormat: self newClassFormat.
	theClass instVarNames: instVarNames asArray.
	theClass name: name.
	theClass classVariables: PCDictionary new.
	self classVariableNames
		do: [ :varName | theClass classVariables at: varName put: nil ].
	metaclass soleInstance: theClass.
	^ theClass
! !

!PCClassBuilder methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
classVariableNames
	^ classVariablesNames
! !

!PCClassBuilder methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
classVariableNames: anArray
	classVariablesNames := anArray
! !

!PCClassBuilder methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
compactClassIndex
	^ self compactClassIndexFor: name
! !

!PCClassBuilder methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
compactClassIndexFor: aClassName
	^ #(#PCCompiledMethod nil #PCArray #PCLargeNegativeInteger #PCLargePositiveInteger #PCFloat nil #PCAssociation #PCPoint #PCRectangle #PCString #PCBlock nil #PCMethodContext nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil)
		indexOf: aClassName
		ifAbsent: [ 0 ]	"#PCBitmap"
! !

!PCClassBuilder methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
initialize
	super initialize.
	instVarNames := ''.
	classVariablesNames := ''.
	superclass := PCObject.
	self bePointers
! !

!PCClassBuilder methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
instSize
	^ (superclass ifNil: [ 0 ] ifNotNil: [ superclass instSize ])
		+ instVarNames size
! !

!PCClassBuilder methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
instVarNames: anArray
	instVarNames := anArray
! !

!PCClassBuilder methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
isCompiledMethod
	^ formats includes: #compiledMethod
! !

!PCClassBuilder methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
isCompiledMethodClassIndex
	^ (self compactClassIndexFor: name)
		== (self compactClassIndexFor: #PCCompiledMethod)
! !

!PCClassBuilder methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
isPointers
	^ formats includes: #pointers
! !

!PCClassBuilder methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
isVariable
	^ formats includes: #variable
! !

!PCClassBuilder methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
isWeak
	^ formats includes: #weak
! !

!PCClassBuilder methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
isWords
	^ formats includes: #words
! !

!PCClassBuilder methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
name: aName
	name := aName
! !

!PCClassBuilder methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
newClassFormat
	"<2 bits of size><5 bits of compact class index><4 bits of inst spec><6 bits of size><1 bit with a 0>"

	| size1 instSpec size2 compactClassIndex |
	size1 := (self instSize + 1) // 64 bitAnd: 16r3.
	instSpec := self isCompiledMethod
		ifTrue: [ 12 ]
		ifFalse: [ self isWeak
				ifTrue: [ 4 ]
				ifFalse: [ self isPointers
						ifTrue: [ self isVariable
								ifTrue: [ self instSize > 0
										ifTrue: [ 3 ]
										ifFalse: [ 2 ] ]
								ifFalse: [ self instSize > 0
										ifTrue: [ 1 ]
										ifFalse: [ 0 ] ] ]
						ifFalse: [ self isWords
								ifTrue: [ 6 ]
								ifFalse: [ 8 ] ] ] ].
	size2 := (self instSize + 1) \\ 64 bitAnd: 16r3F.
	compactClassIndex := self compactClassIndex.
	^ (size1 bitShift: 16) + (compactClassIndex bitShift: 11)
		+ (instSpec bitShift: 7) + (size2 bitShift: 1)
! !

!PCClassBuilder methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
superclass: aClass
	superclass := aClass
! !

!PCBlock methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
asContext
	"Create a MethodContext that is ready to execute self.  Assumes self takes no args (if it does the args will be nil)"

	^ self asContextWithSender: nil
! !

!PCBlock methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
asContextWithSender: aContext
	"Inner private support method for evaluation.  Do not use unless you know what you're doing."

	^ (PCMethodContext newForMethod: outerContext method)
		setSender: aContext
			receiver: outerContext receiver
			method: outerContext method
			closure: self
			startpc: startpc;
		privRefresh
! !

!PCBlock methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
home
	^ outerContext home
! !

!PCBlock methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
ifError: errorHandlerBlock
	"Evaluate the block represented by the receiver. If an error occurs the given handler block is evaluated. The handler block can be either a zero- or two-argument block; if the latter, then the error message and receiver are supplied to it as parameters. Answer the value returned by the handler block if the receiver gets an error."

	"Warning: The receiver should not contain an explicit return since that would leave an obsolete error handler hanging around."

	"Examples:
		[1 whatsUpDoc] ifError: [:err :rcvr | ^ 'huh?'].
		[1 whatsUpDoc] ifError: ['huh'].
		[1 / 0] ifError: [:err :rcvr |
			'division by 0' = err
				ifTrue: [^ Float infinity]
				ifFalse: [self error: err]]
"

	| activeProcess lastHandler val |
	activeProcess := Processor activeProcess.
	lastHandler := activeProcess errorHandler.
	activeProcess
		errorHandler: [ :aString :aReceiver | 
			activeProcess errorHandler: lastHandler.
			errorHandlerBlock numArgs = 0
				ifTrue: [ ^ errorHandlerBlock value ].
			^ errorHandlerBlock value: aString value: aReceiver ].
	val := self value.
	activeProcess errorHandler: lastHandler.
	^ val
! !

!PCBlock methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
method
	^ self home method
! !

!PCBlock methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
msecs
	"Answer the number of milliseconds it took to evaluate this block."

	| startMSecs |
	startMSecs := PCSystem milliseconds.
	self value.
	^ PCSystem milliseconds - startMSecs
! !

!PCBlock methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
numArgs
	^ nargs
! !

!PCBlock methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
numCopiedValues
	"Answer the number of copied values of the receiver.  Since these are
	 stored in the receiver's indexable fields this is the receiver's basic size.
	 Primitive. Answer the number of indexable variables in the receiver. 
	 This value is the same as the largest legal subscript."

	<primitive: 62>
	^ self basicSize
! !

!PCBlock methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
outerContext
	^ outerContext
! !

!PCBlock methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
value
	"Evaluate this block without any arguments."

	<primitive: 201>
	^ self valueWithArguments: #()
! !

!PCBlock methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
value: arg
	"Evaluate this block with one argument."

	<primitive: 202>
	^ self valueWithArguments: (PCArray with: arg)
! !

!PCBlock methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
value: arg1 value: arg2
	"Evaluate this block with two arguments."

	<primitive: 203>
	^ self valueWithArguments: (PCArray with: arg1 with: arg2)
! !

!PCBlock methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
valueWithArguments: anArray
	"Primitive. Evaluate the block represented by the receiver. The argument is an Array whose elements are the arguments for the block. Fail if the length of the Array is not the same as the the number of arguments that the block was expecting. Fail if the block is already being executed. Essential. See Object documentation whatIsAPrimitive."

	<primitive: 206>
	anArray size = nargs
		ifTrue: [ self
				error: 'Attempt to evaluate a block that is already being evaluated.' ]
		ifFalse: [ self
				error: 'This block requires ' , nargs printString , ' arguments.' ]
! !

!PCContext methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
blockCopy: numArgs
	"Primitive. Distinguish a block of code from its enclosing method by creating a new BlockContext for that block. The compiler inserts into all methods that contain blocks the bytecodes to send the message blockCopy:. Do not use blockCopy: in code that you write!! Only the compiler can decide to send the message blockCopy:. Fail if numArgs is not a SmallInteger. Optional. No Lookup. See Object documentation whatIsAPrimitive."

	<primitive: 80>
	^ (PCBlock newForMethod: self home method)
		home: self home
		startpc: pc + 2
		nargs: numArgs
! !

!PCContext methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
isContextPart
	^ true
! !

!PCContext methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
sender
	"Answer the context that sent the message that created the receiver."

	^ sender
! !

!PCContext class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
newForMethod: aMethod
	"This is the only method for creating new contexts, other than by using the clone primitive. Any other attempts, such as inherited methods like shallowCopy, should be avoided or must at least be rewritten to determine the proper size for the method that will use this context. This is because asking a context its size (even basicSize!!) will not return the actual object size but only the number of fields currently accessible, as determined by stackp."

	^ super basicNew: aMethod frameSize
! !

!PCMethodContext methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
asContext
	^ self
! !

!PCMethodContext methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
home
	"Answer the context in which the receiver was defined."

	closureOrNil == nil
		ifTrue: [ ^ self ].
	^ closureOrNil outerContext home
! !

!PCMethodContext methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
method
	^ method
! !

!PCMethodContext methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
privRefresh
	"Reinitialize the receiver so that it is in the state it was at its creation."

	closureOrNil
		ifNotNil: [ pc := closureOrNil startpc.
			self stackp: closureOrNil numArgs + closureOrNil numCopiedValues.
			1 to: closureOrNil numCopiedValues do:
				[ :i | self tempAt: closureOrNil numArgs + i put: (closureOrNil at: i) ] ]
		ifNil: [ pc := method initialPC.
			self stackp: method numTemps.
			method numArgs + 1 to: method numTemps do: [ :i | self tempAt: i put: nil ] ]
! !

!PCMethodContext methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
removeSelf
	"Nil the receiver pointer and answer its former value."

	| result |
	result := receiver.
	receiver := nil.
	^ result
! !

!PCMethodContext methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
setSender: s receiver: r method: m closure: c startpc: startpc
	"Create the receiver's initial state."

	sender := s.
	receiver := r.
	method := m.
	closureOrNil := c.
	pc := startpc.
	stackp := 0
! !

!PCMethodContext methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
stackp: newStackp
	"Storing into the stack pointer is a potentially dangerous thing.
	This primitive stores nil into any cells that become accessible as a result,
	and it performs the entire operation atomically."

	"Once this primitive is implemented, failure code should cause an error"

	<primitive: 76>
	self error: 'stackp store failure'
! !

!PCMethodContext methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
tempAt: index put: value
	"Store the argument, value, as the temporary variable whose index is the 
	 argument, index.  Primitive. Assumes receiver is indexable. Answer the
	 value of an indexable element in the receiver. Fail if the argument index
	 is not an Integer or is out of bounds. Essential. See Object documentation
	 whatIsAPrimitive.  Override the default at:put: primitive to give latitude to
	 the VM in context management."

	<primitive: 211>
	
! !

!PCMessage methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
arguments
	"Answer the message arguments array."

	^ arguments
! !

!PCMessage methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
lookupClass
	"Answer the message lookupClass."

	^ lookupClass
! !

!PCMessage methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
printOn: aStream
	"Refer to the comment in Object|printOn:."

	super printOn: aStream.
	aStream
		nextPutAll: ' selector: ' , selector printString;
		nextPutAll: ' args: ' , arguments printString
! !

!PCMessage methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
selector
	"Answer the message selector."

	^ selector
! !

!PCMessage methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
sentTo: anObject
	"Answer the result of sending this message to the given object."

	lookupClass == nil
		ifTrue: [ ^ anObject perform: selector withArguments: arguments ]
		ifFalse: [ ^ anObject
				perform: selector
				withArguments: arguments
				inSuperclass: lookupClass ]
! !

!PCProcess methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
errorHandler
	^ errorHandler
! !

!PCProcess methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
errorHandler: aBlock
	errorHandler := aBlock
! !

!PCProcess methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
initSuspendedContext: aContext
	suspendedContext := aContext.
	priority := 1	"lowest priority"
! !

!PCProcess methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
nextLink
	^ nextLink
! !

!PCProcess methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
nextLink: aLink
	nextLink := aLink
! !

!PCProcess methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
printOn: aStream
	super printOn: aStream.
	aStream nextPutAll: ' in '.
	suspendedContext printOn: aStream
! !

!PCProcess methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
priority
	"Answer the priority of the receiver."

	^ priority
! !

!PCProcess methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
priority: anInteger
	"Set the receiver's priority to anInteger. The priority is used by the VM as an index into the scheduler's array of process queues so it must be an integer between 1 and Processor highestPriority."

	priority := (anInteger asInteger max: 1)
		min: Processor highestPriority
! !

!PCProcess methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
resume
	"Primitive. Allow this process to proceed. Put the receiver in line to become the active process. Fail if the receiver is already waiting on a queue (i.e., on a Semaphore or on a scheduler queue). Essential. See Object documentation whatIsAPrimitive."

	<primitive: 87>
	self primitiveFailed
! !

!PCProcess methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
suspend
	"Primitive. Stop this process in such a way that it can be restarted later (see resume). If the receiver is the active process, suspend it. Otherwise, remove the receiver from its suspended process list. Essential. See Object documentation whatIsAPrimitive."

	<primitive: 88>
	Processor activeProcess == self
		ifTrue: [ self primitiveFailed ]
		ifFalse: [ Processor
				remove: self
				ifAbsent: [ self error: 'This process was not active' ].
			myList := nil ]
! !

!PCProcess methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
suspendedContext
	^ suspendedContext
! !

!PCProcess methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
terminate
	"Stop this process forever."

	Processor activeProcess == self
		ifTrue: [ thisContext removeSelf suspend ]
		ifFalse: [ myList
				ifNotNil: [ myList remove: self ifAbsent: [  ].
					myList := nil ].
			suspendedContext := nil ]
! !

!PCProcess class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
for: aContext priority: anInteger
	"Answer an instance of me for the given context (usually a Block) at the given priority."

	^ self new
		initSuspendedContext: aContext;
		priority: anInteger
! !

!PCProcessorScheduler methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
activeProcess
	"Answer the currently running Process."

	^ activeProcess
! !

!PCProcessorScheduler methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
highestPriority
	"Answer the number of priority levels currently available for use."

	^ suspendedProcessLists size
! !

!PCProcessorScheduler methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
idleProcess
	"A default background process that simply loops forever. It runs only when no higher priority processes are available, perhaps because they are waiting on a semaphore or timer."

	[ true ] whileTrue: [  ]
	"do nothing"
! !

!PCProcessorScheduler methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
initProcessLists
	"Create process lists for prioriy levels 1 through 5."

	suspendedProcessLists := (1 to: 5)
		collect: [ :i | PCProcessList new ]
! !

!PCProcessorScheduler methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
installIdleProcess
	"Install an idle process of the lowest possible priority that is always runnable."

	"Details: The virtual machine requires that there is always some runnable process that can be scheduled; this background process ensures that this is the case."

	| idleList idleProc |
	"terminate any old idle processes"
	idleList := suspendedProcessLists at: 1.
	[ idleList isEmpty ] whileFalse: [ idleList first terminate ].
	idleProc := PCProcess for: [ self idleProcess ] priority: 1.
	(suspendedProcessLists at: idleProc priority) addLast: idleProc
! !

!PCProcessorScheduler methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
installStartProcess
	"Install the startup process as the active process. This process will run when Pharo Candle is started."

	activeProcess := PCProcess
		for: [ PCSystem start ] asContext
		priority: 3
! !

!PCProcessorScheduler methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
remove: aProcess ifAbsent: aBlock
	"Remove the given process from the list on which it is waiting. If the process is not on the queue for it's priority, evaluate the given block. Always answer the process."

	(suspendedProcessLists at: aProcess priority)
		remove: aProcess
		ifAbsent: aBlock.
	^ aProcess
! !

!PCProcessorScheduler class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
new
	"The VM depends on a unique scheduler."

	self cannotInstantiate
! !

!PCSystem class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
allObjectsDo: aBlock
	"Evaluate the argument, aBlock, for each object in the system excluding SmallIntegers."

	| object |
	object := self someObject.
	[ 0 == object ]
		whileFalse: [ aBlock value: object.
			object := object nextObject ]
! !

!PCSystem class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
append: aString toFile: fileName
	"Append the given string to the file with the given name."

	| f |
	f := PCFile new.
	f openReadWrite: f localFolderPath , fileName.
	f position: f size.
	f nextPutAll: aString.
	f cr.
	f close
! !

!PCSystem class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
exitToDebugger
	"Tell the VM that we've encountered an unhandled error or halt."

	<primitive: 114>
	
! !

!PCSystem class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
garbageCollect
	"Primitive. Reclaims all garbage and answers the number of bytes of available space."

	<primitive: 130>
	self primitiveFailed
! !

!PCSystem class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
getVMParameters
	"Answer an Array containing the current values of the VM's internal parameter and statistics registers. The same primitive can be called with one integer argument to read a specific parameter and with two parameters to set a writable parameter, although these variations may not be implemented. Optional."

	"VM parameters are numbered as follows:
		1	end of old-space (0-based, read-only)
		2	end of young-space (read-only)
		3	end of memory (read-only)
		4	allocationCount (read-only)
		5	allocations between GCs (read-write)
		6	survivor count tenuring threshold (read-write)
		7	full GCs since startup (read-only)
		8	total milliseconds in full GCs since startup (read-only)
		9	incremental GCs since startup (read-only)
		10	total milliseconds in incremental GCs since startup (read-only)
		11	tenures of surving objects since startup (read-only)
		12-20 specific to the translating VM (obsolete)
		21   root table size (read-only)
		22   root table overflows since startup (read-only)"

	<primitive: 254>
	self primitiveFailed
! !

!PCSystem class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
getchar
	"Answer the ASCII value of the next character from the keyboard buffer. Answer nil if no key has been typed."

	| ch |
	(ch := self primKeyboardNext)
		ifNil: [ ^ nil ]
		ifNotNil: [ ^ ch bitAnd: 16rFF ]
! !

!PCSystem class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
graphicsTest
	"This method is called when the image is started. Add a call to your own code here."

	"MSystem graphicsTest"

	| f |
	self log: 'Screen size: ' , PCForm new primScreenSize printString.
	f := PCForm new.
	f beDisplayDepth: 32.
	0 to: 255 do: [ :r | 
		0 to: 255 do: [ :gb | 
			f setColorR: r g: gb b: gb.
			f
				fillRectX: gb
				y: 0
				w: 1
				h: f height ] ].
	f setColorR: 255 g: 255 b: 0.
	f
		fillRectX: 0
		y: 0
		w: 30
		h: 30
! !

!PCSystem class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
incrementalGarbageCollect
	"Primitive. Reclaims recently created garbage fairly quickly and answers the number of bytes of available space."

	<primitive: 131>
	
! !

!PCSystem class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
log: aString
	self append: aString toFile: 'log.txt'
! !

!PCSystem class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
milliseconds
	"Answer the current value of the millisecond clock. Optional primitive."

	"Note: The millisecond clock may wrap around frequently, depending on the underlaying hardware. If no hardware clock is available, it may always return 0."

	<primitive: 135>
	^ 0
! !

!PCSystem class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
primKeyboardNext
	"Answer the next keycode from the keyboard buffer. A keycode is 12 bits: four modifier flags in the 4 most significant bits and the 8 bit ISO character in the least significant bits. Answer nil if no key has been typed."

	<primitive: 108>
	^ nil
! !

!PCSystem class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
primitiveGetSpecialObjectsArray
	"Answer the virtual machine's special objects array."

	<primitive: 129>
	self primitiveFailed
! !

!PCSystem class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
quit
	"Exit from the system."

	<primitive: 113>
	
! !

!PCSystem class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
specialObjectsArray
	^ SpecialObjectsArray
! !

!PCSystem class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
specialObjectsArray: anArray
	SpecialObjectsArray := anArray
! !

!PCSystem class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
start
	self log: 'Welcome to Pharo Candle edition!!' substrings asString.
	self log: self tinyBenchmarks.
	self log: PCForm new primScreenSize printString.
	self testNormalObject.
	self testByteObject.
	PCObject superclass ifNil: [ self quit ]
! !

!PCSystem class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
testByteObject
	| test |
	test := (PCObject
		variableByteSubclass: #Test
		instanceVariableNames: ''
		classVariableNames: '') new: 5.
	self log: 'size of byte object created: ' , test basicSize asString.
	test at: 1 put: 17
! !

!PCSystem class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
testNormalObject
	| test |
	test := (PCObject
		subclass: #Test
		instanceVariableNames: 'test1 test2'
		classVariableNames: '') new.
	test instVarAt: 1 put: 1.
	test instVarAt: 2 put: (test instVarAt: 1) + 2.
	self log: (test instVarAt: 2) asString
! !

!PCSystem class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
tinyBenchmarks
	"Report the results of running the two tiny benchmarks."

	| n t1 t2 r |
	n := 25.
	t1 := [ n benchmark ] msecs.
	t2 := [ r := 28 benchFib ] msecs.
	^ (n * 500000 * 1000 // t1) printString , ' bytecodes/sec; '
		, (r * 1000 // t2) printString , ' sends/sec'
! !

!PCMagnitude methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
< aMagnitude
	"Answer whether the receiver is less than the argument."

	^ self subclassResponsibility
! !

!PCMagnitude methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
<= aMagnitude
	"Answer whether the receiver is less than or equal to the argument."

	^ (self > aMagnitude) not
! !

!PCMagnitude methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
= aMagnitude
	"Compare the receiver with the argument and answer with true if the 
	receiver is equal to the argument. Otherwise answer false."

	^ self subclassResponsibility
! !

!PCMagnitude methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
> aMagnitude
	"Answer whether the receiver is greater than the argument."

	^ aMagnitude < self
! !

!PCMagnitude methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
>= aMagnitude
	"Answer whether the receiver is greater than or equal to the argument."

	^ (self < aMagnitude) not
! !

!PCMagnitude methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
between: min and: max
	"Answer whether the receiver is less than or equal to the argument, max, 
	and greater than or equal to the argument, min."

	^ self >= min and: [ self <= max ]
! !

!PCMagnitude methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
hash
	"Hash must be redefined whenever = is redefined."

	^ self subclassResponsibility
! !

!PCMagnitude methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
max: aMagnitude
	"Answer the receiver or the argument, whichever has the greater 
	magnitude."

	self > aMagnitude
		ifTrue: [ ^ self ]
		ifFalse: [ ^ aMagnitude ]
! !

!PCMagnitude methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
min: aMagnitude
	"Answer the receiver or the argument, whichever has the lesser 
	magnitude."

	self < aMagnitude
		ifTrue: [ ^ self ]
		ifFalse: [ ^ aMagnitude ]
! !

!PCCharacter methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
< aCharacter
	"Answer true if my value is less than the given character's value."

	^ self asciiValue < aCharacter asciiValue
! !

!PCCharacter methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
= aCharacter
	"Primitive. Answer true if the receiver and the argument are the same object (have the same object pointer) and false otherwise. Optional. See Object documentation whatIsAPrimitive."

	<primitive: 110>
	^ self == aCharacter
! !

!PCCharacter methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
> aCharacter
	"Answer true if my value is greater than the given character's value."

	^ self asciiValue > aCharacter asciiValue
! !

!PCCharacter methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
asCharacter
	"Answer the receiver itself."

	^ self
! !

!PCCharacter methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
asInteger
	"Answer my ASCII value."

	^ value
! !

!PCCharacter methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
asLowercase
	"If I am uppercase, answer the matching lowercase Character. Otherwise, answer myself."

	(65 <= value and: [ value <= 90 ])
		ifTrue: [ ^ (value + 32) asCharacter ]
		ifFalse: [ ^ self ]	"self isUppercase"
! !

!PCCharacter methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
asString
	^ PCString with: self
! !

!PCCharacter methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
asUppercase
	"If the receiver is lowercase, answer its matching uppercase Character."

	(97 <= value and: [ value <= 122 ])
		ifTrue: [ ^ (value - 32) asCharacter ]
		ifFalse: [ ^ self ]	"self isLowercase"
! !

!PCCharacter methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
asciiValue
	"Answer the value of the receiver that represents its ascii encoding."

	^ value
! !

!PCCharacter methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
basicCopy
	"Answer myself because Characters are unique."

	^ self
! !

!PCCharacter methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
digitValue
	"Answer 0-9 if the receiver is $0-$9, 10-35 if it is $A-$Z, and -1 otherwise. This is used to parse literal numbers of radix 2-36."

	value <= $9 asciiValue
		ifTrue: [ ^ value - $0 asciiValue ].
	value >= $A asciiValue
		ifTrue: [ value <= $Z asciiValue
				ifTrue: [ ^ value - $A asciiValue + 10 ] ].
	^ -1
! !

!PCCharacter methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
hash
	"My hash is my value."

	^ value
! !

!PCCharacter methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
isDigit
	"Answer whether the receiver is a digit."

	^ value >= 48 and: [ value <= 57 ]
! !

!PCCharacter methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
isLetter
	"Answer whether the receiver is a letter."

	^ (65 <= value and: [ value <= 90 ])
		or: [ 97 <= value and: [ value <= 122 ] ]
! !

!PCCharacter methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
isSpecial
	"Answer whether the receiver is one of the special characters"

	^ '+/\*~<>=@%|&?!!' includes: self
! !

!PCCharacter methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
isUppercase
	"Answer whether the receiver is an uppercase letter."

	^ 65 <= value and: [ value <= 90 ]
! !

!PCCharacter methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
isVowel
	"Answer true if the receiver is one of the vowels AEIOU (either upper- or lowercase)."

	^ 'AEIOU' includes: self asUppercase
! !

!PCCharacter methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
printOn: aStream
	aStream nextPut: $$.
	aStream nextPut: self
! !

!PCCharacter methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
setValue: newValue
	value ifNotNil: [ ^ self error: 'Characters are immutable' ].
	value := newValue
! !

!PCCharacter methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
to: other
	"Answer with a collection of all characters in the given ASCII range. For example, $a to: $z"

	^ (self asciiValue to: other asciiValue)
		collect: [ :i | i asCharacter ]
! !

!PCCharacter methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
tokenish
	"Answer true if the receiver is a valid token-character--that is, a letter, digit, or colon."

	^ self isLetter or: [ self isDigit or: [ self = $: ] ]
! !

!PCCharacter class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
asciiValue: anInteger
	"Answer the Character whose ASCII value is anInteger."

	^ CharacterTable at: anInteger + 1
! !

!PCCharacter class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
cr
	"Answer the Character representing a carriage return."

	^ 13 asCharacter
! !

!PCCharacter class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
digitValue: x
	"Answer the Character whose digit value is x. For example, answer $9 for x=9, $0 for x=0, $A for x=10, $Z for x=35."

	| i |
	i := x asInteger.
	^ CharacterTable
		at:
			(i < 10
				ifTrue: [ 48 + i ]
				ifFalse: [ 55 + i ]) + 1
! !

!PCCharacter class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
initialize
	"Create the table of DigitsValues."

	"self initialize"

	CharacterTable
		ifNil: [ CharacterTable := PCArray new: 256.
			1 to: 256 do: [ :i | CharacterTable at: i put: (self basicNew setValue: i - 1) ] ]
	"Initialize only once to ensure that byte characters are unique"
! !

!PCCharacter class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
lf
	"Answer the Character representing a linefeed."

	^ 10 asCharacter
! !

!PCCharacter class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
new
	"There are 256 unique Characters; creating new ones is not allowed."

	self cannotInstantiate
! !

!PCCharacter class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
setCharacterTable: aCharacterTable
	CharacterTable := aCharacterTable
! !

!PCCharacter class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
space
	"Answer the Character representing a space."

	^ 32 asCharacter
! !

!PCCharacter class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
tab
	"Answer the Character representing a tab."

	^ 9 asCharacter
! !

!PCCharacter class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
value: anInteger
	"Answer the MCharacter whose ascii value is anInteger."

	^ CharacterTable at: anInteger + 1
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
* aNumber
	"Answer the result of multiplying the receiver by aNumber."

	self subclassResponsibility
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
+ aNumber
	"Answer the sum of the receiver and aNumber."

	self subclassResponsibility
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
- aNumber
	"Answer the difference between the receiver and aNumber."

	self subclassResponsibility
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
/ aNumber
	"Answer the result of dividing the receiver by aNumber."

	self subclassResponsibility
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
// aNumber
	"Integer quotient defined by division with truncation toward negative 
	infinity. 9//4 = 2, -9//4 = -3. -0.9//0.4 = -3. \\ answers the remainder 
	from this division."

	^ (self / aNumber) floor
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
\\ aNumber
	"modulo. Remainder defined in terms of //. Answer a Number with the 
	same sign as aNumber. e.g. 9\\4 = 1, -9\\4 = 3, 9\\-4 = -3, 0.9\\0.4 = 0.1."

	^ self - (self // aNumber * aNumber)
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
abs
	"Answer a Number that is the absolute value (positive magnitude) of the 
	receiver."

	self < 0
		ifTrue: [ ^ self negated ]
		ifFalse: [ ^ self ]
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
adaptToFloat: rcvr andSend: selector
	"If I am involved in arithmetic with a Float, convert me to a Float."

	^ rcvr perform: selector with: self asFloat
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
adaptToInteger: rcvr andSend: selector
	"If I am involved in arithmetic with a Integer, convert us and evaluate exprBlock."

	^ self subclassResponsibility
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
arcCos
	"The receiver is the cosine of an angle. Answer the angle measured in 
	radians."

	^ self asFloat arcCos
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
arcSin
	"The receiver is the sine of an angle. Answer the angle measured in 
	radians."

	^ self asFloat arcSin
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
arcTan
	"The receiver is the tangent of an angle. Answer the angle measured in 
	radians."

	^ self asFloat arcTan
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
asInteger
	"Answer an Integer nearest the receiver toward zero."

	^ self truncated
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
ceiling
	"Answer the integer nearest the receiver toward positive infinity."

	self <= 0
		ifTrue: [ ^ self truncated ]
		ifFalse: [ ^ self negated floor negated ]
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
cos
	"The receiver represents an angle measured in radians. Answer its cosine."

	^ self asFloat cos
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
degreesToRadians
	"The receiver is assumed to represent degrees. Answer the conversion to 
	radians."

	^ self asFloat degreesToRadians
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
exp
	"Answer the exponential of the receiver as a floating point number."

	^ self asFloat exp
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
floor
	"Answer the integer nearest the receiver toward negative infinity."

	| truncation |
	truncation := self truncated.
	self >= 0
		ifTrue: [ ^ truncation ].
	self = truncation
		ifTrue: [ ^ truncation ]
		ifFalse: [ ^ truncation - 1 ]
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
floorLog: radix
	"Answer the floor of the log base radix of the receiver."

	^ self asFloat floorLog: radix
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
isNumber
	^ true
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
ln
	"Answer the natural log of the receiver."

	^ self asFloat ln
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
log
	"Answer the base-10 log of the receiver."

	^ self asFloat log
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
log: aNumber
	"Answer the log base aNumber of the receiver."

	^ self ln / aNumber ln
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
negated
	"Answer a Number that is the negation of the receiver."

	^ 0 - self
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
negative
	"Answer whether the receiver is mathematically negative."

	^ self < 0
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
printOn: aStream
	"Default print radix is 10"

	self printOn: aStream base: 10
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
printStringBase: base
	| stream |
	stream := PCWriteStream on: (PCString new: 100).
	self printOn: stream base: base.
	^ stream contents
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
quo: aNumber
	"Integer quotient defined by division with truncation toward zero. -9 quo: 
	4 = -2, -0.9 quo: 0.4 = -2. rem: answers the remainder from this division."

	^ (self / aNumber) truncated
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
radiansToDegrees
	"The receiver is assumed to represent radians. Answer the conversion to 
	degrees."

	^ self asFloat radiansToDegrees
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
raisedTo: aNumber
	"Answer the receiver raised to aNumber."

	aNumber isInteger
		ifTrue:
			[ ^ self raisedToInteger: aNumber ].
	"Do the special case of integer power"
	aNumber = 0
		ifTrue: [ ^ 1 ].	"Special case of exponent=0"
	aNumber = 1
		ifTrue: [ ^ self ].	"Special case of exponent=1"
	^ (aNumber * self ln) exp	"Otherwise raise it to the power using logarithms"
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
raisedToInteger: anInteger
	"Answer the receiver raised to the power anInteger where the argument 
	must be a kind of Integer. This is a special case of raisedTo:."

	anInteger isInteger
		ifFalse: [ ^ self error: 'raisedToInteger: only works for integral arguments' ].
	anInteger = 0
		ifTrue: [ ^ 1 ].
	anInteger = 1
		ifTrue: [ ^ self ].
	anInteger > 1
		ifTrue: [ ^ (self * self raisedToInteger: anInteger // 2)
				* (self raisedToInteger: anInteger \\ 2) ].
	^ (self raisedToInteger: anInteger negated) reciprocal
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
reciprocal
	"Answer 1 divided by the receiver. Create an error notification if the 
	receiver is 0."

	self = 0
		ifTrue: [ ^ self error: 'zero has no reciprocal' ]
		ifFalse: [ ^ 1 / self ]
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
rem: aNumber
	"Remainder defined in terms of quo:. Answer a Number with the same 
	sign as self. e.g. 9 rem: 4 = 1, -9 rem: 4 = -1. 0.9 rem: 0.4 = 0.1."

	^ self - ((self quo: aNumber) * aNumber)
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
roundTo: aNumber
	"Answer the integer that is a multiple of aNumber that is nearest the 
	receiver."

	^ (self / aNumber) rounded * aNumber
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
roundUpTo: aNumber
	"Answer the next multiple of aNumber toward infinity that is nearest the receiver."

	^ (self / aNumber) ceiling * aNumber
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
rounded
	"Answer the integer nearest the receiver."

	^ (self + (self sign / 2)) truncated
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
sign
	"Answer 1 if the receiver is greater than 0, -1 if less than 0, else 0."

	self > 0
		ifTrue: [ ^ 1 ].
	self < 0
		ifTrue: [ ^ -1 ].
	^ 0
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
sin
	"The receiver represents an angle measured in radians. Answer its sine."

	^ self asFloat sin
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
sqrt
	"Answer the square root of the receiver."

	^ self asFloat sqrt
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
tan
	"The receiver represents an angle measured in radians. Answer its 
	tangent."

	^ self asFloat tan
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
to: stop
	"Answer an Interval from the receiver up to the argument incrementing by 1."

	^ PCInterval from: self to: stop by: 1
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
to: stop by: step
	"Answer an Interval from the receiver up to stop incrementing by step."

	^ PCInterval from: self to: stop by: step
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
to: stop by: step do: aBlock
	"Normally compiled in-line, and therefore not overridable.
	Evaluate aBlock for each element of the interval (self to: stop by: step)."

	| nextValue |
	nextValue := self.
	step < 0
		ifTrue: [ [ stop <= nextValue ]
				whileTrue: [ aBlock value: nextValue.
					nextValue := nextValue + step ] ]
		ifFalse: [ [ stop >= nextValue ]
				whileTrue: [ aBlock value: nextValue.
					nextValue := nextValue + step ] ]
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
to: stop do: aBlock
	"Normally compiled in-line, and therefore not overridable.
	Evaluate aBlock for each element of the interval (self to: stop by: 1)."

	| nextValue |
	nextValue := self.
	[ nextValue <= stop ]
		whileTrue: [ aBlock value: nextValue.
			nextValue := nextValue + 1 ]
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
truncateTo: aNumber
	"Answer the next multiple of aNumber toward zero that is nearest the 
	receiver."

	^ (self quo: aNumber) * aNumber
! !

!PCNumber methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
truncated
	"Answer an integer nearest the receiver toward zero."

	^ self quo: 1
! !

!PCNumber class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
readFrom: stringOrStream
	"Answer a number as described on aStream. The number may include a leading radix specification, as in 16rFADE."

	| value base aStream sign |
	aStream := stringOrStream class = PCString
		ifTrue: [ PCReadStream on: stringOrStream ]
		ifFalse: [ stringOrStream ].
	sign := (aStream peekFor: $-)
		ifTrue: [ -1 ]
		ifFalse: [ 1 ].
	base := 10.
	value := PCInteger readFrom: aStream base: base.
	(aStream peekFor: $r)
		ifTrue: [ (base := value) < 2
				ifTrue: [ ^ self error: 'Invalid radix' ].
			(aStream peekFor: $-)
				ifTrue: [ sign := sign negated ].
			value := PCInteger readFrom: aStream base: base ].
	"<base>r<integer>"
	^ self
		readRemainderOf: value
		from: aStream
		base: base
		withSign: sign
! !

!PCNumber class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
readFrom: stringOrStream base: base
	"Answer a number as described on aStream in the given number base."

	| aStream sign |
	aStream := stringOrStream class = PCString
		ifTrue: [ PCReadStream on: stringOrStream ]
		ifFalse: [ stringOrStream ].
	sign := (aStream peekFor: $-)
		ifTrue: [ -1 ]
		ifFalse: [ 1 ].
	^ self
		readRemainderOf: (PCInteger readFrom: aStream base: base)
		from: aStream
		base: base
		withSign: sign
! !

!PCNumber class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
readRemainderOf: integerPart from: aStream base: base withSign: sign
	"Read optional fractional part and exponent, and return the final result"

	"MNumber readFrom: (ReadStream on: '3r-22.2')"

	| value fraction fracpos |
	value := integerPart.
	(aStream peekFor: $.)
		ifTrue: [ (aStream atEnd not
				and: [ aStream peek digitValue between: 0 and: base - 1 ])
				ifTrue: [ fracpos := aStream position.
					fraction := PCInteger readFrom: aStream base: base.
					fraction := fraction asFloat
						/ (base raisedTo: aStream position - fracpos).
					value := value asFloat + fraction ]
				ifFalse: [ aStream skip: -1.	"un-gobble the period"
					^ value * sign ]
			"oops - just <integer>." ].
	"<integer>.<fraction>"
	(aStream peekFor: $e)
		ifTrue:
			[ value := value * (base raisedTo: (PCInteger readFrom: aStream)) ].
	"<integer>e<exponent>"
	^ value * sign
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
* aNumber
	"Refer to the comment in Number * "

	aNumber isInteger
		ifTrue:
			[ ^ self digitMultiply: aNumber neg: self negative ~~ aNumber negative ].
	^ aNumber adaptToInteger: self andSend: #*
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
+ aNumber
	"Refer to the comment in Number + "

	aNumber isInteger
		ifTrue: [ self negative == aNumber negative
				ifTrue: [ ^ (self digitAdd: aNumber) normalize ]
				ifFalse: [ ^ self digitSubtract: aNumber ] ].
	^ aNumber adaptToInteger: self andSend: #+
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
- aNumber
	"Refer to the comment in Number - "

	aNumber isInteger
		ifTrue: [ self negative == aNumber negative
				ifTrue: [ ^ self digitSubtract: aNumber ]
				ifFalse: [ ^ (self digitAdd: aNumber) normalize ] ].
	^ aNumber adaptToInteger: self andSend: #-
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
/ aNumber
	"Refer to the comment in Number / "

	| quoRem |
	aNumber isInteger
		ifTrue: [ quoRem := self
				digitDiv: aNumber abs
				neg: self negative ~~ aNumber negative.
			(quoRem at: 2) = 0
				ifTrue: [ ^ (quoRem at: 1) normalize ]
				ifFalse: [ ^ self asFloat / aNumber asFloat ] ].
	^ aNumber adaptToInteger: self andSend: #/
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
// aNumber
	| q |
	aNumber = 0
		ifTrue: [ ^ self error: 'division by 0' ].
	self = 0
		ifTrue: [ ^ 0 ].
	q := self quo: aNumber.	"Refer to the comment in Number|//."
	(q negative
		ifTrue: [ q * aNumber ~= self ]
		ifFalse: [ q = 0 and: [ self negative ~= aNumber negative ] ])
		ifTrue: [ ^ q - 1	"Truncate towards minus infinity" ]
		ifFalse: [ ^ q ]
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
< aNumber
	aNumber isInteger
		ifTrue: [ self negative == aNumber negative
				ifTrue: [ self negative
						ifTrue: [ ^ (self digitCompare: aNumber) > 0 ]
						ifFalse: [ ^ (self digitCompare: aNumber) < 0 ] ]
				ifFalse: [ ^ self negative ] ].
	^ aNumber adaptToInteger: self andSend: #<
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
= aNumber
	aNumber isNumber
		ifFalse: [ ^ false ].
	aNumber isInteger
		ifTrue: [ aNumber negative == self negative
				ifTrue: [ ^ (self digitCompare: aNumber) = 0 ]
				ifFalse: [ ^ false ] ].
	^ aNumber adaptToInteger: self andSend: #=
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
> aNumber
	aNumber isInteger
		ifTrue: [ self negative == aNumber negative
				ifTrue: [ self negative
						ifTrue: [ ^ (self digitCompare: aNumber) < 0 ]
						ifFalse: [ ^ (self digitCompare: aNumber) > 0 ] ]
				ifFalse: [ ^ aNumber negative ] ].
	^ aNumber adaptToInteger: self andSend: #>
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
asCharacter
	"Answer the Character whose value is the receiver."

	^ PCCharacter asciiValue: self
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
asFloat
	"Answer a Float that represents the value of the receiver.
	Optimized to process only the significant digits of a LargeInteger."

	| sum firstByte shift |
	shift := 0.
	sum := 0.
	firstByte := self size - 7 max: 1.
	firstByte to: self size do: [ :byteIndex | 
		sum := ((self digitAt: byteIndex) asFloat timesTwoPower: shift) + sum.
		shift := shift + 8 ].
	^ sum * self sign asFloat timesTwoPower: (firstByte - 1) * 8
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
asInteger
	"Answer with the receiver itself."

	^ self
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
benchFib
	"Handy send-heavy benchmark"

	"(result // seconds to run) = approx calls per second"

	" | r t |
	  t := Time millisecondsToRun: [r := 26 benchFib].
	  (r * 1000) // t"

	"138000 on a Mac 8100/100"

	^ self < 2
		ifTrue: [ 1 ]
		ifFalse: [ (self - 1) benchFib + (self - 2) benchFib + 1 ]
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
benchmark
	"Handy bytecode-heavy benchmark"

	"(500000 // time to run) = approx bytecodes per second"

	"5000000 // (Time millisecondsToRun: [10 benchmark]) * 1000"

	"3059000 on a Mac 8100/100"

	| size flags prime k count |
	size := 8190.
	1 to: self do: [ :iter | 
		count := 0.
		flags := (1 to: size) collect: [ :i | true ].
		1 to: size do: [ :i | 
			(flags at: i)
				ifTrue: [ prime := i + 1.
					k := i + prime.
					[ k <= size ]
						whileTrue: [ flags at: k put: false.
							k := k + prime ].
					count := count + 1 ] ] ].
	^ count
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
bitAnd: n
	"Answer an Integer whose bits are the logical AND of the receiver's bits 
	and those of the argument, n."

	| norm |
	norm := n normalize.
	^ self
		digitLogic: norm
		op: #bitAnd:
		length: (self digitLength max: norm digitLength)
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
bitClear: aMask
	"Answer an Integer equal to the receiver, except with all bits cleared that are set in aMask."

	^ (self bitOr: aMask) - aMask
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
bitInvert
	"Answer an Integer whose bits are the logical negation of the receiver's bits.
	Numbers are interpreted as having 2's-complement representation."

	^ -1 - self
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
bitOr: n
	"Answer an Integer whose bits are the logical OR of the receiver's bits 
	and those of the argument, n."

	| norm |
	norm := n normalize.
	^ self
		digitLogic: norm
		op: #bitOr:
		length: (self digitLength max: norm digitLength)
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
bitShift: shiftCount
	"Answer an Integer whose value (in twos-complement representation) is 
	the receiver's value (in twos-complement representation) shifted left by 
	the number of bits indicated by the argument. Negative arguments shift 
	right. Zeros are shifted in from the right in left shifts."

	| rShift |
	shiftCount >= 0
		ifTrue: [ ^ self digitLshift: shiftCount ].
	rShift := 0 - shiftCount.
	^ (self
		digitRshift: (rShift bitAnd: 7)
		bytes: (rShift bitShift: -3)
		lookfirst: self digitLength) normalize
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
bitXor: n
	"Answer an Integer whose bits are the logical XOR of the receiver's bits 
	and those of the argument, n."

	| norm |
	norm := n normalize.
	^ self
		digitLogic: norm
		op: #bitXor:
		length: (self digitLength max: norm digitLength)
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
ceiling
	"Refer to the comment in Number|ceiling."

	
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
copyto: x
	| stop |
	stop := self digitLength min: x digitLength.
	^ x
		replaceFrom: 1
		to: stop
		with: self
		startingAt: 1
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
digitAdd: arg
	| len arglen accum sum |
	accum := 0.
	(len := self digitLength) < (arglen := arg digitLength)
		ifTrue: [ len := arglen ].	"Open code max: for speed"
	sum := PCInteger new: len neg: self negative.
	1 to: len do: [ :i | 
		accum := (accum bitShift: -8) + (self digitAt: i) + (arg digitAt: i).
		sum digitAt: i put: (accum bitAnd: 255) ].
	accum > 255
		ifTrue: [ sum := sum growby: 1.
			sum at: sum digitLength put: (accum bitShift: -8) ].
	^ sum
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
digitCompare: arg
	"Compare the magnitude of self with that of arg.
	Return a code of 1, 0, -1 for self >, = , < arg"

	| len arglen argDigit selfDigit |
	len := self digitLength.
	(arglen := arg digitLength) ~= len
		ifTrue: [ arglen > len
				ifTrue: [ ^ -1 ]
				ifFalse: [ ^ 1 ] ].
	[ len > 0 ]
		whileTrue: [ (argDigit := arg digitAt: len) ~= (selfDigit := self digitAt: len)
				ifTrue: [ argDigit < selfDigit
						ifTrue: [ ^ 1 ]
						ifFalse: [ ^ -1 ] ].
			len := len - 1 ].
	^ 0
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
digitDiv: arg neg: ng
	"Answer with an array of (quotient, remainder)."

	| quo rem ql d div dh dnh dl qhi qlo j l hi lo r3 a t |
	arg = 0
		ifTrue: [ ^ self error: 'division by 0' ].
	l := self digitLength - arg digitLength + 1.
	l <= 0
		ifTrue: [ ^ PCArray with: 0 with: self ].
	d := 8 - arg lastDigit highBit.
	div := arg digitLshift: d.
	div := div growto: div digitLength + 1.	"shifts so high order word is >=128"
	rem := self digitLshift: d.
	rem digitLength = self digitLength
		ifTrue: [ rem := rem growto: self digitLength + 1 ].	"makes a copy and shifts"
	quo := PCInteger new: l neg: ng.
	dl := div digitLength - 1.	"Last actual byte of data"
	ql := l.
	dh := div digitAt: dl.
	dnh := dl = 1
		ifTrue: [ 0 ]
		ifFalse: [ div digitAt: dl - 1 ].
	1 to: ql do: [ :k | 
		j := rem digitLength + 1 - k.	"r1 := rem digitAt: j."
		(rem digitAt: j) = dh
			ifTrue: [ qhi := qlo := 15	"i.e. q=255" ]
			ifFalse: [ t := ((rem digitAt: j) bitShift: 4)
					+ ((rem digitAt: j - 1) bitShift: -4).
				qhi := t // dh.
				t := (t \\ dh bitShift: 4) + ((rem digitAt: j - 1) bitAnd: 15).
				qlo := t // dh.
				t := t \\ dh.	"Next compute (hi,lo) := q*dnh"
				hi := qhi * dnh.
				lo := qlo * dnh + ((hi bitAnd: 15) bitShift: 4).
				hi := (hi bitShift: -4) + (lo bitShift: -8).
				lo := lo bitAnd: 255.	"Correct overestimate of q.  
					Max of 2 iterations through loop -- see Knuth vol. 2"
				r3 := j < 3
					ifTrue: [ 0 ]
					ifFalse: [ rem digitAt: j - 2 ].
				[ (t < hi or: [ t = hi and: [ r3 < lo ] ])
					and: [ qlo := qlo - 1.
						lo := lo - dnh.
						lo < 0
							ifTrue: [ hi := hi - 1.
								lo := lo + 256 ].
						hi >= dh ]
				"i.e. (t,r3) < (hi,lo)" ] whileTrue: [ hi := hi - dh ].
				qlo < 0
					ifTrue: [ qhi := qhi - 1.
						qlo := qlo + 16 ] ].
		"Compute q = (r1,r2)//dh, t = (r1,r2)\\dh.  
					Note that r1,r2 are bytes, not nibbles.  
					Be careful not to generate intermediate results exceeding 13 bits."
		"r2 := (rem digitAt: j - 1)."	"Subtract q*div from rem"
		l := j - dl.
		a := 0.
		1 to: div digitLength do: [ :i | 
			hi := (div digitAt: i) * qhi.
			lo := a + (rem digitAt: l) - ((hi bitAnd: 15) bitShift: 4)
				- ((div digitAt: i) * qlo).
			rem digitAt: l put: lo - (lo // 256 * 256).	"sign-tolerant form of (lo bitAnd: 255)"
			a := lo // 256 - (hi bitShift: -4).
			l := l + 1 ].
		a < 0
			ifTrue: [ qlo := qlo - 1.
				l := j - dl.
				a := 0.
				1 to: div digitLength do: [ :i | 
					a := (a bitShift: -8) + (rem digitAt: l) + (div digitAt: i).
					rem digitAt: l put: (a bitAnd: 255).
					l := l + 1 ] ].
		"Add div back into rem, decrease q by 1"
		quo digitAt: quo digitLength + 1 - k put: (qhi bitShift: 4) + qlo ].
	"maintain quo*arg+rem=self"
	"Estimate rem/div by dividing the leading to bytes of rem by dh."
	"The estimate is q = qhi*16+qlo, where qhi and qlo are nibbles."
	rem := rem digitRshift: d bytes: 0 lookfirst: dl.
	^ PCArray with: quo with: rem
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
digitLogic: arg op: op length: len
	| result neg1 neg2 rneg z1 z2 rz b1 b2 b |
	neg1 := self negative.
	neg2 := arg negative.
	rneg := ((neg1
		ifTrue: [ -1 ]
		ifFalse: [ 0 ])
		perform: op
		with:
			(neg2
				ifTrue: [ -1 ]
				ifFalse: [ 0 ])) < 0.
	result := PCInteger new: len neg: rneg.
	rz := z1 := z2 := true.
	1 to: result digitLength do: [ :i | 
		b1 := self digitAt: i.
		neg1
			ifTrue: [ b1 := z1
					ifTrue: [ b1 = 0
							ifTrue: [ 0 ]
							ifFalse: [ z1 := false.
								256 - b1 ] ]
					ifFalse: [ 255 - b1 ] ].
		b2 := arg digitAt: i.
		neg2
			ifTrue: [ b2 := z2
					ifTrue: [ b2 = 0
							ifTrue: [ 0 ]
							ifFalse: [ z2 := false.
								256 - b2 ] ]
					ifFalse: [ 255 - b2 ] ].
		b := b1 perform: op with: b2.
		b = 0
			ifTrue: [ result digitAt: i put: 0 ]
			ifFalse: [ result
					digitAt: i
					put:
						(rneg
							ifTrue: [ rz
									ifTrue: [ rz := false.
										256 - b ]
									ifFalse: [ 255 - b ] ]
							ifFalse: [ b ]) ] ].
	^ result normalize
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
digitLshift: shiftCount
	| carry rShift mask len result digit byteShift bitShift highBit |
	(highBit := self highBit) = 0
		ifTrue: [ ^ 0 ].
	len := (highBit + shiftCount + 7) // 8.
	result := PCInteger new: len neg: self negative.
	byteShift := shiftCount // 8.
	bitShift := shiftCount \\ 8.
	bitShift = 0
		ifTrue: [ ^ result
				replaceFrom: byteShift + 1
				to: len
				with: self
				startingAt: 1 ].
	"Fast version for byte-aligned shifts"
	carry := 0.
	rShift := bitShift - 8.
	mask := 255 bitShift: 0 - bitShift.
	1 to: byteShift do: [ :i | result digitAt: i put: 0 ].
	1 to: len - byteShift do: [ :i | 
		digit := self digitAt: i.
		result
			digitAt: i + byteShift
			put: (((digit bitAnd: mask) bitShift: bitShift) bitOr: carry).
		carry := digit bitShift: rShift ].
	^ result
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
digitMultiply: arg neg: ng
	| prod prodLen carry digit k ab |
	(arg digitLength = 1 and: [ (arg digitAt: 1) = 0 ])
		ifTrue: [ ^ 0 ].
	prodLen := self digitLength + arg digitLength.
	prod := PCInteger new: prodLen neg: ng.	"prod starts out all zero"
	1 to: self digitLength do: [ :i | 
		(digit := self digitAt: i) ~= 0
			ifTrue: [ k := i.
				carry := 0.	"Loop invariant: 0<=carry<=0377, k=i+j-1"
				1 to: arg digitLength do: [ :j | 
					ab := (arg digitAt: j) * digit + carry + (prod digitAt: k).
					carry := ab bitShift: -8.
					prod digitAt: k put: (ab bitAnd: 255).
					k := k + 1 ].
				prod digitAt: k put: carry ] ].
	^ prod normalize
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
digitRshift: anInteger bytes: b lookfirst: a
	"Shift right 8*b+anInteger bits, 0<=n<8.
	Discard all digits beyond a, and all zeroes at or below a."

	| n x r f m digit count i |
	n := 0 - anInteger.
	x := 0.
	f := n + 8.
	i := a.
	m := 255 bitShift: 0 - f.
	digit := self digitAt: i.
	[ ((digit bitShift: n) bitOr: x) = 0 and: [ i ~= 1 ] ]
		whileTrue: [ x := digit bitShift: f.	"Can't exceed 8 bits"
			i := i - 1.
			digit := self digitAt: i ].
	i <= b
		ifTrue: [ ^ PCInteger new: 0 neg: self negative ].	"All bits lost"
	r := PCInteger new: i - b neg: self negative.
	count := i.
	x := (self digitAt: b + 1) bitShift: n.
	b + 1 to: count do: [ :j | 
		digit := self digitAt: j + 1.
		r digitAt: j - b put: (((digit bitAnd: m) bitShift: f) bitOr: x).	"Avoid values > 8 bits"
		x := digit bitShift: n ].
	^ r
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
digitSubtract: arg
	| smaller larger z sum sl al ng |
	sl := self digitLength.
	al := arg digitLength.
	(sl = al
		ifTrue: [ [ (self digitAt: sl) = (arg digitAt: sl) and: [ sl > 1 ] ]
				whileTrue: [ sl := sl - 1 ].
			al := sl.
			(self digitAt: sl) < (arg digitAt: sl) ]
		ifFalse: [ sl < al ])
		ifTrue: [ larger := arg.
			smaller := self.
			ng := self negative == false.
			sl := al ]
		ifFalse: [ larger := self.
			smaller := arg.
			ng := self negative ].
	sum := PCInteger new: sl neg: ng.
	z := 0.	"Loop invariant is -1<=z<=1"
	1 to: sl do: [ :i | 
		z := z + (larger digitAt: i) - (smaller digitAt: i).
		sum digitAt: i put: z - (z // 256 * 256).	"sign-tolerant form of (z bitAnd: 255)"
		z := z // 256 ].
	^ sum normalize
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
floor
	"Refer to the comment in Number|floor."

	
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
growby: n
	^ self growto: self digitLength + n
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
growto: n
	^ self copyto: (self species new: n)
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
hash
	"Hash is reimplemented because = is implemented."

	^ (self lastDigit bitShift: 8) + (self digitAt: 1)
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
isInteger
	"True for all subclasses of Integer."

	^ true
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
lastDigit
	"Answer the last digit of the integer."

	^ self digitAt: self digitLength
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
normalize
	"SmallInts OK; LgInts override"

	^ self
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
printOn: aStream base: b
	"Print a representation of the receiver on the stream, aStream, in base, b, 
	where 2<=b<=16."

	| digits source dest i j pos t rem |
	b = 10
		ifFalse: [ b printOn: aStream.
			aStream nextPut: $r ].
	i := self digitLength.	"Estimate size of result, conservatively"
	digits := PCArray new: i * 8.
	pos := 0.
	dest := i <= 1
		ifTrue: [ self ]
		ifFalse: [ PCLargePositiveInteger new: i ].
	source := self.
	[ i >= 1 ]
		whileTrue: [ rem := 0.
			j := i.
			[ j > 0 ]
				whileTrue: [ t := (rem bitShift: 8) + (source digitAt: j).
					dest digitAt: j put: t // b.
					rem := t \\ b.
					j := j - 1 ].
			pos := pos + 1.
			digits at: pos put: rem.
			source := dest.
			(source digitAt: i) = 0
				ifTrue: [ i := i - 1 ] ].	"(dest digitAt: 1) printOn: aStream base: b."
	[ pos > 0 ]
		whileTrue: [ aStream nextPut: (PCCharacter digitValue: (digits at: pos)).
			pos := pos - 1 ]
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
quo: aNumber
	"Refer to the comment in Number quo: "

	| ng quo |
	aNumber isInteger
		ifTrue: [ ng := self negative == aNumber negative == false.
			quo := (self
				digitDiv:
					(aNumber isSmallInteger
						ifTrue: [ aNumber abs ]
						ifFalse: [ aNumber ])
				neg: ng) at: 1.
			^ quo normalize ].
	^ aNumber adaptToInteger: self andSend: #quo:
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
replaceFrom: start to: stop with: replacement startingAt: repStart
	| j |
	"Catches failure if LgInt replace primitive fails"
	j := repStart.
	start to: stop do: [ :i | 
		self digitAt: i put: (replacement digitAt: j).
		j := j + 1 ]
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
rounded
	"Refer to the comment in Number|rounded."

	
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
timesRepeat: aBlock
	"Evaluate the argument, aBlock, the number of times represented by the 
	receiver."

	| count |
	count := 1.
	[ count <= self ]
		whileTrue: [ aBlock value.
			count := count + 1 ]
! !

!PCInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
truncated
	"Refer to the comment in Number|truncated."

	
! !

!PCInteger class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
new: length neg: neg
	"Answer an instance of a large integer with the given size and sign."

	neg
		ifTrue: [ ^ PCLargeNegativeInteger new: length ]
		ifFalse: [ ^ PCLargePositiveInteger new: length ]
! !

!PCInteger class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
readFrom: aStream
	"Answer a new Integer as described on the stream, aStream.
	Embedded radix specifiers not allowed - use Number readFrom: for that."

	^ self readFrom: aStream base: 10
! !

!PCInteger class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
readFrom: aStream base: base
	"Answer an instance of one of my concrete subclasses. Initial minus sign 
	accepted, and bases > 10 use letters A-Z. Embedded radix specifiers not 
	allowed--use Number readFrom: for that. Answer zero (not an error) if 
	there are no digits."

	| digit value neg |
	neg := aStream peekFor: $-.
	value := 0.
	[ aStream atEnd ]
		whileFalse: [ digit := aStream next digitValue.
			(digit < 0 or: [ digit >= base ])
				ifTrue: [ aStream skip: -1.
					neg
						ifTrue: [ ^ value negated ].
					^ value ]
				ifFalse: [ value := value * base + digit ] ].
	neg
		ifTrue: [ ^ value negated ].
	^ value
! !

!PCLargePositiveInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
* anInteger
	"Primitive. Multiply the receiver by the argument and answer with an
	Integer result. Fail if either the argument or the result is not a
	SmallInteger or a LargePositiveInteger less than 2-to-the-30th (1073741824). Optional. See
	Object documentation whatIsAPrimitive. "

	<primitive: 29>
	^ super * anInteger
! !

!PCLargePositiveInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
+ anInteger
	"Primitive. Add the receiver to the argument and answer with an
	Integer result. Fail if either the argument or the result is not a
	SmallInteger or a LargePositiveInteger less than 2-to-the-30th (1073741824). Optional. See
	Object documentation whatIsAPrimitive."

	<primitive: 21>
	^ super + anInteger
! !

!PCLargePositiveInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
- anInteger
	"Primitive. Subtract the argument from the receiver and answer with an
	Integer result. Fail if either the argument or the result is not a
	SmallInteger or a LargePositiveInteger less than 2-to-the-30th (1073741824). Optional. See
	Object documentation whatIsAPrimitive."

	<primitive: 22>
	^ super - anInteger
! !

!PCLargePositiveInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
/ anInteger
	"Primitive. Divide the receiver by the argument and answer with the
	result if the division is exact. Fail if the result is not a whole integer.
	Fail if the argument is 0. Fail if either the argument or the result is not
	a SmallInteger or a LargePositiveInteger less than 2-to-the-30th (1073741824). Optional. See
	Object documentation whatIsAPrimitive. "

	<primitive: 30>
	^ super / anInteger
! !

!PCLargePositiveInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
// anInteger
	"Primitive. Divide the receiver by the argument and return the result.
	Round the result down towards negative infinity to make it a whole
	integer. Fail if the argument is 0. Fail if either the argument or the
	result is not a SmallInteger or a LargePositiveInteger less than 2-to-the-30th (1073741824).
	Optional. See Object documentation whatIsAPrimitive. "

	<primitive: 32>
	^ super // anInteger
! !

!PCLargePositiveInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
< anInteger
	"Primitive. Compare the receiver with the argument and answer true if
	the receiver is less than the argument. Otherwise answer false. Fail if the
	argument is not a SmallInteger or a LargePositiveInteger less than 2-to-the-30th (1073741824).
	Optional. See Object documentation whatIsAPrimitive."

	<primitive: 23>
	^ super < anInteger
! !

!PCLargePositiveInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
<= anInteger
	"Primitive. Compare the receiver with the argument and answer true if
	the receiver is less than or equal to the argument. Otherwise answer false.
	Fail if the argument is not a SmallInteger or a LargePositiveInteger less
	than 2-to-the-30th (1073741824). Optional. See Object documentation whatIsAPrimitive."

	<primitive: 25>
	^ super <= anInteger
! !

!PCLargePositiveInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
= anInteger
	"Primitive. Compare the receiver with the argument and answer true if
	the receiver is equal to the argument. Otherwise answer false. Fail if the
	receiver or argument is negative or greater than 32 bits.
	Optional. See Object documentation whatIsAPrimitive."

	<primitive: 7>
	^ super = anInteger
! !

!PCLargePositiveInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
> anInteger
	"Primitive. Compare the receiver with the argument and answer true if
	the receiver is greater than the argument. Otherwise answer false. Fail if
	the argument is not a SmallInteger or a LargePositiveInteger less than
	2-to-the-30th (1073741824). Optional. See Object documentation whatIsAPrimitive."

	<primitive: 24>
	^ super > anInteger
! !

!PCLargePositiveInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
>= anInteger
	"Primitive. Compare the receiver with the argument and answer true if
	the receiver is greater than or equal to the argument. Otherwise answer
	false. Fail if the argument is not a SmallInteger or a LargePositiveInteger
	less than 2-to-the-30th (1073741824). Optional. See Object documentation whatIsAPrimitive."

	<primitive: 26>
	^ super >= anInteger
! !

!PCLargePositiveInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
\\ anInteger
	"Primitive. Take the receiver modulo the argument. The result is the
	remainder rounded towards negative infinity, of the receiver divided
	by the argument. Fail if the argument is 0. Fail if either the argument
	or the result is not a SmallInteger or a LargePositiveInteger less than
	2-to-the-30th (1073741824). Optional. See Object documentation whatIsAPrimitive."

	<primitive: 31>
	^ super \\ anInteger
! !

!PCLargePositiveInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
~= anInteger
	"Primitive. Compare the receiver with the argument and answer true if
	the receiver is equal to the argument. Otherwise answer false. Fail if the
	receiver or argument is negative or greater than 32 bits.
	Optional. See Object documentation whatIsAPrimitive."

	<primitive: 8>
	^ super ~= anInteger
! !

!PCLargePositiveInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
abs
	
! !

!PCLargePositiveInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
bitAnd: anInteger
	"Primitive. Answer an Integer whose bits are the logical AND of the
	receiver's bits and those of the argument. Fail if the receiver or argument
	is greater than 32 bits. See Object documentation whatIsAPrimitive."

	<primitive: 14>
	^ super bitAnd: anInteger
! !

!PCLargePositiveInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
bitOr: anInteger
	"Primitive. Answer an Integer whose bits are the logical OR of the
	receiver's bits and those of the argument. Fail if the receiver or argument
	is greater than 32 bits. See Object documentation whatIsAPrimitive."

	<primitive: 15>
	^ super bitOr: anInteger
! !

!PCLargePositiveInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
bitShift: anInteger
	"Primitive. Answer an Integer whose value (in twos-complement 
	representation) is the receiver's value (in twos-complement
	representation) shifted left by the number of bits indicated by the
	argument. Negative arguments shift right. Zeros are shifted in from the
	right in left shifts. The sign bit is extended in right shifts.
	Fail if the receiver or result is greater than 32 bits.
	See Object documentation whatIsAPrimitive."

	<primitive: 17>
	^ super bitShift: anInteger
! !

!PCLargePositiveInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
bitXor: anInteger
	"Primitive. Answer an Integer whose bits are the logical XOR of the
	receiver's bits and those of the argument. Fail if the receiver or argument
	is greater than 32 bits. See Object documentation whatIsAPrimitive."

	<primitive: 16>
	^ super bitXor: anInteger
! !

!PCLargePositiveInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
digitAt: index
	"Primitive. Answer the value of an indexable field in the receiver. Fail if 
	the argument (the index) is not an Integer or is out of bounds. Essential. 
	See Object documentation whatIsAPrimitive."

	<primitive: 60>
	self digitLength < index
		ifTrue: [ ^ 0 ]
		ifFalse: [ ^ super at: index ]
! !

!PCLargePositiveInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
digitAt: index put: value
	"Primitive. Store the second argument (value) in the indexable field of 
	the receiver indicated by index. Fail if the value is negative or is larger 
	than 255. Fail if the index is not an Integer or is out of bounds. Answer 
	the value that was stored. Essential. See Object documentation 
	whatIsAPrimitive."

	<primitive: 61>
	^ super at: index put: value
! !

!PCLargePositiveInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
digitLength
	"Primitive. Answer the number of indexable fields in the receiver. This 
	value is the same as the largest legal subscript. Essential. See Object 
	documentation whatIsAPrimitive."

	<primitive: 62>
	self primitiveFailed
! !

!PCLargePositiveInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
highBit
	"Answer the index of the high order bit of the receiver, or zero if the receiver is zero. This method is allowed (and needed) for LargeNegativeIntegers as well, since LargeIntegers are sign/magnitude."

	| realLength lastDigit |
	realLength := self digitLength.
	[ (lastDigit := self digitAt: realLength) = 0 ]
		whileTrue: [ (realLength := realLength - 1) = 0
				ifTrue: [ ^ 0 ] ].
	^ lastDigit highBit + (8 * (realLength - 1))
! !

!PCLargePositiveInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
negated
	^ (self copyto: (PCLargeNegativeInteger new: self digitLength))
		normalize	"Need to normalize to catch SmallInteger minVal"
! !

!PCLargePositiveInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
negative
	"Answer whether the receiver is mathematically negative."

	^ false
! !

!PCLargePositiveInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
normalize
	"Check for leading zeroes and return shortened copy if so"

	| sLen val len oldLen |
	"First establish len = significant length"
	len := oldLen := self digitLength.
	[ len = 0
		ifTrue: [ ^ 0 ].
	(self digitAt: len) = 0 ] whileTrue: [ len := len - 1 ].	"Now check if in SmallInteger range"
	sLen := PCSmallInteger maxVal digitLength.
	(len <= sLen
		and: [ (self digitAt: sLen) <= (PCSmallInteger maxVal digitAt: sLen) ])
		ifTrue: [ val := 0.
			len to: 1 by: -1 do: [ :i | val := val * 256 + (self digitAt: i) ].
			^ val ].
	"If so, return its SmallInt value"	"Return self, or a shortened copy"
	len < oldLen
		ifTrue: [ ^ self growto: len ]
		ifFalse: [ ^ self ]
! !

!PCLargePositiveInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
quo: anInteger
	"Primitive. Divide the receiver by the argument and return the result.
	Round the result down towards zero to make it a whole integer. Fail if
	the argument is 0. Fail if either the argument or the result is not a
	SmallInteger or a LargePositiveInteger less than 2-to-the-30th (1073741824). Optional. See
	Object documentation whatIsAPrimitive."

	<primitive: 33>
	^ super quo: anInteger
! !

!PCLargePositiveInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
replaceFrom: start to: stop with: replacement startingAt: repStart
	"Primitive. This destructively replaces elements from start to stop in the receiver starting at index, repStart, in the collection, replacement. Answer the receiver. Range checks are performed in the primitive only. Optional. See Object documentation whatIsAPrimitive."

	<primitive: 105>
	^ super
		replaceFrom: start
		to: stop
		with: replacement
		startingAt: repStart
! !

!PCLargePositiveInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
sign
	"Optimization. Answer 1 since receiver is greater than 0."

	^ 1
! !

!PCLargeNegativeInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
abs
	^ self negated
! !

!PCLargeNegativeInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
negated
	^ self copyto: (PCLargePositiveInteger new: self digitLength)
! !

!PCLargeNegativeInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
negative
	"Answer whether the receiver is mathematically negative."

	^ true
! !

!PCLargeNegativeInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
normalize
	"Check for leading zeroes and return shortened copy if so"

	| sLen val len oldLen minVal |
	"First establish len = significant length"
	len := oldLen := self digitLength.
	[ len = 0
		ifTrue: [ ^ 0 ].
	(self digitAt: len) = 0 ] whileTrue: [ len := len - 1 ].	"Now check if in SmallInteger range"
	sLen := 4.	"SmallInteger minVal digitLength"
	len <= sLen
		ifTrue: [ minVal := PCSmallInteger minVal.
			(len < sLen or: [ (self digitAt: sLen) < minVal lastDigit ])
				ifTrue: [ val := 0.
					len to: 1 by: -1 do: [ :i | val := val * 256 - (self digitAt: i) ].
					^ val ].
			"If high digit less, then can be small"
			1 to: sLen do: [ :i"If all digits same, then = minVal"
				 | 
				(self digitAt: i) = (minVal digitAt: i)
					ifFalse: [ len < oldLen
							ifTrue: [ ^ self growto: len ]
							ifFalse: [ ^ self ] ]
				"Not so; return self shortened" ].
			^ minVal ].	"Return self, or a shortened copy"
	len < oldLen
		ifTrue: [ ^ self growto: len ]
		ifFalse: [ ^ self ]
! !

!PCLargeNegativeInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
printOn: aStream base: b
	"Refer to the comment in Integer|printOn:base:."

	aStream nextPut: $-.
	super printOn: aStream base: b
! !

!PCLargeNegativeInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
sign
	"Optimization. Answer -1 since receiver is less than 0."

	^ -1
! !

!PCSmallInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
* aNumber
	"Primitive. Multiply the receiver by the argument and answer with the
	result if it is a SmallInteger. Fail if the argument or the result is not a
	SmallInteger. Essential. No Lookup. See Object documentation
	whatIsAPrimitive."

	<primitive: 9>
	self = 0
		ifTrue: [ ^ 0 ].	"This eliminates the need for a self=0 check in LargeInteger *"
	^ super * aNumber
! !

!PCSmallInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
+ aNumber
	"Primitive. Add the receiver to the argument and answer with the result
	if it is a SmallInteger. Fail if the argument or the result is not a
	SmallInteger  Essential  No Lookup. See Object documentation
	whatIsAPrimitive."

	<primitive: 1>
	aNumber isInteger
		ifTrue: [ ^ super + aNumber ].
	^ aNumber adaptToInteger: self andSend: #+
! !

!PCSmallInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
- aNumber
	"Primitive. Subtract the argument from the receiver and answer with the
	result if it is a SmallInteger. Fail if the argument or the result is not a
	SmallInteger. Essential. No Lookup. See Object documentation
	whatIsAPrimitive."

	<primitive: 2>
	^ super - aNumber
! !

!PCSmallInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
/ aNumber
	"Primitive. Divide the receiver by the argument and return the result if the division is exact. Fail if the result is not a whole integer. Fail if the argument is 0 or is not a SmallInteger. Optional. No Lookup. See Object documentation whatIsAPrimitive."

	<primitive: 10>
	aNumber = 0
		ifTrue: [ ^ self error: 'division by 0' ].
	aNumber isSmallInteger
		ifTrue: [ ^ self asFloat / aNumber asFloat ]
		ifFalse: [ ^ super / aNumber ]
! !

!PCSmallInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
// aNumber
	"Primitive. Divide the receiver by the argument and answer with the
	result. Round the result down towards negative infinity to make it a
	whole integer. Fail if the argument is 0 or is not a SmallInteger.
	Essential. No Lookup. See Object documentation whatIsAPrimitive. "

	<primitive: 12>
	^ super // aNumber	"Do with quo: if primitive fails"
! !

!PCSmallInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
< aNumber
	"Primitive. Compare the receiver with the argument and answer with
	true if the receiver is less than the argument. Otherwise answer false.
	Fail if the argument is not a SmallInteger. Essential. No Lookup. See
	Object documentation whatIsAPrimitive."

	<primitive: 3>
	^ super < aNumber
! !

!PCSmallInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
<= aNumber
	"Primitive. Compare the receiver with the argument and answer true if
	the receiver is less than or equal to the argument. Otherwise answer
	false. Fail if the argument is not a SmallInteger. Optional. No Lookup.
	See Object documentation whatIsAPrimitive. "

	<primitive: 5>
	^ super <= aNumber
! !

!PCSmallInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
= aNumber
	"Primitive. Compare the receiver with the argument and answer true if
	the receiver is equal to the argument. Otherwise answer false. Fail if the
	argument is not a SmallInteger. Essential. No Lookup. See Object
	documentation whatIsAPrimitive. "

	<primitive: 7>
	^ super = aNumber
! !

!PCSmallInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
> aNumber
	"Primitive. Compare the receiver with the argument and answer true if
	the receiver is greater than the argument. Otherwise answer false. Fail if
	the argument is not a SmallInteger. Essential. No Lookup. See Object
	documentation whatIsAPrimitive."

	<primitive: 4>
	^ super > aNumber
! !

!PCSmallInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
>= aNumber
	"Primitive. Compare the receiver with the argument and answer true if
	the receiver is greater than or equal to the argument. Otherwise answer
	false. Fail if the argument is not a SmallInteger. Optional. No Lookup.
	See Object documentation whatIsAPrimitive."

	<primitive: 6>
	^ super >= aNumber
! !

!PCSmallInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
\\ aNumber
	"Primitive. Take the receiver modulo the argument. The result is the
	remainder rounded towards negative infinity, of the receiver divided by
	the argument Fail if the argument is 0 or is not a SmallInteger. Optional.
	No Lookup. See Object documentation whatIsAPrimitive."

	<primitive: 11>
	^ super \\ aNumber	"Do with // if primitive fails"
! !

!PCSmallInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
~= aNumber
	"Primitive. Compare the receiver with the argument and answer true if
	the receiver is not equal to the argument. Otherwise answer false. Fail if
	the argument is not a SmallInteger. Essential. No Lookup. See Object
	documentation whatIsAPrimitive."

	<primitive: 8>
	^ super ~= aNumber
! !

!PCSmallInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
asFloat
	"Primitive. Answer a Float that represents the value of the receiver.
	Essential. See Object documentation whatIsAPrimitive."

	<primitive: 40>
	self primitiveFailed
! !

!PCSmallInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
basicCopy
	"I am immutable (and not really an object), so answer myself."

	
! !

!PCSmallInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
basicIdentityHash
	^ self
! !

!PCSmallInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
bitAnd: arg
	"Primitive. Answer an Integer whose bits are the logical OR of the
	receiver's bits and those of the argument, arg.
	Numbers are interpreted as having 2's-complement representation.
	Essential.  See Object documentation whatIsAPrimitive."

	<primitive: 14>
	self >= 0
		ifTrue: [ ^ arg bitAnd: self ].
	^ (self bitInvert bitOr: arg bitInvert) bitInvert
! !

!PCSmallInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
bitOr: arg
	"Primitive. Answer an Integer whose bits are the logical OR of the
	receiver's bits and those of the argument, arg.
	Numbers are interpreted as having 2's-complement representation.
	Essential.  See Object documentation whatIsAPrimitive."

	<primitive: 15>
	self >= 0
		ifTrue: [ ^ arg bitOr: self ].
	^ arg < 0
		ifTrue: [ (self bitInvert bitAnd: arg bitInvert) bitInvert ]
		ifFalse: [ (self bitInvert bitClear: arg) bitInvert ]
! !

!PCSmallInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
bitShift: arg
	"Primitive. Answer an Integer whose value is the receiver's value shifted
	left by the number of bits indicated by the argument. Negative arguments
	shift right. The receiver is interpreted as having 2's-complement representation.
	Essential.  See Object documentation whatIsAPrimitive."

	<primitive: 17>
	self >= 0
		ifTrue: [ ^ super bitShift: arg ].
	^ arg >= 0
		ifTrue: [ (self negated bitShift: arg) negated ]
		ifFalse: [ (self bitInvert bitShift: arg) bitInvert ]
! !

!PCSmallInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
bitXor: arg
	"Primitive. Answer an Integer whose bits are the logical XOR of the
	receiver's bits and those of the argument, arg.
	Numbers are interpreted as having 2's-complement representation.
	Essential.  See Object documentation whatIsAPrimitive."

	<primitive: 16>
	self >= 0
		ifTrue: [ ^ arg bitXor: self ].
	^ arg < 0
		ifTrue: [ self bitInvert bitXor: arg bitInvert ]
		ifFalse: [ (self bitInvert bitXor: arg) bitInvert ]
! !

!PCSmallInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
digitAt: n
	"Answer the value of an indexable field in the receiver. Fail if the 
	argument (the index) is not an Integer or is out of bounds."

	n > 4
		ifTrue: [ ^ 0 ].
	self < 0
		ifTrue: [ self = PCSmallInteger minVal
				ifTrue:
					[ ^ #(0 0 0 64) at: n ].
			"Can't negate minVal -- treat specially"
			^ (0 - self bitShift: (1 - n) * 8) bitAnd: 16rFF ]
		ifFalse: [ ^ (self bitShift: (1 - n) * 8) bitAnd: 16rFF ]
! !

!PCSmallInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
digitAt: n put: value
	"Fails. The digits of a small integer can not be modified."

	self error: 'You cannot store in a SmallInteger'
! !

!PCSmallInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
digitLength
	"Answer the number of indexable fields in the receiver. This value is the 
	same as the largest legal subscript. Included so that a SmallInteger can 
	behave like a LargePositiveInteger or LargeNegativeInteger."

	(self < 16r100 and: [ self > -16r100 ])
		ifTrue: [ ^ 1 ].
	(self < 16r10000 and: [ self > -16r10000 ])
		ifTrue: [ ^ 2 ].
	(self < 16r1000000 and: [ self > -16r1000000 ])
		ifTrue: [ ^ 3 ].
	^ 4
! !

!PCSmallInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
hash
	^ self
! !

!PCSmallInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
hashMultiply
	| low |
	low := self bitAnd: 16383.
	^ 16r260D * low
		+
			((16r260D * (self bitShift: -14) + (16r0065 * low) bitAnd: 16383)
				* 16384) bitAnd: 16r0FFFFFFF
! !

!PCSmallInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
highBit
	"Answer the index of the high order bit of the receiver, or zero if the receiver is zero. Raise an error if the receiver is negative, since negative integers are defined to have an infinite number of leading 1's in 2's-complement arithmetic."

	| shifted bitNo |
	self < 0
		ifTrue: [ self error: 'highBit is not defined for negative integers' ].
	shifted := self.
	bitNo := 0.
	[ shifted < 16 ]
		whileFalse: [ shifted := shifted bitShift: -4.
			bitNo := bitNo + 4 ].
	[ shifted = 0 ]
		whileFalse: [ shifted := shifted bitShift: -1.
			bitNo := bitNo + 1 ].
	^ bitNo
! !

!PCSmallInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
identityHash
	^ self hashMultiply
! !

!PCSmallInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
isSmallInteger
	^ true
! !

!PCSmallInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
printOn: aStream base: b
	"Refer to the comment in Integer|printOn:base:."

	"self maxVal printStringBase: 2"

	| digitsInReverse x i |
	self < 0
		ifTrue: [ aStream nextPut: $-.
			^ self negated printOn: aStream base: b ].
	b = 10
		ifFalse: [ b printOn: aStream.
			aStream nextPut: $r ].
	digitsInReverse := PCArray new: 32.
	x := self.
	i := 0.
	[ x >= b ]
		whileTrue: [ digitsInReverse at: (i := i + 1) put: x \\ b.
			x := x // b ].
	digitsInReverse at: (i := i + 1) put: x.
	[ i > 0 ]
		whileTrue: [ aStream nextPut: (PCCharacter digitValue: (digitsInReverse at: i)).
			i := i - 1 ]
! !

!PCSmallInteger methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
quo: aNumber
	"Primitive. Divide the receiver by the argument and answer with the result. Round the result down towards zero to make it a whole integer. Fail if the argument is 0 or is not a MSmallInteger. Optional. See Object documentation whatIsAPrimitive."

	<primitive: 13>
	aNumber = 0
		ifTrue: [ ^ self error: 'Attempt to divide by zero' ].
	aNumber class isSmallInteger
		ifTrue: [ self primitiveFailed ]
		ifFalse: [ ^ super quo: aNumber ]
! !

!PCSmallInteger class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
maxVal
	"Answer the maximum value for a SmallInteger."

	^ 16r3FFFFFFF
! !

!PCSmallInteger class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
minVal
	"Answer the minimum value for a SmallInteger."

	^ -16r40000000
! !

!PCSmallInteger class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:54'!
new
	"SmallIntegers are created as constants or by performing arithmetic."

	self cannotInstantiate
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
* aNumber
	"Primitive. Answer the result of multiplying the receiver by aNumber.
	Fail if the argument is not a Float. Essential. See Object documentation
	whatIsAPrimitive."

	<primitive: 49>
	^ aNumber adaptToFloat: self andSend: #*
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
+ aNumber
	"Primitive. Answer the sum of the receiver and aNumber. Essential.
	Fail if the argument is not a Float. See Object documentation
	whatIsAPrimitive."

	<primitive: 41>
	^ aNumber adaptToFloat: self andSend: #+
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
- aNumber
	"Primitive. Answer the difference between the receiver and aNumber.
	Fail if the argument is not a Float. Essential. See Object documentation
	whatIsAPrimitive."

	<primitive: 42>
	^ aNumber adaptToFloat: self andSend: #-
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
/ aNumber
	"Primitive. Answer the result of dividing receiver by aNumber.
	Fail if the argument is not a Float. Essential. See Object documentation
	whatIsAPrimitive."

	<primitive: 50>
	aNumber = 0
		ifTrue: [ self error: 'attempt to divide by zero' ].
	^ aNumber adaptToFloat: self andSend: #/
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
< aNumber
	"Primitive. Compare the receiver with the argument and return true
	if the receiver is less than the argument. Otherwise return false.
	Fail if the argument is not a Float. Essential. See Object documentation
	whatIsAPrimitive."

	<primitive: 43>
	^ aNumber adaptToFloat: self andSend: #<
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
<= aNumber
	"Primitive. Compare the receiver with the argument and return true
	if the receiver is less than or equal to the argument. Otherwise return
	false. Fail if the argument is not a Float. Optional. See Object
	documentation whatIsAPrimitive."

	<primitive: 45>
	^ aNumber adaptToFloat: self andSend: #<=
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
= aNumber
	"Primitive. Compare the receiver with the argument and return true
	if the receiver is equal to the argument. Otherwise return false.
	Fail if the argument is not a Float. Essential. See Object documentation
	whatIsAPrimitive."

	<primitive: 47>
	aNumber isNumber
		ifFalse: [ ^ false ].
	^ aNumber adaptToFloat: self andSend: #=
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
> aNumber
	"Primitive. Compare the receiver with the argument and return true
	if the receiver is greater than the argument. Otherwise return false.
	Fail if the argument is not a Float. Essential. See Object documentation
	whatIsAPrimitive."

	<primitive: 44>
	^ aNumber adaptToFloat: self andSend: #>
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
>= aNumber
	"Primitive. Compare the receiver with the argument and return true
	if the receiver is greater than or equal to the argument. Otherwise return
	false. Fail if the argument is not a Float. Optional. See Object documentation 
	whatIsAPrimitive. "

	<primitive: 46>
	^ aNumber adaptToFloat: self andSend: #>
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
~= aNumber
	"Primitive. Compare the receiver with the argument and return true
	if the receiver is not equal to the argument. Otherwise return false.
	Fail if the argument is not a Float. Optional. See Object documentation
	whatIsAPrimitive."

	<primitive: 48>
	^ super ~= aNumber
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
abs
	"This is faster than using Number abs."

	self < 0.0
		ifTrue: [ ^ 0.0 - self ]
		ifFalse: [ ^ self ]
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
absPrintOn: aStream base: base
	"Print my value on a stream in the given base.  Assumes that my value is strictly
	positive; negative numbers, zero, and NaNs have already been handled elsewhere.
	Based upon the algorithm outlined in:
	Robert G. Burger and R. Kent Dybvig
	Printing Floating Point Numbers Quickly and Accurately
	ACM SIGPLAN 1996 Conference on Programming Language Design and Implementation
	June 1996.
	This version performs all calculations with Floats instead of LargeIntegers, and loses
	about 3 lsbs of accuracy compared to an exact conversion."

	| significantBits fBase exp baseExpEstimate r s mPlus mMinus scale d tc1 tc2 fixedFormat decPointCount |
	self isInfinite
		ifTrue: [ aStream nextPutAll: 'Infinity'.
			^ self ].
	significantBits := 50.	"approximately 3 lsb's of accuracy loss during conversion"
	fBase := base asFloat.
	exp := self exponent.
	baseExpEstimate := (exp * fBase reciprocalLogBase2 - 1.0e-10) ceiling.
	exp >= 0
		ifTrue: [ r := self.
			s := 1.0.
			mPlus := 1.0 timesTwoPower: exp - significantBits.
			mMinus := self significand ~= 1.0
				ifTrue: [ mPlus ]
				ifFalse: [ mPlus / 2.0 ] ]
		ifFalse: [ r := self timesTwoPower: significantBits.
			s := 1.0 timesTwoPower: significantBits.
			mMinus := 1.0 timesTwoPower: (exp max: -1024).
			mPlus := exp = MinValLogBase2 | (self significand ~= 1.0)
				ifTrue: [ mMinus ]
				ifFalse: [ mMinus * 2.0 ] ].
	baseExpEstimate >= 0
		ifTrue: [ s := s * (fBase raisedToInteger: baseExpEstimate).
			exp = 1023
				ifTrue: [ r := r / fBase.
					s := s / fBase.
					mPlus := mPlus / fBase.
					mMinus := mMinus / fBase ]
			"scale down to prevent overflow to Infinity during conversion" ]
		ifFalse: [ exp < -1023
				ifTrue: [ d := (53 * fBase reciprocalLogBase2 - 1.0e-10) ceiling.
					scale := fBase raisedToInteger: d.
					r := r * scale.
					mPlus := mPlus * scale.
					mMinus := mMinus * scale.
					scale := fBase raisedToInteger: (baseExpEstimate + d) negated ]
				ifFalse: [ scale := fBase raisedToInteger: baseExpEstimate negated ].
			"scale up to prevent denorm reciprocals overflowing to Infinity"
			s := s / scale ].
	r + mPlus >= s
		ifTrue: [ baseExpEstimate := baseExpEstimate + 1 ]
		ifFalse: [ s := s / fBase ].
	(fixedFormat := baseExpEstimate between: -3 and: 6)
		ifTrue: [ decPointCount := baseExpEstimate.
			baseExpEstimate <= 0
				ifTrue: [ aStream nextPutAll: ('0.000000' truncateTo: 2 - baseExpEstimate) ] ]
		ifFalse: [ decPointCount := 1 ].
	[ d := (r / s) truncated.
	r := r - (d * s).
	(tc1 := r <= mMinus) | (tc2 := r + mPlus >= s) ]
		whileFalse: [ aStream nextPut: (PCCharacter digitValue: d).
			r := r * fBase.
			mPlus := mPlus * fBase.
			mMinus := mMinus * fBase.
			decPointCount := decPointCount - 1.
			decPointCount = 0
				ifTrue: [ aStream nextPut: $. ] ].
	tc2
		ifTrue: [ tc1 not | (tc1 & (r * 2.0 >= s))
				ifTrue: [ d := d + 1 ] ].
	aStream nextPut: (PCCharacter digitValue: d).
	decPointCount > 0
		ifTrue: [ decPointCount - 1 to: 1 by: -1 do: [ :i | aStream nextPut: $0 ].
			aStream nextPutAll: '.0' ].
	fixedFormat
		ifFalse: [ aStream nextPut: $e.
			aStream nextPutAll: (baseExpEstimate - 1) printString ]
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
adaptToInteger: rcvr andSend: selector
	"If I am involved in arithmetic with an Integer, convert it to a Float."

	^ rcvr asFloat perform: selector with: self
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
arcCos
	"Answer the angle in radians."

	^ Halfpi - self arcSin
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
arcSin
	"Answer the angle in radians."

	(self < -1.0 or: [ self > 1.0 ])
		ifTrue: [ self error: 'Value out of range' ].
	(self = -1.0 or: [ self = 1.0 ])
		ifTrue: [ ^ Halfpi ]
		ifFalse: [ ^ (self / (1.0 - (self * self)) sqrt) arcTan ]
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
arcTan
	"Answer the angle in radians.
	 Optional. See Object documentation whatIsAPrimitive."

	<primitive: 57>
	| theta eps step sinTheta cosTheta |
	self < 0.0
		ifTrue: [ ^ 0.0 - (0.0 - self) arcTan ].	"Newton-Raphson"	"first guess"
	theta := self * Halfpi / (self + 1.0).	"iterate"
	eps := Halfpi * Epsilon.
	step := theta.
	[ step * step > eps ]
		whileTrue: [ sinTheta := theta sin.
			cosTheta := theta cos.
			step := sinTheta * cosTheta - (self * cosTheta * cosTheta).
			theta := theta - step ].
	^ theta
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
asFloat
	"Answer the receiver itself."

	^ self
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
cos
	"Answer the cosine of the receiver taken as an angle in radians."

	^ (self + Halfpi) sin
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
degreesToRadians
	"Answer the receiver in radians. Assumes the receiver is in degrees."

	^ self * RadiansPerDegree
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
exp
	"Answer E raised to the receiver power.
	 Optional. See Object documentation whatIsAPrimitive."

	<primitive: 59>
	| base fract correction delta div |
	self < 0.0
		ifTrue: [ ^ self negated exp reciprocal ].	"Taylor series"	"check the special cases"
	self = 0.0
		ifTrue: [ ^ 1 ].
	self abs > MaxValLn
		ifTrue: [ self error: 'exp overflow' ].	"get first approximation by raising e to integer power"
	base := E raisedToInteger: self truncated.	"now compute the correction with a short Taylor series"	"fract will be 0..1, so correction will be 1..E"	"in the worst case, convergance time is logarithmic with 1/Epsilon"
	fract := self fractionPart.
	fract = 0.0
		ifTrue: [ ^ base ].	"no correction required"
	correction := 1.0 + fract.
	delta := fract * fract / 2.0.
	div := 2.0.
	[ delta > Epsilon ]
		whileTrue: [ correction := correction + delta.
			div := div + 1.0.
			delta := delta * fract / div ].
	correction := correction + delta.
	^ base * correction
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
exponent
	"Primitive. Consider the receiver to be represented as a power of two
	multiplied by a mantissa (between one and two). Answer with the
	SmallInteger to whose power two is raised. Optional. See Object
	documentation whatIsAPrimitive."

	<primitive: 53>
	| positive |
	self >= 1.0
		ifTrue: [ ^ self floorLog: 2 ].
	self > 0.0
		ifTrue: [ positive := (1.0 / self) exponent.
			self = (1.0 / (1.0 timesTwoPower: positive))
				ifTrue: [ ^ positive negated ]
				ifFalse: [ ^ positive negated - 1 ] ].
	self = 0.0
		ifTrue: [ ^ -1 ].
	^ self negated exponent
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
floorLog: radix
	"Answer the floor of the log base radix of the receiver."

	^ (self log: radix) floor
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
fractionPart
	"Primitive. Answer a Float whose value is the difference between the 
	receiver and the receiver's asInteger value. Optional. See Object 
	documentation whatIsAPrimitive."

	<primitive: 52>
	^ self - self truncated asFloat
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
hash
	"Hash is reimplemented because = is implemented. Both words of the float are used; 8 bits are removed from each end to clear most of the exponent regardless of the byte ordering. (The bitAnd:'s ensure that the intermediate results do not become a large integer.) Slower than the original version in the ratios 12:5 to 2:1 depending on values. (DNS, 11 May, 1997)"

	^ ((self basicAt: 1) bitAnd: 16r00FFFF00)
		+ ((self basicAt: 2) bitAnd: 16r00FFFF00) bitShift: -8
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
isInfinite
	"Return true if the receiver is positive or negative infinity."

	^ self = Infinity or: [ self = NegativeInfinity ]
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
isNaN
	"simple, byte-order independent test for Not-a-Number"

	^ self ~= self
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
ln
	"Answer the natural logarithm of the receiver.
	 Optional. See Object documentation whatIsAPrimitive."

	<primitive: 58>
	| expt n mant x div pow delta sum eps |
	self <= 0.0
		ifTrue: [ self error: 'ln is only defined for x > 0.0' ].	"Taylor series"	"get a rough estimate from binary exponent"
	expt := self exponent.
	n := Ln2 * expt.
	mant := self timesTwoPower: 0 - expt.	"compute fine correction from mantinssa in Taylor series"	"mant is in the range [0..2]"	"we unroll the loop to avoid use of abs"
	x := mant - 1.0.
	div := 1.0.
	pow := delta := sum := x.
	x := x negated.	"x <= 0"
	eps := Epsilon * (n abs + 1.0).
	[ delta > eps ]
		whileTrue: [ div := div + 1.0.
			pow := pow * x.
			delta := pow / div.
			sum := sum + delta.	"pass two: delta is negative"
			div := div + 1.0.
			pow := pow * x.
			delta := pow / div.
			sum := sum + delta ].
	"pass one: delta is positive"
	^ n + sum	"2.718284 ln 1.0"
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
log
	"Answer the base 10 logarithm of the receiver."

	^ self ln / Ln10
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
negated
	"Answer a Number that is the negation of the receiver."

	^ 0.0 - self
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
printOn: aStream base: base
	"Handle sign, zero, and NaNs; all other values passed to absPrintOn:base:"

	self isNaN
		ifTrue: [ aStream nextPutAll: 'NaN'.
			^ self ].	"check for NaN before sign"
	self > 0.0
		ifTrue: [ self absPrintOn: aStream base: base ]
		ifFalse: [ self sign = -1
				ifTrue: [ aStream nextPutAll: '-' ].
			self = 0.0
				ifTrue: [ aStream nextPutAll: '0.0'.
					^ self ]
				ifFalse: [ self negated absPrintOn: aStream base: base ] ]
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
radiansToDegrees
	"Answer the receiver in degrees. Assumes the receiver is in radians."

	^ self / RadiansPerDegree
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
raisedTo: aNumber
	"Answer the receiver raised to aNumber."

	0.0 = aNumber
		ifTrue: [ ^ 1.0 ].	"special case for 0.0 raisedTo: 0.0"
	^ (self ln * aNumber asFloat) exp
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
reciprocal
	^ 1.0 / self
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
reciprocalLogBase2
	"optimized for self = 10, for use in conversion for printing"

	^ self = 10.0
		ifTrue: [ Ln2 / Ln10 ]
		ifFalse: [ Ln2 / self ln ]
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
rounded
	"Answer the integer nearest the receiver."

	self >= 0.0
		ifTrue: [ ^ (self + 0.5) truncated ]
		ifFalse: [ ^ (self - 0.5) truncated ]
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
sign
	"Answer 1 if the receiver is greater than 0, -1 if less than 0, else 0.
	Handle IEEE-754 negative-zero by reporting a sign of -1"

	self > 0
		ifTrue: [ ^ 1 ].
	(self < 0 or: [ ((self at: 1) bitShift: -31) = 1 ])
		ifTrue: [ ^ -1 ].
	^ 0
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
significand
	^ self timesTwoPower: self exponent negated
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
sin
	"Answer the sine of the receiver taken as an angle in radians.
	 Optional. See Object documentation whatIsAPrimitive."

	<primitive: 56>
	| sum delta self2 i |
	self < 0.0
		ifTrue: [ ^ 0.0 - (0.0 - self) sin ].	"Taylor series"	"normalize to the range [0..Pi/2]"
	self > Twopi
		ifTrue: [ ^ (self \\ Twopi) sin ].
	self > Pi
		ifTrue: [ ^ 0.0 - (self - Pi) sin ].
	self > Halfpi
		ifTrue: [ ^ (Pi - self) sin ].	"unroll loop to avoid use of abs"
	sum := delta := self.
	self2 := 0.0 - (self * self).
	i := 2.0.
	[ delta > Epsilon ]
		whileTrue: [ delta := delta * self2 / (i * (i + 1.0)).
			i := i + 2.0.
			sum := sum + delta.	"twice"
			delta := delta * self2 / (i * (i + 1.0)).
			i := i + 2.0.
			sum := sum + delta ].
	"once"
	^ sum
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
sqrt
	"Answer the square root of the receiver.
	 Optional. See Object documentation whatIsAPrimitive."

	<primitive: 55>
	| exp guess eps delta |
	self <= 0.0
		ifTrue: [ self = 0.0
				ifTrue: [ ^ 0.0 ]
				ifFalse: [ ^ self error: 'sqrt is invalid for x < 0' ] ].	"Newton-Raphson"	"first guess is half the exponent"
	exp := self exponent // 2.
	guess := self timesTwoPower: 0 - exp.	"get eps value"
	eps := guess * Epsilon.
	eps := eps * eps.
	delta := (self - (guess * guess)) / (guess * 2.0).
	[ delta * delta > eps ]
		whileTrue: [ guess := guess + delta.
			delta := (self - (guess * guess)) / (guess * 2.0) ].
	^ guess
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
tan
	"Answer the tangent of the receiver taken as an angle in radians."

	^ self sin / self cos
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
timesTwoPower: anInteger
	"Primitive. Answer with the receiver multiplied by 2.0 raised
	to the power of the argument.
	Optional. See Object documentation whatIsAPrimitive."

	<primitive: 54>
	anInteger < -29
		ifTrue: [ ^ self * (2.0 raisedToInteger: anInteger) ].
	anInteger < 0
		ifTrue: [ ^ self / (1 bitShift: 0 - anInteger) asFloat ].
	anInteger < 30
		ifTrue: [ ^ self * (1 bitShift: anInteger) asFloat ].
	^ self * (2.0 raisedToInteger: anInteger)
! !

!PCFloat methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
truncated
	"Answer with a SmallInteger equal to the value of the receiver without 
	its fractional part. The primitive fails if the truncated value cannot be 
	represented as a SmallInteger. In that case, the code below will compute 
	a LargeInteger truncated value.
	Essential. See Object documentation whatIsAPrimitive. "

	<primitive: 51>
	(self isInfinite or: [ self isNaN ])
		ifTrue: [ self error: 'Cannot truncate this number' ].
	self abs < 2.0e16
		ifTrue: [ ^ (self quo: 1073741823.0) * 1073741823
				+ (self rem: 1073741823.0) truncated ]
		ifFalse: [ ^ self error: 'not yet implemented' ]
	"Fastest way when it may not be an integer"
! !

!PCFloat class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
initialize
	"Float initialize"

	"Constants from Computer Approximations, pp. 182-183:
		Pi = 3.14159265358979323846264338327950288
		Pi/2 = 1.57079632679489661923132169163975144
		Pi*2 = 6.28318530717958647692528676655900576
		Pi/180 = 0.01745329251994329576923690768488612
		2.0 ln = 0.69314718055994530941723212145817657
		2.0 sqrt = 1.41421356237309504880168872420969808"

	Pi := 3.14159265358979323846264338327950288.
	Halfpi := Pi / 2.0.
	Twopi := Pi * 2.0.
	RadiansPerDegree := Pi / 180.0.
	Ln2 := 0.69314718055994530941723212145817657.
	Ln10 := 10.0 ln.
	Sqrt2 := 1.41421356237309504880168872420969808.
	E := 2.718281828459045235360287471353.
	Epsilon := 0.000000000001.	"Defines precision of mathematical functions"
	MaxVal := 1.7976931348623157e308.
	MaxValLn := 709.782712893384.
	MinValLogBase2 := -1074.
	Infinity := MaxVal * MaxVal.
	NegativeInfinity := 0.0 - Infinity.
	NaN := Infinity - Infinity.
	NegativeZero := 1.0 / Infinity negated
! !

!PCFloat class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
pi
	"Answer the constant, Pi."

	^ Pi
! !

!PCFloat class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
readFrom: aStream
	"Answer a new Float as described on the stream, aStream."

	^ (PCNumber readFrom: aStream) asFloat
! !

!PCAssociation methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
< aLookupKey
	"Sort by keys."

	^ key < aLookupKey key
! !

!PCAssociation methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
= anAssociation
	"True if the receiver and argument have equal keys."

	self species = anAssociation species
		ifTrue: [ ^ key = anAssociation key ]
		ifFalse: [ ^ false ]
! !

!PCAssociation methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
hash
	"Hash is reimplemented because = is implemented."

	^ key hash
! !

!PCAssociation methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
key
	^ key
! !

!PCAssociation methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
key: anObject
	key := anObject
! !

!PCAssociation methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
key: aKey value: anObject
	key := aKey.
	value := anObject
! !

!PCAssociation methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
printOn: aStream
	"Print in the format (key->value)."

	aStream nextPut: $(.
	key printOn: aStream.
	aStream nextPutAll: '->'.
	value printOn: aStream.
	aStream nextPut: $)
! !

!PCAssociation methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
value
	^ value
! !

!PCAssociation methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
value: anObject
	value := anObject
! !

!PCAssociation class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
key: newKey value: newValue
	"Answer a new Association with the given key and value."

	^ self new key: newKey value: newValue
! !

!PCCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
add: newObject
	"Include newObject as one of my elements. Answer newObject. ArrayedCollections cannot respond to this message."

	self subclassResponsibility
! !

!PCCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
asArray
	"Answer an Array whose elements are the elements of this collection. The order in which elements are added depends on the order in which this collection enumerates its elements. In the case of unordered collections, the ordering is not necessarily the same for multiple requests for the conversion."

	| result i |
	result := PCArray new: self size.
	i := 0.
	self do: [ :each | result at: (i := i + 1) put: each ].
	^ result
! !

!PCCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
asByteArray
	"Answer a ByteArray containing my elements."

	| result i |
	result := PCByteArray new: self size.
	i := 0.
	self do: [ :each | result at: (i := i + 1) put: each ].
	^ result
! !

!PCCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
asSet
	"Answer a Set whose elements are the unique elements of the receiver."

	| aSet |
	aSet := PCSet new: self size.
	self do: [ :each | aSet add: each ].
	^ aSet
! !

!PCCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
collect: aBlock
	"Evaluate aBlock with each of the receiver's elements as the argument. 
	Collect the resulting values into a collection like the receiver. Answer 
	the new collection."

	| newCollection |
	newCollection := self species new.
	self do: [ :each | newCollection add: (aBlock value: each) ].
	^ newCollection
! !

!PCCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
detect: aBlock ifNone: exceptionBlock
	"Evaluate aBlock with each of the receiver's elements as the argument. 
	Answer the first element for which aBlock evaluates to true. If none 
	evaluate to true, then evaluate the argument, exceptionBlock."

	self
		do: [ :each | 
			(aBlock value: each)
				ifTrue: [ ^ each ] ].
	^ exceptionBlock value
! !

!PCCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
do: aBlock
	"Evaluate aBlock with each of the receiver's elements as the argument."

	self subclassResponsibility
! !

!PCCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
emptyCheck
	self isEmpty
		ifTrue: [ self errorEmptyCollection ]
! !

!PCCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
errorEmptyCollection
	self error: 'this collection is empty'
! !

!PCCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
errorNotFound
	self error: 'Object is not in the collection.'
! !

!PCCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
includes: anObject
	"Answer whether anObject is one of the receiver's elements."

	self
		do: [ :each | 
			anObject = each
				ifTrue: [ ^ true ] ].
	^ false
! !

!PCCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
isEmpty
	"Answer whether the receiver contains any elements."

	^ self size = 0
! !

!PCCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
printOn: aStream
	"Refer to the comment in Object|printOn:."

	aStream nextPutAll: self class name , ' ('.
	self
		do: [ :element | 
			element printOn: aStream.
			aStream space ].
	aStream nextPut: $)
! !

!PCCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
remove: oldObject
	"Remove oldObject as one of the receiver's elements. Answer oldObject 
	unless no element is equal to oldObject, in which case, create an error 
	notification."

	^ self remove: oldObject ifAbsent: [ self errorNotFound ]
! !

!PCCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
remove: oldObject ifAbsent: anExceptionBlock
	"Remove oldObject as one of the receiver's elements. If several of the 
	elements are equal to oldObject, only one is removed. If no element is 
	equal to oldObject, answer the result of evaluating anExceptionBlock. 
	Otherwise, answer the argument, oldObject. SequenceableCollections 
	cannot respond to this message."

	self subclassResponsibility
! !

!PCCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
select: aBlock
	"Evaluate aBlock with each of the receiver's elements as the argument. 
	Collect into a new collection like the receiver, only those elements for 
	which aBlock evaluates to true. Answer the new collection."

	| newCollection |
	newCollection := self species new.
	self
		do: [ :each | 
			(aBlock value: each)
				ifTrue: [ newCollection add: each ] ].
	^ newCollection
! !

!PCCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
size
	"Answer how many elements the receiver contains."

	| count |
	count := 0.
	self do: [ :each | count := count + 1 ].
	^ count
! !

!PCCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
sum
	"Answer the sum of the elements of this collection. If the collection is empty, answer zero."

	"Details: Use an arbitrary element of the collection as the initial value so this method will work for collections of any kind of object that understands + and -."

	| total seed |
	total := seed := self detect: [ :x | true ] ifNone: [ ^ 0 ].
	self do: [ :el | total := total + el ].
	^ total - seed	"subtract the seed value from the total"
! !

!PCCollection class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
with: anObject
	"Answer an instance of me containing anObject."

	| newCollection |
	newCollection := self new.
	newCollection add: anObject.
	^ newCollection
! !

!PCCollection class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
with: firstObject with: secondObject
	"Answer an instance of me containing the two arguments as elements."

	| newCollection |
	newCollection := self new.
	newCollection add: firstObject.
	newCollection add: secondObject.
	^ newCollection
! !

!PCCollection class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
with: firstObject with: secondObject with: thirdObject
	"Answer an instance of me containing the three arguments as elements."

	| newCollection |
	newCollection := self new.
	newCollection add: firstObject.
	newCollection add: secondObject.
	newCollection add: thirdObject.
	^ newCollection
! !

!PCSequenceableCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
, otherCollection
	"Concatenate two Strings or Collections."

	^ self
		copyReplaceFrom: self size + 1
		to: self size
		with: otherCollection	"
#(2 4 6 8) , #(who do we appreciate)
((2989 printStringBase: 16) copyFrom: 4 to: 6) , ' boy!!'
"
! !

!PCSequenceableCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
= otherCollection
	"Answer whether the species of the receiver is the same as
	otherCollection's species, and the receiver's size is the same as
	otherCollection's size, and each of the receiver's elements equal the
	corresponding element of otherCollection."

	| size |
	(size := self size) = otherCollection size
		ifFalse: [ ^ false ].
	self species == otherCollection species
		ifFalse: [ ^ false ].
	1 to: size do: [ :index | 
		(self at: index) = (otherCollection at: index)
			ifFalse: [ ^ false ] ].
	^ true
! !

!PCSequenceableCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
asArray
	"Answer an Array whose elements are the elements of the receiver, in the same order."

	| newArray |
	newArray := PCArray new: self size.
	1 to: self size do: [ :index | newArray at: index put: (self at: index) ].
	^ newArray
! !

!PCSequenceableCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
at: index ifAbsent: absentBlock
	"Answer the element at the given index. If I do not contain an element at that index, answer the result of evaluating the argument, absentBlock."

	(index between: 1 and: self size)
		ifTrue: [ ^ self at: index ].
	^ absentBlock value
! !

!PCSequenceableCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
collect: aBlock
	"Refer to the comment in Collection|collect:."

	| result |
	result := self species new: self size.
	1 to: self size do: [ :index | result at: index put: (aBlock value: (self at: index)) ].
	^ result
! !

!PCSequenceableCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
copyFrom: start to: stop
	"Answer a copy of a subset of the receiver, starting from element at 
	index start until element at index stop."

	| newSize |
	newSize := stop - start + 1.
	^ (self species new: newSize)
		replaceFrom: 1
		to: newSize
		with: self
		startingAt: start
! !

!PCSequenceableCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
copyReplaceFrom: start to: stop with: replacementCollection
	"Answer a copy of the receiver satisfying the following conditions: If 
	stop is less than start, then this is an insertion; stop should be exactly 
	start-1, start = 1 means insert before the first character, start = size+1 
	means append after last character. Otherwise, this is a replacement; start 
	and stop have to be within the receiver's bounds."

	| newSequenceableCollection newSize endReplacement |
	newSize := self size - (stop - start + 1)
		+ replacementCollection size.
	endReplacement := start - 1 + replacementCollection size.
	newSequenceableCollection := self species new: newSize.
	newSequenceableCollection
		replaceFrom: 1
		to: start - 1
		with: self
		startingAt: 1.
	newSequenceableCollection
		replaceFrom: start
		to: endReplacement
		with: replacementCollection
		startingAt: 1.
	newSequenceableCollection
		replaceFrom: endReplacement + 1
		to: newSize
		with: self
		startingAt: stop + 1.
	^ newSequenceableCollection
! !

!PCSequenceableCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
copyWith: newElement
	"Answer a copy of the receiver that is 1 bigger than the receiver and has 
	newElement at the last element."

	| newIC |
	newIC := self species new: self size + 1.
	newIC
		replaceFrom: 1
		to: self size
		with: self
		startingAt: 1.
	newIC at: newIC size put: newElement.
	^ newIC
! !

!PCSequenceableCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
do: aBlock
	"Refer to the comment in Collection|do:."

	1 to: self size do: [ :index | aBlock value: (self at: index) ]
! !

!PCSequenceableCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
first
	"Answer the first element of the receiver. Create an error notification if 
	the receiver contains no elements."

	self emptyCheck.
	^ self at: 1
! !

!PCSequenceableCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
indexOf: anObject ifAbsent: absentBlock
	"Answer the index of the given object within me. If I do not contain the given object, answer the result of evaluating the given block."

	^ self indexOf: anObject startingAt: 1 ifAbsent: absentBlock
! !

!PCSequenceableCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
indexOf: anObject startingAt: startIndex ifAbsent: absentBlock
	"Answer the index of the given object within me starting the search at the given index. If I do not contain the given object, answer the result of evaluating the given block."

	startIndex to: self size do: [ :i | 
		(self at: i) = anObject
			ifTrue: [ ^ i ] ].
	^ absentBlock value
! !

!PCSequenceableCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
last
	"Answer the last element of the receiver. Create an error notification if 
	the receiver contains no elements."

	self emptyCheck.
	^ self at: self size
! !

!PCSequenceableCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
remove: oldObject ifAbsent: anExceptionBlock
	"SequencableCollections cannot implement removing."

	self shouldNotImplement
! !

!PCSequenceableCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
replaceFrom: start to: stop with: replacement
	"This destructively replaces elements from start to stop in the receiver. 
	Answer the receiver itself. Use copyReplaceFrom:to:with: for 
	insertion/deletion which may alter the size of the result."

	replacement size = (stop - start + 1)
		ifFalse: [ self error: 'Size of replacement doesnt match' ].
	^ self
		replaceFrom: start
		to: stop
		with: replacement
		startingAt: 1
! !

!PCSequenceableCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
replaceFrom: start to: stop with: replacement startingAt: repStart
	"This destructively replaces elements from start to stop in the receiver 
	starting at index, repStart, in the sequenceable collection, 
	replacementCollection. Answer the receiver. No range checks are 
	performed."

	| index repOff |
	repOff := repStart - start.
	index := start - 1.
	[ (index := index + 1) <= stop ]
		whileTrue: [ self at: index put: (replacement at: repOff + index) ]
! !

!PCSequenceableCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
select: aBlock
	"Refer to the comment in Collection|select:."

	| s |
	s := PCWriteStream on: (self species new: self size).
	1 to: self size do: [ :i | 
		(aBlock value: (self at: i))
			ifTrue: [ s nextPut: (self at: i) ] ].
	^ s contents
! !

!PCSequenceableCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
size
	self subclassResponsibility
! !

!PCSequenceableCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
swap: oneIndex with: anotherIndex
	"Move the element at oneIndex to anotherIndex, and vice-versa."

	| element |
	element := self at: oneIndex.
	self at: oneIndex put: (self at: anotherIndex).
	self at: anotherIndex put: element
! !

!PCProcessList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
add: aLink
	"Add aLink to the end of the receiver's list. Answer aLink."

	^ self addLast: aLink
! !

!PCProcessList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
addLast: aLink
	"Add aLink to the end of the receiver's list. Answer aLink."

	self isEmpty
		ifTrue: [ firstLink := aLink ]
		ifFalse: [ lastLink nextLink: aLink ].
	lastLink := aLink.
	^ aLink
! !

!PCProcessList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
do: aBlock
	"Evaluate the given block for each of my elements."

	| aLink |
	aLink := firstLink.
	[ aLink == nil ]
		whileFalse: [ aBlock value: aLink.
			aLink := aLink nextLink ]
! !

!PCProcessList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
first
	"Answer the first element. Raise an error if I am empty."

	self emptyCheck.
	^ firstLink
! !

!PCProcessList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
isEmpty
	^ firstLink == nil
! !

!PCProcessList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
remove: aLink ifAbsent: aBlock
	"Remove aLink from the receiver. If it is not there, answer the result of evaluating aBlock."

	| tempLink |
	aLink == firstLink
		ifTrue: [ firstLink := aLink nextLink.
			aLink == lastLink
				ifTrue: [ lastLink := nil ] ]
		ifFalse: [ tempLink := firstLink.
			[ tempLink == nil
				ifTrue: [ ^ aBlock value ].
			tempLink nextLink == aLink ]
				whileFalse: [ tempLink := tempLink nextLink ].
			tempLink nextLink: aLink nextLink.
			aLink == lastLink
				ifTrue: [ lastLink := tempLink ] ].
	aLink nextLink: nil.
	^ aLink
! !

!PCProcessList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
removeFirst
	"Remove and answer the first element. Raise an error if I am empty."

	| oldLink |
	self emptyCheck.
	oldLink := firstLink.
	firstLink == lastLink
		ifTrue: [ firstLink := nil.
			lastLink := nil ]
		ifFalse: [ firstLink := oldLink nextLink ].
	oldLink nextLink: nil.
	^ oldLink
! !

!PCProcessList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
size
	"Answer the number of elements I contain."

	| tally |
	tally := 0.
	self do: [ :each | tally := tally + 1 ].
	^ tally
! !

!PCArrayedCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
add: newObject
	self shouldNotImplement
! !

!PCArrayedCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
mergeFirst: first middle: middle last: last into: dst by: aBlock
	"Private!! Merge the sorted ranges [first..middle] and [middle+1..last] of the receiver into the range [first..last] of dst."

	| i1 i2 val1 val2 out |
	i1 := first.
	i2 := middle + 1.
	val1 := self at: i1.
	val2 := self at: i2.
	out := first - 1.	"will be pre-incremented"	"select 'lower' half of the elements based on comparator"
	[ i1 <= middle and: [ i2 <= last ] ]
		whileTrue: [ (aBlock value: val2 value: val1)
				ifTrue: [ dst at: (out := out + 1) put: val2.
					i2 := i2 + 1.
					i2 <= last
						ifTrue: [ val2 := self at: i2 ] ]
				ifFalse: [ dst at: (out := out + 1) put: val1.
					val1 := self at: (i1 := i1 + 1) ] ].	"copy the remaining elements"
	i1 <= middle
		ifTrue: [ dst
				replaceFrom: out + 1
				to: last
				with: self
				startingAt: i1 ]
		ifFalse: [ dst
				replaceFrom: out + 1
				to: last
				with: self
				startingAt: i2 ]
! !

!PCArrayedCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
mergeSortFrom: startIndex to: stopIndex by: aBlock
	"Sort the given range of indices using the mergesort algorithm. Mergesort is a worst-case O(N log N) sorting algorithm that usually does only half as many comparisons as heapsort or quicksort."

	"Details: recursively split the range to be sorted into two halves, mergesort each half, then merge the two halves together. An extra copy of the data is used as temporary storage and successive merge phases copy data back and forth between the receiver and this copy. The recursion is set up so that the final merge is performed into the receiver, resulting in the receiver being completely sorted."

	| temp |
	self size <= 1
		ifTrue: [ ^ self ].	"nothing to do"
	startIndex = stopIndex
		ifTrue: [ ^ self ].
	(startIndex >= 1 and: [ startIndex < stopIndex ])
		ifFalse: [ self error: 'bad start index' ].
	stopIndex <= self size
		ifFalse: [ self error: 'bad stop index' ].
	temp := self basicCopy.
	self
		mergeSortFrom: startIndex
		to: stopIndex
		src: temp
		dst: self
		by: aBlock
! !

!PCArrayedCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
mergeSortFrom: first to: last src: src dst: dst by: aBlock
	"Private!! Split the range to be sorted in half, sort each half, and merge the two half-ranges into dst."

	| middle |
	first = last
		ifTrue: [ ^ self ].
	middle := (first + last) // 2.
	self
		mergeSortFrom: first
		to: middle
		src: dst
		dst: src
		by: aBlock.
	self
		mergeSortFrom: middle + 1
		to: last
		src: dst
		dst: src
		by: aBlock.
	src
		mergeFirst: first
		middle: middle
		last: last
		into: dst
		by: aBlock
! !

!PCArrayedCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
size
	"Primitive. Answer the number of indexable fields in the receiver. This value is the same as the largest legal subscript. Primitive is specified here to override MSequenceableCollection size. Essential. See Object documentation whatIsAPrimitive. "

	<primitive: 62>
	^ self basicSize
! !

!PCArrayedCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
sort
	"Sort this array into ascending order using the '<' operator."

	self mergeSortFrom: 1 to: self size by: [ :el1 :el2 | el1 < el2 ]
! !

!PCArrayedCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
sort: aBlock
	"Sort this array using the given comparision block. The block should take two arguments and return true if the first element should precede the second in the sorted result."

	self mergeSortFrom: 1 to: self size by: aBlock
! !

!PCArrayedCollection class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
new
	"Answer a new instance of me, with size = 0."

	^ self new: 0
! !

!PCArrayedCollection class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
with: anObject
	"Answer a new instance of me, containing only anObject."

	| newCollection |
	newCollection := self new: 1.
	newCollection at: 1 put: anObject.
	^ newCollection
! !

!PCArrayedCollection class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
with: firstObject with: secondObject
	"Answer a new instance of me containing the two arguments as elements."

	| newCollection |
	newCollection := self new: 2.
	newCollection at: 1 put: firstObject.
	newCollection at: 2 put: secondObject.
	^ newCollection
! !

!PCArrayedCollection class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:55'!
with: firstObject with: secondObject with: thirdObject
	"Answer a new instance of me, containing the three arguments as elements."

	| newCollection |
	newCollection := self new: 3.
	newCollection at: 1 put: firstObject.
	newCollection at: 2 put: secondObject.
	newCollection at: 3 put: thirdObject.
	^ newCollection
! !

!PCArray methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
asArray
	"Answer with the receiver itself."

	^ self
! !

!PCArray methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
asDictionary
	| dictionary |
	dictionary := PCDictionary new.
	self do: [ :each | dictionary add: each ].
	^ dictionary
! !

!PCArray methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
elementsExchangeIdentityWith: otherArray
	"This primitive performs a bulk mutation, causing all pointers to the elements of this array to be replaced by pointers to the corresponding elements of otherArray.  At the same time, all pointers to the elements of otherArray are replaced by pointers to the corresponding elements of this array."

	<primitive: 128>
	self primitiveFailed
! !

!PCArray methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
hash
	"Make sure that equal (=) arrays hash equally."

	self size = 0
		ifTrue: [ ^ 17171 ].
	^ (self at: 1) hash + (self at: self size) hash
! !

!PCArray methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
printOn: aStream
	aStream nextPutAll: '#('.
	self
		do: [ :each | 
			each printOn: aStream.
			aStream space ].
	aStream nextPut: $)
! !

!PCArray methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
replaceFrom: start to: stop with: replacement startingAt: repStart
	"Primitive. This destructively replaces elements from start to stop in the receiver starting at index, repStart, in the collection, replacement. Answer the receiver. Range checks are performed in the primitive only. Optional. See Object documentation whatIsAPrimitive."

	<primitive: 105>
	super
		replaceFrom: start
		to: stop
		with: replacement
		startingAt: repStart
! !

!PCByteArray methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
asByteArray
	^ self
! !

!PCByteArray methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
asString
	"Answer the receiver converted to a String."

	^ (PCString new: self size)
		replaceFrom: 1
		to: self size
		with: self
		startingAt: 1
! !

!PCByteArray methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
replaceFrom: startIndex to: stopIndex with: source startingAt: srcStartIndex
	"Primitive. Destructively replace the elements from startIndex to stopIndex in the receiver with the elements starting at srcStartIndex in the source collection. Answer the receiver. Range checks are performed in the primitive. Optional. See Object documentation whatIsAPrimitive."

	<primitive: 105>
	super
		replaceFrom: startIndex
		to: stopIndex
		with: source
		startingAt: srcStartIndex
! !

!PCCompiledMethod methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
frameSize
	"Answer the size of temporary frame needed to run the receiver."

	"NOTE:  Versions 2.7 and later use two sizes of contexts."

	(self header bitAnd: 16r20000) = 0
		ifTrue: [ ^ 16 ]
		ifFalse: [ ^ 56 ]
! !

!PCCompiledMethod methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
header
	"Answer the method header word containing information about the form of this method (e.g., number of literals) and the context needed to run it."

	^ self objectAt: 1
! !

!PCCompiledMethod methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
initialPC
	"Answer the program counter for my first bytecode."

	^ 4 * (self numLiterals + 1) + 1
! !

!PCCompiledMethod methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
isCompiledMethod
	^ true
! !

!PCCompiledMethod methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
numLiterals
	"Answer the number of literals used by the receiver."

	^ (self header bitShift: -9) bitAnd: 16rFF
! !

!PCCompiledMethod methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
numTemps
	"Answer the number of temporary variables used by this method."

	^ (self header bitShift: -18) bitAnd: 16r3F
! !

!PCCompiledMethod methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
objectAt: index
	"Primitive. Answer the method header (if index = 1) or a literal (if index > 1) from the receiver. Essential. See Object documentation whatIsAPrimitive."

	<primitive: 68>
	self primitiveFailed
! !

!PCCompiledMethod methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
objectAt: index put: value
	"Primitive. Store the value argument into a literal in the receiver. An index of 2 corresponds to the first literal. Fails if the index is less than 2 or greater than the number of literals. Answer the value as the result. Normally only the compiler sends this message because only the compiler stores values in CompiledMethods. Essential. See Object documentation whatIsAPrimitive."

	<primitive: 69>
	self primitiveFailed
! !

!PCString methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
< aString
	"Answer whether the receiver sorts before aString.
	The collation order is simple ascii (with case differences)."

	^ (self compare: self with: aString collated: AsciiOrder) = 1
! !

!PCString methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
<= aString
	"Answer whether the receiver sorts before or equal to aString.
	The collation order is simple ascii (with case differences)."

	^ (self compare: self with: aString collated: AsciiOrder) <= 2
! !

!PCString methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
= aString
	"Answer whether the receiver sorts equally as aString.
	The collation order is simple ascii (with case differences)."

	aString species == PCString
		ifFalse: [ ^ false ].
	^ (self compare: self with: aString collated: AsciiOrder) = 2
! !

!PCString methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
> aString
	"Answer whether the receiver sorts after aString.
	The collation order is simple ascii (with case differences)."

	^ (self compare: self with: aString collated: AsciiOrder) = 3
! !

!PCString methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
>= aString
	"Answer whether the receiver sorts after or equal to aString.
	The collation order is simple ascii (with case differences)."

	^ (self compare: self with: aString collated: AsciiOrder) >= 2
! !

!PCString methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
asByteArray
	"Answer a ByteArray containing the ASCII values of my characters. Uses a fast primitive that avoids character conversion."

	^ (PCByteArray new: self size)
		replaceFrom: 1
		to: self size
		with: self
! !

!PCString methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
asLowercase
	"Answer a String made up from the receiver whose characters are all lowercase."

	| result |
	result := self copy asString.
	self
		translate: result
		from: 1
		to: result size
		table: LowercasingTable.
	^ result
! !

!PCString methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
asString
	"Answer this string."

	^ self
! !

!PCString methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
asSymbol
	"This is the only place that new Symbols are created. A Symbol is created if and only if there is not already a Symbol with its contents in existance."

	PCSymbol
		allInstancesDo: [ :sym | 
			self = sym
				ifTrue: [ ^ sym ] ].
	^ (PCSymbol basicNew: self size) initFrom: self
! !

!PCString methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
at: index
	"Primitive. Answer the Character stored in the field of the receiver
	indexed by the argument. Fail if the index argument is not an Integer or
	is out of bounds. Essential. See Object documentation whatIsAPrimitive."

	<primitive: 63>
	^ (super at: index) asCharacter
! !

!PCString methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
at: index put: aCharacter
	"Primitive. Store the Character in the field of the receiver indicated by
	the index. Fail if the index is not an Integer or is out of bounds, or if
	the argument is not a Character. Essential. See Object documentation
	whatIsAPrimitive."

	<primitive: 64>
	(aCharacter isKindOf: PCCharacter)
		ifTrue: [ index isInteger
				ifTrue: [ self errorSubscriptBounds: index ]
				ifFalse: [ self errorNonIntegerIndex ] ]
		ifFalse: [ self error: 'Strings only store Characters' ]
! !

!PCString methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
compare: aString
	"Answer a comparison code telling how the receiver sorts relative to aString:
		1 - before
		2 - equal
		3 - after.
	The collation sequence is ascii with case differences ignored.
	To get the effect of a <= b, but ignoring case, use (a compare: b) <= 2."

	^ self compare: self with: aString collated: CaseInsensitiveOrder
! !

!PCString methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
compare: string1 with: string2 collated: order
	"Return 1, 2 or 3, if string1 is <, =, or > string2, with the collating order of characters given by the order array."

	<primitive: 235>
	| len1 len2 c1 c2 |
	len1 := string1 size.
	len2 := string2 size.
	1 to: (len1 min: len2) do: [ :i | 
		c1 := order at: (string1 basicAt: i) + 1.
		c2 := order at: (string2 basicAt: i) + 1.
		c1 = c2
			ifFalse: [ c1 < c2
					ifTrue: [ ^ 1 ]
					ifFalse: [ ^ 3 ] ] ].
	len1 = len2
		ifTrue: [ ^ 2 ].
	len1 < len2
		ifTrue: [ ^ 1 ]
		ifFalse: [ ^ 3 ]
! !

!PCString methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
findDelimiters: delimiters startingAt: start
	"Answer the index of the character within the receiver, starting at start, that matches one of the delimiters. If the receiver does not contain any of the delimiters, answer size + 1."

	start to: self size do: [ :i | 
		delimiters
			do: [ :delim | 
				delim = (self at: i)
					ifTrue: [ ^ i ] ] ].
	^ self size + 1
! !

!PCString methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
findString: key startingAt: start caseSensitive: caseSensitive
	"Answer the index in this String at which the substring key first occurs at or after the given starting index. The match can be case-sensitive or not. Answer zero if no match is found."

	^ self
		findSubstring: key
		in: self
		startingAt: start
		matchTable:
			(caseSensitive
				ifTrue: [ CaseSensitiveOrder ]
				ifFalse: [ CaseInsensitiveOrder ])
! !

!PCString methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
findSubstring: key in: body startingAt: start matchTable: matchTable
	"Answer the index in the string body at which the substring key first occurs, at or beyond start. The match is determined using matchTable, which can be used to effect, eg, case-insensitive matches. If no match is found, zero will be returned."

	"Note: The algorithm below is not optimum because it is intended to be translated to C."

	<primitive: 246>
	| index |
	key size = 0
		ifTrue: [ ^ 0 ].
	start to: body size - key size + 1 do: [ :startIndex | 
		index := 1.
		[ (matchTable at: (body at: startIndex + index - 1) asciiValue + 1)
			= (matchTable at: (key at: index) asciiValue + 1) ]
			whileTrue: [ index = key size
					ifTrue: [ ^ startIndex ].
				index := index + 1 ] ].
	^ 0	"
' ' findSubstring: 'abc' in: 'abcdefabcd' startingAt: 1 matchTable: CaseSensitiveOrder 1
' ' findSubstring: 'abc' in: 'abcdefabcd' startingAt: 2 matchTable: CaseSensitiveOrder 7
' ' findSubstring: 'abc' in: 'abcdefabcd' startingAt: 8 matchTable: CaseSensitiveOrder 0
' ' findSubstring: 'abc' in: 'abcdefABcd' startingAt: 2 matchTable: CaseSensitiveOrder 0
' ' findSubstring: 'abc' in: 'abcdefABcd' startingAt: 2 matchTable: CaseInsensitiveOrder 7
"
! !

!PCString methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
findTokens: delimiters
	"Answer the collection of tokens that result from parsing self. Any character in the String delimiters marks a border. Several delimiters in a row are considered as just one separation."

	| tokens keyStart keyStop |
	tokens := PCOrderedCollection new.
	keyStop := 1.
	[ keyStop <= self size ]
		whileTrue: [ keyStart := self skipDelimiters: delimiters startingAt: keyStop.
			keyStop := self findDelimiters: delimiters startingAt: keyStart.
			keyStart < keyStop
				ifTrue: [ tokens add: (self copyFrom: keyStart to: keyStop - 1) ] ].
	^ tokens
! !

!PCString methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
hash
	| l m |
	(l := m := self size) <= 2
		ifTrue: [ l = 2
				ifTrue: [ m := 3 ]
				ifFalse: [ l = 1
						ifTrue: [ ^ ((self at: 1) asciiValue bitAnd: 127) * 106 ].
					^ 21845 ] ].
	^ (self at: 1) asciiValue * 48 + ((self at: m - 1) asciiValue + l)
! !

!PCString methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
indexOf: aCharacter startingAt: start
	^ self
		indexOfAscii: aCharacter asciiValue
		inString: self
		startingAt: start
! !

!PCString methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
indexOf: aCharacter startingAt: startIndex ifAbsent: absentBlock
	"Answer the index of the given Character within me starting the search at the given index. If I do not contain the Character, answer the result of evaluating the given block."

	| ans |
	ans := self
		indexOfAscii: aCharacter asciiValue
		inString: self
		startingAt: startIndex.
	ans = 0
		ifTrue: [ ^ absentBlock value ]
		ifFalse: [ ^ ans ]
! !

!PCString methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
indexOfAscii: anInteger inString: aString startingAt: start
	"	<primitive: 245>"

	| stringSize |
	stringSize := aString size.
	start to: stringSize do: [ :pos | 
		(aString basicAt: pos) = anInteger
			ifTrue: [ ^ pos ] ].
	^ 0
! !

!PCString methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
numArgs
	"Answer the number of arguments that the receiver would take considered as a selector or -1 if it couldn't be a selector."

	| firstChar numColons |
	firstChar := self at: 1.
	firstChar isLetter
		ifTrue: [ numColons := 0.
			self
				do: [ :ch | 
					ch tokenish
						ifFalse: [ ^ -1 ].
					ch = $:
						ifTrue: [ numColons := numColons + 1 ] ].
			numColons > 0 & (self last ~= $:)
				ifTrue: [ ^ -1 ].
			^ numColons ].
	firstChar isSpecial
		ifTrue: [ self size = 1
				ifTrue: [ ^ 1 ].
			(self size = 2 and: [ (self at: 2) isSpecial ])
				ifTrue: [ ^ 1 ].
			^ -1 ].
	^ -1
! !

!PCString methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
printOn: aStream
	"Print inside string quotes, doubling inbedded quotes."

	| x |
	aStream nextPut: $'.
	1 to: self size do: [ :i | 
		aStream nextPut: (x := self at: i).
		x == $'
			ifTrue: [ aStream nextPut: x ] ].
	aStream nextPut: $'
! !

!PCString methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
replaceFrom: start to: stop with: replacement startingAt: repStart
	"Primitive. This destructively replaces elements from start to stop in the receiver starting at index, repStart, in the collection, replacement. Answer the receiver. Range checks are performed in the primitive only. Optional. See Object documentation whatIsAPrimitive."

	<primitive: 105>
	super
		replaceFrom: start
		to: stop
		with: replacement
		startingAt: repStart
! !

!PCString methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
size
	"Primitive. Answer the number of indexable fields in the receiver. This
	value is the same as the largest legal subscript. Essential. See Object
	documentation whatIsAPrimitive."

	<primitive: 62>
	^ self basicSize
! !

!PCString methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
skipDelimiters: delimiters startingAt: start
	"Answer the index of the first character in this string starting at the given index that does NOT match one of the delimiters. If the receiver does not contain any of the delimiters, answer size + 1. Assumes the delimiters to be a non-empty string."

	start to: self size do: [ :i | 
		(delimiters indexOf: (self at: i) startingAt: 1) = 0
			ifTrue: [ ^ i ] ].
	^ self size + 1
! !

!PCString methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
substrings
	^ self findTokens: ' '
! !

!PCString methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
translate: aString from: start to: stop table: table
	"Translate the characters in the given string in place using the given mapping table."

	<primitive: 243>
	start to: stop do: [ :i | aString at: i put: (table at: (aString at: i) asciiValue + 1) ]
! !

!PCString class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
cr
	"Answer a string containing a carriage return character."

	^ self with: PCCharacter cr
! !

!PCString class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
initialize
	"self initialize"

	| order |
	AsciiOrder := (0 to: 255) asByteArray.
	CaseInsensitiveOrder := AsciiOrder copy.
	($a to: $z)
		do: [ :c | 
			CaseInsensitiveOrder
				at: c asciiValue + 1
				put: (CaseInsensitiveOrder at: c asUppercase asciiValue + 1) ].	"case-sensitive compare sorts space, digits, letters, all the rest..."
	CaseSensitiveOrder := (AsciiOrder collect: [ :x | 255 ]) asByteArray.
	order := -1.
	' 0123456789'
		do:
			[ :c | CaseSensitiveOrder at: c asciiValue + 1 put: (order := order + 1) ].
	"digits, 0-10"
	($a to: $z)
		do: [ :c | 
			CaseSensitiveOrder
				at: c asUppercase asciiValue + 1
				put: (order := order + 1).
			CaseSensitiveOrder at: c asciiValue + 1 put: (order := order + 1) ].
	"letters, 11-64"
	1 to: CaseSensitiveOrder size do: [ :i | 
		(CaseSensitiveOrder at: i) = 255
			ifTrue: [ CaseSensitiveOrder at: i put: (order := order + 1) ] ].
	"all other characters"
	order = 255
		ifFalse: [ self error: 'order problem' ].	"create a table for translating to lower case"
	LowercasingTable := ((0 to: 255)
		collect: [ :i | i asCharacter asLowercase ]) asString
! !

!PCSymbol methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
= anObject
	^ self == anObject
! !

!PCSymbol methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
asString
	"Answer a string containing my characters."

	| sz result |
	sz := self size.
	result := PCString new: sz.
	result
		replaceFrom: 1
		to: sz
		with: self
		startingAt: 1.
	^ result
! !

!PCSymbol methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
asSymbol
	^ self
! !

!PCSymbol methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
at: anInteger put: anObject
	"You cannot modify the receiver."

	self errorNoModification
! !

!PCSymbol methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
basicCopy
	"Answer myself because Symbols are unique."

	
! !

!PCSymbol methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
errorNoModification
	self error: 'Symbols can not be modified.'
! !

!PCSymbol methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
hash
	^ self identityHash
! !

!PCSymbol methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
initFrom: aString
	"Warning!! Use only to initialize new Symbols. Symbols are assumed to be immutable there after."

	self size = aString size
		ifFalse: [ self error: 'size mismatch' ].
	super
		replaceFrom: 1
		to: self size
		with: aString
		startingAt: 1
! !

!PCSymbol methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
printOn: aStream
	aStream nextPutAll: self
! !

!PCSymbol methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
replaceFrom: start to: stop with: replacement startingAt: repStart
	self errorNoModification
! !

!PCSymbol methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
species
	^ PCString
! !

!PCSymbol class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
new: size
	"Symbols are unique. You can create a new Symbol from a String using 'asSymbol'."

	self cannotInstantiate
! !

!PCInterval methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
= anInterval
	"Answer true if my species and anInterval species are equal, and
	if our starts, steps and sizes are equal."

	self species == anInterval species
		ifTrue: [ ^ start = anInterval first
				and: [ step = anInterval increment and: [ self size = anInterval size ] ] ]
		ifFalse: [ ^ false ]
! !

!PCInterval methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
add: newObject
	"Adding to an Interval is not allowed."

	self shouldNotImplement
! !

!PCInterval methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
at: anInteger
	"Answer the anInteger'th element."

	(anInteger >= 1 and: [ anInteger <= self size ])
		ifTrue: [ ^ start + (step * (anInteger - 1)) ]
		ifFalse: [ self errorSubscriptBounds: anInteger ]
! !

!PCInterval methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
at: anInteger put: anObject
	"Storing into an Interval is not allowed."

	self error: 'you can not store into an interval'
! !

!PCInterval methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
collect: aBlock
	| nextValue result |
	result := self species new: self size.
	nextValue := start.
	1 to: result size do: [ :i | 
		result at: i put: (aBlock value: nextValue).
		nextValue := nextValue + step ].
	^ result
! !

!PCInterval methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
do: aBlock
	| aValue |
	aValue := start.
	step < 0
		ifTrue: [ [ stop <= aValue ]
				whileTrue: [ aBlock value: aValue.
					aValue := aValue + step ] ]
		ifFalse: [ [ stop >= aValue ]
				whileTrue: [ aBlock value: aValue.
					aValue := aValue + step ] ]
! !

!PCInterval methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
first
	"Refer to the comment in SequenceableCollection|first."

	^ start
! !

!PCInterval methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
hash
	"Hash is reimplemented because = is implemented."

	^ (((start hash bitShift: 2) bitOr: stop hash) bitShift: 1)
		bitOr: self size
! !

!PCInterval methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
includes: aNumber
	^ aNumber between: self first and: self last
! !

!PCInterval methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
increment
	"Answer the receiver's interval increment."

	^ step
! !

!PCInterval methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
last
	"Refer to the comment in SequenceableCollection|last."

	^ stop - ((stop - start) \\ step)
! !

!PCInterval methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
printOn: aStream
	aStream nextPut: $(.
	start printOn: aStream.
	aStream nextPutAll: ' to: '.
	stop printOn: aStream.
	step ~= 1
		ifTrue: [ aStream nextPutAll: ' by: '.
			step printOn: aStream ].
	aStream nextPut: $)
! !

!PCInterval methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
remove: newObject
	"Removing from an Interval is not allowed."

	self error: 'elements cannot be removed from an Interval'
! !

!PCInterval methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
setFrom: startInteger to: stopInteger by: stepInteger
	start := startInteger.
	stop := stopInteger.
	step := stepInteger
! !

!PCInterval methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
size
	step < 0
		ifTrue: [ start < stop
				ifTrue: [ ^ 0 ]
				ifFalse: [ ^ (stop - start) // step + 1 ] ]
		ifFalse: [ stop < start
				ifTrue: [ ^ 0 ]
				ifFalse: [ ^ (stop - start) // step + 1 ] ]
! !

!PCInterval methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
species
	^ PCArray
! !

!PCInterval class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
from: startInteger to: stopInteger
	"Answer an instance of me, starting at startNumber, ending at stopNumber, and with an interval increment of 1."

	^ self basicNew setFrom: startInteger to: stopInteger by: 1
! !

!PCInterval class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
from: startInteger to: stopInteger by: stepInteger
	"Answer an instance of me, starting at startNumber, ending at stopNumber, and with an interval increment of stepNumber."

	^ self basicNew setFrom: startInteger to: stopInteger by: stepInteger
! !

!PCLinkedList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
add: aLinkOrObject
	"Add aLink to the end of the receiver's list. Answer aLink."

	^ self addLast: aLinkOrObject
! !

!PCLinkedList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
add: link after: otherLinkOrObject
	"Add otherLink  after link in the list. Answer aLink."

	| otherLink savedLink |
	otherLink := self linkAt: (self indexOf: otherLinkOrObject).
	^ self add: link afterLink: otherLink
! !

!PCLinkedList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
add: aLinkOrObject afterLink: otherLink
	"Add otherLink  after link in the list. Answer aLink."

	| savedLink aLink |
	lastLink == otherLink
		ifTrue: [ ^ self addLast: aLinkOrObject ].
	savedLink := otherLink nextLink.
	aLink := aLinkOrObject asLink.
	otherLink nextLink: aLink.
	aLink nextLink: savedLink.
	^ aLink
! !

!PCLinkedList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
add: link before: otherLinkOrObject
	"Add otherLink  after link in the list. Answer aLink."

	| otherLink savedLink |
	otherLink := self linkAt: (self indexOf: otherLinkOrObject).
	^ self add: link beforeLink: otherLink
! !

!PCLinkedList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
add: aLinkOrObject beforeLink: otherLink
	| currentLink |
	firstLink == otherLink
		ifTrue: [ ^ self addFirst: aLinkOrObject ].
	currentLink := firstLink.
	[ currentLink == nil ]
		whileFalse: [ currentLink nextLink == otherLink
				ifTrue: [ | aLink |
					aLink := aLinkOrObject asLink.
					aLink nextLink: currentLink nextLink.
					currentLink nextLink: aLink.
					^ aLink ].
			currentLink := currentLink nextLink ].
	^ self errorNotFound: otherLink
! !

!PCLinkedList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
addFirst: aLinkOrObject
	"Add aLink to the beginning of the receiver's list. Answer aLink."

	| aLink |
	aLink := aLinkOrObject asLink.
	self isEmpty
		ifTrue: [ lastLink := aLink ].
	aLink nextLink: firstLink.
	firstLink := aLink.
	^ aLink
! !

!PCLinkedList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
addLast: aLinkOrObject
	"Add aLink to the end of the receiver's list. Answer aLink."

	| aLink |
	aLink := aLinkOrObject asLink.
	self isEmpty
		ifTrue: [ firstLink := aLink ]
		ifFalse: [ lastLink nextLink: aLink ].
	lastLink := aLink.
	^ aLink
! !

!PCLinkedList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
at: index
	^ (self linkAt: index) value
! !

!PCLinkedList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
at: index put: anObject
	^ self
		at: index
		putLink: (self linkOf: anObject ifAbsent: [ anObject asLink ])
! !

!PCLinkedList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
at: index putLink: aLink
	| previousLink nextLink |
	"Please don't put a link which is already in the list, or you will create an infinite loop"
	(self validIndex: index)
		ifTrue: [ ^ self errorOutOfBounds ].
	index = 1
		ifTrue: [ aLink nextLink: self firstLink nextLink.
			firstLink := aLink.
			aLink nextLink ifNil: [ lastLink := aLink ].
			^ aLink ].
	previousLink := self linkAt: index - 1.
	nextLink := previousLink nextLink nextLink.
	nextLink
		ifNil: [ aLink nextLink: self lastLink ]
		ifNotNil: [ aLink nextLink: nextLink ].
	previousLink nextLink: aLink.
	nextLink
		ifNil: [ lastLink := aLink.
			aLink nextLink: nil ].
	^ aLink
! !

!PCLinkedList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
collect: aBlock
	"Evaluate aBlock with each of the receiver's elements as the argument.  
	Collect the resulting values into a collection like the receiver. Answer  
	the new collection."

	| aLink newCollection |
	newCollection := self class new.
	aLink := firstLink.
	[ aLink == nil ]
		whileFalse: [ newCollection add: (aBlock value: aLink value).
			aLink := aLink nextLink ].
	^ newCollection
! !

!PCLinkedList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
copyWith: newElement
	^ self copy
		add: newElement;
		yourself
! !

!PCLinkedList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
copyWithout: oldElement
	| newInst |
	newInst := self class new.
	self
		do: [ :each | 
			each = oldElement
				ifFalse: [ newInst add: each ] ].
	^ newInst
! !

!PCLinkedList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
do: aBlock
	| aLink |
	aLink := firstLink.
	[ aLink == nil ]
		whileFalse: [ aBlock value: aLink value.
			aLink := aLink nextLink ]
! !

!PCLinkedList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
first
	"Answer the first link. Create an error notification if the receiver is 
	empty."

	^ self firstLink value
! !

!PCLinkedList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
firstLink
	"Answer the first link. Create an error notification if the receiver is 
	empty."

	self emptyCheck.
	^ firstLink
! !

!PCLinkedList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
indexOf: anElement startingAt: start ifAbsent: exceptionBlock
	"Answer the index of the first occurence of anElement after start
	within the receiver. If the receiver does not contain anElement, 
	answer the 	result of evaluating the argument, exceptionBlock."

	| currentLink index |
	currentLink := self linkAt: start ifAbsent: [ nil ].
	index := start.
	[ currentLink isNil ]
		whileFalse: [ currentLink value = anElement value
				ifTrue: [ ^ index ].
			currentLink := currentLink nextLink.
			index := index + 1 ].
	^ exceptionBlock value
! !

!PCLinkedList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
isEmpty
	^ firstLink isNil
! !

!PCLinkedList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
last
	"Answer the last link. Create an error notification if the receiver is 
	empty."

	^ self lastLink value
! !

!PCLinkedList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
lastLink
	"Answer the last link. Create an error notification if the receiver is 
	empty."

	self emptyCheck.
	^ lastLink
! !

!PCLinkedList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
linkAt: index
	^ self linkAt: index ifAbsent: [ self errorSubscriptBounds: index ]
! !

!PCLinkedList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
linkAt: index ifAbsent: errorBlock
	| i |
	i := 0.
	self
		linksDo: [ :link | 
			(i := i + 1) = index
				ifTrue: [ ^ link ] ].
	^ errorBlock value
! !

!PCLinkedList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
linkOf: anObject
	^ self linkOf: anObject ifAbsent: [ self error: 'No such element' ]
! !

!PCLinkedList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
linkOf: anObject ifAbsent: errorBlock
	self
		linksDo: [ :el | 
			el value = anObject
				ifTrue: [ ^ el ] ].
	^ errorBlock value
! !

!PCLinkedList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
linksDo: aBlock
	| aLink |
	aLink := firstLink.
	[ aLink == nil ]
		whileFalse: [ aBlock value: aLink.
			aLink := aLink nextLink ]
! !

!PCLinkedList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
postCopy
	| aLink |
	super postCopy.
	firstLink isNil
		ifFalse: [ aLink := firstLink := firstLink copy.
			[ aLink nextLink isNil ]
				whileFalse: [ aLink nextLink: (aLink := aLink nextLink copy) ].
			lastLink := aLink ]
! !

!PCLinkedList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
remove: aLinkOrObject ifAbsent: aBlock
	"Remove aLink from the receiver. If it is not there, answer the result of evaluating aBlock."

	| link |
	link := self linkOf: aLinkOrObject ifAbsent: [ ^ aBlock value ].
	self removeLink: link ifAbsent: [ ^ aBlock value ].
	^ aLinkOrObject
! !

!PCLinkedList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
removeAll
	"Implementation note: this has to be fast"

	firstLink := lastLink := nil
! !

!PCLinkedList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
removeAllSuchThat: aBlock
	"Evaluate aBlock for each element and remove all that elements from
	the receiver for that aBlock evaluates to true.  For LinkedLists, it's safe to use do:."

	self
		do: [ :each | 
			(aBlock value: each)
				ifTrue: [ self remove: each ] ]
! !

!PCLinkedList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
removeFirst
	"Remove the first element and answer it. If the receiver is empty, create 
	an error notification."

	| oldLink |
	self emptyCheck.
	oldLink := firstLink.
	firstLink == lastLink
		ifTrue: [ firstLink := nil.
			lastLink := nil ]
		ifFalse: [ firstLink := oldLink nextLink ].
	oldLink nextLink: nil.
	^ oldLink value
! !

!PCLinkedList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
removeLast
	"Remove the receiver's last element and answer it. If the receiver is 
	empty, create an error notification."

	| oldLink aLink |
	self emptyCheck.
	oldLink := lastLink.
	firstLink == lastLink
		ifTrue: [ firstLink := nil.
			lastLink := nil ]
		ifFalse: [ aLink := firstLink.
			[ aLink nextLink == oldLink ]
				whileFalse: [ aLink := aLink nextLink ].
			aLink nextLink: nil.
			lastLink := aLink ].
	oldLink nextLink: nil.
	^ oldLink value
! !

!PCLinkedList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
removeLink: aLink
	^ self removeLink: aLink ifAbsent: [ self error: 'no such method!!' ]
! !

!PCLinkedList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
removeLink: aLink ifAbsent: aBlock
	"Remove aLink from the receiver. If it is not there, answer the result of
	evaluating aBlock."

	| tempLink |
	aLink == firstLink
		ifTrue: [ firstLink := aLink nextLink.
			aLink == lastLink
				ifTrue: [ lastLink := nil ] ]
		ifFalse: [ tempLink := firstLink.
			[ tempLink == nil
				ifTrue: [ ^ aBlock value ].
			tempLink nextLink == aLink ]
				whileFalse: [ tempLink := tempLink nextLink ].
			tempLink nextLink: aLink nextLink.
			aLink == lastLink
				ifTrue: [ lastLink := tempLink ] ].	"Not nilling the link enables us to delete while iterating"	"aLink nextLink: nil."
	^ aLink
! !

!PCLinkedList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
species
	^ PCArray
! !

!PCLinkedList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
swap: ix1 with: ix2
	"Reimplemented, super would create an infinite loop"

	| minIx maxIx link1Prev link2Prev link1 link2 link1Next link2Next newLink2Next |
	((self validIndex: ix1) and: [ self validIndex: ix2 ])
		ifFalse: [ ^ self errorOutOfBounds ].	"Get edge case out of the way"
	ix1 = ix2
		ifTrue: [ ^ self ].	"Sort indexes to make boundary-checks easier"
	minIx := ix1 min: ix2.
	maxIx := ix2 max: ix1.
	link1Prev := minIx = 1
		ifFalse: [ self linkAt: minIx - 1 ].
	link1 := link1Prev
		ifNotNil: [ link1Prev nextLink ]
		ifNil: [ self linkAt: minIx ].
	link1Next := link1 nextLink.
	link2Prev := self linkAt: maxIx - 1.
	link2 := link2Prev nextLink.
	link2Next := link2 nextLink.	"Link at start being swapped"
	link1 = firstLink
		ifTrue: [ firstLink := link2 ]
		ifFalse: [ link1Prev nextLink: link2 ].	"Link at end being swapped"
	link2 = lastLink
		ifTrue: [ lastLink := link1 ]
		ifFalse: [  ].	"Links  being swapped adjacent"
	newLink2Next := link1 nextLink = link2
		ifTrue: [ link1 ]
		ifFalse: [ link2Prev nextLink: link1.
			link1Next ].
	link1 nextLink: link2Next.
	link2 nextLink: newLink2Next
! !

!PCLinkedList methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
validIndex: index
	^ index > 0 and: [ index <= self size ]
! !

!PCLinkedList class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
new: anInt
	"LinkedList don't need capacity"

	^ self new
! !

!PCLinkedList class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
newFrom: aCollection
	"Answer an instance with same elements as aCollection."

	^ self new
		addAll: aCollection;
		yourself
! !

!PCSemaphore methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
= anObject
	^ self == anObject
! !

!PCSemaphore methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
critical: aBlock
	"Evaluate the given block immediated if the receiver is not currently running the critical: method. If it is, evaluate the given block when the current critical: message is finished. Answer the result of evaluating the block."

	| result |
	self wait.
	result := aBlock value.
	self signal.
	^ result
! !

!PCSemaphore methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
hash
	^ self identityHash
! !

!PCSemaphore methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
initialize
	"Consume any excess signals the receiver may have accumulated."

	excessSignals := 0
! !

!PCSemaphore methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
signal
	"Primitive. Increment my signal count. If one or more processes are waiting on me, allow the first one to proceed. If no process is waiting, just remember the excess signal. Essential. See Object documentation whatIsAPrimitive."

	<primitive: 85>
	self primitiveFailed
! !

!PCSemaphore methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
wait
	"Primitive. This semaphore must have a signal before the caller's process can proceed. If I have no signals, the process is suspended this semaphore is signalled. Essential. See Object documentation whatIsAPrimitive."

	<primitive: 86>
	self primitiveFailed
! !

!PCOrderedCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
add: newObject
	"Append newObject to me. Equivalent to addLast:. Answer newObject."

	lastIndex = array size
		ifTrue: [ self makeRoomAtLast ].
	lastIndex := lastIndex + 1.
	array at: lastIndex put: newObject.
	^ newObject
! !

!PCOrderedCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
addFirst: newObject
	"Add newObject to the beginning of the receiver. Answer newObject."

	firstIndex = 1
		ifTrue: [ self makeRoomAtFirst ].
	firstIndex := firstIndex - 1.
	array at: firstIndex put: newObject.
	^ newObject
! !

!PCOrderedCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
at: anInteger
	"Answer my element at index anInteger. at: is used by a knowledgeable
	client to access an existing element"

	(anInteger < 1 or: [ anInteger + firstIndex - 1 > lastIndex ])
		ifTrue: [ self errorNoSuchElement ]
		ifFalse: [ ^ array at: anInteger + firstIndex - 1 ]
! !

!PCOrderedCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
at: anInteger put: anObject
	"Put anObject at element index anInteger. at:put: cannot be used to
	append, front or back, to an ordered collection; it is used by a
	knowledgeable client to replace an element."

	| index |
	index := anInteger asInteger.
	(index < 1 or: [ index + firstIndex - 1 > lastIndex ])
		ifTrue: [ self errorNoSuchElement ]
		ifFalse: [ ^ array at: index + firstIndex - 1 put: anObject ]
! !

!PCOrderedCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
collect: aBlock
	"Evaluate aBlock with each of my elements as the argument. Collect the 
	resulting values into a collection that is like me. Answer the new 
	collection. Override superclass in order to use add:, not at:put:."

	| newCollection |
	newCollection := self species new.
	self do: [ :each | newCollection add: (aBlock value: each) ].
	^ newCollection
! !

!PCOrderedCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
copyFrom: startIndex to: endIndex
	"Answer a copy of the receiver that contains elements from position
	startIndex to endIndex."

	| targetCollection |
	endIndex < startIndex
		ifTrue: [ ^ self species new: 0 ].
	targetCollection := self species new: endIndex + 1 - startIndex.
	startIndex to: endIndex do: [ :index | targetCollection add: (self at: index) ].
	^ targetCollection
! !

!PCOrderedCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
copyReplaceFrom: start to: stop with: replacementCollection
	"Answer a copy of the receiver with replacementCollection's elements in
	place of the receiver's start'th to stop'th elements. This does not expect
	a 1-1 map from replacementCollection to the start to stop elements, so it
	will do an insert or append."

	| newOrderedCollection delta startIndex stopIndex |
	"if start is less than 1, ignore stop and assume this is inserting at the front. 
	if start greater than self size, ignore stop and assume this is appending. 
	otherwise, it is replacing part of me and start and stop have to be within my 
	bounds. "
	delta := 0.
	startIndex := start.
	stopIndex := stop.
	start < 1
		ifTrue: [ startIndex := stopIndex := 0 ]
		ifFalse: [ startIndex > self size
				ifTrue: [ startIndex := stopIndex := self size + 1 ]
				ifFalse: [ (stopIndex < (startIndex - 1) or: [ stopIndex > self size ])
						ifTrue: [ self error: 'indices are out of bounds' ].
					delta := stopIndex - startIndex + 1 ] ].
	newOrderedCollection := self species
		new: self size + replacementCollection size - delta.
	1 to: startIndex - 1 do: [ :index | newOrderedCollection add: (self at: index) ].
	1 to: replacementCollection size do:
		[ :index | newOrderedCollection add: (replacementCollection at: index) ].
	stopIndex + 1 to: self size do: [ :index | newOrderedCollection add: (self at: index) ].
	^ newOrderedCollection
! !

!PCOrderedCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
do: aBlock
	"Override the superclass for performance reasons."

	| index |
	index := firstIndex.
	[ index <= lastIndex ]
		whileTrue: [ aBlock value: (array at: index).
			index := index + 1 ]
! !

!PCOrderedCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
errorNoSuchElement
	self
		error: 'attempt to index non-existent element in an ordered collection'
! !

!PCOrderedCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
first
	"Answer the first element. If the receiver is empty, create an errror
	message. This is a little faster than the implementation in the superclass."

	self emptyCheck.
	^ array at: firstIndex
! !

!PCOrderedCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
grow
	"Become larger. Typically, a subclass must override this method if it adds instance variables."

	| newArray |
	newArray := PCArray new: self size + (array size max: 2).
	newArray
		replaceFrom: 1
		to: array size
		with: array
		startingAt: 1.
	array := newArray
! !

!PCOrderedCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
insert: anObject before: spot
	| index delta spotIndex |
	spotIndex := spot.
	delta := spotIndex - firstIndex.
	firstIndex = 1
		ifTrue: [ self makeRoomAtFirst.
			spotIndex := firstIndex + delta ].
	index := firstIndex := firstIndex - 1.
	[ index < (spotIndex - 1) ]
		whileTrue: [ array at: index put: (array at: index + 1).
			index := index + 1 ].
	array at: index put: anObject.
	^ anObject
! !

!PCOrderedCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
last
	"Answer the last element. If the receiver is empty, create an errror
	message. This is a little faster than the implementation in the superclass."

	self emptyCheck.
	^ array at: lastIndex
! !

!PCOrderedCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
makeRoomAtFirst
	| delta index |
	delta := array size - self size.
	delta = 0
		ifTrue: [ self grow.
			delta := array size - self size ].
	lastIndex = array size
		ifTrue: [ ^ self ].	"just in case we got lucky"
	index := array size.
	[ index > delta ]
		whileTrue: [ array at: index put: (array at: index - delta + firstIndex - 1).
			array at: index - delta + firstIndex - 1 put: nil.
			index := index - 1 ].
	firstIndex := delta + 1.
	lastIndex := array size
! !

!PCOrderedCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
makeRoomAtLast
	| newLast delta |
	newLast := self size.
	array size - self size = 0
		ifTrue: [ self grow ].
	(delta := firstIndex - 1) = 0
		ifTrue: [ ^ self ].	"we might be here under false premises or grow did the job for us"
	1 to: newLast do: [ :index | 
		array at: index put: (array at: index + delta).
		array at: index + delta put: nil ].
	firstIndex := 1.
	lastIndex := newLast
! !

!PCOrderedCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
remove: oldObject ifAbsent: absentBlock
	| index |
	index := firstIndex.
	[ index <= lastIndex ]
		whileTrue: [ oldObject = (array at: index)
				ifTrue: [ self removeIndex: index.
					^ oldObject ]
				ifFalse: [ index := index + 1 ] ].
	^ absentBlock value
! !

!PCOrderedCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
removeFirst
	"Remove the first element of the receiver and answer it. If the receiver is 
	empty, create an error notification."

	| firstObject |
	self emptyCheck.
	firstObject := array at: firstIndex.
	array at: firstIndex put: nil.
	firstIndex := firstIndex + 1.
	^ firstObject
! !

!PCOrderedCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
removeIndex: removedIndex
	| index |
	index := removedIndex.
	[ index < lastIndex ]
		whileTrue: [ array at: index put: (array at: index + 1).
			index := index + 1 ].
	array at: lastIndex put: nil.
	lastIndex := lastIndex - 1
! !

!PCOrderedCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
removeLast
	"Remove the last element of the receiver and answer it. If the receiver is 
	empty, create an error notification."

	| lastObject |
	self emptyCheck.
	lastObject := array at: lastIndex.
	array at: lastIndex put: nil.
	lastIndex := lastIndex - 1.
	^ lastObject
! !

!PCOrderedCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
select: aBlock
	"Evaluate aBlock with each of my elements as the argument. Collect into a new collection like the receiver, only those elements for which aBlock evaluates to true. Override the superclass in order to use add:, not at:put:."

	| newCollection |
	newCollection := self species new.
	self
		do: [ :each | 
			(aBlock value: each)
				ifTrue: [ newCollection add: each ] ].
	^ newCollection
! !

!PCOrderedCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
setCollection: anArray
	array := anArray.
	firstIndex := array size // 3 max: 1.
	lastIndex := firstIndex - 1
! !

!PCOrderedCollection methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
size
	^ lastIndex - firstIndex + 1
! !

!PCOrderedCollection class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
new
	^ self new: 8
! !

!PCOrderedCollection class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
new: anInteger
	"If a subclass adds fields, then that subclass must reimplement new:."

	^ self basicNew setCollection: (PCArray new: anInteger)
! !

!PCSet methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
= aSet
	(aSet isKindOf: PCSet)
		ifFalse: [ ^ false ].
	self size = aSet size
		ifFalse: [ ^ false ].
	self
		do: [ :each | 
			(aSet includes: each)
				ifFalse: [ ^ false ] ].
	^ true
! !

!PCSet methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
add: newObject
	"Add an element. User error instead of halt. go 10/1/97 09:33"

	| index |
	newObject == nil
		ifTrue: [ self error: 'Sets cannot meaningfully contain nil as an element' ].
	index := self findElementOrNil: newObject.
	(array at: index) == nil
		ifTrue: [ self atNewIndex: index put: newObject ].
	^ newObject
! !

!PCSet methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
asArray
	"Return an array whose elements are those of the receiver.  "

	| s |
	s := PCWriteStream on: (PCArray new: self size).
	self do: [ :el | s nextPut: el ].
	^ s contents
! !

!PCSet methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
asSet
	^ self
! !

!PCSet methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
atNewIndex: index put: anObject
	array at: index put: anObject.
	tally := tally + 1.
	self fullCheck
! !

!PCSet methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
collect: aBlock
	"Return a Set containing the result of evaluating aBlock for each element of this set."

	| newSet |
	tally = 0
		ifTrue: [ ^ PCSet new: 2 ].
	newSet := PCSet new: self size.
	array
		do: [ :each | 
			each == nil
				ifFalse: [ newSet add: (aBlock value: each) ] ].
	^ newSet
! !

!PCSet methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
copy
	^ self basicCopy withArray: array basicCopy
! !

!PCSet methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
do: aBlock
	tally = 0
		ifTrue: [ ^ self ].
	array
		do: [ :element | 
			element == nil
				ifFalse: [ aBlock value: element ] ]
! !

!PCSet methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
findElementOrNil: anObject
	"Answer the index of a first slot containing either a nil (indicating an empty slot) or an element that matches the given object. Answer the index of that slot or zero. Fail if neither a match nor an empty slot is found."

	| index |
	index := self scanFor: anObject.
	index > 0
		ifTrue: [ ^ index ].	"Bad scene.  Neither have we found a matching element
	nor even an empty slot.  No hashed set is ever supposed to get
	completely full."
	self error: 'There is no free space in this set!!'
! !

!PCSet methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
fixCollisionsFrom: index
	"The element at index has been removed and replaced by nil.
	This method moves forward from there, relocating any entries
	that had been placed below due to collisions with this one"

	| length oldIndex newIndex element |
	oldIndex := index.
	length := array size.
	[ oldIndex = length
		ifTrue: [ oldIndex := 1 ]
		ifFalse: [ oldIndex := oldIndex + 1 ].
	(element := self keyAt: oldIndex) == nil ]
		whileFalse: [ newIndex := self findElementOrNil: element.
			oldIndex = newIndex
				ifFalse: [ self swap: oldIndex with: newIndex ] ]
! !

!PCSet methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
fullCheck
	"Keep array at least 1/4 free for decent hash behavior"

	array size - tally < (array size // 4 max: 1)
		ifTrue: [ self grow ]
! !

!PCSet methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
grow
	"Grow the elements array and reinsert the old elements."

	| oldElements |
	oldElements := array.
	array := PCArray new: array size + (array size max: 2).
	tally := 0.
	oldElements
		do: [ :each | 
			each == nil
				ifFalse: [ self noCheckAdd: each ] ]
! !

!PCSet methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
includes: anObject
	^ (array at: (self findElementOrNil: anObject)) ~~ nil
! !

!PCSet methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
init: n
	"Initialize array to an array size of n."

	array := PCArray new: n.
	tally := 0
! !

!PCSet methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
keyAt: index
	"May be overridden by subclasses so that fixCollisions will work"

	^ array at: index
! !

!PCSet methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
noCheckAdd: anObject
	array at: (self findElementOrNil: anObject) put: anObject.
	tally := tally + 1
! !

!PCSet methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
remove: oldObject ifAbsent: aBlock
	| index |
	index := self findElementOrNil: oldObject.
	(array at: index) == nil
		ifTrue: [ ^ aBlock value ].
	array at: index put: nil.
	tally := tally - 1.
	self fixCollisionsFrom: index.
	^ oldObject
! !

!PCSet methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
scanFor: anObject
	"Scan the key array for the first slot containing either a nil (indicating an empty slot) or an element that matches anObject. Answer the index of that slot or zero if no slot is found. This method will be overridden in various subclasses that have different interpretations for matching elements."

	| element start finish |
	start := anObject hash \\ array size + 1.
	finish := array size.	"Search from (hash mod size) to the end."
	start to: finish do: [ :index | 
		((element := array at: index) == nil or: [ element = anObject ])
			ifTrue: [ ^ index ] ].	"Search from 1 to where we started."
	1 to: start - 1 do: [ :index | 
		((element := array at: index) == nil or: [ element = anObject ])
			ifTrue: [ ^ index ] ].
	^ 0	"No match AND no empty slot"
! !

!PCSet methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
size
	^ tally
! !

!PCSet methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
swap: oneIndex with: otherIndex
	"May be overridden by subclasses so that fixCollisions will work"

	array swap: oneIndex with: otherIndex
! !

!PCSet methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
withArray: anArray
	"private -- for use only in copy"

	array := anArray
! !

!PCSet class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
new
	^ self new: 4
! !

!PCSet class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
new: nElements
	"Create a Set large enough to hold nElements without growing."

	| initialSize |
	"make large enough size to hold nElements with some slop (see fullCheck)"
	nElements <= 0
		ifTrue: [ initialSize := 1 ]
		ifFalse: [ initialSize := (nElements + 1) * 4 // 3 ].
	^ self basicNew init: initialSize
! !

!PCDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
add: anAssociation
	| index element |
	index := self findElementOrNil: anAssociation key.
	element := array at: index.
	element == nil
		ifTrue: [ self atNewIndex: index put: anAssociation ]
		ifFalse: [ element value: anAssociation value ].
	^ anAssociation
! !

!PCDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
associationAt: key
	^ self associationAt: key ifAbsent: [ self errorKeyNotFound ]
! !

!PCDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
associationAt: key ifAbsent: aBlock
	"Answer the association with the given key.
	If key is not found, return the result of evaluating aBlock."

	| index assoc |
	index := self findElementOrNil: key.
	assoc := array at: index.
	nil == assoc
		ifTrue: [ ^ aBlock value ].
	^ assoc
! !

!PCDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
associationsDo: aBlock
	"Evaluate aBlock for each of the receiver's elements (key/value 
	associations)."

	super do: aBlock
! !

!PCDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
at: key
	"Answer the value associated with the key."

	^ self at: key ifAbsent: [ self errorKeyNotFound ]
! !

!PCDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
at: key ifAbsent: aBlock
	| index assoc |
	index := self findElementOrNil: key.
	assoc := array at: index.
	nil == assoc
		ifTrue: [ ^ aBlock value ].
	^ assoc value
! !

!PCDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
at: key put: anObject
	"Set the value at key to be anObject.  If key is not found, create a new
	entry for key and set is value to anObject. Answer anObject."

	| index element |
	index := self findElementOrNil: key.
	element := array at: index.
	element == nil
		ifTrue:
			[ self atNewIndex: index put: (PCAssociation key: key value: anObject) ]
		ifFalse: [ element value: anObject ].
	^ anObject
! !

!PCDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
collect: aBlock
	"Evaluate aBlock with each of my values as the argument. Collect the resulting values into a collection that is like me. Answer with the new collection."

	| newCollection |
	newCollection := PCOrderedCollection new: self size.
	self do: [ :each | newCollection add: (aBlock value: each) ].
	^ newCollection
! !

!PCDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
copy
	"Must copy all my associations or later stores into either dictionary will effect both the original and the copy."

	^ self basicCopy
		withArray:
			(array
				collect: [ :assoc | 
					assoc
						ifNil: [ nil ]
						ifNotNil: [ PCAssociation key: assoc key value: assoc value ] ])
! !

!PCDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
do: aBlock
	super do: [ :assoc | aBlock value: assoc value ]
! !

!PCDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
errorKeyNotFound
	self error: 'key not found'
! !

!PCDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
errorValueNotFound
	self error: 'value not found'
! !

!PCDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
includes: anObject
	self
		do: [ :each | 
			anObject = each
				ifTrue: [ ^ true ] ].
	^ false
! !

!PCDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
includesKey: key
	"Answer whether the receiver has a key equal to the argument, key."

	| index |
	index := self findElementOrNil: key.
	(array at: index) == nil
		ifTrue: [ ^ false ]
		ifFalse: [ ^ true ]
! !

!PCDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
keyAt: index
	"May be overridden by subclasses so that fixCollisions will work"

	| assn |
	assn := array at: index.
	assn == nil
		ifTrue: [ ^ nil ]
		ifFalse: [ ^ assn key ]
! !

!PCDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
keyAtValue: value
	"Answer the key that is the external name for the argument, value. If 
	there is none, answer nil."

	^ self keyAtValue: value ifAbsent: [ self errorValueNotFound ]
! !

!PCDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
keyAtValue: value ifAbsent: exceptionBlock
	"Answer the key that is the external name for the argument, value. If 
	there is none, answer the result of evaluating exceptionBlock.
	: Use =, not ==, so stings like 'this' can be found.  Note that MethodDictionary continues to use == so it will be fast."

	self
		associationsDo: [ :association | 
			value = association value
				ifTrue: [ ^ association key ] ].
	^ exceptionBlock value
! !

!PCDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
keys
	"Answer a Set containing the receiver's keys."

	| aSet |
	aSet := PCSet new: self size.
	self keysDo: [ :key | aSet add: key ].
	^ aSet
! !

!PCDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
keysDo: aBlock
	"Evaluate aBlock for each of the receiver's keys."

	self associationsDo: [ :association | aBlock value: association key ]
! !

!PCDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
noCheckAdd: anObject
	"Must be defined separately for Dictionary because (self findElementOrNil:) expects a key, not an association.  9/7/96 tk"

	array at: (self findElementOrNil: anObject key) put: anObject.
	tally := tally + 1
! !

!PCDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
printOn: aStream
	aStream nextPutAll: self class name , ' ('.
	self
		associationsDo: [ :element | 
			element printOn: aStream.
			aStream space ].
	aStream nextPut: $)
! !

!PCDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
remove: anObject
	self shouldNotImplement
! !

!PCDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
remove: anObject ifAbsent: exceptionBlock
	self shouldNotImplement
! !

!PCDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
removeKey: key
	"Remove key from the receiver.
	If key is not in the receiver, notify an error."

	^ self removeKey: key ifAbsent: [ self errorKeyNotFound ]
! !

!PCDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
removeKey: key ifAbsent: aBlock
	"Remove key (and its associated value) from the receiver. If key is not in 
	the receiver, answer the result of evaluating aBlock. Otherwise, answer 
	the value externally named by key."

	| index assoc |
	index := self findElementOrNil: key.
	assoc := array at: index.
	assoc == nil
		ifTrue: [ ^ aBlock value ].
	array at: index put: nil.
	tally := tally - 1.
	self fixCollisionsFrom: index.
	^ assoc value
! !

!PCDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
scanFor: anObject
	"Scan the key array for the first slot containing either a nil (indicating an empty slot) or an element that matches anObject. Answer the index of that slot or zero if no slot is found. This method will be overridden in various subclasses that have different interpretations for matching elements."

	| element start finish |
	start := anObject hash \\ array size + 1.
	finish := array size.	"Search from (hash mod size) to the end."
	start to: finish do: [ :index | 
		((element := array at: index) == nil or: [ element key = anObject ])
			ifTrue: [ ^ index ] ].	"Search from 1 to where we started."
	1 to: start - 1 do: [ :index | 
		((element := array at: index) == nil or: [ element key = anObject ])
			ifTrue: [ ^ index ] ].
	^ 0	"No match AND no empty slot"
! !

!PCDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
select: aBlock
	"Evaluate aBlock with each of my values as the argument. Collect into a
	new dictionary, only those associations for which aBlock evaluates to
	true."

	| newCollection |
	newCollection := self species new.
	self
		associationsDo: [ :each | 
			(aBlock value: each value)
				ifTrue: [ newCollection add: each ] ].
	^ newCollection
! !

!PCMethodDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
add: anAssociation
	^ self at: anAssociation key put: anAssociation value
! !

!PCMethodDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
associationsDo: aBlock
	| key |
	tally = 0
		ifTrue: [ ^ self ].
	1 to: self basicSize do: [ :i | 
		(key := self basicAt: i)
			ifNotNil: [ aBlock value: key -> (array at: i) ] ]
! !

!PCMethodDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
at: key ifAbsent: aBlock
	| index |
	index := self findElementOrNil: key.
	(self basicAt: index) == nil
		ifTrue: [ ^ aBlock value ].
	^ array at: index
! !

!PCMethodDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
at: key put: value
	"Set the value at key to be value."

	| index |
	index := self findElementOrNil: key.
	(self basicAt: index) == nil
		ifTrue: [ tally := tally + 1.
			self basicAt: index put: key ].
	array at: index put: value.
	self fullCheck.
	^ value
! !

!PCMethodDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
copy
	"Copy my values array."

	^ self basicCopy withArray: array basicCopy
! !

!PCMethodDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
do: aBlock
	tally = 0
		ifTrue: [ ^ self ].
	1 to: self basicSize do: [ :i | (self basicAt: i) ifNotNil: [ aBlock value: (array at: i) ] ]
! !

!PCMethodDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
grow
	| newSelf key |
	newSelf := self species new: self basicSize.	"This will double the size"
	1 to: self basicSize do: [ :i | 
		key := self basicAt: i.
		key == nil
			ifFalse: [ newSelf at: key put: (array at: i) ] ].
	self become: newSelf
! !

!PCMethodDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
includesKey: aSymbol
	"This override assumes that pointsTo is a fast primitive."

	^ super pointsTo: aSymbol
! !

!PCMethodDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
keyAt: index
	^ self basicAt: index
! !

!PCMethodDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
keyAtIdentityValue: value ifAbsent: exceptionBlock
	"Answer the key whose value equals the argument, value. If there is none, answer the result of evaluating exceptionBlock."

	| k |
	1 to: self basicSize do: [ :i | 
		value == (array at: i)
			ifTrue: [ (k := self basicAt: i) ifNotNil: [ ^ k ] ] ].
	^ exceptionBlock value
! !

!PCMethodDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
keysDo: aBlock
	| key |
	tally = 0
		ifTrue: [ ^ self ].
	1 to: self basicSize do: [ :i | (key := self basicAt: i) ifNotNil: [ aBlock value: key ] ]
! !

!PCMethodDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
removeKey: key ifAbsent: errorBlock
	"Pharo Candle does not support method removal."

	self shouldNotImplement
! !

!PCMethodDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
scanFor: anObject
	"Scan the key array for the first slot containing either a nil (indicating an empty slot) or an element that matches anObject. Answer the index of that slot or zero if no slot is found. This method will be overridden in various subclasses that have different interpretations for matching elements."

	| element start finish |
	start := anObject basicIdentityHash \\ array size + 1.
	finish := array size.	"Search from (hash mod size) to the end."
	start to: finish do: [ :index | 
		((element := self basicAt: index) == nil or: [ element == anObject ])
			ifTrue: [ ^ index ] ].	"Search from 1 to where we started."
	1 to: start - 1 do: [ :index | 
		((element := self basicAt: index) == nil or: [ element == anObject ])
			ifTrue: [ ^ index ] ].
	^ 0	"No match AND no empty slot"
! !

!PCMethodDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
swap: oneIndex with: otherIndex
	| element |
	element := self basicAt: oneIndex.
	self basicAt: oneIndex put: (self basicAt: otherIndex).
	self basicAt: otherIndex put: element.
	super swap: oneIndex with: otherIndex
! !

!PCMethodDictionary class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:50'!
new: nElements
	"Create a Dictionary large enough to hold nElements without growing."

	"NOTE: The basic size MUST be a power of 2. It is VITAL (see grow) that size gets doubled if nElements is a power of 2."

	| size |
	size := 1 bitShift: nElements highBit.
	^ (self basicNew: size) init: size
! !

!PCIdentityDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
keys
	"Answer an array of the receiver's keys."

	| result |
	result := PCOrderedCollection new: self size.
	self keysDo: [ :key | result add: key ].
	^ result asArray
! !

!PCIdentityDictionary methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
scanFor: anObject
	"Scan the key array for the first slot containing either a nil (indicating an empty slot) or an element that matches anObject. Answer the index of that slot or zero if no slot is found. This method will be overridden in various subclasses that have different interpretations for matching elements."

	| finish hash start element |
	finish := array size.
	finish > 4096
		ifTrue: [ hash := anObject identityHash * (finish // 4096) ]
		ifFalse: [ hash := anObject identityHash ].
	start := hash \\ array size + 1.	"Search from (hash mod size) to the end."
	start to: finish do: [ :index | 
		((element := array at: index) == nil or: [ element key == anObject ])
			ifTrue: [ ^ index ] ].	"Search from 1 to where we started."
	1 to: start - 1 do: [ :index | 
		((element := array at: index) == nil or: [ element key == anObject ])
			ifTrue: [ ^ index ] ].
	^ 0	"No match AND no empty slot"
! !

!PCIdentitySet methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
scanFor: anObject
	"Scan the key array for the first slot containing either a nil (indicating an empty slot) or an element that matches anObject. Answer the index of that slot or zero if no slot is found. This method will be overridden in various subclasses that have different interpretations for matching elements."

	| finish hash start element |
	finish := array size.
	finish > 4096
		ifTrue: [ hash := anObject identityHash * (finish // 4096) ]
		ifFalse: [ hash := anObject identityHash ].
	start := hash \\ array size + 1.	"Search from (hash mod size) to the end."
	start to: finish do: [ :index | 
		((element := array at: index) == nil or: [ element == anObject ])
			ifTrue: [ ^ index ] ].	"Search from 1 to where we started."
	1 to: start - 1 do: [ :index | 
		((element := array at: index) == nil or: [ element == anObject ])
			ifTrue: [ ^ index ] ].
	^ 0	"No match AND no empty slot"
! !

!PCValueLink methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
= anotherObject
	^ self species == anotherObject species
		and: [ self value = anotherObject value
				and: [ self nextLink == anotherObject nextLink ] ]
! !

!PCValueLink methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
asLink
	^ self
! !

!PCValueLink methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
hash
	^ self value hash bitXor: nextLink identityHash
! !

!PCValueLink methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
nextLink
	^ nextLink
! !

!PCValueLink methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
nextLink: aLink
	nextLink := aLink
! !

!PCValueLink methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
printOn: aStream
	aStream nextPutAll: 'ValueLink('.
	value printOn: aStream.
	aStream nextPut: $)
! !

!PCValueLink methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
value
	^ value
! !

!PCValueLink methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
value: aValue
	value := aValue
! !

!PCValueLink class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
value: aValue
	^ self new value: aValue
! !

!PCReadStream methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
atEnd
	"Primitive. Answer whether the receiver can access any more objects. Optional. See Object documentation whatIsAPrimitive."

	<primitive: 67>
	^ position >= readLimit
! !

!PCReadStream methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
contents
	"Answer with a copy of my collection from 1 to readLimit."

	^ collection copyFrom: 1 to: readLimit
! !

!PCReadStream methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
next
	"Primitive. Answer the next object in the Stream represented by the receiver. Fail if the collection of this stream is not an Array or a String. Fail if the stream is positioned at its end, or if the position is out of bounds in the collection. Optional. See Object documentation whatIsAPrimitive."

	<primitive: 65>
	position >= readLimit
		ifTrue: [ ^ nil ]
		ifFalse: [ ^ collection at: (position := position + 1) ]
! !

!PCReadStream methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
next: anInteger
	"Answer a collection containing the next anInteger elements of my collection."

	| end result |
	end := position + anInteger min: readLimit.
	result := collection copyFrom: position + 1 to: end.
	position := end.
	^ result
! !

!PCReadStream methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
on: aCollection
	"Initialize myself for streaming over the given collection."

	collection := aCollection.
	readLimit := aCollection size.
	position := 0
! !

!PCReadStream methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
peek
	"Answer the next object without advancing my position. Answer nil if there are no more elements."

	| result |
	self atEnd
		ifTrue: [ ^ nil ].
	result := self next.
	position := position - 1.
	^ result
! !

!PCReadStream methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
peekFor: anObject
	"If my next element equals the given object, skip it and answer true. Otherwise, answer false and leave my position unchanged."

	| result |
	result := self peek = anObject.
	result
		ifTrue: [ self skip: 1 ].
	^ result
! !

!PCReadStream methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
position
	"Answer the current position of accessing the sequence of objects."

	^ position
! !

!PCReadStream methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
position: anInteger
	"Set my current position to anInteger, as long as anInteger is within bounds. If not, report an error."

	anInteger >= 0 & (anInteger <= readLimit)
		ifTrue: [ position := anInteger asInteger ]
		ifFalse: [ self error: 'Position out of bounds: ' , anInteger printString ]
! !

!PCReadStream methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
size
	"Compatibility with other streams (e.g., FileStream)"

	^ readLimit
! !

!PCReadStream methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
skip: anInteger
	"Set the receiver's position to be the current position+anInteger."

	self position: (position + anInteger min: readLimit)
! !

!PCReadStream class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
on: aCollection
	"Answer an instance of me, streaming over the elements of aCollection."

	^ self basicNew on: aCollection
! !

!PCWriteStream methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
contents
	"Answer with a copy of my collection up to the high-water mark that was written."

	readLimit := readLimit max: position.
	^ collection copyFrom: 1 to: readLimit
! !

!PCWriteStream methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
nextPut: anObject
	"Primitive. Insert the argument at the next position in the Stream represented by the receiver. Fail if the collection of this stream is not an Array or a String. Fail if the stream is positioned at its end, or if the position is out of bounds in the collection. Fail if the argument is not of the right type for the collection. Optional. See Object documentation whatIsAPrimitive."

	<primitive: 66>
	position >= writeLimit
		ifTrue: [ ^ self pastEndPut: anObject ]
		ifFalse: [ position := position + 1.
			^ collection at: position put: anObject ]
! !

!PCWriteStream methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
nextPutAll: aCollection
	"Write the elements of the given collection starting at my current position. Answer the collection."

	"Optimization: If the given collection has the same class as my collection, use the fast operation replaceFrom:to:with:."

	| newEnd |
	collection class == aCollection class
		ifFalse: [ aCollection do: [ :v | self nextPut: v ].
			^ aCollection ].
	newEnd := position + aCollection size.
	newEnd > writeLimit
		ifTrue: [ collection := collection
				,
					(collection species
						new: newEnd - writeLimit + (collection size max: 20)).
			writeLimit := collection size ].
	"grow my collection if necessary"
	collection replaceFrom: position + 1 to: newEnd with: aCollection.
	position := newEnd
! !

!PCWriteStream methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
on: aCollection
	super on: aCollection.
	readLimit := 0.
	writeLimit := aCollection size
! !

!PCWriteStream methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
pastEndPut: anObject
	"Grow my collection."

	"Details: In general, double my size. Grow by at least 20 elements if my size is under 20 and grow by 20000 if my size is over 20000."

	collection := collection
		, (collection class new: ((collection size max: 20) min: 20000)).
	writeLimit := collection size.
	collection at: (position := position + 1) put: anObject
! !

!PCWriteStream methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
position: anInteger
	"Set my read position, but remember the high-water mark that was written."

	readLimit := readLimit max: position.
	super position: anInteger
! !

!PCWriteStream methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
size
	^ readLimit := readLimit max: position
! !

!PCWriteStream methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:53'!
space
	"Append a space character to me."

	self nextPut: PCCharacter space
! !

!PCFile methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
close
	"Close this file."

	fileID
		ifNotNil: [ self primClose: fileID.
			fileID := nil ]
! !

!PCFile methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
cr
	self nextPutAll: (PCString with: PCCharacter cr)
! !

!PCFile methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
localFolderPath
	"Answer the path for the folder containing the image file."

	"MFile new localFolderPath"

	| imagePath delimiter i |
	imagePath := self primImageName.
	delimiter := $/.
	(imagePath includes: delimiter)
		ifFalse: [ delimiter := $\ ].
	i := imagePath size.
	[ i > 0 and: [ (imagePath at: i) ~= delimiter ] ]
		whileTrue: [ i := i - 1 ].
	i = 0
		ifTrue: [ ^ '' ].
	^ imagePath copyFrom: 1 to: i
! !

!PCFile methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
name
	"Answer the name of this file."

	^ name
! !

!PCFile methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
next: count
	"Answer a String containing the next count bytes of the file. If there are not count bytes left in the file, answer a String with as many bytes as available."

	| buffer n |
	buffer := '' class new: count.
	n := self
		primRead: fileID
		into: buffer
		startingAt: 1
		count: count.
	n < count
		ifTrue: [ buffer := buffer copyFrom: 1 to: n ].
	^ buffer
! !

!PCFile methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
nextPutAll: buffer
	"Write the contents of the given bytes or words object to this file."

	^ self
		primWrite: fileID
		from: buffer
		startingAt: 1
		count: buffer basicSize
! !

!PCFile methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
openReadOnly: fileName
	"Open the file with the given name for reading and writing."

	name := nil.
	fileID := self primOpen: fileName writable: false.
	name := fileName
! !

!PCFile methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
openReadWrite: fileName
	"Open the file with the given name for reading only."

	name := nil.
	fileID := self primOpen: fileName writable: true.
	name := fileName
! !

!PCFile methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
position
	"Answer the current file position in bytes."

	^ self primGetPosition: fileID
! !

!PCFile methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
position: newPosition
	"Seek to the given file position in bytes."

	^ self primSetPosition: fileID to: newPosition
! !

!PCFile methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
primClose: id
	"Close this file. Don't raise an error if the primitive fails."

	<primitive: 'primitiveFileClose' module: 'FilePlugin'>
	
! !

!PCFile methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
primGetPosition: id
	"Get this files current position."

	<primitive: 'primitiveFileGetPosition' module: 'FilePlugin'>
	self primitiveFailed
! !

!PCFile methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
primImageName
	"Answer the full path name for the current image."

	<primitive: 121>
	self primitiveFailed
! !

!PCFile methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
primOpen: fileName writable: writableFlag
	"Open a file of the given name, and return the file ID obtained.
	If writableFlag is true, then
		if there is none with this name, then create one
		else prepare to overwrite the existing from the beginning
	otherwise
		if the file exists, open it read-only
		else return nil"

	<primitive: 'primitiveFileOpen' module: 'FilePlugin'>
	self primitiveFailed
! !

!PCFile methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
primRead: id into: byteArray startingAt: startIndex count: count
	"Read up to count elements into the given buffer and answer the number of elements actually read. The buffer may either a byte- or word-indexable object."

	<primitive: 'primitiveFileRead' module: 'FilePlugin'>
	self primitiveFailed
! !

!PCFile methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
primSetPosition: id to: anInteger
	"Set this file to the given position."

	<primitive: 'primitiveFileSetPosition' module: 'FilePlugin'>
	self primitiveFailed
! !

!PCFile methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
primSize: id
	"Answer the size of this file."

	<primitive: 'primitiveFileSize' module: 'FilePlugin'>
	self primitiveFailed
! !

!PCFile methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
primWrite: id from: buffer startingAt: startIndex count: count
	"Write up to count elements from the given buffer and answer the number of elements actually written. The buffer may either a byte- or word-indexable object."

	<primitive: 'primitiveFileWrite' module: 'FilePlugin'>
	self primitiveFailed
! !

!PCFile methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
readInto: buffer startingAt: startIndex count: count
	"Read up to count elements into the given array and answer the number of elements actually read. The buffer may either a byte- or word-indexable object."

	^ self
		primRead: fileID
		into: buffer
		startingAt: startIndex
		count: count
! !

!PCFile methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
size
	"Answer the size of this file in bytes."

	^ self primSize: fileID
! !

!PCPoint methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
* arg
	"Answer a Point that is the product of the receiver and arg."

	arg isPoint
		ifTrue: [ ^ (x * arg x) @ (y * arg y) ].
	^ arg adaptToPoint: self andSend: #*
! !

!PCPoint methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
+ arg
	"Answer a Point that is the sum of the receiver and arg."

	arg isPoint
		ifTrue: [ ^ (x + arg x) @ (y + arg y) ].
	^ arg adaptToPoint: self andSend: #+
! !

!PCPoint methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
- arg
	"Answer a Point that is the difference of the receiver and arg."

	arg isPoint
		ifTrue: [ ^ (x - arg x) @ (y - arg y) ].
	^ arg adaptToPoint: self andSend: #-
! !

!PCPoint methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
/ arg
	"Answer a Point that is the quotient of the receiver and arg."

	arg isPoint
		ifTrue: [ ^ (x / arg x) @ (y / arg y) ].
	^ arg adaptToPoint: self andSend: #/
! !

!PCPoint methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
// arg
	"Answer a Point that is the quotient of the receiver and arg."

	arg isPoint
		ifTrue: [ ^ (x // arg x) @ (y // arg y) ].
	^ arg adaptToPoint: self andSend: #//
! !

!PCPoint methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
= aPoint
	self species = aPoint species
		ifTrue:
			[ ^ x = aPoint x and: [ y = aPoint y ]	"Refer to the comment in Object|=." ]
		ifFalse: [ ^ false ]
! !

!PCPoint methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
abs
	"Answer a Point whose x and y are the absolute values of the receiver's x and y."

	^ x abs @ y abs
! !

!PCPoint methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
adaptToFloat: rcvr andSend: selector
	"If I am involved in arithmetic with a Float, convert it to a Point."

	^ rcvr @ rcvr perform: selector with: self
! !

!PCPoint methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
adaptToInteger: rcvr andSend: selector
	"If I am involved in arithmetic with an Integer, convert it to a Point."

	^ rcvr @ rcvr perform: selector with: self
! !

!PCPoint methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
asPoint
	"Answer the receiver itself."

	^ self
! !

!PCPoint methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
crossProduct: aPoint
	"Answer a number that is the cross product of the receiver and the argument, aPoint."

	^ x * aPoint y - (y * aPoint x)
! !

!PCPoint methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
degrees
	"Answer the angle the receiver makes with origin in degrees. Right is 0; down is 90."

	| tan theta |
	x = 0
		ifTrue: [ y >= 0
				ifTrue: [ ^ 90.0 ]
				ifFalse: [ ^ 270.0 ] ]
		ifFalse: [ tan := y asFloat / x asFloat.
			theta := tan arcTan.
			x >= 0
				ifTrue: [ y >= 0
						ifTrue: [ ^ theta radiansToDegrees ]
						ifFalse: [ ^ 360.0 + theta radiansToDegrees ] ]
				ifFalse: [ ^ 180.0 + theta radiansToDegrees ] ]
! !

!PCPoint methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
dist: aPoint
	"Answer the distance between aPoint and the receiver."

	^ (aPoint - self) r
! !

!PCPoint methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
dotProduct: aPoint
	"Answer a number that is the dot product of the receiver and the argument."

	^ x * aPoint x + (y * aPoint y)
! !

!PCPoint methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
hash
	"Hash is reimplemented because = is implemented."

	^ (x hash bitShift: 2) bitXor: y hash
! !

!PCPoint methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
max: aPoint
	"Answer a new Point whose x and y are the maximum of the receiver and the argument point x and y."

	^ (x max: aPoint x) @ (y max: aPoint y)
! !

!PCPoint methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
min: aPoint
	"Answer a new Point whose x and y are the minimum of the receiver's and the argument point's x and y."

	^ (x min: aPoint x) @ (y min: aPoint y)
! !

!PCPoint methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
negated
	"Answer a point whose x and y coordinates are the negatives of those of the receiver."

	^ x negated @ y negated
! !

!PCPoint methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
printOn: aStream
	"The receiver prints on aStream in terms of infix notation."

	x printOn: aStream.
	aStream nextPut: $@.
	y printOn: aStream
! !

!PCPoint methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
r
	"Answer the receiver's radius in polar coordinate system."

	^ (x * x + (y * y)) sqrt
! !

!PCPoint methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
rounded
	"Answer a Point that is the receiver's x and y rounded. Answer the receiver if its coordinates are already integral."

	(x isInteger and: [ y isInteger ])
		ifTrue: [ ^ self ].
	^ x rounded @ y rounded
! !

!PCPoint methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
setR: rho degrees: theta
	| radians |
	radians := theta asFloat degreesToRadians.
	x := rho asFloat * radians cos.
	y := rho asFloat * radians sin
! !

!PCPoint methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
setX: xValue setY: yValue
	x := xValue.
	y := yValue
! !

!PCPoint methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
theta
	"Answer the angle the receiver makes with origin in radians. See degrees."

	| tan theta |
	x = 0
		ifTrue: [ y >= 0
				ifTrue: [ ^ 1.5708	"90.0 degreesToRadians" ]
				ifFalse: [ ^ 4.71239	"270.0 degreesToRadians" ] ]
		ifFalse: [ tan := y asFloat / x asFloat.
			theta := tan arcTan.
			x >= 0
				ifTrue: [ y >= 0
						ifTrue: [ ^ theta ]
						ifFalse: [ ^ 360.0 degreesToRadians + theta ] ]
				ifFalse: [ ^ 180.0 degreesToRadians + theta ] ]
! !

!PCPoint methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
truncated
	"Answer a Point whose x and y coordinates are integers. Answer the receiver if its coordinates are already integral."

	(x isInteger and: [ y isInteger ])
		ifTrue: [ ^ self ].
	^ x truncated @ y truncated
! !

!PCPoint methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
x
	^ x
! !

!PCPoint methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
y
	^ y
! !

!PCPoint class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
r: rho degrees: theta
	"Answer an instance of me with polar coordinates rho and theta."

	^ self new setR: rho degrees: theta
! !

!PCPoint class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:51'!
x: xValue y: yValue
	"Answer an instance of me with the given coordinates."

	^ self new setX: xValue setY: yValue
! !

!PCBitBlt methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
clipX: x y: y width: w height: h
	"Set my clipping boundaries. Setting the clipping bounds is optional."

	clipX := x.
	clipY := y.
	clipWidth := w.
	clipHeight := h
! !

!PCBitBlt methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
copyBits
	"Primitive. Perform the movement of bits from the source form to the destination form. Fail if any variables are not of the right type or if the combination rule is not implemented."

	<primitive: 96>
	self primitiveFailed
! !

!PCBitBlt methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
copyBitsTranslucent: factor
	"This entry point to BitBlt supplies an extra argument to specify translucency for operations 30 and 31.  The argument must be an integer between 0 and 255."

	<primitive: 96>
	self primitiveFailed
! !

!PCBitBlt methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
destForm: aForm
	"Set my destination Form."

	destForm := aForm.
	clipX := 0.
	clipY := 0.
	clipWidth := aForm width.
	clipHeight := aForm height
! !

!PCBitBlt methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
destX: x y: y width: w height: h
	"Set the destination rectangle for this operation."

	destX := x.
	destY := y.
	width := w.
	height := h
! !

!PCBitBlt methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
fillR: r g: g b: b
	"Set my fill color to the given RGB value, where r, g, and b are in the range 0-255. The destination form must be set before calling this method, since the pixel pattern created depends on the destination depth."

	"Note: The ranges of r, g, and b are not checked."

	| d pix |
	d := destForm depth.
	d = 8
		ifTrue: [ pix := 41 + (r // 37 * 36) + (g // 37 * 6) + (b // 37).
			^ self fillWords: (PCWordArray with: 16r01010101 * pix) ].
	d = 16
		ifTrue: [ pix := (r // 8 bitShift: 10) + (g // 8 bitShift: 5) + (b // 8).
			^ self fillWords: (PCWordArray with: (pix bitShift: 16) + pix) ].
	"5 bits each of r, g, b"
	d = 32
		ifTrue: [ ^ self
				fillWords: (PCWordArray with: (r bitShift: 16) + (g bitShift: 8) + b) ].
	self error: 'color is supported only for depths 8, 16, and 32'
! !

!PCBitBlt methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
fillWords
	"Answer the array of pixel words using for filling with a color."

	^ fillWords
! !

!PCBitBlt methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
fillWords: aBitmapOrNil
	"Set the array of pixel words using for filling with a color."

	fillWords := aBitmapOrNil
! !

!PCBitBlt methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
initialize
	rule := PCForm over.
	sourceX := sourceY := 0.
	destX := destY := 0.
	clipX := clipY := 0.
	clipWidth := clipHeight := 100000
! !

!PCBitBlt methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
rule: anInteger
	"Set the combination rule, an integer between 0 and 34 that determines how pixels are combined in this operation."

	rule := anInteger
! !

!PCBitBlt methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
sourceForm: aForm
	"Set my source and destination forms. The source form may be nil if filling with a color."

	sourceForm := aForm
! !

!PCBitBlt methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
sourceX: x y: y
	"Set the top-left corner of the destination rectangle for this operation."

	sourceX := x.
	sourceY := y
! !

!PCBitBlt methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
width: w height: h
	"Set the width and height for this operation."

	width := w.
	height := h
! !

!PCForm methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
beDisplayDepth: d
	"Install myself as the Display. Drawing onto me will then cause the screen or window to be updated."

	| screenExtent |
	screenExtent := self primScreenSize.
	self
		setWidth: (screenExtent instVarAt: 1)
		height: (screenExtent instVarAt: 2)
		depth: d.
	PCSystem specialObjectsArray at: 15 put: self	"make this Form the Display"
! !

!PCForm methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
bits
	^ bits
! !

!PCForm methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
copyX: x y: y width: w height: h
	"Answer a new form containing given rectangular portion of this form."

	| result |
	result := PCForm basicNew setWidth: w height: h depth: depth.
	PCBitBlt new
		sourceForm: self;
		destForm: result;
		sourceX: x y: y;
		width: w height: h;
		copyBits.
	^ result
! !

!PCForm methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
depth
	^ depth
! !

!PCForm methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
drawForm: aForm x: x y: y rule: anInteger
	"Fill the given rectangle with the current fill color."

	| oldFill |
	oldFill := bitBlt fillWords.
	bitBlt
		sourceForm: aForm;
		destX: x
			y: y
			width: aForm width
			height: aForm height;
		rule: anInteger;
		copyBits.
	bitBlt sourceForm: nil.
	bitBlt fillWords: oldFill
! !

!PCForm methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
fillRectX: x y: y w: w h: h
	"Fill the given rectangle with the current fill color."

	bitBlt
		destX: x
			y: y
			width: w
			height: h;
		copyBits
! !

!PCForm methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
height
	^ height
! !

!PCForm methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
primScreenSize
	"Answer the actual screen size. In Pharo Candle, this will be an Association object since Pharo Candle doesn't have Points."

	<primitive: 106>
	self primitiveFailed
! !

!PCForm methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
setColorR: r g: g b: b
	"Set the fill color for rectangle drawing operations."

	bitBlt fillR: r g: g b: b
! !

!PCForm methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
setWidth: w height: h depth: d
	| wordsPerLine |
	wordsPerLine := (w * d + 31) // 32.
	bits := PCByteArray new: 4 * wordsPerLine * h.
	width := w.
	height := h.
	depth := d.
	bitBlt := PCBitBlt new
		destForm: self;
		fillR: 255 g: 0 b: 0	"default color"
! !

!PCForm methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
width
	^ width
! !

!PCForm class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
over
	^ 3
! !

!PCForm class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
paint
	^ 25
! !

!PCForm class methodsFor: 'as yet unclassified' stamp: 'KenD 6/11/2023 07:14:52'!
width: w height: h depth: d
	^ self basicNew setWidth: w height: h depth: d
! !
PCCharacter initialize!
PCFloat initialize!
PCString initialize!
