'From Cuis 4.2 of 25 July 2013 [latest update: #1850] on 12 October 2013 at 9:37:33.582000017 pm'!
'Description Tests for ValueHolder and subclasses.'!
!provides: 'ValueHolder Tests' 1 6!
!requires: 'ValueHolder' nil nil nil!
!classDefinition: #ValueHolderTests category: #'ValueHolder Tests'!
TestCase subclass: #ValueHolderTests
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ValueHolder Tests'!
!classDefinition: 'ValueHolderTests class' category: #'ValueHolder Tests'!
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

!ValueHolderTests methodsFor: 'testing' stamp: 'KenD 10/12/2013 16:44'!
testValueOfClass

	| vh |
	self should: [ValueOfClass new] raise: Error.
	vh := ValueOfClass mustBeInstanceOfClass: Color.
	vh value: Color red.
	self assert: (vh value) = (Color red).
	self should: [ vh value: 37 ] raise: DomainError.
	self assert: (vh value: 37 ifInvalid: [ :ignore | ^ #bogus ]) = #bogus.
	"Require value to be a direct instance"
	self should: [ vh value: (Color blue alpha: 0.7) ] raise: DomainError.
	vh := ValueOfClass mustBeInstanceOfClass: String.
	vh value: 'A silly string'.
	self should: [ vh value: #Symbol ] raise: DomainError.! !

!ValueHolderTests methodsFor: 'testing' stamp: 'KenD 10/12/2013 16:43'!
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
	self assert: (vh value) = (Color blue alpha: 0.7). "A TranslucentColor is a kind  of Color"
	vh := ValueOfKind mustBeKindOf: String.
	vh value: 'A silly string'.
	vh value: #ASymbolWorksToo.  "A Symbol is a kind of String"
	self assert: (vh value) = #ASymbolWorksToo.! !

!ValueHolderTests methodsFor: 'testing' stamp: 'KenD 10/12/2013 16:38'!
testValueOfRange

	| vh |
	vh := ValueOfRange minValue: 3 maxValue: 7 ofKind: Magnitude.
	self assert: (vh value) = 3. "Default is minValue"
	self should: [ vh value: 2 ] raise: DomainError.
	self should: [ vh value: 2@3 ] raise: DomainError.
	self should: [ vh value: 8 ] raise: DomainError.
	vh value: 7.
	vh := ValueOfRange minValue: 3@4 maxValue:7@9 ofKind: Point.
	vh value: 4@5.
	self should: [ vh value: 2@3 ] raise: DomainError.
	! !

!ValueHolderTests methodsFor: 'testing' stamp: 'KenD 10/12/2013 16:26'!
testValueOneOf

	| vh |
	vh := ValueOneOf mustBeOneOf: #( Red Green Blue ) ofKind: Symbol.
	"Default value is first item"
	self assert: (vh value) = #Red.
	self should: [ vh value: #Orange ] raise: Error.
	self should: [ vh value: 'Green' ] raise: DomainError.
	self assert: (vh value) = #Red.
	 vh value: #Blue.
	self assert: (vh value) = #Blue.! !
