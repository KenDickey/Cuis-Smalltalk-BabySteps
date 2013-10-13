'From Cuis 4.2 of 25 July 2013 [latest update: #1845] on 2 October 2013 at 3:28:01.702435056 pm'!
'Description Tests for ValueHolder and subclasses.'!
!provides: 'ValueHolder-Tests' 1 1!
!requires: 'ValueHolder' nil nil!
!classDefinition: #ValueHolderTests category: #'ValueHolder-Tests'!
TestCase subclass: #ValueHolderTests
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ValueHolder-Tests'!
!classDefinition: 'ValueHolderTests class' category: #'ValueHolder-Tests'!
ValueHolderTests class
	instanceVariableNames: ''!


!ValueHolderTests commentStamp: '<historical>' prior: 0!
Tests for ValueHolder and subclasses.!

!ValueHolderTests methodsFor: 'testing' stamp: 'KenD 10/2/2013 17:18'!
testValueHolder

	| vh |
	vh := ValueHolder new.
	self assert: (vh value = nil).
	vh value: #someValue.
	self assert: (vh value = #someValue).
	"Squeak compatability"
	self assert: (vh contents = #someValue).
	vh contents: 37.
	self assert: (vh value) = (vh contents).! !

!ValueHolderTests methodsFor: 'testing' stamp: 'KenD 10/2/2013 16:43'!
testValueOfClass

	| vh |
	self should: [ValueOfClass new] raise: Error.
	vh := ValueOfClass mustBeInstanceOfClass: Color.
	vh value: Color red.
	self assert: (vh value) = (Color red).
	self should: [ vh value: 37 ] raise: DomainError.
	self assert: (vh value: 37 ifInvalid: [ :ignore | ^ #bogus ]) = #bogus.
	"Require value to be a direct inctance"
	self should: [ vh value: (Color blue alpha: 0.7) ] raise: DomainError.! !

!ValueHolderTests methodsFor: 'testing' stamp: 'KenD 10/2/2013 16:48'!
testValueOfKind

	| vh |
	self should: [ValueOfKind new] raise: Error.
	vh := ValueOfKind mustBeKindOf: Color.
	vh value: Color red.
	self assert: (vh value) = (Color red).
	self should: [ vh value: 37 ] raise: DomainError.
	self assert: (vh value: 37 ifInvalid: [ :ignore | ^ #bogus ]) = #bogus.
	"Require value to be a direct inctance"
	vh value: (Color blue alpha: 0.7).
	self assert: (vh value) = (Color blue alpha: 0.7).! !

!ValueHolderTests methodsFor: 'testing' stamp: 'KenD 10/2/2013 16:51'!
testValueOneOf

	| vh |
	vh := ValueOneOf mustBeOneOf: #( Red Green Blue ) ofKind: Symbol.
	"Default value is first item"
	self assert: (vh value) = #Red.! !
