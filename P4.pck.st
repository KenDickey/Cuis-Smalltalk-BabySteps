'From Cuis 6.0 [latest update: #5464] on 24 August 2022 at 5:51:47 pm'!
'Description Pinocchio  Version 4'!
!provides: 'P4' 1 18!
SystemOrganization addCategory: 'P4-Kernel-Object'!
SystemOrganization addCategory: 'P4-Kernel-Package'!
SystemOrganization addCategory: 'P4-Kernel-String'!
SystemOrganization addCategory: 'P4-Kernel-Structure'!
SystemOrganization addCategory: 'P4-Parser'!
SystemOrganization addCategory: 'P4-Presentation'!
SystemOrganization addCategory: 'P4-Stream'!
SystemOrganization addCategory: 'P4-SystemInstaller'!
SystemOrganization addCategory: 'P4-TAC-IR'!
SystemOrganization addCategory: 'P4-TAC-Values'!
SystemOrganization addCategory: 'P4-TAC'!
SystemOrganization addCategory: 'P4-Test'!
SystemOrganization addCategory: 'P4-AST'!
SystemOrganization addCategory: 'P4-ASM'!
SystemOrganization addCategory: 'P4-ASM-Values'!
SystemOrganization addCategory: 'P4-Compiler'!
SystemOrganization addCategory: 'P4-Examples'!
SystemOrganization addCategory: 'P4-Exception'!
SystemOrganization addCategory: 'P4-Exec-ELF'!
SystemOrganization addCategory: 'P4-Exec-ELF-Dwarf'!
SystemOrganization addCategory: 'P4-Exec-MachO'!
SystemOrganization addCategory: 'P4-Exec'!
SystemOrganization addCategory: 'P4-Kernel-Behavior'!
SystemOrganization addCategory: 'P4-Kernel-Boolean'!
SystemOrganization addCategory: 'P4-Kernel-Callable'!
SystemOrganization addCategory: 'P4-Kernel-IO'!
SystemOrganization addCategory: 'P4-Kernel-Collection'!
SystemOrganization addCategory: 'P4-Kernel-Memory'!
SystemOrganization addCategory: 'P4-Kernel-Number'!
SystemOrganization addCategory: 'P4-PharoBridge'!
SystemOrganization addCategory: 'P4-SystemSpec'!


!classDefinition: #ASTTest category: 'P4-AST'!
TestCase subclass: #ASTTest
	instanceVariableNames: 'scparser parser'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-AST'!
!classDefinition: 'ASTTest class' category: 'P4-AST'!
ASTTest class
	instanceVariableNames: ''!

!classDefinition: #P4Object category: 'P4-Kernel-Object'!
Object subclass: #P4Object
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Object'!
!classDefinition: 'P4Object class' category: 'P4-Kernel-Object'!
P4Object class
	instanceVariableNames: 'pname'!

!classDefinition: #P4UndefinedObject category: 'P4-Kernel-Object'!
P4Object subclass: #P4UndefinedObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Object'!
!classDefinition: 'P4UndefinedObject class' category: 'P4-Kernel-Object'!
P4UndefinedObject class
	instanceVariableNames: ''!

!classDefinition: #P4AbstractPackage category: 'P4-Kernel-Package'!
P4Object subclass: #P4AbstractPackage
	instanceVariableNames: 'members'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Package'!
!classDefinition: 'P4AbstractPackage class' category: 'P4-Kernel-Package'!
P4AbstractPackage class
	instanceVariableNames: ''!

!classDefinition: #P4Package category: 'P4-Kernel-Package'!
P4AbstractPackage subclass: #P4Package
	instanceVariableNames: 'parent name'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Package'!
!classDefinition: 'P4Package class' category: 'P4-Kernel-Package'!
P4Package class
	instanceVariableNames: ''!

!classDefinition: #P4RootPackage category: 'P4-Kernel-Package'!
P4AbstractPackage subclass: #P4RootPackage
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Package'!
!classDefinition: 'P4RootPackage class' category: 'P4-Kernel-Package'!
P4RootPackage class
	instanceVariableNames: 'instance'!

!classDefinition: #P4ClassReference category: 'P4-Kernel-Package'!
P4Object subclass: #P4ClassReference
	instanceVariableNames: 'cls package'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Package'!
!classDefinition: 'P4ClassReference class' category: 'P4-Kernel-Package'!
P4ClassReference class
	instanceVariableNames: ''!

!classDefinition: #P4Character category: 'P4-Kernel-String'!
P4Object subclass: #P4Character
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-String'!
!classDefinition: 'P4Character class' category: 'P4-Kernel-String'!
P4Character class
	instanceVariableNames: ''!

!classDefinition: #P4String category: 'P4-Kernel-String'!
P4Object variableByteSubclass: #P4String
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-String'!
!classDefinition: 'P4String class' category: 'P4-Kernel-String'!
P4String class
	instanceVariableNames: ''!

!classDefinition: #P4Symbol category: 'P4-Kernel-String'!
P4String variableByteSubclass: #P4Symbol
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-String'!
!classDefinition: 'P4Symbol class' category: 'P4-Kernel-String'!
P4Symbol class
	instanceVariableNames: ''!

!classDefinition: #P4Layout category: 'P4-Kernel-Structure'!
P4Object subclass: #P4Layout
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Structure'!
!classDefinition: 'P4Layout class' category: 'P4-Kernel-Structure'!
P4Layout class
	instanceVariableNames: ''!

!classDefinition: #P4LByte category: 'P4-Kernel-Structure'!
P4Layout subclass: #P4LByte
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Structure'!
!classDefinition: 'P4LByte class' category: 'P4-Kernel-Structure'!
P4LByte class
	instanceVariableNames: ''!

!classDefinition: #P4LLong category: 'P4-Kernel-Structure'!
P4Layout subclass: #P4LLong
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Structure'!
!classDefinition: 'P4LLong class' category: 'P4-Kernel-Structure'!
P4LLong class
	instanceVariableNames: ''!

!classDefinition: #P4LSized category: 'P4-Kernel-Structure'!
P4Layout subclass: #P4LSized
	instanceVariableNames: 'size'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Structure'!
!classDefinition: 'P4LSized class' category: 'P4-Kernel-Structure'!
P4LSized class
	instanceVariableNames: ''!

!classDefinition: #P4LBytes category: 'P4-Kernel-Structure'!
P4LSized subclass: #P4LBytes
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Structure'!
!classDefinition: 'P4LBytes class' category: 'P4-Kernel-Structure'!
P4LBytes class
	instanceVariableNames: ''!

!classDefinition: #P4LPointers category: 'P4-Kernel-Structure'!
P4LSized subclass: #P4LPointers
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Structure'!
!classDefinition: 'P4LPointers class' category: 'P4-Kernel-Structure'!
P4LPointers class
	instanceVariableNames: ''!

!classDefinition: #P4LVariable category: 'P4-Kernel-Structure'!
P4LSized subclass: #P4LVariable
	instanceVariableNames: 'extra'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Structure'!
!classDefinition: 'P4LVariable class' category: 'P4-Kernel-Structure'!
P4LVariable class
	instanceVariableNames: ''!

!classDefinition: #P4LWords category: 'P4-Kernel-Structure'!
P4LSized subclass: #P4LWords
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Structure'!
!classDefinition: 'P4LWords class' category: 'P4-Kernel-Structure'!
P4LWords class
	instanceVariableNames: ''!

!classDefinition: #P4LWord category: 'P4-Kernel-Structure'!
P4Layout subclass: #P4LWord
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Structure'!
!classDefinition: 'P4LWord class' category: 'P4-Kernel-Structure'!
P4LWord class
	instanceVariableNames: ''!

!classDefinition: #P4Slot category: 'P4-Kernel-Structure'!
P4Object subclass: #P4Slot
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Structure'!
!classDefinition: 'P4Slot class' category: 'P4-Kernel-Structure'!
P4Slot class
	instanceVariableNames: ''!

!classDefinition: #P4AbstractGrammar category: 'P4-Parser'!
P4Object subclass: #P4AbstractGrammar
	instanceVariableNames: 'parsers'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Parser'!
!classDefinition: 'P4AbstractGrammar class' category: 'P4-Parser'!
P4AbstractGrammar class
	instanceVariableNames: ''!

!classDefinition: #P4SmalltalkGrammar category: 'P4-Parser'!
P4AbstractGrammar subclass: #P4SmalltalkGrammar
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Parser'!
!classDefinition: 'P4SmalltalkGrammar class' category: 'P4-Parser'!
P4SmalltalkGrammar class
	instanceVariableNames: 'instance'!

!classDefinition: #P4SmalltalkParser category: 'P4-Parser'!
P4SmalltalkGrammar subclass: #P4SmalltalkParser
	instanceVariableNames: 'stream'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Parser'!
!classDefinition: 'P4SmalltalkParser class' category: 'P4-Parser'!
P4SmalltalkParser class
	instanceVariableNames: ''!

!classDefinition: #P4FakeDictionary category: 'P4-Presentation'!
P4Object subclass: #P4FakeDictionary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Presentation'!
!classDefinition: 'P4FakeDictionary class' category: 'P4-Presentation'!
P4FakeDictionary class
	instanceVariableNames: ''!

!classDefinition: #P4FakeMethod category: 'P4-Presentation'!
P4Object subclass: #P4FakeMethod
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Presentation'!
!classDefinition: 'P4FakeMethod class' category: 'P4-Presentation'!
P4FakeMethod class
	instanceVariableNames: ''!

!classDefinition: #P4LogBehavior category: 'P4-Presentation'!
P4Object subclass: #P4LogBehavior
	instanceVariableNames: 'realBehavior'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Presentation'!
!classDefinition: 'P4LogBehavior class' category: 'P4-Presentation'!
P4LogBehavior class
	instanceVariableNames: ''!

!classDefinition: #P4LogMethod category: 'P4-Presentation'!
P4Object subclass: #P4LogMethod
	instanceVariableNames: 'realMethod'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Presentation'!
!classDefinition: 'P4LogMethod class' category: 'P4-Presentation'!
P4LogMethod class
	instanceVariableNames: ''!

!classDefinition: #P4Presentation category: 'P4-Presentation'!
P4Object subclass: #P4Presentation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Presentation'!
!classDefinition: 'P4Presentation class' category: 'P4-Presentation'!
P4Presentation class
	instanceVariableNames: ''!

!classDefinition: #P4BinaryWriteStream category: 'P4-Stream'!
P4Object subclass: #P4BinaryWriteStream
	instanceVariableNames: 'stream'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Stream'!
!classDefinition: 'P4BinaryWriteStream class' category: 'P4-Stream'!
P4BinaryWriteStream class
	instanceVariableNames: ''!

!classDefinition: #P4LittleEndianWriteStream category: 'P4-Stream'!
P4BinaryWriteStream subclass: #P4LittleEndianWriteStream
	instanceVariableNames: 'wordSize pointerSize'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Stream'!
!classDefinition: 'P4LittleEndianWriteStream class' category: 'P4-Stream'!
P4LittleEndianWriteStream class
	instanceVariableNames: ''!

!classDefinition: #P4ClassInstaller category: 'P4-SystemInstaller'!
P4Object subclass: #P4ClassInstaller
	instanceVariableNames: 'methodInstaller'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-SystemInstaller'!
!classDefinition: 'P4ClassInstaller class' category: 'P4-SystemInstaller'!
P4ClassInstaller class
	instanceVariableNames: ''!

!classDefinition: #P4DynamicClassInstaller category: 'P4-SystemInstaller'!
P4ClassInstaller subclass: #P4DynamicClassInstaller
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-SystemInstaller'!
!classDefinition: 'P4DynamicClassInstaller class' category: 'P4-SystemInstaller'!
P4DynamicClassInstaller class
	instanceVariableNames: ''!

!classDefinition: #P4StaticClassInstaller category: 'P4-SystemInstaller'!
P4ClassInstaller subclass: #P4StaticClassInstaller
	instanceVariableNames: 'dumper'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-SystemInstaller'!
!classDefinition: 'P4StaticClassInstaller class' category: 'P4-SystemInstaller'!
P4StaticClassInstaller class
	instanceVariableNames: ''!

!classDefinition: #P4MethodInstaller category: 'P4-SystemInstaller'!
P4Object subclass: #P4MethodInstaller
	instanceVariableNames: 'compiler'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-SystemInstaller'!
!classDefinition: 'P4MethodInstaller class' category: 'P4-SystemInstaller'!
P4MethodInstaller class
	instanceVariableNames: ''!

!classDefinition: #P4DynamicMethodInstaller category: 'P4-SystemInstaller'!
P4MethodInstaller subclass: #P4DynamicMethodInstaller
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-SystemInstaller'!
!classDefinition: 'P4DynamicMethodInstaller class' category: 'P4-SystemInstaller'!
P4DynamicMethodInstaller class
	instanceVariableNames: ''!

!classDefinition: #P4StaticMethodInstaller category: 'P4-SystemInstaller'!
P4MethodInstaller subclass: #P4StaticMethodInstaller
	instanceVariableNames: 'globals references'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-SystemInstaller'!
!classDefinition: 'P4StaticMethodInstaller class' category: 'P4-SystemInstaller'!
P4StaticMethodInstaller class
	instanceVariableNames: ''!

!classDefinition: #P4TACCodePoint category: 'P4-TAC-IR'!
P4Object subclass: #P4TACCodePoint
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-IR'!
!classDefinition: 'P4TACCodePoint class' category: 'P4-TAC-IR'!
P4TACCodePoint class
	instanceVariableNames: ''!

!classDefinition: #P4TACCodeBlock category: 'P4-TAC-IR'!
P4TACCodePoint subclass: #P4TACCodeBlock
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-IR'!
!classDefinition: 'P4TACCodeBlock class' category: 'P4-TAC-IR'!
P4TACCodeBlock class
	instanceVariableNames: ''!

!classDefinition: #P4ObjectStream category: 'P4-Stream'!
P4TACCodeBlock subclass: #P4ObjectStream
	instanceVariableNames: 'instructions currentPosition substreams'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Stream'!
!classDefinition: 'P4ObjectStream class' category: 'P4-Stream'!
P4ObjectStream class
	instanceVariableNames: ''!

!classDefinition: #P4EmptyStreamObject category: 'P4-Stream'!
P4ObjectStream subclass: #P4EmptyStreamObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Stream'!
!classDefinition: 'P4EmptyStreamObject class' category: 'P4-Stream'!
P4EmptyStreamObject class
	instanceVariableNames: 'instance'!

!classDefinition: #P4TACBasicBlock category: 'P4-TAC-IR'!
P4ObjectStream subclass: #P4TACBasicBlock
	instanceVariableNames: 'nextBlock number'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-IR'!
!classDefinition: 'P4TACBasicBlock class' category: 'P4-TAC-IR'!
P4TACBasicBlock class
	instanceVariableNames: ''!

!classDefinition: #P4TACCallable category: 'P4-TAC-IR'!
P4TACCodeBlock subclass: #P4TACCallable
	instanceVariableNames: 'preamble registerPushing argumentLoading primitiveCalling entry postamble popArguments invokeBlock locals temporaries frameSize usedRegisters remoteVariables'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-IR'!
!classDefinition: 'P4TACCallable class' category: 'P4-TAC-IR'!
P4TACCallable class
	instanceVariableNames: ''!

!classDefinition: #P4TACClosure category: 'P4-TAC-IR'!
P4TACCallable subclass: #P4TACClosure
	instanceVariableNames: 'code outerScope imports'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-IR'!
!classDefinition: 'P4TACClosure class' category: 'P4-TAC-IR'!
P4TACClosure class
	instanceVariableNames: ''!

!classDefinition: #P4TACMethod category: 'P4-TAC-IR'!
P4TACCallable subclass: #P4TACMethod
	instanceVariableNames: 'host message literals closures uid codeUid methodObject codeStream primitive returnAddress nonLocalReturn'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-IR'!
!classDefinition: 'P4TACMethod class' category: 'P4-TAC-IR'!
P4TACMethod class
	instanceVariableNames: ''!

!classDefinition: #P4TACEndBlock category: 'P4-TAC-IR'!
P4TACCodeBlock subclass: #P4TACEndBlock
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-IR'!
!classDefinition: 'P4TACEndBlock class' category: 'P4-TAC-IR'!
P4TACEndBlock class
	instanceVariableNames: ''!

!classDefinition: #P4TACInstruction category: 'P4-TAC-IR'!
P4TACCodePoint subclass: #P4TACInstruction
	instanceVariableNames: 'flowNumber'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-IR'!
!classDefinition: 'P4TACInstruction class' category: 'P4-TAC-IR'!
P4TACInstruction class
	instanceVariableNames: ''!

!classDefinition: #P4TACBitShift category: 'P4-TAC-IR'!
P4TACInstruction subclass: #P4TACBitShift
	instanceVariableNames: 'target bits'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-IR'!
!classDefinition: 'P4TACBitShift class' category: 'P4-TAC-IR'!
P4TACBitShift class
	instanceVariableNames: ''!

!classDefinition: #P4TACBitShiftRight category: 'P4-TAC-IR'!
P4TACInstruction subclass: #P4TACBitShiftRight
	instanceVariableNames: 'target bits'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-IR'!
!classDefinition: 'P4TACBitShiftRight class' category: 'P4-TAC-IR'!
P4TACBitShiftRight class
	instanceVariableNames: ''!

!classDefinition: #P4TACBitTest category: 'P4-TAC-IR'!
P4TACInstruction subclass: #P4TACBitTest
	instanceVariableNames: 'bit location'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-IR'!
!classDefinition: 'P4TACBitTest class' category: 'P4-TAC-IR'!
P4TACBitTest class
	instanceVariableNames: ''!

!classDefinition: #P4TACCall category: 'P4-TAC-IR'!
P4TACInstruction subclass: #P4TACCall
	instanceVariableNames: 'method offset'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-IR'!
!classDefinition: 'P4TACCall class' category: 'P4-TAC-IR'!
P4TACCall class
	instanceVariableNames: ''!

!classDefinition: #P4TACCaptureClosure category: 'P4-TAC-IR'!
P4TACInstruction subclass: #P4TACCaptureClosure
	instanceVariableNames: 'closure capturedAt resultVariable'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-IR'!
!classDefinition: 'P4TACCaptureClosure class' category: 'P4-TAC-IR'!
P4TACCaptureClosure class
	instanceVariableNames: ''!

!classDefinition: #P4TACHalt category: 'P4-TAC-IR'!
P4TACInstruction subclass: #P4TACHalt
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-IR'!
!classDefinition: 'P4TACHalt class' category: 'P4-TAC-IR'!
P4TACHalt class
	instanceVariableNames: ''!

!classDefinition: #P4TACIndirectCall category: 'P4-TAC-IR'!
P4TACInstruction subclass: #P4TACIndirectCall
	instanceVariableNames: 'register'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-IR'!
!classDefinition: 'P4TACIndirectCall class' category: 'P4-TAC-IR'!
P4TACIndirectCall class
	instanceVariableNames: ''!

!classDefinition: #P4TACIndirectJump category: 'P4-TAC-IR'!
P4TACInstruction subclass: #P4TACIndirectJump
	instanceVariableNames: 'register'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-IR'!
!classDefinition: 'P4TACIndirectJump class' category: 'P4-TAC-IR'!
P4TACIndirectJump class
	instanceVariableNames: ''!

!classDefinition: #P4TACJump category: 'P4-TAC-IR'!
P4TACInstruction subclass: #P4TACJump
	instanceVariableNames: 'target zero carry short'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-IR'!
!classDefinition: 'P4TACJump class' category: 'P4-TAC-IR'!
P4TACJump class
	instanceVariableNames: ''!

!classDefinition: #P4TACNilInstruction category: 'P4-TAC-IR'!
P4TACInstruction subclass: #P4TACNilInstruction
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-IR'!
!classDefinition: 'P4TACNilInstruction class' category: 'P4-TAC-IR'!
P4TACNilInstruction class
	instanceVariableNames: 'instance'!

!classDefinition: #P4TACOperation category: 'P4-TAC-IR'!
P4TACInstruction subclass: #P4TACOperation
	instanceVariableNames: 'left right'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-IR'!
!classDefinition: 'P4TACOperation class' category: 'P4-TAC-IR'!
P4TACOperation class
	instanceVariableNames: ''!

!classDefinition: #P4TACAdd category: 'P4-TAC-IR'!
P4TACOperation subclass: #P4TACAdd
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-IR'!
!classDefinition: 'P4TACAdd class' category: 'P4-TAC-IR'!
P4TACAdd class
	instanceVariableNames: ''!

!classDefinition: #P4TACAnd category: 'P4-TAC-IR'!
P4TACOperation subclass: #P4TACAnd
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-IR'!
!classDefinition: 'P4TACAnd class' category: 'P4-TAC-IR'!
P4TACAnd class
	instanceVariableNames: ''!

!classDefinition: #P4TACAssigning category: 'P4-TAC-IR'!
P4TACOperation subclass: #P4TACAssigning
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-IR'!
!classDefinition: 'P4TACAssigning class' category: 'P4-TAC-IR'!
P4TACAssigning class
	instanceVariableNames: ''!

!classDefinition: #P4TACAssignment category: 'P4-TAC-IR'!
P4TACAssigning subclass: #P4TACAssignment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-IR'!
!classDefinition: 'P4TACAssignment class' category: 'P4-TAC-IR'!
P4TACAssignment class
	instanceVariableNames: ''!

!classDefinition: #P4TACLoadAddress category: 'P4-TAC-IR'!
P4TACAssigning subclass: #P4TACLoadAddress
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-IR'!
!classDefinition: 'P4TACLoadAddress class' category: 'P4-TAC-IR'!
P4TACLoadAddress class
	instanceVariableNames: ''!

!classDefinition: #P4TACCompare category: 'P4-TAC-IR'!
P4TACOperation subclass: #P4TACCompare
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-IR'!
!classDefinition: 'P4TACCompare class' category: 'P4-TAC-IR'!
P4TACCompare class
	instanceVariableNames: ''!

!classDefinition: #P4TACOr category: 'P4-TAC-IR'!
P4TACOperation subclass: #P4TACOr
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-IR'!
!classDefinition: 'P4TACOr class' category: 'P4-TAC-IR'!
P4TACOr class
	instanceVariableNames: ''!

!classDefinition: #P4TACSub category: 'P4-TAC-IR'!
P4TACOperation subclass: #P4TACSub
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-IR'!
!classDefinition: 'P4TACSub class' category: 'P4-TAC-IR'!
P4TACSub class
	instanceVariableNames: ''!

!classDefinition: #P4TACTest category: 'P4-TAC-IR'!
P4TACOperation subclass: #P4TACTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-IR'!
!classDefinition: 'P4TACTest class' category: 'P4-TAC-IR'!
P4TACTest class
	instanceVariableNames: ''!

!classDefinition: #P4TACXOr category: 'P4-TAC-IR'!
P4TACOperation subclass: #P4TACXOr
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-IR'!
!classDefinition: 'P4TACXOr class' category: 'P4-TAC-IR'!
P4TACXOr class
	instanceVariableNames: ''!

!classDefinition: #P4TACPop category: 'P4-TAC-IR'!
P4TACInstruction subclass: #P4TACPop
	instanceVariableNames: 'register'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-IR'!
!classDefinition: 'P4TACPop class' category: 'P4-TAC-IR'!
P4TACPop class
	instanceVariableNames: 'register'!

!classDefinition: #P4TACPush category: 'P4-TAC-IR'!
P4TACInstruction subclass: #P4TACPush
	instanceVariableNames: 'variable register'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-IR'!
!classDefinition: 'P4TACPush class' category: 'P4-TAC-IR'!
P4TACPush class
	instanceVariableNames: 'register'!

!classDefinition: #P4TACReturn category: 'P4-TAC-IR'!
P4TACInstruction subclass: #P4TACReturn
	instanceVariableNames: 'teardown'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-IR'!
!classDefinition: 'P4TACReturn class' category: 'P4-TAC-IR'!
P4TACReturn class
	instanceVariableNames: ''!

!classDefinition: #P4TACTeardown category: 'P4-TAC-IR'!
P4TACInstruction subclass: #P4TACTeardown
	instanceVariableNames: 'teardown keepArguments'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-IR'!
!classDefinition: 'P4TACTeardown class' category: 'P4-TAC-IR'!
P4TACTeardown class
	instanceVariableNames: ''!

!classDefinition: #P4TACVolatileFence category: 'P4-TAC-IR'!
P4TACInstruction subclass: #P4TACVolatileFence
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-IR'!
!classDefinition: 'P4TACVolatileFence class' category: 'P4-TAC-IR'!
P4TACVolatileFence class
	instanceVariableNames: ''!

!classDefinition: #P4TACMessage category: 'P4-TAC-Values'!
P4Object subclass: #P4TACMessage
	instanceVariableNames: 'selector numOfArguments'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-Values'!
!classDefinition: 'P4TACMessage class' category: 'P4-TAC-Values'!
P4TACMessage class
	instanceVariableNames: ''!

!classDefinition: #P4TACValue category: 'P4-TAC-Values'!
P4Object subclass: #P4TACValue
	instanceVariableNames: 'typeHint staticType'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-Values'!
!classDefinition: 'P4TACValue class' category: 'P4-TAC-Values'!
P4TACValue class
	instanceVariableNames: ''!

!classDefinition: #P4TACAbstractVariable category: 'P4-TAC-Values'!
P4TACValue subclass: #P4TACAbstractVariable
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-Values'!
!classDefinition: 'P4TACAbstractVariable class' category: 'P4-TAC-Values'!
P4TACAbstractVariable class
	instanceVariableNames: ''!

!classDefinition: #P4TACFixedVariable category: 'P4-TAC-Values'!
P4TACAbstractVariable subclass: #P4TACFixedVariable
	instanceVariableNames: 'register'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-Values'!
!classDefinition: 'P4TACFixedVariable class' category: 'P4-TAC-Values'!
P4TACFixedVariable class
	instanceVariableNames: ''!

!classDefinition: #P4TACArgument category: 'P4-TAC-Values'!
P4TACFixedVariable subclass: #P4TACArgument
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-Values'!
!classDefinition: 'P4TACArgument class' category: 'P4-TAC-Values'!
P4TACArgument class
	instanceVariableNames: ''!

!classDefinition: #P4TACResultVariable category: 'P4-TAC-Values'!
P4TACFixedVariable subclass: #P4TACResultVariable
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-Values'!
!classDefinition: 'P4TACResultVariable class' category: 'P4-TAC-Values'!
P4TACResultVariable class
	instanceVariableNames: ''!

!classDefinition: #P4TACVariable category: 'P4-TAC-Values'!
P4TACFixedVariable subclass: #P4TACVariable
	instanceVariableNames: 'firstAssign lastAssign lastUse methodCalled'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-Values'!
!classDefinition: 'P4TACVariable class' category: 'P4-TAC-Values'!
P4TACVariable class
	instanceVariableNames: ''!

!classDefinition: #P4TACConstantLocal category: 'P4-TAC-Values'!
P4TACVariable subclass: #P4TACConstantLocal
	instanceVariableNames: 'remote'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-Values'!
!classDefinition: 'P4TACConstantLocal class' category: 'P4-TAC-Values'!
P4TACConstantLocal class
	instanceVariableNames: ''!

!classDefinition: #P4TACExternalizableVariable category: 'P4-TAC-Values'!
P4TACVariable subclass: #P4TACExternalizableVariable
	instanceVariableNames: 'remote'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-Values'!
!classDefinition: 'P4TACExternalizableVariable class' category: 'P4-TAC-Values'!
P4TACExternalizableVariable class
	instanceVariableNames: ''!

!classDefinition: #P4TACLocal category: 'P4-TAC-Values'!
P4TACExternalizableVariable subclass: #P4TACLocal
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-Values'!
!classDefinition: 'P4TACLocal class' category: 'P4-TAC-Values'!
P4TACLocal class
	instanceVariableNames: ''!

!classDefinition: #P4TACVariableAlias category: 'P4-TAC-Values'!
P4TACExternalizableVariable subclass: #P4TACVariableAlias
	instanceVariableNames: 'variable'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-Values'!
!classDefinition: 'P4TACVariableAlias class' category: 'P4-TAC-Values'!
P4TACVariableAlias class
	instanceVariableNames: ''!

!classDefinition: #P4TACRemoteArray category: 'P4-TAC-Values'!
P4TACVariable subclass: #P4TACRemoteArray
	instanceVariableNames: 'remotes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-Values'!
!classDefinition: 'P4TACRemoteArray class' category: 'P4-TAC-Values'!
P4TACRemoteArray class
	instanceVariableNames: ''!

!classDefinition: #P4TACSelf category: 'P4-TAC-Values'!
P4TACVariable subclass: #P4TACSelf
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-Values'!
!classDefinition: 'P4TACSelf class' category: 'P4-TAC-Values'!
P4TACSelf class
	instanceVariableNames: ''!

!classDefinition: #P4TACTemp category: 'P4-TAC-Values'!
P4TACVariable subclass: #P4TACTemp
	instanceVariableNames: 'local'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-Values'!
!classDefinition: 'P4TACTemp class' category: 'P4-TAC-Values'!
P4TACTemp class
	instanceVariableNames: ''!

!classDefinition: #P4TACClosureTemp category: 'P4-TAC-Values'!
P4TACTemp subclass: #P4TACClosureTemp
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-Values'!
!classDefinition: 'P4TACClosureTemp class' category: 'P4-TAC-Values'!
P4TACClosureTemp class
	instanceVariableNames: ''!

!classDefinition: #P4TACVariableAccess category: 'P4-TAC-Values'!
P4TACAbstractVariable subclass: #P4TACVariableAccess
	instanceVariableNames: 'index variable cachedRegister'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-Values'!
!classDefinition: 'P4TACVariableAccess class' category: 'P4-TAC-Values'!
P4TACVariableAccess class
	instanceVariableNames: ''!

!classDefinition: #P4TACConstant category: 'P4-TAC-Values'!
P4TACValue subclass: #P4TACConstant
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-Values'!
!classDefinition: 'P4TACConstant class' category: 'P4-TAC-Values'!
P4TACConstant class
	instanceVariableNames: ''!

!classDefinition: #P4TACMethodObject category: 'P4-TAC-Values'!
P4TACValue subclass: #P4TACMethodObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-Values'!
!classDefinition: 'P4TACMethodObject class' category: 'P4-TAC-Values'!
P4TACMethodObject class
	instanceVariableNames: ''!

!classDefinition: #P4TACMethodObjectAccess category: 'P4-TAC-Values'!
P4TACValue subclass: #P4TACMethodObjectAccess
	instanceVariableNames: 'methodObject index'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-Values'!
!classDefinition: 'P4TACMethodObjectAccess class' category: 'P4-TAC-Values'!
P4TACMethodObjectAccess class
	instanceVariableNames: ''!

!classDefinition: #P4TACReference category: 'P4-TAC-Values'!
P4TACValue subclass: #P4TACReference
	instanceVariableNames: 'target'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-Values'!
!classDefinition: 'P4TACReference class' category: 'P4-TAC-Values'!
P4TACReference class
	instanceVariableNames: ''!

!classDefinition: #P4TACExternalReference category: 'P4-TAC-Values'!
P4TACReference subclass: #P4TACExternalReference
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-Values'!
!classDefinition: 'P4TACExternalReference class' category: 'P4-TAC-Values'!
P4TACExternalReference class
	instanceVariableNames: ''!

!classDefinition: #P4TACVariableName category: 'P4-TAC-Values'!
P4Object subclass: #P4TACVariableName
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-Values'!
!classDefinition: 'P4TACVariableName class' category: 'P4-TAC-Values'!
P4TACVariableName class
	instanceVariableNames: 'inst'!

!classDefinition: #P4TACBasePointerName category: 'P4-TAC-Values'!
P4TACVariableName subclass: #P4TACBasePointerName
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-Values'!
!classDefinition: 'P4TACBasePointerName class' category: 'P4-TAC-Values'!
P4TACBasePointerName class
	instanceVariableNames: ''!

!classDefinition: #P4TACReturnTokenName category: 'P4-TAC-Values'!
P4TACVariableName subclass: #P4TACReturnTokenName
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC-Values'!
!classDefinition: 'P4TACReturnTokenName class' category: 'P4-TAC-Values'!
P4TACReturnTokenName class
	instanceVariableNames: ''!

!classDefinition: #P4A2THelper category: 'P4-TAC'!
P4Object subclass: #P4A2THelper
	instanceVariableNames: 'builder processor methodCompiler resultVariable groundTypes inlinedMethods'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC'!
!classDefinition: 'P4A2THelper class' category: 'P4-TAC'!
P4A2THelper class
	instanceVariableNames: ''!

!classDefinition: #P4A2TStatic category: 'P4-TAC'!
P4A2THelper subclass: #P4A2TStatic
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC'!
!classDefinition: 'P4A2TStatic class' category: 'P4-TAC'!
P4A2TStatic class
	instanceVariableNames: ''!

!classDefinition: #P4A2TKernel category: 'P4-TAC'!
P4A2TStatic subclass: #P4A2TKernel
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC'!
!classDefinition: 'P4A2TKernel class' category: 'P4-TAC'!
P4A2TKernel class
	instanceVariableNames: ''!

!classDefinition: #P4A2TInvoke category: 'P4-TAC'!
P4A2TKernel subclass: #P4A2TInvoke
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC'!
!classDefinition: 'P4A2TInvoke class' category: 'P4-TAC'!
P4A2TInvoke class
	instanceVariableNames: ''!

!classDefinition: #P4TACBuilder category: 'P4-TAC'!
P4Object subclass: #P4TACBuilder
	instanceVariableNames: 'currentBasicBlock locals temps instVars instVarsIdx literals resultVariable globals method klass selfImport'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC'!
!classDefinition: 'P4TACBuilder class' category: 'P4-TAC'!
P4TACBuilder class
	instanceVariableNames: ''!

!classDefinition: #P4TACInlineMessages category: 'P4-TAC'!
P4Object subclass: #P4TACInlineMessages
	instanceVariableNames: 'visitor builder receiver helper'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC'!
!classDefinition: 'P4TACInlineMessages class' category: 'P4-TAC'!
P4TACInlineMessages class
	instanceVariableNames: ''!

!classDefinition: #P4TACLinearScanRegisterAllocator category: 'P4-TAC'!
P4Object subclass: #P4TACLinearScanRegisterAllocator
	instanceVariableNames: 'processor usedRegisters maxUsedRegisters stackSize variables actives usedVolatileRegisters'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC'!
!classDefinition: 'P4TACLinearScanRegisterAllocator class' category: 'P4-TAC'!
P4TACLinearScanRegisterAllocator class
	instanceVariableNames: ''!

!classDefinition: #P4TACLivenessAnalysis category: 'P4-TAC'!
P4Object subclass: #P4TACLivenessAnalysis
	instanceVariableNames: 'position callable'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC'!
!classDefinition: 'P4TACLivenessAnalysis class' category: 'P4-TAC'!
P4TACLivenessAnalysis class
	instanceVariableNames: ''!

!classDefinition: #P4TACPostCompiler category: 'P4-TAC'!
P4Object subclass: #P4TACPostCompiler
	instanceVariableNames: 'toReplace callable basicBlock'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC'!
!classDefinition: 'P4TACPostCompiler class' category: 'P4-TAC'!
P4TACPostCompiler class
	instanceVariableNames: ''!

!classDefinition: #P4TACAnalyzeRemote category: 'P4-TAC'!
P4TACPostCompiler subclass: #P4TACAnalyzeRemote
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC'!
!classDefinition: 'P4TACAnalyzeRemote class' category: 'P4-TAC'!
P4TACAnalyzeRemote class
	instanceVariableNames: ''!

!classDefinition: #P4TACAssignmentRemover category: 'P4-TAC'!
P4TACPostCompiler subclass: #P4TACAssignmentRemover
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC'!
!classDefinition: 'P4TACAssignmentRemover class' category: 'P4-TAC'!
P4TACAssignmentRemover class
	instanceVariableNames: ''!

!classDefinition: #P4TACClosureInstaller category: 'P4-TAC'!
P4TACPostCompiler subclass: #P4TACClosureInstaller
	instanceVariableNames: 'helper importedRemotes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC'!
!classDefinition: 'P4TACClosureInstaller class' category: 'P4-TAC'!
P4TACClosureInstaller class
	instanceVariableNames: ''!

!classDefinition: #P4TACRegisterSwapper category: 'P4-TAC'!
P4TACPostCompiler subclass: #P4TACRegisterSwapper
	instanceVariableNames: 'helper'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC'!
!classDefinition: 'P4TACRegisterSwapper class' category: 'P4-TAC'!
P4TACRegisterSwapper class
	instanceVariableNames: ''!

!classDefinition: #P4CustomMethodDictionary category: 'P4-Test'!
P4Object variableSubclass: #P4CustomMethodDictionary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Test'!
!classDefinition: 'P4CustomMethodDictionary class' category: 'P4-Test'!
P4CustomMethodDictionary class
	instanceVariableNames: ''!

!classDefinition: #P4DoesUnderstand category: 'P4-Test'!
P4Object variableSubclass: #P4DoesUnderstand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Test'!
!classDefinition: 'P4DoesUnderstand class' category: 'P4-Test'!
P4DoesUnderstand class
	instanceVariableNames: ''!

!classDefinition: #P4KernelTest category: 'P4-Test'!
P4Object variableSubclass: #P4KernelTest
	instanceVariableNames: 'a b'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Test'!
!classDefinition: 'P4KernelTest class' category: 'P4-Test'!
P4KernelTest class
	instanceVariableNames: ''!

!classDefinition: #P4MessageProxy category: 'P4-Test'!
P4Object variableSubclass: #P4MessageProxy
	instanceVariableNames: 'proxiedMethod counter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Test'!
!classDefinition: 'P4MessageProxy class' category: 'P4-Test'!
P4MessageProxy class
	instanceVariableNames: ''!

!classDefinition: #P4PerformanceTest category: 'P4-Test'!
P4Object variableSubclass: #P4PerformanceTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Test'!
!classDefinition: 'P4PerformanceTest class' category: 'P4-Test'!
P4PerformanceTest class
	instanceVariableNames: ''!

!classDefinition: #P4StaticKernelTest category: 'P4-Test'!
P4Object variableSubclass: #P4StaticKernelTest
	instanceVariableNames: 'a b c d'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Test'!
!classDefinition: 'P4StaticKernelTest class' category: 'P4-Test'!
P4StaticKernelTest class
	instanceVariableNames: ''!

!classDefinition: #P4TestMethod category: 'P4-Test'!
P4Object subclass: #P4TestMethod
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Test'!
!classDefinition: 'P4TestMethod class' category: 'P4-Test'!
P4TestMethod class
	instanceVariableNames: ''!

!classDefinition: #P4TestMethod2 category: 'P4-Test'!
P4TestMethod subclass: #P4TestMethod2
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Test'!
!classDefinition: 'P4TestMethod2 class' category: 'P4-Test'!
P4TestMethod2 class
	instanceVariableNames: ''!

!classDefinition: #P4TestObject category: 'P4-Test'!
P4Object variableSubclass: #P4TestObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Test'!
!classDefinition: 'P4TestObject class' category: 'P4-Test'!
P4TestObject class
	instanceVariableNames: ''!

!classDefinition: #ASTNode category: 'P4-AST'!
P4Object subclass: #ASTNode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-AST'!
!classDefinition: 'ASTNode class' category: 'P4-AST'!
ASTNode class
	instanceVariableNames: ''!

!classDefinition: #ASTBlock category: 'P4-AST'!
ASTNode subclass: #ASTBlock
	instanceVariableNames: 'parameters temporaries statements'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-AST'!
!classDefinition: 'ASTBlock class' category: 'P4-AST'!
ASTBlock class
	instanceVariableNames: ''!

!classDefinition: #ASTExpression category: 'P4-AST'!
ASTNode subclass: #ASTExpression
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-AST'!
!classDefinition: 'ASTExpression class' category: 'P4-AST'!
ASTExpression class
	instanceVariableNames: ''!

!classDefinition: #ASTAssignmentExpression category: 'P4-AST'!
ASTExpression subclass: #ASTAssignmentExpression
	instanceVariableNames: 'variable expression'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-AST'!
!classDefinition: 'ASTAssignmentExpression class' category: 'P4-AST'!
ASTAssignmentExpression class
	instanceVariableNames: ''!

!classDefinition: #ASTBraceExpression category: 'P4-AST'!
ASTExpression subclass: #ASTBraceExpression
	instanceVariableNames: 'expressions'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-AST'!
!classDefinition: 'ASTBraceExpression class' category: 'P4-AST'!
ASTBraceExpression class
	instanceVariableNames: ''!

!classDefinition: #ASTMessageCascadeExpression category: 'P4-AST'!
ASTExpression subclass: #ASTMessageCascadeExpression
	instanceVariableNames: 'receiver cascades'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-AST'!
!classDefinition: 'ASTMessageCascadeExpression class' category: 'P4-AST'!
ASTMessageCascadeExpression class
	instanceVariableNames: ''!

!classDefinition: #ASTReturnExpression category: 'P4-AST'!
ASTExpression subclass: #ASTReturnExpression
	instanceVariableNames: 'expression'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-AST'!
!classDefinition: 'ASTReturnExpression class' category: 'P4-AST'!
ASTReturnExpression class
	instanceVariableNames: ''!

!classDefinition: #ASTLiteral category: 'P4-AST'!
ASTNode subclass: #ASTLiteral
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-AST'!
!classDefinition: 'ASTLiteral class' category: 'P4-AST'!
ASTLiteral class
	instanceVariableNames: ''!

!classDefinition: #ASTArray category: 'P4-AST'!
ASTLiteral subclass: #ASTArray
	instanceVariableNames: 'literals'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-AST'!
!classDefinition: 'ASTArray class' category: 'P4-AST'!
ASTArray class
	instanceVariableNames: ''!

!classDefinition: #ASTCharacter category: 'P4-AST'!
ASTLiteral subclass: #ASTCharacter
	instanceVariableNames: 'char'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-AST'!
!classDefinition: 'ASTCharacter class' category: 'P4-AST'!
ASTCharacter class
	instanceVariableNames: ''!

!classDefinition: #ASTFloat category: 'P4-AST'!
ASTLiteral subclass: #ASTFloat
	instanceVariableNames: 'high low'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-AST'!
!classDefinition: 'ASTFloat class' category: 'P4-AST'!
ASTFloat class
	instanceVariableNames: ''!

!classDefinition: #ASTNumber category: 'P4-AST'!
ASTLiteral subclass: #ASTNumber
	instanceVariableNames: 'number base'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-AST'!
!classDefinition: 'ASTNumber class' category: 'P4-AST'!
ASTNumber class
	instanceVariableNames: ''!

!classDefinition: #ASTString category: 'P4-AST'!
ASTLiteral subclass: #ASTString
	instanceVariableNames: 'string'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-AST'!
!classDefinition: 'ASTString class' category: 'P4-AST'!
ASTString class
	instanceVariableNames: ''!

!classDefinition: #ASTSymbol category: 'P4-AST'!
ASTLiteral subclass: #ASTSymbol
	instanceVariableNames: 'symbol'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-AST'!
!classDefinition: 'ASTSymbol class' category: 'P4-AST'!
ASTSymbol class
	instanceVariableNames: ''!

!classDefinition: #ASTMethod category: 'P4-AST'!
ASTNode subclass: #ASTMethod
	instanceVariableNames: 'message annotations temporaries statements sourceObject'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-AST'!
!classDefinition: 'ASTMethod class' category: 'P4-AST'!
ASTMethod class
	instanceVariableNames: ''!

!classDefinition: #ASTPath category: 'P4-AST'!
ASTNode subclass: #ASTPath
	instanceVariableNames: 'path'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-AST'!
!classDefinition: 'ASTPath class' category: 'P4-AST'!
ASTPath class
	instanceVariableNames: ''!

!classDefinition: #ASTSelector category: 'P4-AST'!
ASTNode subclass: #ASTSelector
	instanceVariableNames: 'selector'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-AST'!
!classDefinition: 'ASTSelector class' category: 'P4-AST'!
ASTSelector class
	instanceVariableNames: ''!

!classDefinition: #ASTBinarySelector category: 'P4-AST'!
ASTSelector subclass: #ASTBinarySelector
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-AST'!
!classDefinition: 'ASTBinarySelector class' category: 'P4-AST'!
ASTBinarySelector class
	instanceVariableNames: ''!

!classDefinition: #ASTBinaryExpression category: 'P4-AST'!
ASTBinarySelector subclass: #ASTBinaryExpression
	instanceVariableNames: 'receiver argument scoped'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-AST'!
!classDefinition: 'ASTBinaryExpression class' category: 'P4-AST'!
ASTBinaryExpression class
	instanceVariableNames: ''!

!classDefinition: #ASTBinaryMessageDefinition category: 'P4-AST'!
ASTBinarySelector subclass: #ASTBinaryMessageDefinition
	instanceVariableNames: 'parameter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-AST'!
!classDefinition: 'ASTBinaryMessageDefinition class' category: 'P4-AST'!
ASTBinaryMessageDefinition class
	instanceVariableNames: ''!

!classDefinition: #ASTKeywordSelector category: 'P4-AST'!
ASTSelector subclass: #ASTKeywordSelector
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-AST'!
!classDefinition: 'ASTKeywordSelector class' category: 'P4-AST'!
ASTKeywordSelector class
	instanceVariableNames: ''!

!classDefinition: #ASTKeywordAnnotation category: 'P4-AST'!
ASTKeywordSelector subclass: #ASTKeywordAnnotation
	instanceVariableNames: 'arguments'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-AST'!
!classDefinition: 'ASTKeywordAnnotation class' category: 'P4-AST'!
ASTKeywordAnnotation class
	instanceVariableNames: ''!

!classDefinition: #ASTKeywordMessageDefinition category: 'P4-AST'!
ASTKeywordSelector subclass: #ASTKeywordMessageDefinition
	instanceVariableNames: 'parameters'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-AST'!
!classDefinition: 'ASTKeywordMessageDefinition class' category: 'P4-AST'!
ASTKeywordMessageDefinition class
	instanceVariableNames: ''!

!classDefinition: #ASTMessageExpression category: 'P4-AST'!
ASTKeywordSelector subclass: #ASTMessageExpression
	instanceVariableNames: 'receiver arguments'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-AST'!
!classDefinition: 'ASTMessageExpression class' category: 'P4-AST'!
ASTMessageExpression class
	instanceVariableNames: ''!

!classDefinition: #ASTUnarySelector category: 'P4-AST'!
ASTSelector subclass: #ASTUnarySelector
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-AST'!
!classDefinition: 'ASTUnarySelector class' category: 'P4-AST'!
ASTUnarySelector class
	instanceVariableNames: ''!

!classDefinition: #ASTUnaryAnnotation category: 'P4-AST'!
ASTUnarySelector subclass: #ASTUnaryAnnotation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-AST'!
!classDefinition: 'ASTUnaryAnnotation class' category: 'P4-AST'!
ASTUnaryAnnotation class
	instanceVariableNames: ''!

!classDefinition: #ASTUnaryExpression category: 'P4-AST'!
ASTUnarySelector subclass: #ASTUnaryExpression
	instanceVariableNames: 'receiver'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-AST'!
!classDefinition: 'ASTUnaryExpression class' category: 'P4-AST'!
ASTUnaryExpression class
	instanceVariableNames: ''!

!classDefinition: #ASTUnaryMessageDefinition category: 'P4-AST'!
ASTUnarySelector subclass: #ASTUnaryMessageDefinition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-AST'!
!classDefinition: 'ASTUnaryMessageDefinition class' category: 'P4-AST'!
ASTUnaryMessageDefinition class
	instanceVariableNames: ''!

!classDefinition: #ASTSelf category: 'P4-AST'!
ASTNode subclass: #ASTSelf
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-AST'!
!classDefinition: 'ASTSelf class' category: 'P4-AST'!
ASTSelf class
	instanceVariableNames: ''!

!classDefinition: #ASTSuper category: 'P4-AST'!
ASTNode subclass: #ASTSuper
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-AST'!
!classDefinition: 'ASTSuper class' category: 'P4-AST'!
ASTSuper class
	instanceVariableNames: ''!

!classDefinition: #ASTVariable category: 'P4-AST'!
ASTNode subclass: #ASTVariable
	instanceVariableNames: 'name type'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-AST'!
!classDefinition: 'ASTVariable class' category: 'P4-AST'!
ASTVariable class
	instanceVariableNames: ''!

!classDefinition: #ASTVisitor category: 'P4-AST'!
P4Object subclass: #ASTVisitor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-AST'!
!classDefinition: 'ASTVisitor class' category: 'P4-AST'!
ASTVisitor class
	instanceVariableNames: ''!

!classDefinition: #P4AST2TAC category: 'P4-TAC'!
ASTVisitor subclass: #P4AST2TAC
	instanceVariableNames: 'builder closureCaptures helper callable currentInstVars'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC'!
!classDefinition: 'P4AST2TAC class' category: 'P4-TAC'!
P4AST2TAC class
	instanceVariableNames: ''!

!classDefinition: #P4A2TClosure category: 'P4-TAC'!
P4AST2TAC subclass: #P4A2TClosure
	instanceVariableNames: 'methodCompiler'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC'!
!classDefinition: 'P4A2TClosure class' category: 'P4-TAC'!
P4A2TClosure class
	instanceVariableNames: ''!

!classDefinition: #P4A2TMethod category: 'P4-TAC'!
P4AST2TAC subclass: #P4A2TMethod
	instanceVariableNames: 'closureCompiler host'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-TAC'!
!classDefinition: 'P4A2TMethod class' category: 'P4-TAC'!
P4A2TMethod class
	instanceVariableNames: ''!

!classDefinition: #P4TAC2ASM category: 'P4-ASM'!
P4Object subclass: #P4TAC2ASM
	instanceVariableNames: 'processor currentCallable methods'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-ASM'!
!classDefinition: 'P4TAC2ASM class' category: 'P4-ASM'!
P4TAC2ASM class
	instanceVariableNames: ''!

!classDefinition: #P4ASMValue category: 'P4-ASM-Values'!
P4Object subclass: #P4ASMValue
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-ASM-Values'!
!classDefinition: 'P4ASMValue class' category: 'P4-ASM-Values'!
P4ASMValue class
	instanceVariableNames: ''!

!classDefinition: #P4ASMConstant category: 'P4-ASM-Values'!
P4ASMValue subclass: #P4ASMConstant
	instanceVariableNames: 'constantValue'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-ASM-Values'!
!classDefinition: 'P4ASMConstant class' category: 'P4-ASM-Values'!
P4ASMConstant class
	instanceVariableNames: ''!

!classDefinition: #P4ASMExternalReference category: 'P4-ASM-Values'!
P4ASMConstant subclass: #P4ASMExternalReference
	instanceVariableNames: 'label'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-ASM-Values'!
!classDefinition: 'P4ASMExternalReference class' category: 'P4-ASM-Values'!
P4ASMExternalReference class
	instanceVariableNames: ''!

!classDefinition: #P4ASMReference category: 'P4-ASM-Values'!
P4ASMValue subclass: #P4ASMReference
	instanceVariableNames: 'target label'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-ASM-Values'!
!classDefinition: 'P4ASMReference class' category: 'P4-ASM-Values'!
P4ASMReference class
	instanceVariableNames: ''!

!classDefinition: #P4ASMObjectAccess category: 'P4-ASM-Values'!
P4ASMReference subclass: #P4ASMObjectAccess
	instanceVariableNames: 'offset'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-ASM-Values'!
!classDefinition: 'P4ASMObjectAccess class' category: 'P4-ASM-Values'!
P4ASMObjectAccess class
	instanceVariableNames: ''!

!classDefinition: #P4ASMRegister category: 'P4-ASM-Values'!
P4ASMValue subclass: #P4ASMRegister
	instanceVariableNames: 'name index combination'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-ASM-Values'!
!classDefinition: 'P4ASMRegister class' category: 'P4-ASM-Values'!
P4ASMRegister class
	instanceVariableNames: ''!

!classDefinition: #P4ASMRegisterAccess category: 'P4-ASM-Values'!
P4ASMValue subclass: #P4ASMRegisterAccess
	instanceVariableNames: 'register offset'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-ASM-Values'!
!classDefinition: 'P4ASMRegisterAccess class' category: 'P4-ASM-Values'!
P4ASMRegisterAccess class
	instanceVariableNames: ''!

!classDefinition: #P4ASMRegisterDynAccess category: 'P4-ASM-Values'!
P4ASMRegisterAccess subclass: #P4ASMRegisterDynAccess
	instanceVariableNames: 'offsetRegister'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-ASM-Values'!
!classDefinition: 'P4ASMRegisterDynAccess class' category: 'P4-ASM-Values'!
P4ASMRegisterDynAccess class
	instanceVariableNames: ''!

!classDefinition: #P4SmalltalkCompiler category: 'P4-Compiler'!
P4Object subclass: #P4SmalltalkCompiler
	instanceVariableNames: 'parser ast2tac tac2asm registerAllocator registerSwapper assignmentRemover host livenessAnalyzer analyzeRemote closureInstaller classInstaller processor'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Compiler'!
!classDefinition: 'P4SmalltalkCompiler class' category: 'P4-Compiler'!
P4SmalltalkCompiler class
	instanceVariableNames: ''!

!classDefinition: #P4SmalltalkKernelCompiler category: 'P4-Compiler'!
P4SmalltalkCompiler subclass: #P4SmalltalkKernelCompiler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Compiler'!
!classDefinition: 'P4SmalltalkKernelCompiler class' category: 'P4-Compiler'!
P4SmalltalkKernelCompiler class
	instanceVariableNames: ''!

!classDefinition: #P4ExamplesTest category: 'P4-Examples'!
P4Object subclass: #P4ExamplesTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Examples'!
!classDefinition: 'P4ExamplesTest class' category: 'P4-Examples'!
P4ExamplesTest class
	instanceVariableNames: ''!

!classDefinition: #P4MessageLogProxy category: 'P4-Examples'!
P4Object subclass: #P4MessageLogProxy
	instanceVariableNames: 'method logger'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Examples'!
!classDefinition: 'P4MessageLogProxy class' category: 'P4-Examples'!
P4MessageLogProxy class
	instanceVariableNames: ''!

!classDefinition: #P4ProbeMethod category: 'P4-Examples'!
P4Object subclass: #P4ProbeMethod
	instanceVariableNames: 'returnValues arguments'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Examples'!
!classDefinition: 'P4ProbeMethod class' category: 'P4-Examples'!
P4ProbeMethod class
	instanceVariableNames: ''!

!classDefinition: #P4Prototype category: 'P4-Examples'!
P4Object subclass: #P4Prototype
	instanceVariableNames: 'slots delegate'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Examples'!
!classDefinition: 'P4Prototype class' category: 'P4-Examples'!
P4Prototype class
	instanceVariableNames: ''!

!classDefinition: #P4PrototypeBehavior category: 'P4-Examples'!
P4Object subclass: #P4PrototypeBehavior
	instanceVariableNames: 'originalMethods'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Examples'!
!classDefinition: 'P4PrototypeBehavior class' category: 'P4-Examples'!
P4PrototypeBehavior class
	instanceVariableNames: ''!

!classDefinition: #P4Exception category: 'P4-Exception'!
P4Object subclass: #P4Exception
	instanceVariableNames: 'environment'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Exception'!
!classDefinition: 'P4Exception class' category: 'P4-Exception'!
P4Exception class
	instanceVariableNames: ''!

!classDefinition: #P4KeyNotFound category: 'P4-Kernel-Collection'!
P4Exception subclass: #P4KeyNotFound
	instanceVariableNames: 'dictionary key'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Collection'!
!classDefinition: 'P4KeyNotFound class' category: 'P4-Kernel-Collection'!
P4KeyNotFound class
	instanceVariableNames: ''!

!classDefinition: #P4ELF64RelocationEntry category: 'P4-Exec-ELF'!
P4Object subclass: #P4ELF64RelocationEntry
	instanceVariableNames: 'offset symbol type'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Exec-ELF'!
!classDefinition: 'P4ELF64RelocationEntry class' category: 'P4-Exec-ELF'!
P4ELF64RelocationEntry class
	instanceVariableNames: ''!

!classDefinition: #P4ELF64RelocationEntryWithAddend category: 'P4-Exec-ELF'!
P4ELF64RelocationEntry subclass: #P4ELF64RelocationEntryWithAddend
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Exec-ELF'!
!classDefinition: 'P4ELF64RelocationEntryWithAddend class' category: 'P4-Exec-ELF'!
P4ELF64RelocationEntryWithAddend class
	instanceVariableNames: ''!

!classDefinition: #P4ELFIndexable category: 'P4-Exec-ELF'!
P4Object subclass: #P4ELFIndexable
	instanceVariableNames: 'name nameIndex symbolTableIndex symbolTable'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Exec-ELF'!
!classDefinition: 'P4ELFIndexable class' category: 'P4-Exec-ELF'!
P4ELFIndexable class
	instanceVariableNames: ''!

!classDefinition: #P4ELFSection category: 'P4-Exec-ELF'!
P4ELFIndexable subclass: #P4ELFSection
	instanceVariableNames: 'headerIndex offset addrAlign flags'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Exec-ELF'!
!classDefinition: 'P4ELFSection class' category: 'P4-Exec-ELF'!
P4ELFSection class
	instanceVariableNames: ''!

!classDefinition: #P4ELFMarkerSection category: 'P4-Exec-ELF'!
P4ELFSection subclass: #P4ELFMarkerSection
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Exec-ELF'!
!classDefinition: 'P4ELFMarkerSection class' category: 'P4-Exec-ELF'!
P4ELFMarkerSection class
	instanceVariableNames: ''!

!classDefinition: #P4ELFSectionWithData category: 'P4-Exec-ELF'!
P4ELFSection subclass: #P4ELFSectionWithData
	instanceVariableNames: 'data elfSymbol'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Exec-ELF'!
!classDefinition: 'P4ELFSectionWithData class' category: 'P4-Exec-ELF'!
P4ELFSectionWithData class
	instanceVariableNames: ''!

!classDefinition: #P4ELFNote category: 'P4-Exec-ELF'!
P4ELFSectionWithData subclass: #P4ELFNote
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Exec-ELF'!
!classDefinition: 'P4ELFNote class' category: 'P4-Exec-ELF'!
P4ELFNote class
	instanceVariableNames: ''!

!classDefinition: #P4ELFProgramSection category: 'P4-Exec-ELF'!
P4ELFSectionWithData subclass: #P4ELFProgramSection
	instanceVariableNames: 'relocation'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Exec-ELF'!
!classDefinition: 'P4ELFProgramSection class' category: 'P4-Exec-ELF'!
P4ELFProgramSection class
	instanceVariableNames: ''!

!classDefinition: #P4ELFRelocationTableExplicitAddends category: 'P4-Exec-ELF'!
P4ELFSectionWithData subclass: #P4ELFRelocationTableExplicitAddends
	instanceVariableNames: 'target'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Exec-ELF'!
!classDefinition: 'P4ELFRelocationTableExplicitAddends class' category: 'P4-Exec-ELF'!
P4ELFRelocationTableExplicitAddends class
	instanceVariableNames: ''!

!classDefinition: #P4ELFRelocationTableImplicitAddends category: 'P4-Exec-ELF'!
P4ELFRelocationTableExplicitAddends subclass: #P4ELFRelocationTableImplicitAddends
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Exec-ELF'!
!classDefinition: 'P4ELFRelocationTableImplicitAddends class' category: 'P4-Exec-ELF'!
P4ELFRelocationTableImplicitAddends class
	instanceVariableNames: ''!

!classDefinition: #P4ELFTable category: 'P4-Exec-ELF'!
P4ELFSectionWithData subclass: #P4ELFTable
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Exec-ELF'!
!classDefinition: 'P4ELFTable class' category: 'P4-Exec-ELF'!
P4ELFTable class
	instanceVariableNames: ''!

!classDefinition: #P4ELFHashTable category: 'P4-Exec-ELF'!
P4ELFTable subclass: #P4ELFHashTable
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Exec-ELF'!
!classDefinition: 'P4ELFHashTable class' category: 'P4-Exec-ELF'!
P4ELFHashTable class
	instanceVariableNames: ''!

!classDefinition: #P4ELFStringTable category: 'P4-Exec-ELF'!
P4ELFTable subclass: #P4ELFStringTable
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Exec-ELF'!
!classDefinition: 'P4ELFStringTable class' category: 'P4-Exec-ELF'!
P4ELFStringTable class
	instanceVariableNames: ''!

!classDefinition: #P4ELFSymbolTable category: 'P4-Exec-ELF'!
P4ELFTable subclass: #P4ELFSymbolTable
	instanceVariableNames: 'locals stringTable symbols'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Exec-ELF'!
!classDefinition: 'P4ELFSymbolTable class' category: 'P4-Exec-ELF'!
P4ELFSymbolTable class
	instanceVariableNames: ''!

!classDefinition: #P4ELFSectionWithoutData category: 'P4-Exec-ELF'!
P4ELFSection subclass: #P4ELFSectionWithoutData
	instanceVariableNames: 'size siblingSection'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Exec-ELF'!
!classDefinition: 'P4ELFSectionWithoutData class' category: 'P4-Exec-ELF'!
P4ELFSectionWithoutData class
	instanceVariableNames: ''!

!classDefinition: #P4ELFSymbol category: 'P4-Exec-ELF'!
P4ELFIndexable subclass: #P4ELFSymbol
	instanceVariableNames: 'value size visibility bind'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Exec-ELF'!
!classDefinition: 'P4ELFSymbol class' category: 'P4-Exec-ELF'!
P4ELFSymbol class
	instanceVariableNames: ''!

!classDefinition: #P4ELFFileSymbol category: 'P4-Exec-ELF'!
P4ELFSymbol subclass: #P4ELFFileSymbol
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Exec-ELF'!
!classDefinition: 'P4ELFFileSymbol class' category: 'P4-Exec-ELF'!
P4ELFFileSymbol class
	instanceVariableNames: ''!

!classDefinition: #P4ELFNoTypeSymbol category: 'P4-Exec-ELF'!
P4ELFSymbol subclass: #P4ELFNoTypeSymbol
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Exec-ELF'!
!classDefinition: 'P4ELFNoTypeSymbol class' category: 'P4-Exec-ELF'!
P4ELFNoTypeSymbol class
	instanceVariableNames: ''!

!classDefinition: #P4ELFObjectSymbol category: 'P4-Exec-ELF'!
P4ELFSymbol subclass: #P4ELFObjectSymbol
	instanceVariableNames: 'section'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Exec-ELF'!
!classDefinition: 'P4ELFObjectSymbol class' category: 'P4-Exec-ELF'!
P4ELFObjectSymbol class
	instanceVariableNames: ''!

!classDefinition: #P4ELFFuncSymbol category: 'P4-Exec-ELF'!
P4ELFObjectSymbol subclass: #P4ELFFuncSymbol
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Exec-ELF'!
!classDefinition: 'P4ELFFuncSymbol class' category: 'P4-Exec-ELF'!
P4ELFFuncSymbol class
	instanceVariableNames: ''!

!classDefinition: #P4ELFProgramTable category: 'P4-Exec-ELF'!
P4Object subclass: #P4ELFProgramTable
	instanceVariableNames: 'segments'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Exec-ELF'!
!classDefinition: 'P4ELFProgramTable class' category: 'P4-Exec-ELF'!
P4ELFProgramTable class
	instanceVariableNames: ''!

!classDefinition: #P4ELFSectionTable category: 'P4-Exec-ELF'!
P4Object subclass: #P4ELFSectionTable
	instanceVariableNames: 'sections symbolTable stringTable sectionHeaderStringTable elf markerSection globals methodTag'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Exec-ELF'!
!classDefinition: 'P4ELFSectionTable class' category: 'P4-Exec-ELF'!
P4ELFSectionTable class
	instanceVariableNames: ''!

!classDefinition: #P4ELFStringSet category: 'P4-Exec-ELF'!
P4Object subclass: #P4ELFStringSet
	instanceVariableNames: 'strings size'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Exec-ELF'!
!classDefinition: 'P4ELFStringSet class' category: 'P4-Exec-ELF'!
P4ELFStringSet class
	instanceVariableNames: ''!

!classDefinition: #P4DwarfCallFrameInstruction category: 'P4-Exec-ELF-Dwarf'!
P4Object subclass: #P4DwarfCallFrameInstruction
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Exec-ELF-Dwarf'!
!classDefinition: 'P4DwarfCallFrameInstruction class' category: 'P4-Exec-ELF-Dwarf'!
P4DwarfCallFrameInstruction class
	instanceVariableNames: ''!

!classDefinition: #P4DwarfCommonInformationEntry category: 'P4-Exec-ELF-Dwarf'!
P4Object subclass: #P4DwarfCommonInformationEntry
	instanceVariableNames: 'dataAlignFactor codeAlignFactor returnAddressRegister'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Exec-ELF-Dwarf'!
!classDefinition: 'P4DwarfCommonInformationEntry class' category: 'P4-Exec-ELF-Dwarf'!
P4DwarfCommonInformationEntry class
	instanceVariableNames: ''!

!classDefinition: #P4DwarfFrameDescriptorEntry category: 'P4-Exec-ELF-Dwarf'!
P4Object subclass: #P4DwarfFrameDescriptorEntry
	instanceVariableNames: 'ciePointer initialLocation addressRange callFrameInstructions'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Exec-ELF-Dwarf'!
!classDefinition: 'P4DwarfFrameDescriptorEntry class' category: 'P4-Exec-ELF-Dwarf'!
P4DwarfFrameDescriptorEntry class
	instanceVariableNames: ''!

!classDefinition: #P4MOCommand category: 'P4-Exec-MachO'!
P4Object subclass: #P4MOCommand
	instanceVariableNames: 'size'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Exec-MachO'!
!classDefinition: 'P4MOCommand class' category: 'P4-Exec-MachO'!
P4MOCommand class
	instanceVariableNames: ''!

!classDefinition: #P4MORelocation category: 'P4-Exec-MachO'!
P4Object subclass: #P4MORelocation
	instanceVariableNames: 'isAbsolute symbol address'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Exec-MachO'!
!classDefinition: 'P4MORelocation class' category: 'P4-Exec-MachO'!
P4MORelocation class
	instanceVariableNames: ''!

!classDefinition: #P4MORelocationTable category: 'P4-Exec-MachO'!
P4Object subclass: #P4MORelocationTable
	instanceVariableNames: 'entries fileOffset'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Exec-MachO'!
!classDefinition: 'P4MORelocationTable class' category: 'P4-Exec-MachO'!
P4MORelocationTable class
	instanceVariableNames: ''!

!classDefinition: #P4MOSection category: 'P4-Exec-MachO'!
P4Object subclass: #P4MOSection
	instanceVariableNames: 'name segment fileOffset byteAlignment relocationTable index'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Exec-MachO'!
!classDefinition: 'P4MOSection class' category: 'P4-Exec-MachO'!
P4MOSection class
	instanceVariableNames: ''!

!classDefinition: #P4BinaryOut category: 'P4-Exec'!
P4Object subclass: #P4BinaryOut
	instanceVariableNames: 'executableFormat symbolTable dumped todo done processor os'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Exec'!
!classDefinition: 'P4BinaryOut class' category: 'P4-Exec'!
P4BinaryOut class
	instanceVariableNames: ''!

!classDefinition: #P4BinarySymbolOut category: 'P4-Exec'!
P4BinaryOut subclass: #P4BinarySymbolOut
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Exec'!
!classDefinition: 'P4BinarySymbolOut class' category: 'P4-Exec'!
P4BinarySymbolOut class
	instanceVariableNames: ''!

!classDefinition: #P4ExecutableFormat category: 'P4-Exec'!
P4Object subclass: #P4ExecutableFormat
	instanceVariableNames: 'processor currentStream globals symbolTable currentSection'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Exec'!
!classDefinition: 'P4ExecutableFormat class' category: 'P4-Exec'!
P4ExecutableFormat class
	instanceVariableNames: ''!

!classDefinition: #P4ELF category: 'P4-Exec-ELF'!
P4ExecutableFormat subclass: #P4ELF
	instanceVariableNames: 'os programs sectionTable sectionTablePointerOffset'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Exec-ELF'!
!classDefinition: 'P4ELF class' category: 'P4-Exec-ELF'!
P4ELF class
	instanceVariableNames: ''!

!classDefinition: #P4ExportedReference category: 'P4-Exec'!
P4Object subclass: #P4ExportedReference
	instanceVariableNames: 'target offset'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Exec'!
!classDefinition: 'P4ExportedReference class' category: 'P4-Exec'!
P4ExportedReference class
	instanceVariableNames: ''!

!classDefinition: #P4ExportedObjectReference category: 'P4-Exec'!
P4ExportedReference subclass: #P4ExportedObjectReference
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Exec'!
!classDefinition: 'P4ExportedObjectReference class' category: 'P4-Exec'!
P4ExportedObjectReference class
	instanceVariableNames: ''!

!classDefinition: #P4ExternalObjectReference category: 'P4-Exec'!
P4ExportedObjectReference subclass: #P4ExternalObjectReference
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Exec'!
!classDefinition: 'P4ExternalObjectReference class' category: 'P4-Exec'!
P4ExternalObjectReference class
	instanceVariableNames: ''!

!classDefinition: #P4ExportedSectionReference category: 'P4-Exec'!
P4ExportedReference subclass: #P4ExportedSectionReference
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Exec'!
!classDefinition: 'P4ExportedSectionReference class' category: 'P4-Exec'!
P4ExportedSectionReference class
	instanceVariableNames: ''!

!classDefinition: #P4Behavior category: 'P4-Kernel-Behavior'!
P4Object subclass: #P4Behavior
	instanceVariableNames: 'instanceHeader behavior layout'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Behavior'!
!classDefinition: 'P4Behavior class' category: 'P4-Kernel-Behavior'!
P4Behavior class
	instanceVariableNames: ''!

!classDefinition: #P4Class category: 'P4-Kernel-Behavior'!
P4Behavior subclass: #P4Class
	instanceVariableNames: 'name package'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Behavior'!
!classDefinition: 'P4Class class' category: 'P4-Kernel-Behavior'!
P4Class class
	instanceVariableNames: ''!

!classDefinition: #P4Metaclass category: 'P4-Kernel-Behavior'!
P4Behavior subclass: #P4Metaclass
	instanceVariableNames: 'instance'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Behavior'!
!classDefinition: 'P4Metaclass class' category: 'P4-Kernel-Behavior'!
P4Metaclass class
	instanceVariableNames: ''!

!classDefinition: #P4SmalltalkBehavior category: 'P4-Kernel-Behavior'!
P4Object subclass: #P4SmalltalkBehavior
	instanceVariableNames: 'methodDictionary class superbehavior'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Behavior'!
!classDefinition: 'P4SmalltalkBehavior class' category: 'P4-Kernel-Behavior'!
P4SmalltalkBehavior class
	instanceVariableNames: 'instance'!

!classDefinition: #P4MessageLog category: 'P4-Examples'!
P4SmalltalkBehavior subclass: #P4MessageLog
	instanceVariableNames: 'log tally'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Examples'!
!classDefinition: 'P4MessageLog class' category: 'P4-Examples'!
P4MessageLog class
	instanceVariableNames: ''!

!classDefinition: #P4MessageLogBehavior category: 'P4-Examples'!
P4SmalltalkBehavior subclass: #P4MessageLogBehavior
	instanceVariableNames: 'logger wrap'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Examples'!
!classDefinition: 'P4MessageLogBehavior class' category: 'P4-Examples'!
P4MessageLogBehavior class
	instanceVariableNames: ''!

!classDefinition: #P4Boolean category: 'P4-Kernel-Boolean'!
P4Object subclass: #P4Boolean
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Boolean'!
!classDefinition: 'P4Boolean class' category: 'P4-Kernel-Boolean'!
P4Boolean class
	instanceVariableNames: ''!

!classDefinition: #P4False category: 'P4-Kernel-Boolean'!
P4Boolean subclass: #P4False
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Boolean'!
!classDefinition: 'P4False class' category: 'P4-Kernel-Boolean'!
P4False class
	instanceVariableNames: ''!

!classDefinition: #P4True category: 'P4-Kernel-Boolean'!
P4Boolean subclass: #P4True
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Boolean'!
!classDefinition: 'P4True class' category: 'P4-Kernel-Boolean'!
P4True class
	instanceVariableNames: ''!

!classDefinition: #P4Callable category: 'P4-Kernel-Callable'!
P4Object subclass: #P4Callable
	instanceVariableNames: 'code arguments'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Callable'!
!classDefinition: 'P4Callable class' category: 'P4-Kernel-Callable'!
P4Callable class
	instanceVariableNames: ''!

!classDefinition: #P4Closure category: 'P4-Kernel-Callable'!
P4Callable variableSubclass: #P4Closure
	instanceVariableNames: 'outerScope'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Callable'!
!classDefinition: 'P4Closure class' category: 'P4-Kernel-Callable'!
P4Closure class
	instanceVariableNames: ''!

!classDefinition: #P4Method category: 'P4-Kernel-Callable'!
P4Callable variableSubclass: #P4Method
	instanceVariableNames: 'selector host package usedGlobals usedReferences'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Callable'!
!classDefinition: 'P4Method class' category: 'P4-Kernel-Callable'!
P4Method class
	instanceVariableNames: ''!

!classDefinition: #P4DoesNotUnderstand category: 'P4-Kernel-Callable'!
P4Object variableSubclass: #P4DoesNotUnderstand
	instanceVariableNames: 'selector arguments'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Callable'!
!classDefinition: 'P4DoesNotUnderstand class' category: 'P4-Kernel-Callable'!
P4DoesNotUnderstand class
	instanceVariableNames: ''!

!classDefinition: #P4Console category: 'P4-Kernel-IO'!
P4Object subclass: #P4Console
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-IO'!
!classDefinition: 'P4Console class' category: 'P4-Kernel-IO'!
P4Console class
	instanceVariableNames: ''!

!classDefinition: #P4Array category: 'P4-Kernel-Collection'!
P4Object variableSubclass: #P4Array
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Collection'!
!classDefinition: 'P4Array class' category: 'P4-Kernel-Collection'!
P4Array class
	instanceVariableNames: ''!

!classDefinition: #P4AbstractBucket category: 'P4-Kernel-Collection'!
P4Array variableSubclass: #P4AbstractBucket
	instanceVariableNames: 'bucketSize'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Collection'!
!classDefinition: 'P4AbstractBucket class' category: 'P4-Kernel-Collection'!
P4AbstractBucket class
	instanceVariableNames: ''!

!classDefinition: #P4DictBucket category: 'P4-Kernel-Collection'!
P4AbstractBucket variableSubclass: #P4DictBucket
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Collection'!
!classDefinition: 'P4DictBucket class' category: 'P4-Kernel-Collection'!
P4DictBucket class
	instanceVariableNames: ''!

!classDefinition: #P4IdentityDictBucket category: 'P4-Kernel-Collection'!
P4DictBucket variableSubclass: #P4IdentityDictBucket
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Collection'!
!classDefinition: 'P4IdentityDictBucket class' category: 'P4-Kernel-Collection'!
P4IdentityDictBucket class
	instanceVariableNames: ''!

!classDefinition: #P4SetBucket category: 'P4-Kernel-Collection'!
P4AbstractBucket variableSubclass: #P4SetBucket
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Collection'!
!classDefinition: 'P4SetBucket class' category: 'P4-Kernel-Collection'!
P4SetBucket class
	instanceVariableNames: ''!

!classDefinition: #P4IdentitySetBucket category: 'P4-Kernel-Collection'!
P4SetBucket variableSubclass: #P4IdentitySetBucket
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Collection'!
!classDefinition: 'P4IdentitySetBucket class' category: 'P4-Kernel-Collection'!
P4IdentitySetBucket class
	instanceVariableNames: ''!

!classDefinition: #P4RemoteArray category: 'P4-Kernel-Collection'!
P4Array variableSubclass: #P4RemoteArray
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Collection'!
!classDefinition: 'P4RemoteArray class' category: 'P4-Kernel-Collection'!
P4RemoteArray class
	instanceVariableNames: ''!

!classDefinition: #P4HashedCollection category: 'P4-Kernel-Collection'!
P4Object subclass: #P4HashedCollection
	instanceVariableNames: 'size maxLinear ratio buckets linear'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Collection'!
!classDefinition: 'P4HashedCollection class' category: 'P4-Kernel-Collection'!
P4HashedCollection class
	instanceVariableNames: ''!

!classDefinition: #P4Dictionary category: 'P4-Kernel-Collection'!
P4HashedCollection subclass: #P4Dictionary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Collection'!
!classDefinition: 'P4Dictionary class' category: 'P4-Kernel-Collection'!
P4Dictionary class
	instanceVariableNames: ''!

!classDefinition: #P4IdentityDictionary category: 'P4-Kernel-Collection'!
P4Dictionary subclass: #P4IdentityDictionary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Collection'!
!classDefinition: 'P4IdentityDictionary class' category: 'P4-Kernel-Collection'!
P4IdentityDictionary class
	instanceVariableNames: ''!

!classDefinition: #P4MethodDictionary category: 'P4-Kernel-Behavior'!
P4IdentityDictionary subclass: #P4MethodDictionary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Behavior'!
!classDefinition: 'P4MethodDictionary class' category: 'P4-Kernel-Behavior'!
P4MethodDictionary class
	instanceVariableNames: ''!

!classDefinition: #P4Set category: 'P4-Kernel-Collection'!
P4HashedCollection subclass: #P4Set
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Collection'!
!classDefinition: 'P4Set class' category: 'P4-Kernel-Collection'!
P4Set class
	instanceVariableNames: ''!

!classDefinition: #P4SymbolTable category: 'P4-Kernel-String'!
P4Set subclass: #P4SymbolTable
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-String'!
!classDefinition: 'P4SymbolTable class' category: 'P4-Kernel-String'!
P4SymbolTable class
	instanceVariableNames: ''!

!classDefinition: #P4IdentitySet category: 'P4-Kernel-Collection'!
P4Set subclass: #P4IdentitySet
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Collection'!
!classDefinition: 'P4IdentitySet class' category: 'P4-Kernel-Collection'!
P4IdentitySet class
	instanceVariableNames: ''!

!classDefinition: #P4MemoryManager category: 'P4-Kernel-Memory'!
P4Object subclass: #P4MemoryManager
	instanceVariableNames: 'memory position limit root'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Memory'!
!classDefinition: 'P4MemoryManager class' category: 'P4-Kernel-Memory'!
P4MemoryManager class
	instanceVariableNames: ''!

!classDefinition: #P4RawCell category: 'P4-Kernel-Memory'!
P4Object subclass: #P4RawCell
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Memory'!
!classDefinition: 'P4RawCell class' category: 'P4-Kernel-Memory'!
P4RawCell class
	instanceVariableNames: ''!

!classDefinition: #P4ObjectHeader category: 'P4-Kernel-Memory'!
P4RawCell subclass: #P4ObjectHeader
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Memory'!
!classDefinition: 'P4ObjectHeader class' category: 'P4-Kernel-Memory'!
P4ObjectHeader class
	instanceVariableNames: ''!

!classDefinition: #P4ObjectReference category: 'P4-Kernel-Memory'!
P4RawCell subclass: #P4ObjectReference
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Memory'!
!classDefinition: 'P4ObjectReference class' category: 'P4-Kernel-Memory'!
P4ObjectReference class
	instanceVariableNames: ''!

!classDefinition: #P4Float category: 'P4-Kernel-Number'!
P4Object subclass: #P4Float
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Number'!
!classDefinition: 'P4Float class' category: 'P4-Kernel-Number'!
P4Float class
	instanceVariableNames: ''!

!classDefinition: #P4SmallInteger category: 'P4-Kernel-Number'!
P4Object subclass: #P4SmallInteger
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-Kernel-Number'!
!classDefinition: 'P4SmallInteger class' category: 'P4-Kernel-Number'!
P4SmallInteger class
	instanceVariableNames: ''!

!classDefinition: #P4AbstractOS category: 'P4-SystemSpec'!
P4Object subclass: #P4AbstractOS
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-SystemSpec'!
!classDefinition: 'P4AbstractOS class' category: 'P4-SystemSpec'!
P4AbstractOS class
	instanceVariableNames: ''!

!classDefinition: #P4Linux category: 'P4-SystemSpec'!
P4AbstractOS subclass: #P4Linux
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-SystemSpec'!
!classDefinition: 'P4Linux class' category: 'P4-SystemSpec'!
P4Linux class
	instanceVariableNames: ''!

!classDefinition: #P4OSX category: 'P4-SystemSpec'!
P4AbstractOS subclass: #P4OSX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-SystemSpec'!
!classDefinition: 'P4OSX class' category: 'P4-SystemSpec'!
P4OSX class
	instanceVariableNames: ''!

!classDefinition: #P4Assembler category: 'P4-SystemSpec'!
P4Object subclass: #P4Assembler
	instanceVariableNames: 'stream linker installer forceShortJump'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-SystemSpec'!
!classDefinition: 'P4Assembler class' category: 'P4-SystemSpec'!
P4Assembler class
	instanceVariableNames: ''!

!classDefinition: #P4X86_64 category: 'P4-SystemSpec'!
P4Assembler subclass: #P4X86_64
	instanceVariableNames: 'rax rsp rdi rsi rdx rcx r8 r9 rbx rbp r10 r11 r12 r13 r14 r15 rip'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-SystemSpec'!
!classDefinition: 'P4X86_64 class' category: 'P4-SystemSpec'!
P4X86_64 class
	instanceVariableNames: ''!

!classDefinition: #P4Linker category: 'P4-SystemSpec'!
P4Object subclass: #P4Linker
	instanceVariableNames: 'danglingReferences labels'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-SystemSpec'!
!classDefinition: 'P4Linker class' category: 'P4-SystemSpec'!
P4Linker class
	instanceVariableNames: ''!

!classDefinition: #P4SmalltalkConfiguration category: 'P4-SystemSpec'!
P4Object subclass: #P4SmalltalkConfiguration
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-SystemSpec'!
!classDefinition: 'P4SmalltalkConfiguration class' category: 'P4-SystemSpec'!
P4SmalltalkConfiguration class
	instanceVariableNames: 'instance'!

!classDefinition: #P4PharoBehavior category: 'P4-PharoBridge'!
Object subclass: #P4PharoBehavior
	instanceVariableNames: 'pharoInstance p4instance'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-PharoBridge'!
!classDefinition: 'P4PharoBehavior class' category: 'P4-PharoBridge'!
P4PharoBehavior class
	instanceVariableNames: ''!

!classDefinition: #P4PharoClass category: 'P4-PharoBridge'!
P4PharoBehavior subclass: #P4PharoClass
	instanceVariableNames: 'p4class'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-PharoBridge'!
!classDefinition: 'P4PharoClass class' category: 'P4-PharoBridge'!
P4PharoClass class
	instanceVariableNames: ''!

!classDefinition: #P4PharoMetaclass category: 'P4-PharoBridge'!
P4PharoBehavior subclass: #P4PharoMetaclass
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'P4-PharoBridge'!
!classDefinition: 'P4PharoMetaclass class' category: 'P4-PharoBridge'!
P4PharoMetaclass class
	instanceVariableNames: ''!


!P4SmalltalkGrammar commentStamp: 'TestRunner 11/24/2009 11:49' prior: 0!
SCParser is a PEG which parses Smalltalk code.

"""
TODO:
 - add tests for rules flagged with XXX
 - complete grammar of expressions
 - replace argument with parameter
"""

Grammar:

methodParser					= messagePattern & temporaries? & annotations? & methodStatments?

BASIC-BLOCK:

temporaries 						= bar & variableName+ & bar
		
XXXsubExpression 					= expression & ('.' omit)
XXXfinalExpression 				= expression & ('.'? omit)
XXXreturn 							= ('^' omit) & finalExpression
XXXstatements 					= subExpression * & (return | finalExpression)?

XXXbraceExpression 				= ('{' omit) & subExpression* & expression & ('}' omit)
XXXscopedExpression 				= ('(' omit) & expression & (')' omit)

EXPRESSION:

primary 							= primaryVariable | literal | block | braceExpression | scopedExpression

expression 						= assignmentExpressions & (cascadedMessageExpression | messageExpression | primary)

cascadedMessageExpression 		= messageExpression & ((';' omit) & (keywordMessageExpression | binaryMessageExpression | unaryMessageExpression))+
messageExpression 				= keywordExpression | binaryExpression | unaryExpression
	
unaryExpression 				= primary & unarySelector+
binaryExpression 				= unaryObjectDescription & binarySelector & binaryObjectDescription

unaryMessageExpression 		= unarySelector
binaryMessageExpression 		= binarySelector & unaryObjectDescription

binaryObjectDescription 			= binaryExpression | unaryObjectDescription
unaryObjectDescription 			= unaryExpression | primary

ASSIGNMENT:

assignmentOp 					= ':=' | '_'
assignmentExpressions 			= (variableName & assignmentOp) times

BLOCK:

blockArguments 				= (':' & identifier) +
XXXblock 						= '[' & (blockArguments & bar) optional & temporaries optional & statements & ']'

SELECTOR:

keyword 						= identifier && (':' omit)
keywordsArguments 			= (keyword & argumentName) +

binarySelector 					= ( ( (specialCharacter | '-') && specialCharacter ** ) | '|' )
binaryArgument 				= binarySelector & argumentName

unarySelector 					= identifier && (':'!! omit)
		
messagePattern 					= keywordsArguments | binaryArgument | unarySelector

LITERAL:

specialCharacter 				= '+' | '*' | '/' | '\' | '~' | '<' | '>' | '=' | '@' | '%' | '?' | '!!' | '&' | '`' | ','
character 						= ('[' | ']' | '{' | '}' | '(' | ')' | '_' | '^' | ';' | '$' | '#' | ':' | '-' | '|' | '.') | space | decimalDigit | letter | specialCharacter
characterConstant 				= '$' && character

string 							= ( ('''' omit) && (''''!!)**  && ('''' omit) )++
stringConstant 					= string
		
symbolKeywords 				= (keyword + ':') ++
symbolString 					= string
symbol 							= symbolKeywords | identifier | binarySelector | string
symbolInArray 					= symbol
symbolConstant 					= ('#' omit) && symbol
		
XXXarray 						= '(' & (number | stringConstant | symbolInArray | symbolConstant | characterConstant | array)*  & ')'
arrayConstant 					= '#' & array

VARIABLE:

identifier 						= letter && (letter | decimalDigit) **
capitalIdentifier 				= uppercase && (letter | decimalDigit) **
argumentName 					= identifier
variableName 					= identifier
primaryVariable 				= identifier

CONVENIENCE:

bar 							= '|'
decimalDigit 					= [0-9]
uppercase 						= [A-Z]
lowercase 						= [a-z]
letter 							= lowercase | uppercase
			
SEPARATOR:

space 							= ' ' | '\t' | '\n' 								"= PEGParser separators "
commentFormat 					= '"' ('"'!!) ** '"'
separator 						= (space | commentFormat) **!

!P4SmalltalkKernelCompiler commentStamp: 'OliFlueckiger 5/26/2011 11:18' prior: 0!
P4SmalltalkKernelCompiler new
processor: P4AbstractX86_64 new;
os: P4Linux new;
compileClasses: { P4Object }!

!P4DwarfCallFrameInstruction commentStamp: 'OliFlueckiger 8/1/2011 14:11' prior: 0!
"Each call frame instruction is defined to take 0 or more operands. Some of the operands may be
encoded as part of the opcode (see section 7.23). The instructions are as follows:

1. DW_CFA_advance_loc takes a single argument that represents a constant delta. The
  required action is to create a new table row with a location value that is computed by taking
  the current entrys location value and adding (delta * code_alignment_factor). All
  other values in the new row are initially identical to the current row

2. DW_CFA_offset takes two arguments: an unsigned LEB128 constant representing a
  factored offset and a register number. The required action is to change the rule for the
  register indicated by the register number to be an offset(N) rule with a value of (N =
  factored offset * data_alignment_factor).

3. DW_CFA_restore takes a single argument that represents a register number. The
   required action is to change the rule for the indicated register to the rule assigned it by the
   initial_instructions in the CIE.

4. DW_CFA_set_loc takes a single argument that represents an address. The required
   action is to create a new table row using the specified address as the location. All other
   values in the new row are initially identical to the current row. The new location value
   should always be greater than the current one.

5. DW_CFA_advance_loc1 takes a single ubyte argument that represents a constant delta.
   This instruction is identical to DW_CFA_advance_loc except for the encoding and size
   of the delta argument.

6. DW_CFA_advance_loc2 takes a single uhalf argument that represents a constant delta.
   This instruction is identical to DW_CFA_advance_loc except for the encoding and size
   of the delta argument.

7. DW_CFA_advance_loc4 takes a single uword argument that represents a constant delta.
   This instruction is identical to DW_CFA_advance_loc except for the encoding and size
   of the delta argument.

8. DW_CFA_offset_extended takes two unsigned LEB128 arguments representing a
   register number and a factored offset. This instruction is identical to DW_CFA_offset
   except for the encoding and size of the register argument.

9. DW_CFA_restore_extended takes a single unsigned LEB128 argument that
   represents a register number. This instruction is identical to DW_CFA_restore except
   for the encoding and size of the register argument.

10. DW_CFA_undefined takes a single unsigned LEB128 argument that represents a register
   number. The required action is to set the rule for the specified register to 'undefined'

11. DW_CFA_same_value takes a single unsigned LEB128 argument that represents a
   register number. The required action is to set the rule for the specified register to 'same value'

12. DW_CFA_register takes two unsigned LEB128 arguments representing register
   numbers. The required action is to set the rule for the first register to be the second register.

13. DW_CFA_remember_state

14. DW_CFA_restore_state
   These  instructions define  a stack of information. Encountering the DW_CFA_remember_state instruction means 
   to save the rules for every register on the current row on the stack. Encountering the DW_CFA_restore_state instruction
   means to pop the set of rules off the stack and place them in the current row. (This operation is useful for compilers 
   that move epilogue code into the body of a function.)

15. DW_CFA_def_cfa takes two unsigned LEB128 arguments representing a register number
   and an offset. The required action is to define the current CFA rule to use the provided
    register and offset.

16. DW_CFA_def_cfa_register takes a single unsigned LEB128 argument representing
   a register number. The required action is to define the current CFA rule to use the provided
    register (but to keep the old offset).

17. DW_CFA_def_cfa_offset takes a single unsigned LEB128 argument representing an
   offset. The required action is to define the current CFA rule to use the provided offset (but
    to keep the old register).

18. DW_CFA_nop has no arguments and no required actions. It is used as padding to make the
   FDE an appropriate size."!

!P4X86_64 commentStamp: 'ToonVerwaest 5/8/2011 13:05' prior: 0!
Documentation of the X86_64 instruction set can be found at:

http://ref.x86asm.net/geek64.html
(how to read it: http://ref.x86asm.net)

The X86_64 is little endian so all values (addresses and constants) need to be written out in that format.

------------------------------------------
Register based instructions
------------------------------------------

Registers come in 2 combinations. The named registers are combination 0: register(0). The numbered registers (r8 to r15) are combination 1: register(1).

Instructions handling registers are often prefixed with an instrution carrying meta-information about the size of the arguments. 0x40 is the default and is left out; this is used for the combination (constant, register(0) access). The combination (constant, register(1) access) is encoded in 0x41. From then on the combinations (register(X), register(Y) (access?)) is encoded as 0x48 + X<<2 + Y. 

Registers can generally be read/written directly, or used as a pointer and written to at a certain offset. This is encoded in the upper two bits of the operand, called the "access type" in this code.

2r00 -> the register is used as a pointer and assignment is to *reg
2r01 -> the register is used as an array and the fixed index is <= than 16rFF: reg[index]
2r10 -> the register is used as an array and the fixed index is >= 16rFF but <= 16rFFFFFFFF
2r11 -> the register value is used as is

The case where the indexed register is the RBP or R13 (its sibling in combination 1) is slightly different. There the 00 is preserved for accessing the RIP at a 32bit offset. 

When the indexed register is the RSP or R12 (its sibling in combination 1) the operand is followed by 0x24 (twice the index of the RSP/R12). (I don't yet know why though...)

Within all register combinations only a single register can be accessed at an offset. In the operand encoding the register combination, the accessed register is the "primary register" and its index is always encoded in the lower 3 bits of the operand. The secondary register is encoded in the remaining 3 bits:

2 bits access type + 3 bits secondary register + 3 bits primary register

The instruction itself distinguishes if the target register is the primary or the secondary register. If the assigned register is the primary register the instruction code is used with 1 offset. If the assigned register is the secondary register, the instruction code is used with an offset 3.

----------------------------
Conditional Jumps
----------------------------

Conditional jumps depend on 4 flags:

CF = carry flag
ZF = zero flag
PF = parity flag
SF = sign flag

These flags are filled in by the cmp:with: instruction. There are 2^4 (4 flags) combinations, thus from 16r0 to 16rF.
All those jumps come in 2 flavors, a second-order instruction that uses 32bit offsets, and a first-order short sequence for single-byte offsets. So jumping between 0x00 and 0xFF distance is cheaper (shorter sequence) than jumping between 0xFF and 0xFFFFFFFF.

------------------------
Jumps and Calls
------------------------

Jumps and calls can be direct to an address, or indirect via a register (which can be accessed).

If a call is done to a register it is encoded in the same way as a "constant/register combination", meaning that it will be prefixed with 0x41 if the register is a register(1).

!

!ASTTest methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
ast: aString
	^ parser match: (PEGStringScanner on: aString)! !

!ASTTest methodsFor: 'running' stamp: 'OliFlueckiger 5/4/2011 16:49'!
setUp
	scparser := P4SmalltalkParser new.
	parser := scparser expression! !

!ASTTest methodsFor: 'testing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
testHasReturnExpression
	parser := scparser method.
	(self ast: 'method' , String cr , '^ 1') hasReturnExpression should be true.
	(self ast: 'method' , String cr , '1') hasReturnExpression should not be true.
	(self ast: 'method' , String cr , 'true ifFalse: [^ true]') hasReturnExpression should be true.
	(self ast: 'method' , String cr , 'true ifFalse: [ 2 ]') hasReturnExpression should not be true.
	(self ast: 'method' , String cr , 'true ifFalse: [^ true] ifTrue: [ ^ 2]') hasReturnExpression should be true.
	(self ast: 'method' , String cr , 'self isNil ifFalse: [^ true]') hasReturnExpression should be true.
	(self ast: 'method' , String cr , '[true] whileTrue: [^ true] doBo: 1') hasReturnExpression should be true! !

!P4Object methodsFor: 'testing' stamp: 'OliFlueckiger 7/28/2011 20:02'!
= other
	<globalName: #equality>
	^ (self == other)! !

!P4Object methodsFor: 'testing' stamp: 'OliFlueckiger 7/28/2011 19:32'!
== other
	" Implemented in the compiler "
	^ self == other! !

!P4Object methodsFor: 'testing' stamp: 'OliFlueckiger 8/24/2011 16:55'!
ifFalse: aBlock! !

!P4Object methodsFor: 'testing' stamp: 'OliFlueckiger 8/29/2011 13:05'!
ifFalse: aFalseBlock ifTrue: aBlock 
	^aBlock value! !

!P4Object methodsFor: 'testing' stamp: 'OliFlueckiger 7/22/2011 16:56'!
ifNil: aBlock
	^ aBlock value! !

!P4Object methodsFor: 'testing' stamp: 'OliFlueckiger 7/22/2011 16:56'!
ifNil: aBlock ifNotNil: anOtherBlock
	^ anOtherBlock value! !

!P4Object methodsFor: 'testing' stamp: 'OliFlueckiger 8/24/2011 16:55'!
ifTrue: aBlock
	^aBlock value! !

!P4Object methodsFor: 'testing' stamp: 'OliFlueckiger 8/29/2011 13:04'!
ifTrue: aBlock ifFalse: aFalseBlock
	^aBlock value! !

!P4Object methodsFor: 'testing' stamp: 'OliFlueckiger 7/26/2011 17:23'!
pHalt
	<preventExport>! !

!P4Object methodsFor: 'testing' stamp: 'OliFlueckiger 9/13/2011 10:44'!
pInspect 
	self printObj! !

!P4Object methodsFor: 'testing' stamp: 'OliFlueckiger 8/29/2011 18:03'!
shouldBeTrue
	self expectationFail: self expected: true  ! !

!P4Object methodsFor: 'accessing' stamp: 'OliFlueckiger 7/26/2011 17:51'!
basicAt: key
	<preventExport>
	^ super basicAt: key! !

!P4Object methodsFor: 'accessing' stamp: 'OliFlueckiger 7/26/2011 17:53'!
basicAt: key put: object
	<preventExport>
	^ super basicAt: key put: object! !

!P4Object methodsFor: 'accessing' stamp: 'OliFlueckiger 7/26/2011 17:58'!
identityHash
	<preventExport>
	^ super identityHash >> 18! !

!P4Object methodsFor: 'accessing' stamp: 'OliFlueckiger 1/6/2012 14:51'!
pBasicAt: key
	<pprimitive: #basicAt>
	<renameExport: #basicAt:>  
	self error: 'Object>>basicAt: failed. this is not an arrayed object'.! !

!P4Object methodsFor: 'accessing' stamp: 'OliFlueckiger 7/26/2011 18:03'!
pBasicAt: key put: object
	<pprimitive: #basicAtPut>
	<renameExport: #basicAt:put:>
	self pHalt! !

!P4Object methodsFor: 'accessing' stamp: 'OliFlueckiger 7/26/2011 17:58'!
pIdentityHash
	<pprimitive: #identityHash>
	<renameExport: #identityHash>
	self pHalt.  ! !

!P4Object methodsFor: 'accessing' stamp: 'OliFlueckiger 9/8/2011 15:14'!
print 
	'a ' print.
	self class name print.! !

!P4Object methodsFor: 'accessing' stamp: 'OliFlueckiger 7/26/2011 17:55'!
psize
	<pprimitive: #size>
	<renameExport: #size>  
	self pHalt.! !

!P4Object methodsFor: 'accessing' stamp: 'OliFlueckiger 7/26/2011 17:57'!
size
	<preventExport>
	^super size! !

!P4Object methodsFor: 'accessing' stamp: 'OliFlueckiger 10/5/2011 17:02'!
yourself
	^ self! !

!P4Object methodsFor: 'class hierarchy' stamp: 'OliFlueckiger 12/7/2011 16:10'!
behavior
	<pprimitive: #behavior> 
	self pHalt.! !

!P4Object methodsFor: 'class hierarchy' stamp: 'OliFlueckiger 12/7/2011 23:01'!
behavior: aBehavior
	<pprimitive: #'set_behavior'> 
	self pHalt.! !

!P4Object methodsFor: 'class hierarchy' stamp: 'OliFlueckiger 8/18/2011 13:51'!
class
	<preventExport>
	^super class! !

!P4Object methodsFor: 'class hierarchy' stamp: 'OliFlueckiger 12/7/2011 16:32'!
pClass
	<renameExport: #class>
	^ self behavior theClass! !

!P4Object methodsFor: 'message handling' stamp: 'OliFlueckiger 9/7/2011 16:51'!
doesNotUnderstand: selector
	<preventExport>
	^ super doesNotUnderstand: selector  ! !

!P4Object methodsFor: 'message handling' stamp: 'OliFlueckiger 12/8/2011 14:43'!
groundedInvoke: selector
	<invoke>
	<globalName: #groundedInvoke>	
	<groundTypes>
	<fixedType: 	#self             		as: #'Kernel.Object.Object'>
	<typeHint: 	#behavior        		as: #'Kernel.Behavior.SmalltalkBehavior'>

	| behavior class method |
	behavior := self behavior.
	method := (behavior lookup: selector for: self).
	^ method perform: selector on: self.! !

!P4Object methodsFor: 'message handling' stamp: 'OliFlueckiger 12/7/2011 18:51'!
invoke: selector
	<invoke>
	<globalName: #invoke>	
	<groundTypes>
	<fixedType: 	#self             		as: #'Kernel.Object.Object'>
	<typeHint: 	#behavior        		as: #'Kernel.Behavior.SmalltalkBehavior'>

	| behavior class method |
	behavior := self behavior.
	method := (behavior lookup: selector for: self).
	^ method perform: selector andCacheOn: self.! !

!P4Object methodsFor: 'message handling' stamp: 'OliFlueckiger 9/7/2011 16:01'!
or: aBlock
	self ifFalse: [ ^aBlock value ]! !

!P4Object methodsFor: 'message handling' stamp: 'OliFlueckiger 1/9/2012 01:08'!
pDoesNotUnderstand: message
	<renameExport: #doesNotUnderstand:>
	
	'------> does not understand' print.
	self class name print.
	message selector print.
	
	(message arguments size > 0) 
		ifTrue: [ 
			' ------>  arguments: ' print.
			message arguments do: [ :arg |
				arg print ]].
	'<------' print.
	"self pHalt."! !

!P4Object methodsFor: 'message handling' stamp: 'OliFlueckiger 8/18/2011 13:36'!
pLookupSelector: aSelector
	^ self lookupSelector: aSelector! !

!P4Object methodsFor: 'message handling' stamp: 'OliFlueckiger 1/6/2012 16:10'!
perform: selector with: args
	| behavior method |
	behavior := self behavior.
	method := (behavior lookup: selector for: self).
	^ method perform: selector on: self with: args.! !

!P4Object methodsFor: 'message handling' stamp: 'OliFlueckiger 7/21/2011 11:53'!
shouldNotCall
	self error: 'my subclass should have overwritten this'! !

!P4Object methodsFor: 'spec' stamp: 'OliFlueckiger 1/6/2012 14:54'!
error: string
	string print.
	self pHalt.! !

!P4Object methodsFor: 'spec' stamp: 'OliFlueckiger 8/29/2011 18:04'!
expectationFail: got expected: expected
	'expectation not met. got:' print.
	got printObj.
	'but expected:' print.
	expected printObj.
	self pHalt.! !

!P4Object methodsFor: 'spec' stamp: 'OliFlueckiger 7/25/2011 18:33'!
flag: flag! !

!P4Object methodsFor: 'spec' stamp: 'OliFlueckiger 8/5/2011 18:25'!
printObj
	<pprimitive: #'print_object'>
	self pHalt.! !

!P4Object methodsFor: 'spec' stamp: 'OliFlueckiger 9/8/2011 14:58'!
shouldBe: sth
	(self = sth) ifFalse: [ self expectationFail: self expected: sth ]  ! !

!P4Object methodsFor: 'initialize-release' stamp: 'OliFlueckiger 7/26/2011 18:24'!
initialize
	<preventExport>
	^super initialize! !

!P4Object methodsFor: 'initialize-release' stamp: 'OliFlueckiger 7/26/2011 18:25'!
pInitialize
	<renameExport: #initialize>! !

!P4Object methodsFor: 'hash' stamp: 'ToonVerwaest 7/23/2011 18:42'!
pHash
	^ self hash! !

!P4Object class methodsFor: 'accessing' stamp: 'OliFlueckiger 8/18/2011 13:40'!
earlyClassSelectorAddress: aSelector
	| method |
	method := self pclass pLookupSelector: aSelector.
	^ method earlySelectorAddress.! !

!P4Object class methodsFor: 'accessing' stamp: 'OliFlueckiger 8/18/2011 13:40'!
earlySelectorAddress: aSelector
	"copy in Metaclass"
	| method |
	method := self pLookupSelector: aSelector.
	^ method earlySelectorAddress.! !

!P4Object class methodsFor: 'accessing' stamp: 'ToonVerwaest 5/16/2011 23:05'!
flush
	pname := nil! !

!P4Object class methodsFor: 'accessing' stamp: 'OliFlueckiger 7/20/2011 15:47'!
p4class
	^ self class! !

!P4Object class methodsFor: 'accessing' stamp: 'ToonVerwaest 7/18/2011 15:36'!
p4super
	P4Object == self ifTrue: [ ^ nil ].
	^ self superclass! !

!P4Object class methodsFor: 'accessing' stamp: 'OliFlueckiger 7/28/2011 14:31'!
pHalt
	<preventExport>! !

!P4Object class methodsFor: 'accessing' stamp: 'ToonVerwaest 7/21/2011 17:40'!
pInstanceHeader
	| base variable bytes hash |
	base := self pInstSize.
	variable := self pIsVariable ifTrue: [ 1 ] ifFalse: [ 0 ].
	bytes := self pIsBytes ifTrue: [ 1 ] ifFalse: [ 0 ].
	^ (bytes bitShift: 9) + (variable bitShift: 8) + base! !

!P4Object class methodsFor: 'accessing' stamp: 'ToonVerwaest 5/17/2011 14:50'!
pfullName
	^ (P4Package packageOfClass: self) relativeNameFor: self pname! !

!P4Object class methodsFor: 'accessing' stamp: 'ToonVerwaest 5/16/2011 23:04'!
pname
	<preventExport>
	^ pname ifNil: [ pname := (self name copyFrom: 'P4' size + 1 to: self name size) asSymbol ]! !

!P4Object class methodsFor: 'exporting' stamp: 'ToonVerwaest 7/19/2011 18:57'!
identityHash
	<preventExport>
	^ super identityHash >> 18! !

!P4Object class methodsFor: 'exporting' stamp: 'ToonVerwaest 7/21/2011 17:23'!
mapToPclass
	^ self! !

!P4Object class methodsFor: 'exporting' stamp: 'ToonVerwaest 7/23/2011 19:15'!
pExportedName 
	^ nil! !

!P4Object class methodsFor: 'testing' stamp: 'OliFlueckiger 8/18/2011 13:16'!
typeCheckByteSize
	<preventExport>
	(P4SmallInteger inheritsFrom: self) ifTrue: [ ^ 30 ].
	^ 20! !

!P4UndefinedObject methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/24/2011 16:55'!
ifFalse: aBlock
	^ aBlock value  ! !

!P4UndefinedObject methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/29/2011 13:05'!
ifFalse: aFalseBlock ifTrue: aBlock 
	^aFalseBlock value! !

!P4UndefinedObject methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/22/2011 16:57'!
ifNil: aBlock
	^ aBlock value! !

!P4UndefinedObject methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/22/2011 16:57'!
ifNil: aBlock ifNotNil: anOtherBlock
	^ aBlock value! !

!P4UndefinedObject methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/24/2011 16:55'!
ifTrue: aBlock
! !

!P4UndefinedObject methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/29/2011 13:05'!
ifTrue: aBlock  ifFalse: aFalseBlock
	^aFalseBlock value! !

!P4UndefinedObject methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/10/2011 18:02'!
value
	^ nil! !

!P4AbstractPackage methodsFor: 'accessing' stamp: 'OliFlueckiger 12/7/2011 17:23'!
addClass: aName
	<preventExport>
	| reference |
	self flag: 'ne'.
	reference := members at: aName ifAbsentPut: [ |class superclass|
		class := P4PharoClass new
					name: aName.
		P4ClassReference new cls: class; package: self ].
	^ reference cls.! !

!P4AbstractPackage methodsFor: 'accessing' stamp: 'OliFlueckiger 7/20/2011 17:13'!
at: aName ifAbsent: aBlock
	^ (members at: aName ifAbsent: [ ^ aBlock value ]) cls! !

!P4AbstractPackage methodsFor: 'accessing' stamp: 'OliFlueckiger 7/11/2011 15:15'!
flush
	members := nil! !

!P4AbstractPackage methodsFor: 'accessing' stamp: 'OliFlueckiger 12/7/2011 17:38'!
packageAt: aSymbol
	^ members at: aSymbol ifAbsent: [ "no such member" self halt ]! !

!P4AbstractPackage methodsFor: 'iterating' stamp: 'ToonVerwaest 5/16/2011 23:07'!
classesDo: action 
	members do: [ :member | member classesDo: action ]! !

!P4AbstractPackage methodsFor: 'iterating' stamp: 'OliFlueckiger 7/6/2011 16:10'!
dumpGlobalOn: binaryOut
	^ self dumpOn: binaryOut! !

!P4AbstractPackage methodsFor: 'iterating' stamp: 'OliFlueckiger 7/6/2011 16:10'!
dumpLocalOn: binaryOut
	^ binaryOut postpone: self  ! !

!P4AbstractPackage methodsFor: 'iterating' stamp: 'ToonVerwaest 7/19/2011 13:45'!
packagesDo: action 
	action value: self.
	members do: [ :member | member packagesDo: action ]! !

!P4AbstractPackage methodsFor: 'iterating' stamp: 'OliFlueckiger 7/15/2011 13:41'!
printOn: aStream 
	aStream! !

!P4AbstractPackage methodsFor: 'package creation' stamp: 'ToonVerwaest 7/18/2011 22:33'!
ensurePackage: aPackageName
	<preventExport>
	self flag: 'ne'.
	^ members at: aPackageName ifAbsentPut: [
		P4Package new name: aPackageName; parent: self ]! !

!P4AbstractPackage methodsFor: 'initialize-release' stamp: 'ToonVerwaest 7/18/2011 22:34'!
initialize
	<preventExport>
	self flag: 'ne'.
	members := P4IdentityDictionary new! !

!P4AbstractPackage methodsFor: 'testing' stamp: 'ToonVerwaest 5/16/2011 18:40'!
isRootPackage
	^ false! !

!P4AbstractPackage class methodsFor: 'pharo package loading' stamp: 'OliFlueckiger 7/25/2011 17:03'!
packageOfClass: aClass
	| path |
	path := '-' split: aClass category.
	path removeFirst.
	path := path collect: #asSymbol.
	^ P4RootPackage ensurePath: path! !

!P4Package methodsFor: 'filesystem' stamp: 'KenD 8/22/2022 11:51:30'!
ensureDirectory
	<preventExport>
	| parentDir |
	parentDir := parent ensureDirectory.
	^ parentDir assureExistenceDirNamed: name.
	! !

!P4Package methodsFor: 'filesystem' stamp: 'ToonVerwaest 5/16/2011 18:40'!
printOn: aStream separatedBy: separator
	parent isRootPackage ifFalse: [
		parent printOn: aStream separatedBy: separator.
		aStream << separator ].
	aStream << name! !

!P4Package methodsFor: 'filesystem' stamp: 'ToonVerwaest 7/19/2011 14:56'!
relativeNameFor: aName
	^ self relativeNameFor: aName separatedBy: '_'! !

!P4Package methodsFor: 'filesystem' stamp: 'ToonVerwaest 7/18/2011 21:55'!
relativeNameFor: aName separatedBy: separator
	<preventExport>
	| aStream |
	aStream := WriteStream on: (String new: 32).
	self printOn: aStream separatedBy: separator.
	aStream << separator << aName.
	^ aStream contents! !

!P4Package methodsFor: 'filesystem' stamp: 'ToonVerwaest 5/17/2011 14:49'!
relativePathNameFor: aName
	^ self relativeNameFor: aName separatedBy: '/'! !

!P4Package methodsFor: 'accessing' stamp: 'ToonVerwaest 5/16/2011 17:58'!
name
	^ name
! !

!P4Package methodsFor: 'accessing' stamp: 'ToonVerwaest 5/16/2011 17:58'!
name: anObject
	name := anObject! !

!P4Package methodsFor: 'accessing' stamp: 'ToonVerwaest 5/16/2011 17:58'!
parent
	^ parent! !

!P4Package methodsFor: 'accessing' stamp: 'ToonVerwaest 5/16/2011 17:58'!
parent: anObject
	parent := anObject! !

!P4Package methodsFor: 'exporting' stamp: 'ToonVerwaest 7/19/2011 13:14'!
pExportedName
	^ (parent relativeNameFor: self name) asSymbol! !

!P4Package methodsFor: 'iterating' stamp: 'OliFlueckiger 7/15/2011 13:41'!
printOn: aStream 
	self printOn: aStream separatedBy: '.'  ! !

!P4Package class methodsFor: 'instance creation' stamp: 'KenD 8/22/2022 11:46:07'!
byPathName: aName
	| segments |
	segments := ('.' split: aName) collect: [:elt | elt asSymbol].
	^ P4RootPackage resolve: segments
	! !

!P4Package class methodsFor: 'pharo package loading' stamp: 'ToonVerwaest 7/21/2011 17:19'!
loadClass: aClass
	| package |
	aClass ifNil: [ ^ nil ].
	package := self packageOfClass: aClass.
	^ package at: aClass pname ifAbsent: [
		(package addClass: aClass pname)   
			superclass: (P4Package loadClass: aClass p4super);
			inPharo: aClass;
			metaclass: aClass p4class]! !

!P4Package class methodsFor: 'pharo package loading' stamp: 'OliFlueckiger 7/5/2011 15:51'!
loadClasses
	P4RootPackage flushPackages.! !

!P4Package class methodsFor: 'pharo package loading' stamp: 'KenD 8/21/2022 14:19:41'!
packageOfClass: aClass
	| path |
	path := '-' split: aClass theNonMetaClass category.
	path removeFirst.
	path := path collect: [ :someName | someName asSymbol].
	^ P4RootPackage ensurePath: path! !

!P4RootPackage methodsFor: 'filesystem' stamp: 'KenD 8/22/2022 11:47:45'!
ensureDirectory
	<preventExport>
	^ DirectoryEntry smalltalkImageDirectory ! !

!P4RootPackage methodsFor: 'filesystem' stamp: 'ToonVerwaest 5/16/2011 18:37'!
printOn: aStream separatedBy: separator! !

!P4RootPackage methodsFor: 'filesystem' stamp: 'ToonVerwaest 5/16/2011 18:42'!
relativeNameFor: aName
	^ aName  ! !

!P4RootPackage methodsFor: 'testing' stamp: 'ToonVerwaest 5/16/2011 18:40'!
isRootPackage
	^ true! !

!P4RootPackage class methodsFor: 'instance creation' stamp: 'ToonVerwaest 5/16/2011 22:52'!
ensurePath: aPath
	| current |
	current := self instance.
	[ aPath isEmpty ] whileFalse: [ 
		current := current ensurePackage: aPath removeFirst ].
	^ current ! !

!P4RootPackage class methodsFor: 'instance creation' stamp: 'OliFlueckiger 7/11/2011 15:29'!
instance
	^ instance ifNil: [ instance := self new ]! !

!P4RootPackage class methodsFor: 'instance creation' stamp: 'ToonVerwaest 5/24/2011 18:38'!
resolve: aPath
	| current |
	current := self instance.
	[ aPath isEmpty ] whileFalse: [ 
		current := current packageAt: aPath removeFirst ].
	^ current cls! !

!P4RootPackage class methodsFor: 'pharo class loading' stamp: 'OliFlueckiger 7/11/2011 15:15'!
flushPackages
	instance ifNotNil: [ instance classesDo: #flush ].
	instance := nil! !

!P4ClassReference methodsFor: 'iterating' stamp: 'KenD 8/23/2022 13:29:06'!
classesDo: action
	"action value: cls"
	cls perform: action! !

!P4ClassReference methodsFor: 'iterating' stamp: 'ToonVerwaest 7/19/2011 13:46'!
packagesDo: action
! !

!P4ClassReference methodsFor: 'accessing' stamp: 'ToonVerwaest 5/24/2011 16:27'!
cls
	^ cls! !

!P4ClassReference methodsFor: 'accessing' stamp: 'ToonVerwaest 5/24/2011 16:27'!
cls: anObject
	cls := anObject! !

!P4ClassReference methodsFor: 'accessing' stamp: 'ToonVerwaest 5/24/2011 16:27'!
package
	^ package! !

!P4ClassReference methodsFor: 'accessing' stamp: 'OliFlueckiger 7/5/2011 16:54'!
package: anObject
	package := anObject.
	cls ifNotNil: [ cls package: anObject ]  ! !

!P4String methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/29/2011 06:32'!
print
	<pprimitive: #print>
	self pHalt.! !

!P4Symbol methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 9/7/2011 15:05'!
countArgs
	<pprimitive: #'count_args'>
	self pHalt! !

!P4Symbol class methodsFor: 'exporting' stamp: 'ToonVerwaest 7/23/2011 19:13'!
pExportedName 
	^ self == P4Symbol
		ifTrue: [ #Symbol ]
		ifFalse: [ super pExportedName ]! !

!P4Layout methodsFor: 'allocation' stamp: 'ToonVerwaest 5/21/2011 18:59'!
allocate: memoryManager
	self subclassResponsibility! !

!P4LByte methodsFor: 'allocation' stamp: 'ToonVerwaest 5/21/2011 18:59'!
allocate: memoryManager 
	^ memoryManager allocateByte! !

!P4LLong methodsFor: 'allocation' stamp: 'ToonVerwaest 5/21/2011 19:00'!
allocate: memoryManager
	^ memoryManager allocateLong! !

!P4LLong class methodsFor: 'testing' stamp: 'ToonVerwaest 5/21/2011 18:59'!
isAbstractClass
	self shouldBeImplemented! !

!P4LBytes methodsFor: 'allocation' stamp: 'ToonVerwaest 5/21/2011 19:00'!
allocate: memoryManager
	^ memoryManager allocateBytes: size! !

!P4LPointers methodsFor: 'allocation' stamp: 'ToonVerwaest 5/21/2011 19:00'!
allocate: memoryManager
	^ memoryManager allocatePointers: size! !

!P4LVariable methodsFor: 'allocation' stamp: 'ToonVerwaest 5/21/2011 19:01'!
allocate: memoryManager
	^ memoryManager allocatePointers: size variable: extra! !

!P4LWords methodsFor: 'allocation' stamp: 'ToonVerwaest 5/21/2011 19:01'!
allocate: memoryManager
	^ memoryManager allocateWords: size! !

!P4LWord methodsFor: 'allocation' stamp: 'ToonVerwaest 5/21/2011 19:01'!
allocate: memoryManager
	^ memoryManager allocateWord! !

!P4AbstractGrammar methodsFor: 'error handling' stamp: 'ToonVerwaest 8/18/2010 13:33'!
doesNotUnderstand: message
	^ parsers
		at: message selector
		ifAbsentPut: [ |selector|
			selector := ('initialize' , message selector capitalized) asSymbol.
			(self respondsTo: selector)
				ifTrue: [ self perform: selector ]
				ifFalse: [ super doesNotUnderstand: message ] ]! !

!P4AbstractGrammar methodsFor: 'initialization' stamp: 'OliFlueckiger 5/5/2011 16:26'!
initialize
	parsers := IdentityDictionary new.! !

!P4AbstractGrammar methodsFor: 'parsing' stamp: 'ToonVerwaest 8/18/2010 13:35'!
initializeSeparator
	^ PEGParser separators! !

!P4AbstractGrammar methodsFor: 'parsing' stamp: 'ToonVerwaest 8/18/2010 13:34'!
match: string to: parser 
	^ parser match: (PEGStringScanner on: string separator: self separator)! !

!P4AbstractGrammar methodsFor: 'accessors' stamp: 'ToonVerwaest 8/18/2010 13:33'!
parsers
	^ parsers! !

!P4SmalltalkGrammar methodsFor: 'assignment' stamp: 'ToonVerwaest 9/30/2010 15:08'!
assignmentOp
	^ ':=' asParser omit! !

!P4SmalltalkGrammar methodsFor: 'assignment' stamp: 'ToonVerwaest 8/19/2010 12:00'!
initializeAssignmentExpressions
	^ PEGMultiParser
		named: 'ASSIGNMENT-EXPRESSIONS'
		parsing: (self variableName & self assignmentOp) plus! !

!P4SmalltalkGrammar methodsFor: 'annotations' stamp: 'ToonVerwaest 9/30/2010 15:08'!
initializeAnnotations
	^ PEGMultiParser
		named: 'ANNOTATIONS'
		parsing: ('<' asParser
					& (self keywordAnnotation | self unaryAnnotation)
					<& '>') times! !

!P4SmalltalkGrammar methodsFor: 'annotations' stamp: 'ToonVerwaest 8/18/2010 11:45'!
initializeKeywordAnnotation
	^ PEGMultiParser
		named: 'KEYWORD-ANNOTATION'
		parsing: (self keyword & self primary) plus! !

!P4SmalltalkGrammar methodsFor: 'annotations' stamp: 'ToonVerwaest 8/18/2010 11:59'!
initializeUnaryAnnotation
	^ PEGParser
		named: 'UNARY-ANNOTATION'
		parsing: self unarySelector! !

!P4SmalltalkGrammar methodsFor: 'literal' stamp: 'ToonVerwaest 9/30/2010 15:08'!
initializeArray
	| array |
	array := PEGMultiParser named: 'ARRAY'.
	array <= ('(' asParser
				& (self numberConstant | self stringConstant
					<= self symbolInArray
					<= self symbolConstant
					<= self characterConstant
					<= array) times
				<& ')').
	^ array! !

!P4SmalltalkGrammar methodsFor: 'literal' stamp: 'ToonVerwaest 9/30/2010 15:08'!
initializeArrayConstant
	^ '#' asParser & self array! !

!P4SmalltalkGrammar methodsFor: 'literal' stamp: 'ToonVerwaest 8/18/2010 12:18'!
initializeCharacter
	^ '[]{}()_^;$#:-|.''"' asPEGChoice | PEGParser separators
		<= self decimalDigit
		<= self letter
		<= self specialCharacter! !

!P4SmalltalkGrammar methodsFor: 'literal' stamp: 'ToonVerwaest 9/30/2010 15:08'!
initializeCharacterConstant
	^ PEGParser
		named: 'CHARACTER-CONSTANT'
		parsing: '$' asParser && self character! !

!P4SmalltalkGrammar methodsFor: 'literal' stamp: 'ToonVerwaest 8/30/2010 13:40'!
initializeFloat
	^ PEGMultiParser
		named: 'FLOAT'
		parsing: self numberFormat && '.' <& self decimalDigit strongPlus! !

!P4SmalltalkGrammar methodsFor: 'literal' stamp: 'ToonVerwaest 8/30/2010 12:23'!
initializeLiteral
	^ self float 
		| self numberConstant
		<= self symbolConstant
		<= self characterConstant
		<= self stringConstant
		<= self arrayConstant! !

!P4SmalltalkGrammar methodsFor: 'literal' stamp: 'ToonVerwaest 8/18/2010 11:50'!
initializeNumber
	^ PEGParser
		named: 'NUMBER'
		parsing: self numberFormat! !

!P4SmalltalkGrammar methodsFor: 'literal' stamp: 'CamilloBruni 8/27/2010 21:10'!
initializeNumberConstant
	" XXX For now. "
	^ self radix | self number! !

!P4SmalltalkGrammar methodsFor: 'literal' stamp: 'ToonVerwaest 9/30/2010 15:08'!
initializeNumberFormat
	^ PEGMultiParser
		named: 'NUMBER-FORMAT'
		parsing: ('-' asParser consume & (self decimalDigit | self uppercase) strongPlus) | (self decimalDigit | self uppercase) strongPlus! !

!P4SmalltalkGrammar methodsFor: 'literal' stamp: 'ToonVerwaest 8/19/2010 19:07'!
initializeRadix
	^ PEGMultiParser
		named: 'RADIX-NUMBER'
		parsing: self numberFormat & 'r' <& self numberFormat! !

!P4SmalltalkGrammar methodsFor: 'literal' stamp: 'ToonVerwaest 3/25/2010 12:44'!
initializeSpecialCharacter
	^ '+*/\~<>=@%?!!&`,' asPEGChoice! !

!P4SmalltalkGrammar methodsFor: 'literal' stamp: 'ToonVerwaest 8/18/2010 11:55'!
initializeString
	^ PEGMultiParser
		named: 'STRING'
		parsing: self stringSegment strongPlus! !

!P4SmalltalkGrammar methodsFor: 'literal' stamp: 'ToonVerwaest 8/18/2010 11:56'!
initializeStringConstant
	^ PEGParser
		named: 'STRING-CONSTANT'
		parsing: self string! !

!P4SmalltalkGrammar methodsFor: 'literal' stamp: 'ToonVerwaest 9/30/2010 15:08'!
initializeStringSegment
	" XXX Have to optimize and clean..."
	| stringBorder |
	stringBorder := '''' asParser.
	^ PEGMultiParser
		named: 'STRING-SEGMENT'
		parsing: stringBorder && stringBorder not consume strongTimes <& stringBorder! !

!P4SmalltalkGrammar methodsFor: 'literal' stamp: 'ToonVerwaest 8/18/2010 12:23'!
initializeSymbol
	^ PEGParser
		named: 'SYMBOL'
		parsing: self symbolKeywords | self identifier <= self binarySelector <= self string! !

!P4SmalltalkGrammar methodsFor: 'literal' stamp: 'ToonVerwaest 9/30/2010 15:08'!
initializeSymbolConstant
	^ PEGParser
		named: 'SYMBOL-CONSTANT'
		parsing: '#' asParser plus && self symbol! !

!P4SmalltalkGrammar methodsFor: 'literal' stamp: 'ToonVerwaest 8/18/2010 11:58'!
initializeSymbolInArray
	^ PEGParser
		named: 'SYMBOL-IN-ARRAY'
		parsing: self symbol! !

!P4SmalltalkGrammar methodsFor: 'literal' stamp: 'ToonVerwaest 8/18/2010 11:59'!
initializeSymbolKeywords
	^ PEGMultiParser
		named: 'SYMBOL-KEYWORDS'
		parsing: self keyword strongPlus! !

!P4SmalltalkGrammar methodsFor: 'convenience' stamp: 'ToonVerwaest 9/30/2010 15:08'!
initializeBar
	^ '|' asParser! !

!P4SmalltalkGrammar methodsFor: 'convenience' stamp: 'ToonVerwaest 3/25/2010 12:44'!
initializeDecimalDigit
	^ '0-9' asPEGRange! !

!P4SmalltalkGrammar methodsFor: 'convenience' stamp: 'ToonVerwaest 3/25/2010 12:44'!
initializeLetter
	^ self lowercase | self uppercase! !

!P4SmalltalkGrammar methodsFor: 'convenience' stamp: 'ToonVerwaest 3/25/2010 12:44'!
initializeLowercase
	^ 'a-z' asPEGRange! !

!P4SmalltalkGrammar methodsFor: 'convenience' stamp: 'ToonVerwaest 3/25/2010 12:44'!
initializeUppercase
	^ 'A-Z' asPEGRange! !

!P4SmalltalkGrammar methodsFor: 'expression' stamp: 'ToonVerwaest 8/18/2010 12:15'!
initializeBinaryExpression
	self preStoreBinaryObjectDescription.
	parsers at: #binaryExpression ifAbsentPut:
		(PEGMultiParser
			named: 'BINARY-EXPRESSION'
			parsing: (self unaryObjectDescription & self binarySelector) plus & self unaryObjectDescription).
	self injectBinaryObjectDescription.
	^ self binaryExpression! !

!P4SmalltalkGrammar methodsFor: 'expression' stamp: 'ToonVerwaest 8/18/2010 11:38'!
initializeBinaryMessageExpression
	^ PEGMultiParser
		named: 'BINARY-MESSAGE-EXPRESSION'
		parsing: self binarySelector & self unaryObjectDescription! !

!P4SmalltalkGrammar methodsFor: 'expression' stamp: 'ToonVerwaest 3/25/2010 12:44'!
initializeBinaryObjectDescription
	self binaryExpression.	" binaryExpression will build this parser. "
	^ self binaryObjectDescription! !

!P4SmalltalkGrammar methodsFor: 'expression' stamp: 'ToonVerwaest 9/30/2010 15:08'!
initializeBracketIndexExpression
	^ PEGMultiParser
		named: 'BRACKET-INDEX-EXPRESSION'
		parsing: '[' asParser
					& self expression
					<& ']'
					<& ( self assignmentOp & self expression ) optional! !

!P4SmalltalkGrammar methodsFor: 'expression' stamp: 'ToonVerwaest 3/25/2010 12:44'!
initializeCascadedMessageExpression
	self expression.	" expression will build this parser. "
	^ self cascadedMessageExpression! !

!P4SmalltalkGrammar methodsFor: 'expression' stamp: 'ToonVerwaest 8/18/2010 12:20'!
initializeExpression
	" Prestoring required parsers to handle circular references. "
	self preStorePrimary.
	self preStoreMessageExpression.
	self preStoreCascadedMessageExpression.
	parsers at: #expression
		put: (PEGMultiParser
			named: 'EXPRESSION'
			parsing: self assignmentExpressions optional
						& (self cascadedMessageExpression
							| self messageExpression
							<= self primary)).	
	" After having built the expression parser, we inject the parsers into their stubs. "
	self injectPrimary.
	self injectMessageExpression.
	self injectCascadedMessageExpression.	
	^ parsers at: #expression! !

!P4SmalltalkGrammar methodsFor: 'expression' stamp: 'ToonVerwaest 8/18/2010 11:47'!
initializeKeywordExpression
	^ PEGMultiParser
		named: 'KEYWORD-EXPRESSION'
		parsing: self binaryObjectDescription & (self keywordMessageExpression | self bracketIndexExpression)! !

!P4SmalltalkGrammar methodsFor: 'expression' stamp: 'ToonVerwaest 8/18/2010 11:47'!
initializeKeywordMessageExpression
	^ PEGMultiParser
		named: 'KEYWORD-MESSAGE-EXPRESSION'
		parsing: (self keyword & self binaryObjectDescription) plus! !

!P4SmalltalkGrammar methodsFor: 'expression' stamp: 'ToonVerwaest 8/18/2010 11:49'!
initializeKeywordsArguments
	^ PEGMultiParser
		named: 'KEYWORDS-ARGUMENTS'
		parsing: (self keyword & self parameterName) plus! !

!P4SmalltalkGrammar methodsFor: 'expression' stamp: 'ToonVerwaest 8/2/2010 10:04'!
initializeMessageExpression
	self expression.	" expression will build this parser. "
	^ self messageExpression! !

!P4SmalltalkGrammar methodsFor: 'expression' stamp: 'ToonVerwaest 3/25/2010 12:44'!
initializePrimary
	self expression.	" self expression will initialize primary. "
	^ self primary! !

!P4SmalltalkGrammar methodsFor: 'expression' stamp: 'ToonVerwaest 8/18/2010 12:00'!
initializeUnaryExpression
	^ PEGMultiParser
		named: 'UNARY-EXPRESSION'
		parsing: self primary & self unarySelector plus! !

!P4SmalltalkGrammar methodsFor: 'expression' stamp: 'ToonVerwaest 8/18/2010 12:00'!
initializeUnaryMessageExpression
	^ PEGParser
		named: 'UNARY-MESSAGE-EXPRESSION'
		parsing: self unarySelector! !

!P4SmalltalkGrammar methodsFor: 'expression' stamp: 'ToonVerwaest 8/18/2010 12:01'!
initializeUnaryObjectDescription
	^ (PEGMultiParser
		named: 'UNARY-OBJECT-DESCRIPTION'
		parsing: self primary & self unarySelector times) memo! !

!P4SmalltalkGrammar methodsFor: 'expression' stamp: 'ToonVerwaest 3/25/2010 12:44'!
injectBinaryObjectDescription
	^ self binaryObjectDescription <= (self binaryExpression | self unaryObjectDescription)! !

!P4SmalltalkGrammar methodsFor: 'expression' stamp: 'ToonVerwaest 9/30/2010 15:08'!
injectCascadedMessageExpression
	^ self cascadedMessageExpression
		<= (self messageExpression
			& (';' asParser
				& (self keywordMessageExpression
					| self binaryMessageExpression
					<= self unaryMessageExpression)) plus)! !

!P4SmalltalkGrammar methodsFor: 'expression' stamp: 'ToonVerwaest 8/18/2010 12:26'!
injectMessageExpression
	^ self messageExpression <= (self keywordExpression | self binaryExpression <= self unaryExpression)! !

!P4SmalltalkGrammar methodsFor: 'expression' stamp: 'ToonVerwaest 8/18/2010 12:27'!
injectPrimary 
	^ self primary <= (self primaryVariable | self literal <= self block <= self scopedExpression <= self braceExpression)! !

!P4SmalltalkGrammar methodsFor: 'expression' stamp: 'ToonVerwaest 7/30/2010 23:15'!
preStoreBinaryObjectDescription
	^ parsers at: #binaryObjectDescription ifAbsentPut: [ (PEGParser named: 'BINARY-OBJECT-DESCRIPTION') memo ]! !

!P4SmalltalkGrammar methodsFor: 'expression' stamp: 'CamilloBruni 6/23/2010 19:50'!
preStoreBracketIndexExpression
	^ parsers at: #bracketIndexExpression ifAbsentPut: [ PEGParser named: 'BRACKET-INDEX-EXPRESSION' ]! !

!P4SmalltalkGrammar methodsFor: 'expression' stamp: 'ToonVerwaest 6/25/2010 19:22'!
preStoreCascadedMessageExpression
	^ parsers at: #cascadedMessageExpression ifAbsentPut: [ PEGMultiParser named: 'CASCADED-MESSAGE-EXPRESSION' ]! !

!P4SmalltalkGrammar methodsFor: 'expression' stamp: 'ToonVerwaest 7/30/2010 23:16'!
preStoreMessageExpression
	^ parsers at: #messageExpression ifAbsentPut: [ (PEGParser named: 'MESSAGE-EXPRESSION') memo ]! !

!P4SmalltalkGrammar methodsFor: 'expression' stamp: 'ToonVerwaest 7/30/2010 23:16'!
preStorePrimary
	^ parsers at: #primary ifAbsentPut: [ (PEGParser named: 'PRIMARY') memo ]! !

!P4SmalltalkGrammar methodsFor: 'selector' stamp: 'ToonVerwaest 8/18/2010 11:37'!
initializeBinaryMessageDefinition
	^ PEGMultiParser
		named: 'BINARY-ARGUMENT'
		parsing: self binarySelector & self parameterName! !

!P4SmalltalkGrammar methodsFor: 'selector' stamp: 'ToonVerwaest 9/30/2010 15:08'!
initializeBinarySelector
	^ PEGMultiParser
		named: 'BINARY-SELECTOR'
		parsing: (self specialCharacter | '-' asParser consume)
					&& self specialCharacter strongTimes
					| ('|' asParser consume)! !

!P4SmalltalkGrammar methodsFor: 'selector' stamp: 'ToonVerwaest 6/7/2011 16:02'!
initializeKeyword
	^ PEGMultiParser
		named: 'KEYWORD'
		parsing: self identifierBody && (':' asParser consume)! !

!P4SmalltalkGrammar methodsFor: 'selector' stamp: 'ToonVerwaest 8/18/2010 12:21'!
initializeMessagePattern
	^ PEGParser
		named: 'MESSAGE-PATTERN'
		parsing: self keywordsArguments | self binaryMessageDefinition <= self unaryMessageDefinition! !

!P4SmalltalkGrammar methodsFor: 'selector' stamp: 'ToonVerwaest 8/18/2010 12:00'!
initializeUnaryMessageDefinition
	^ PEGParser
		named: 'UNARY-MESSAGE-DEFINITION'
		parsing: self unarySelector! !

!P4SmalltalkGrammar methodsFor: 'selector' stamp: 'ToonVerwaest 9/30/2010 15:08'!
initializeUnarySelector
	^ PEGParser
		named: 'UNARY-SELECTOR'
		parsing: self identifier && ':' asParser not! !

!P4SmalltalkGrammar methodsFor: 'block' stamp: 'ToonVerwaest 9/30/2010 15:08'!
initializeBlock
	^ PEGMultiParser
		named: 'BLOCK'
		parsing: '[' asParser
				& (((self blockArguments & self bar) optional
					& self temporaries optional
					<& self statements
					<& ']') | (self blockArguments optional & ']'))! !

!P4SmalltalkGrammar methodsFor: 'block' stamp: 'ToonVerwaest 9/30/2010 15:08'!
initializeBlockArguments
	^ PEGMultiParser
		named: 'BLOCK-ARGUMENTS'
		parsing: (':' asParser & self identifier) plus! !

!P4SmalltalkGrammar methodsFor: 'basic-block' stamp: 'ToonVerwaest 9/30/2010 15:08'!
initializeBraceExpression
	^ PEGParser
		named: 'BRACE-EXPRESSION'
		parsing: '{' asParser
					& self statements
					<& '}'! !

!P4SmalltalkGrammar methodsFor: 'basic-block' stamp: 'ToonVerwaest 7/31/2010 10:17'!
initializeFinalExpression
	^ self expression! !

!P4SmalltalkGrammar methodsFor: 'basic-block' stamp: 'ToonVerwaest 9/30/2010 15:08'!
initializeReturn
	^ PEGParser
		named: 'RETURN'
		parsing: '^' asParser & self expression <& '.' asParser optional omit! !

!P4SmalltalkGrammar methodsFor: 'basic-block' stamp: 'ToonVerwaest 9/30/2010 15:08'!
initializeScopedExpression
	^ PEGParser
		named: 'SCOPED-EXPRESSION'
		parsing: '(' asParser & self expression <& ')'! !

!P4SmalltalkGrammar methodsFor: 'basic-block' stamp: 'ToonVerwaest 8/18/2010 11:53'!
initializeStatements
	^ PEGMultiParser
		named: 'STATEMENTS'
		parsing: self subExpression times & (self return | self expression) optional! !

!P4SmalltalkGrammar methodsFor: 'basic-block' stamp: 'CamilloBruni 8/27/2010 20:59'!
initializeSubExpression
	^ self expression & '.' | '.'! !

!P4SmalltalkGrammar methodsFor: 'basic-block' stamp: 'ToonVerwaest 8/18/2010 12:24'!
initializeTemporaries
	^ PEGMultiParser
		named: 'TEMPORARIES'
		parsing: self bar & self variableName times <& self bar! !

!P4SmalltalkGrammar methodsFor: 'variable' stamp: 'ToonVerwaest 8/18/2010 11:41'!
initializeCapitalIdentifier
	^ PEGMultiParser
		named: 'CAPITAL-IDENTIFIER'
		parsing: self uppercase && (self letter | self decimalDigit) strongTimes! !

!P4SmalltalkGrammar methodsFor: 'variable' stamp: 'ToonVerwaest 8/18/2010 11:45'!
initializeIdentifier
	^ PEGMultiParser
		named: 'IDENTIFIER'
		parsing: self identifierBody! !

!P4SmalltalkGrammar methodsFor: 'variable' stamp: 'ToonVerwaest 9/8/2010 11:53'!
initializeIdentifierBody
	^ self letter &&
		(self lowercase | self uppercase
		<= self decimalDigit
		<= '!!?' asPEGChoice) strongTimes! !

!P4SmalltalkGrammar methodsFor: 'variable' stamp: 'ToonVerwaest 3/25/2010 12:44'!
initializeParameterName
	^ self identifier! !

!P4SmalltalkGrammar methodsFor: 'variable' stamp: 'ToonVerwaest 9/30/2010 15:08'!
initializePrimaryVariable
	^ PEGMultiParser
		named: 'PRIMARY-VARIABLE'
		parsing: self identifier && ('.' asParser && self identifier) strongTimes! !

!P4SmalltalkGrammar methodsFor: 'variable' stamp: 'ToonVerwaest 8/18/2010 12:02'!
initializeVariableName
	^ PEGParser
		named: 'VARIABLE-NAME'
		parsing: self identifier! !

!P4SmalltalkGrammar methodsFor: 'separator' stamp: 'ToonVerwaest 9/30/2010 15:08'!
initializeCommentFormat
	| commentBorder |
	commentBorder := '"' asParser.
	^ commentBorder
		&& commentBorder not consume strongTimes
		<& commentBorder! !

!P4SmalltalkGrammar methodsFor: 'separator' stamp: 'ToonVerwaest 8/18/2010 13:35'!
initializeSeparator
	" has to be strongPlus since plus would match separator in between -> infinite recursion. "

	^ (super initializeSeparator | self commentFormat) strongTimes omit! !

!P4SmalltalkGrammar methodsFor: 'method' stamp: 'ToonVerwaest 8/18/2010 11:49'!
initializeMethod
	^ (PEGMultiParser
		named: 'METHOD'
		parsing: (self separator
			& self messagePattern
			<& self annotations
			<& self temporaries optional
			<& self statements
			<& self separator) end)
		separator: self separator	" Allow comment/whitespace at the end of a method. "! !

!P4SmalltalkGrammar methodsFor: 'parsing' stamp: 'ToonVerwaest 8/18/2010 13:34'!
parseMethod: method
	^ self match: method to: self method! !

!P4SmalltalkGrammar methodsFor: 'parsing' stamp: 'ToonVerwaest 8/18/2010 13:50'!
parseStatements: statements
	^ self match: statements to: self statements end! !

!P4SmalltalkGrammar class methodsFor: 'as yet unclassified' stamp: 'ToonVerwaest 5/16/2011 14:05'!
benchmark: aParser
	"self benchmark: PPSmalltalkGrammar new"
	"self benchmark: PPSmalltalkParser new"
	"self benchmark: RBParser '487243 characters/sec'"
	"self benchmark: SCParser new"
	<ignoreForCoverage>
	<preventExport>
	| sources |
	sources := OrderedCollection new.
	P4Object withAllSubclassesDo: [ :class |	class selectors do: [ :selector |	sources add: (class sourceCodeAt: selector) ] ].
	^ self benchmark: aParser sources: sources asArray! !

!P4SmalltalkGrammar class methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 8/9/2010 11:38'!
benchmark: aParser sources: aCollection
	<preventExport>
	<ignoreForCoverage>
	| start count end |
	start := Time millisecondClockValue.
	end := start + 10000.
	count := 0.
	[  aCollection do: [ :each | aParser parseMethod: each ].
	count := count + 1.
	Time millisecondClockValue < end ] whileTrue.
	end := Time millisecondClockValue.
	^ (1000 * count * (aCollection detectSum: [ :each | each size ]) 	/ (end - start)) asInteger asString , ' characters/sec'! !

!P4SmalltalkGrammar class methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 5/5/2011 16:25'!
instance
	"instance := nil"
	instance ifNil: [ instance := super new ].
	^ instance! !

!P4SmalltalkParser methodsFor: 'convenience' stamp: 'ToonVerwaest 9/6/2010 16:07'!
createReference: path
	| name |
	path size = 1 ifTrue: [ name := path first.
		name = #'self' ifTrue: [ ^ ASTSelf new ].
		name = #'super' ifTrue: [ ^ ASTSuper new ].
		^ ASTVariable new name: name ].
	^ ASTPath new path: path! !

!P4SmalltalkParser methodsFor: 'convenience' stamp: 'ToonVerwaest 8/18/2010 11:29'!
createVariable: variable
	^ ASTVariable new name: variable! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ewe 8/23/2010 12:03'!
initialize
	super initialize.
	stream := WriteStream on: (String new: 1024).! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 8/19/2010 11:59'!
initializeAnnotations
	^ super initializeAnnotations
		semantics: [ :result | result asArray ]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 8/18/2010 15:27'!
initializeArray
	^ super initializeArray
		semantics: [ :result |
			ASTArray new literals: result asArray ]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 8/19/2010 12:00'!
initializeAssignmentExpressions
	^ super initializeAssignmentExpressions
		semantics: [ :result | result asArray ]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 9/7/2010 15:31'!
initializeBinaryExpression
	^ super initializeBinaryExpression
		semantics: [ :parts | |result|
			result := parts first.
			2 to: parts size by: 2 do: [ :i |
				result := (ASTBinaryExpression new)
					receiver: result;
					selector: (parts at: i);
					argument: (parts at: i + 1). ].
				result ]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 9/7/2010 15:11'!
initializeBinaryMessageDefinition
	^ super initializeBinaryMessageDefinition
		semantics: [ :result | 
			(ASTBinaryMessageDefinition new)
				selector: result first;
				parameter: (self createVariable: (result at: 2)) ]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 9/7/2010 15:12'!
initializeBinaryMessageExpression
	^ super initializeBinaryMessageExpression 
		semantics: [ :parts | 
			(ASTBinaryExpression new)
				selector: parts first;
				argument: (parts at: 2) ]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 9/7/2010 15:39'!
initializeBinarySelector
	^ super initializeBinarySelector
		semantics: [ :result | result asSymbol ]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 8/25/2010 14:26'!
initializeBlock
	^ super initializeBlock
		semantics: [ :result |
			result size = 1
				ifTrue: [
					result add: PEGFailedOptionalResult.
					result add: OrderedCollection new ].
			(ASTBlock new)
				parameters: (result first resultIfFailed: [ Array new ]);
				temporaries: ((result at: 2) resultIfFailed: [ Array new ]);
				statements: (result at: 3) ]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 8/18/2010 11:40'!
initializeBlockArguments
	^ super initializeBlockArguments
		semantics: [ :result |
			result collect: [ :variable | self createVariable: variable ]]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 8/18/2010 20:10'!
initializeBraceExpression
	^ super initializeBraceExpression
		semantics: [ :result |
			ASTBraceExpression new
				expressions: result ]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 9/7/2010 15:48'!
initializeBracketIndexExpression
	| optionalAssignment isAssignment keywords arguments |
	^ super initializeBracketIndexExpression
		semantics: [ :parts | 
			optionalAssignment :=  parts second.
			isAssignment := optionalAssignment class == PEGSucceededOptionalResult.
			keywords := isAssignment ifFalse: [ Array with: #at: ] ifTrue: [ Array with: #at: with: #put:].
			arguments := isAssignment ifFalse: [ Array with: parts first] ifTrue: [ Array with: parts first with: optionalAssignment result].
			(ASTMessageExpression new)
				keywords: keywords;
				arguments: arguments ]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 8/18/2010 11:41'!
initializeCapitalIdentifier
	^ super initializeCapitalIdentifier
		semantics: [ :result | result asString ]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 8/18/2010 11:42'!
initializeCharacterConstant
	^ super initializeCharacterConstant
		semantics: [ :char | ASTCharacter new char: char ]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 8/18/2010 11:43'!
initializeExpression
	| vars expression |
	^ super initializeExpression
		semantics: [ :result | 
			vars := result first.
			expression := result at: 2.
			vars ifMatched: [ :variables |
				variables reverseDo: [ :variable | 
					expression := (ASTAssignmentExpression new)
						expression: expression;
						variable: variable ] ].
			expression ]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 8/30/2010 12:11'!
initializeFloat
	^ super initializeFloat
		semantics: [ :result | 
			ASTFloat new
				high: result removeFirst;
				low: result asString ].! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 9/30/2010 16:22'!
initializeIdentifier
	^ super initializeIdentifier
		semantics: [ :result | result asString ]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 8/20/2010 00:01'!
initializeKeyword
	^ super initializeKeyword
		semantics: [ :result | result asString ]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 9/7/2010 15:28'!
initializeKeywordAnnotation
	| halfsize keywords arguments |
	^ super initializeKeywordAnnotation
		semantics: [ :parts |
			halfsize := parts size // 2.
			keywords := Array new: halfsize.
			arguments := Array new: halfsize.
			1 to: halfsize do: [ :i | 
				keywords at: i put: (parts at: i * 2 - 1).
				arguments at: i put: (parts at: i * 2) ].
			(ASTKeywordAnnotation new)
				keywords: keywords;
				arguments: arguments ]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 8/18/2010 11:47'!
initializeKeywordExpression
	^ super initializeKeywordExpression
		semantics: [ :parts | (parts at: 2) receiver: parts first ]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 9/7/2010 15:37'!
initializeKeywordMessageExpression
	| halfsize keywords arguments |
	^ super initializeKeywordMessageExpression
		semantics: [ :parts | 
			halfsize := parts size // 2.
			keywords := Array new: halfsize.
			arguments := Array new: halfsize.
			1 to: halfsize do: [ :i |
				keywords at: i put: (parts at: i * 2 - 1).
				arguments at: i put: (parts at: i * 2) ].
			(ASTMessageExpression new)
				keywords: keywords;
				arguments: arguments ]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 8/18/2010 11:48'!
initializeKeywordsArguments
	| halfsize keywords parameters |
	^ super initializeKeywordsArguments
		semantics: [ :parts | 
			halfsize := parts size // 2.
			keywords := Array new: halfsize.
			parameters := Array new: halfsize.
			1 to: halfsize do: [ :i |
				keywords at: i put: (parts at: i*2-1).
				parameters at: i put: (self createVariable: (parts at: i*2)) ].
			(ASTKeywordMessageDefinition new)
				keywords: keywords;
				parameters: parameters ]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 8/18/2010 11:50'!
initializeMethod
	^ super initializeMethod
		semantics: [ :parts | 
			(ASTMethod new)
				message: parts first;
				annotations: (parts at: 2);
				temporaries: ((parts at: 3) resultIfFailed: [ Array new ]);
				statements: (parts at: 4)]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 8/18/2010 11:50'!
initializeNumber
	^ super initializeNumber
		semantics: [ :result | 
			(ASTNumber new)
				number: result;
				base: '10' ]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 8/18/2010 11:51'!
initializeNumberFormat
	^ super initializeNumberFormat
		semantics: [ :result | result asString ]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 8/18/2010 11:51'!
initializePrimaryVariable
	^ super initializePrimaryVariable
		semantics: [ :result | self createReference: result asArray ]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 8/18/2010 11:52'!
initializeRadix
	^ super initializeRadix
		semantics: [ :result | 
			(ASTNumber new)
				base: result first;
				number: result second ]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 8/18/2010 11:52'!
initializeReturn
	^ super initializeReturn
		semantics: [ :expression | ASTReturnExpression new expression: expression ]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 8/18/2010 11:52'!
initializeScopedExpression
	^ super initializeScopedExpression
		semantics: [ :result | 
			result scoped.
			result ]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 8/18/2010 20:10'!
initializeStatements
	^ super initializeStatements
		semantics: [ :result | 
			result removeLast ifMatched: [ :exp | result add: exp ].
			result asOrderedCollection ]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 8/18/2010 11:54'!
initializeString
	^ super initializeString
		semantics: [ :result |
			result size = 0
				ifTrue: [ '' ]
				ifFalse: [
					result inject: (stream with: (result removeFirst)) into: [ :s :i | s << '''' << i ].
					stream contents ] ]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 8/18/2010 11:57'!
initializeStringConstant
	^ super initializeStringConstant
		semantics: [ :result | ASTString new string: result ]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 8/18/2010 11:56'!
initializeStringSegment
	^ super initializeStringSegment
		semantics: [ :result | result asString ]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 9/7/2010 15:23'!
initializeSymbolConstant
	^ super initializeSymbolConstant
		semantics: [ :result | ASTSymbol named: result ]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 9/7/2010 15:24'!
initializeSymbolInArray
	^ super initializeSymbolInArray
		semantics: [ :symbol | ASTSymbol named: symbol ]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 8/18/2010 11:59'!
initializeSymbolKeywords
	^ super initializeSymbolKeywords
		semantics: [ :result |
			result inject: (stream on: '') into: [ :c :e | c << e ].
			stream contents ]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 8/19/2010 12:01'!
initializeTemporaries 
	^ super initializeTemporaries
		semantics: [ :result | result asArray ]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 8/18/2010 12:00'!
initializeUnaryAnnotation
	^ super initializeUnaryAnnotation 
		semantics: [ :selector | ASTUnaryAnnotation new selector: selector ]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 8/18/2010 12:00'!
initializeUnaryExpression
	^ super initializeUnaryExpression
		semantics: [ :parts | |result|
			result := parts first.
			2 to: parts size do: [ :i | 
					result := (ASTUnaryExpression new)
						receiver: result;
						selector: (parts at: i) ].
			result ]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 8/18/2010 12:00'!
initializeUnaryMessageDefinition
	^ super initializeUnaryMessageDefinition 
		semantics: [ :selector | ASTUnaryMessageDefinition new selector: selector ]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 8/18/2010 12:00'!
initializeUnaryMessageExpression 
	^ super initializeUnaryMessageExpression 
		semantics: [ :selector | ASTUnaryExpression new selector: selector ]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 8/18/2010 12:01'!
initializeUnaryObjectDescription
	^ super initializeUnaryObjectDescription 
		semantics: [ :parts | |result|
			result := parts first.
			2 to: parts size do: [ :i | 
					result := (ASTUnaryExpression new)
						receiver: result;
						selector: (parts at: i) ].
			result ]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 9/7/2010 15:35'!
initializeUnarySelector
	^ super initializeUnarySelector
		semantics: [ :selector | selector ]! !

!P4SmalltalkParser methodsFor: 'initialization' stamp: 'ToonVerwaest 8/18/2010 12:03'!
initializeVariableName
	^ super initializeVariableName
		semantics: [ :result | self createVariable: result ]! !

!P4SmalltalkParser methodsFor: 'expression' stamp: 'ToonVerwaest 8/18/2010 12:06'!
preStoreCascadedMessageExpression
	^ super preStoreCascadedMessageExpression
		semantics: [ :parts | 
				(ASTMessageCascadeExpression new)
					receiver: parts first receiver;
					cascades: parts asArray ]! !

!P4FakeDictionary methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 1/8/2012 15:05'!
at: string
	^ P4FakeMethod new! !

!P4FakeMethod methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 1/8/2012 16:54'!
perform: msg on: receiver with: args
	| i |
	i := args at: 1.
	
	(i = 0) ifTrue: [ 
		'done' print. 
		^ receiver ].
	
	'arg is' print.
	i print.
	^ receiver blabla: (i-1).! !

!P4LogBehavior methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 1/8/2012 15:10'!
lookup: selector for: receiver
	^ P4LogMethod wrap: (realBehavior lookup: selector for: receiver)! !

!P4LogBehavior methodsFor: 'accessing' stamp: 'OliFlueckiger 1/8/2012 15:10'!
realBehavior
	^ realBehavior! !

!P4LogBehavior methodsFor: 'accessing' stamp: 'OliFlueckiger 1/8/2012 15:10'!
realBehavior: anObject
	realBehavior := anObject! !

!P4LogBehavior class methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 1/8/2012 15:14'!
install: object
	| wrapper |
	wrapper := self new realBehavior: object behavior.
	object behavior: wrapper.  ! !

!P4LogMethod methodsFor: 'accessing' stamp: 'OliFlueckiger 1/8/2012 15:18'!
perform: selector on: receiver with: arguments
	selector print.
	^ realMethod perform: selector on: receiver with: arguments! !

!P4LogMethod methodsFor: 'accessing' stamp: 'OliFlueckiger 1/8/2012 15:11'!
realMethod
	^ realMethod! !

!P4LogMethod methodsFor: 'accessing' stamp: 'OliFlueckiger 1/8/2012 15:11'!
realMethod: anObject
	realMethod := anObject! !

!P4LogMethod class methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 1/8/2012 15:12'!
wrap: realMethod
	^ self new realMethod: realMethod.! !

!P4Presentation methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 1/8/2012 15:19'!
bla! !

!P4Presentation methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 1/8/2012 15:16'!
lies! !

!P4Presentation methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 1/8/2012 15:16'!
never! !

!P4Presentation methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 1/8/2012 15:16'!
pinocchio! !

!P4Presentation methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 1/9/2012 01:07'!
run
	self class methodDictionary: 1.  .
	self bla.
	'-- done' print.! !

!P4Presentation methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 1/8/2012 15:18'!
run2
	P4LogBehavior install: self.
	self pinocchio; never; lies.
	'-- done' print.! !

!P4BinaryWriteStream methodsFor: 'streaming' stamp: 'ToonVerwaest 6/24/2011 18:14'!
<< data
	data putOn: self! !

!P4BinaryWriteStream methodsFor: 'aligning' stamp: 'CamilloBruni 7/28/2011 21:09'!
alignBy: bytes
	self alignBy: bytes with: 16r00 ! !

!P4BinaryWriteStream methodsFor: 'aligning' stamp: 'OliFlueckiger 7/7/2011 16:12'!
alignBy: bytes with: aByte
	stream position \\ bytes = 0 ifTrue: [ ^ self ].
	(((stream position // bytes) + 1) * bytes - stream position) timesRepeat: [ self nextPut: aByte ]! !

!P4BinaryWriteStream methodsFor: 'aligning' stamp: 'OliFlueckiger 7/7/2011 16:05'!
alignByPointer
	self alignBy: self pointerSize! !

!P4BinaryWriteStream methodsFor: 'aligning' stamp: 'CamilloBruni 7/28/2011 21:11'!
fillTo: position with: aByte
	( position - self position) timesRepeat: [ self nextPut: aByte ]! !

!P4BinaryWriteStream methodsFor: 'accessing' stamp: 'ToonVerwaest 6/24/2011 18:11'!
back
	^ stream back! !

!P4BinaryWriteStream methodsFor: 'accessing' stamp: 'ToonVerwaest 7/18/2011 20:01'!
contents
	^ stream contents! !

!P4BinaryWriteStream methodsFor: 'accessing' stamp: 'ToonVerwaest 6/24/2011 18:10'!
next
	^ stream next! !

!P4BinaryWriteStream methodsFor: 'accessing' stamp: 'ToonVerwaest 6/24/2011 18:10'!
position
	^ stream position! !

!P4BinaryWriteStream methodsFor: 'accessing' stamp: 'ToonVerwaest 6/24/2011 18:10'!
position: aPosition
	^ stream position: aPosition! !

!P4BinaryWriteStream methodsFor: 'accessing' stamp: 'ToonVerwaest 7/18/2011 19:55'!
reset
	stream resetToStart! !

!P4BinaryWriteStream methodsFor: 'accessing' stamp: 'ToonVerwaest 6/24/2011 18:19'!
size
	^ stream size! !

!P4BinaryWriteStream methodsFor: 'accessing' stamp: 'ToonVerwaest 7/18/2011 20:04'!
stream: aStream
	stream := aStream! !

!P4BinaryWriteStream methodsFor: 'testing' stamp: 'ToonVerwaest 6/24/2011 18:17'!
isBinary
	^ true! !

!P4BinaryWriteStream methodsFor: 'writing' stamp: 'OliFlueckiger 7/22/2011 13:50'!
nextPut: aValue
	| value |
	value := aValue asInteger.
	(value < 0)  ifTrue: [ value := (value + 256) ].
	(value >= 0 and: [ value < 256]) ifFalse: [ self error: 'not a byte you dork'].
	stream nextPut: value.  ! !

!P4BinaryWriteStream methodsFor: 'writing' stamp: 'OliFlueckiger 7/22/2011 12:13'!
nextPutAll: aCollection
	(aCollection class == ByteArray)
		ifTrue: [ ^ stream nextPutAll: aCollection ].
	aCollection do: [ :c | self nextPut: c ]! !

!P4BinaryWriteStream methodsFor: 'printing' stamp: 'ToonVerwaest 6/24/2011 18:08'!
printOn: aStream
	|collection|
	collection := stream contents.
	1 to: collection size do: [ :index |
		aStream << '\x'.
		aStream << ((collection at: index) asInteger printStringBase: 16) ]! !

!P4BinaryWriteStream methodsFor: 'printing' stamp: 'ToonVerwaest 7/18/2011 19:54'!
putOn: aStream
	aStream nextPutAll: self contents! !

!P4BinaryWriteStream class methodsFor: 'instance creation' stamp: 'ToonVerwaest 7/18/2011 18:54'!
new
	^ super new stream: (ReadWriteStream on: (ByteArray new: 1024)).! !

!P4LittleEndianWriteStream methodsFor: 'streaming' stamp: 'OliFlueckiger 7/22/2011 12:08'!
halfWordPut: aValue
	| todo |
	todo := aValue.
	1 to: wordSize // 2 do: [ :i |
		self nextPut: (todo bitAnd: 16rFF).
		todo := todo bitShift: -8 ]! !

!P4LittleEndianWriteStream methodsFor: 'streaming' stamp: 'OliFlueckiger 7/22/2011 12:07'!
pointerPut: aValue
	| todo |
	todo := aValue.
	1 to: pointerSize do: [ :i |
		self nextPut: (todo bitAnd: 16rFF).
		todo := todo bitShift: -8 ]! !

!P4LittleEndianWriteStream methodsFor: 'streaming' stamp: 'OliFlueckiger 8/1/2011 13:37'!
put: aValue bytes: n
	| todo |
	todo := aValue.
	1 to: n do: [ :i |
		self nextPut: (todo bitAnd: 16rFF).
		todo := todo bitShift: -8 ]! !

!P4LittleEndianWriteStream methodsFor: 'streaming' stamp: 'OliFlueckiger 8/1/2011 13:42'!
putUnsigned: aValue bytes: n
	| todo |
	(aValue asInteger < 0) ifTrue: [ self error: 'not an unsigned integer' ].
	todo := aValue.
	1 to: n do: [ :i |
		self nextPut: (todo bitAnd: 16rFF).
		todo := todo bitShift: -8 ]! !

!P4LittleEndianWriteStream methodsFor: 'streaming' stamp: 'OliFlueckiger 7/22/2011 12:08'!
wordPut: aValue
	| todo |
	todo := aValue.
	1 to: wordSize do: [ :i |
		self nextPut: (todo bitAnd: 16rFF).
		todo := todo bitShift: -8 ]! !

!P4LittleEndianWriteStream methodsFor: 'accessing' stamp: 'ToonVerwaest 5/10/2011 23:11'!
pointerSize
	^ pointerSize! !

!P4LittleEndianWriteStream methodsFor: 'accessing' stamp: 'ToonVerwaest 7/18/2011 19:35'!
pointerSize: aPointerSize
	pointerSize := aPointerSize! !

!P4LittleEndianWriteStream methodsFor: 'accessing' stamp: 'ToonVerwaest 5/10/2011 23:29'!
wordSize
	^ wordSize! !

!P4LittleEndianWriteStream methodsFor: 'accessing' stamp: 'ToonVerwaest 7/18/2011 19:35'!
wordSize: aWordSize
	wordSize := aWordSize.! !

!P4StaticClassInstaller methodsFor: 'accessing' stamp: 'OliFlueckiger 12/7/2011 18:28'!
compileClass: compiledClass
	self flag: 'clean up pathOfClass stuff'.
	compiledClass inPharo methodDictionary do: [ :aMethod | 
		methodInstaller installMethod: aMethod getSourceFromFile on: compiledClass ].
	compiledClass pclass inPharo methodDictionary do: [ :aMethod | 
		methodInstaller installMethod: aMethod getSourceFromFile on: compiledClass pclass ].
	
	dumper 
		dump: compiledClass; 
		dump: compiledClass theBehavior;
		dump: compiledClass pclass; 
		dump: compiledClass pclass theBehavior;
		into: (self pathOfClass: compiledClass inPharo).! !

!P4StaticClassInstaller methodsFor: 'accessing' stamp: 'OliFlueckiger 12/7/2011 20:13'!
compileClasses: classes
	|toDump|
	P4RootPackage flushPackages.
	dumper dumpCoreObjects.

	dumper addPharoClasses: classes.
	dumper addPharoClasses:
	{
		P4SymbolTable.
		P4Symbol.
		P4RootPackage.
		P4Package.
		P4ClassReference.
		P4MethodDictionary.
		P4Method.
		P4Metaclass.
		P4True.
		P4False.
		P4UndefinedObject.
		P4SmallInteger.
		P4Closure.
		P4SetBucket.
		P4SmalltalkBehavior.
		P4String.
		P4Array.
		P4RemoteArray.
		P4DoesNotUnderstand.
		P4Object.
	}.

	[ dumper todo isEmpty ] whileFalse: [
		toDump := dumper todo removeFirst.
		self compileClass: toDump ].
	
	dumper dumpPackages.
	dumper dumpSymbolTable.! !

!P4StaticClassInstaller methodsFor: 'accessing' stamp: 'OliFlueckiger 7/7/2011 17:45'!
initialize 
	super initialize.
	methodInstaller := P4StaticMethodInstaller new.! !

!P4StaticClassInstaller methodsFor: 'accessing' stamp: 'OliFlueckiger 7/5/2011 15:56'!
loadClass: aClass
	<preventExport>
	^ P4Package loadClass: aClass! !

!P4StaticClassInstaller methodsFor: 'accessing' stamp: 'OliFlueckiger 6/23/2011 17:16'!
pathOfClass: aClass
	<preventExport>
	| package |
	package := P4Package packageOfClass: aClass.
	package ensureDirectory.
	^ package relativePathNameFor: aClass pname! !

!P4StaticClassInstaller methodsFor: 'accessing' stamp: 'OliFlueckiger 7/8/2011 10:45'!
processor: aProcessor os: anOs
	dumper := P4BinaryOut new processor: aProcessor os: anOs.
	methodInstaller processor: aProcessor.! !

!P4MethodInstaller methodsFor: 'accessing' stamp: 'ToonVerwaest 6/25/2011 14:23'!
processor: aProcessor
	compiler := self newCompiler.
	aProcessor installer: self.
	compiler processor: aProcessor.! !

!P4StaticMethodInstaller methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/8/2011 10:49'!
flush
	globals := P4IdentityDictionary new.
	references := P4IdentityDictionary new.! !

!P4StaticMethodInstaller methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/15/2011 17:07'!
global: aGlobal at: position
	globals at: position put: aGlobal! !

!P4StaticMethodInstaller methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/14/2011 19:03'!
installFunction: functionName at: position
	functionName isSymbol ifFalse: [ self error: 'not a function call' ].
	references at: position put: functionName! !

!P4StaticMethodInstaller methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/20/2011 17:58'!
installMethod: aMethodSource on: aClass
	self flush.
	compiler host: aClass.
	(compiler compileMethod: aMethodSource ) ifNotNilDo: [ :method |
		method usedGlobals: globals.
		method usedReferences: references.
		aClass installMethod: method.]! !

!P4StaticMethodInstaller methodsFor: 'as yet unclassified' stamp: 'ToonVerwaest 6/25/2011 14:21'!
newCompiler
	^ P4SmalltalkKernelCompiler new! !

!P4ObjectStream methodsFor: 'accessing' stamp: 'OliFlueckiger 6/8/2011 18:32'!
<< anObject
	^ anObject putObjectOn: self! !

!P4ObjectStream methodsFor: 'accessing' stamp: 'OliFlueckiger 6/8/2011 15:04'!
do: aBlock
	instructions do: [ :instr |
		instr do: aBlock ].! !

!P4ObjectStream methodsFor: 'accessing' stamp: 'OliFlueckiger 7/28/2011 12:08'!
firstElement
	self do: [ :instr |^ instr ]! !

!P4ObjectStream methodsFor: 'accessing' stamp: 'OliFlueckiger 6/8/2011 15:25'!
isEmpty 
	^ instructions isEmpty ! !

!P4ObjectStream methodsFor: 'accessing' stamp: 'OliFlueckiger 6/8/2011 15:53'!
lastElement
	self reverseDo: [ :instr | ^ instr ]! !

!P4ObjectStream methodsFor: 'accessing' stamp: 'OliFlueckiger 6/8/2011 15:15'!
nextPut: aTacIR
	(currentPosition == self) ifTrue: [ ^ instructions add: aTacIR ].
	^ currentPosition nextPut: aTacIR! !

!P4ObjectStream methodsFor: 'accessing' stamp: 'OliFlueckiger 6/8/2011 18:02'!
nextPutStream: aStream
	self newSubstream: aStream.
	^ currentPosition nextPut: aStream! !

!P4ObjectStream methodsFor: 'accessing' stamp: 'OliFlueckiger 6/8/2011 18:07'!
overridePosition: anInstruction
	| index |
	index := instructions indexOf: anInstruction ifAbsent: [
		self hasSubstreams 
			ifTrue: [  
				self doSubstreams: [ :stream |
					(stream overridePosition: anInstruction) ifNotNil: [ 
						currentPosition := stream. 
						^self ]]].
			^nil].
	currentPosition := self newSubstream..
	instructions at: index put: currentPosition.
	^ self.! !

!P4ObjectStream methodsFor: 'accessing' stamp: 'OliFlueckiger 6/8/2011 18:19'!
position: anInstruction
	^ (self overridePosition: anInstruction)
		ifNotNil: [ 
			self << anInstruction.
			^ self ]! !

!P4ObjectStream methodsFor: 'accessing' stamp: 'OliFlueckiger 6/8/2011 17:02'!
position: anInstruction ifAbsent: aBlock
	(self position: anInstruction) ifNil: aBlock! !

!P4ObjectStream methodsFor: 'accessing' stamp: 'OliFlueckiger 6/8/2011 18:27'!
positionAtBeginning
	currentPosition := instructions addFirst: self newSubstream.! !

!P4ObjectStream methodsFor: 'accessing' stamp: 'OliFlueckiger 6/8/2011 15:15'!
positionAtEnd
	currentPosition := self! !

!P4ObjectStream methodsFor: 'accessing' stamp: 'OliFlueckiger 6/8/2011 16:49'!
printOn: aStream
	self do: [ :instr | 
		aStream tab.
		instr printOn: aStream. ]! !

!P4ObjectStream methodsFor: 'accessing' stamp: 'OliFlueckiger 6/8/2011 18:32'!
putObjectOn: anInstructionStream
	^ anInstructionStream nextPutStream: self! !

!P4ObjectStream methodsFor: 'accessing' stamp: 'OliFlueckiger 6/8/2011 18:31'!
remove: anInstruction
	| index |
	index := instructions indexOf: anInstruction ifAbsent: [
		self hasSubstreams 
			ifTrue: [  
				self doSubstreams: [ :stream |
					(stream remove: anInstruction) ifNotNilDo: [ :instr | ^ instr ]]].
			^nil].
	instructions at: index put: P4EmptyStreamObject instance.
	^ anInstruction.! !

!P4ObjectStream methodsFor: 'accessing' stamp: 'OliFlueckiger 6/8/2011 15:59'!
reverseDo: aBlock
	instructions reverseDo: [ :instr |
		instr do: aBlock ].! !

!P4ObjectStream methodsFor: 'private' stamp: 'OliFlueckiger 6/8/2011 15:00'!
doSubstreams: aBlock
	^ substreams do: aBlock! !

!P4ObjectStream methodsFor: 'private' stamp: 'OliFlueckiger 6/8/2011 15:19'!
hasSubstreams
	^ substreams isEmpty not! !

!P4ObjectStream methodsFor: 'private' stamp: 'OliFlueckiger 6/8/2011 18:31'!
newSubstream
	^ self newSubstream: P4ObjectStream new.! !

!P4ObjectStream methodsFor: 'private' stamp: 'OliFlueckiger 6/8/2011 15:14'!
newSubstream: aStream
	^ substreams add: aStream ! !

!P4ObjectStream methodsFor: 'initialize-release' stamp: 'OliFlueckiger 6/8/2011 15:14'!
initialize 
	currentPosition := self.
	instructions := OrderedCollection new.
	substreams := OrderedCollection new.! !

!P4EmptyStreamObject methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/8/2011 18:31'!
do: aBlock! !

!P4EmptyStreamObject methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/8/2011 18:32'!
printOn: aStream! !

!P4EmptyStreamObject class methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/8/2011 16:57'!
instance
	^ instance ifNil: [ ^ instance := self new ]! !

!P4TACBasicBlock methodsFor: 'visitor accepting' stamp: 'OliFlueckiger 5/7/2011 14:22'!
accept: aVisitor
	^ aVisitor visitBasicBlock: self! !

!P4TACBasicBlock methodsFor: 'testing' stamp: 'ToonVerwaest 5/6/2011 19:55'!
atEnd
	^ false! !

!P4TACBasicBlock methodsFor: 'testing' stamp: 'OliFlueckiger 7/28/2011 12:09'!
firstElement 
	self isEmpty ifTrue: [ ^ nextBlock firstElement ].
	^ super firstElement! !

!P4TACBasicBlock methodsFor: 'accessing' stamp: 'OliFlueckiger 5/6/2011 11:43'!
nextBlock
	^ nextBlock! !

!P4TACBasicBlock methodsFor: 'accessing' stamp: 'OliFlueckiger 5/26/2011 14:39'!
nextBlock: aBlock
	nextBlock := aBlock.
	nextBlock number: number + 1.
	^aBlock ! !

!P4TACBasicBlock methodsFor: 'accessing' stamp: 'OliFlueckiger 5/6/2011 17:16'!
number
	^ number! !

!P4TACBasicBlock methodsFor: 'accessing' stamp: 'OliFlueckiger 5/6/2011 18:03'!
number: aNumber
	number := aNumber! !

!P4TACBasicBlock methodsFor: 'printing' stamp: 'OliFlueckiger 6/8/2011 16:49'!
printOn: stream
	stream << 'block ' << number << ':' << Character cr.
	super printOn: stream.  
	stream << Character cr.
	nextBlock printOn: stream.! !

!P4TACBasicBlock methodsFor: 'printing' stamp: 'OliFlueckiger 6/7/2011 15:16'!
printString
	^ 'basicBlock-', number asString ! !

!P4TACBasicBlock class methodsFor: 'instance creation' stamp: 'OliFlueckiger 5/26/2011 13:51'!
number: aNum
	^ self new number: aNum  ! !

!P4TACCallable methodsFor: 'accessing' stamp: 'OliFlueckiger 7/25/2011 15:46'!
argumentLoading
	^ argumentLoading! !

!P4TACCallable methodsFor: 'accessing' stamp: 'OliFlueckiger 7/25/2011 15:46'!
argumentLoading: anObject
	argumentLoading := anObject! !

!P4TACCallable methodsFor: 'accessing' stamp: 'OliFlueckiger 8/29/2011 12:48'!
basePointer 
	^ self outerScope basePointer! !

!P4TACCallable methodsFor: 'accessing' stamp: 'OliFlueckiger 9/8/2011 14:05'!
basePointerFor: asm2tac
	^ asm2tac visitVariable: P4TACBasePointerName instance! !

!P4TACCallable methodsFor: 'accessing' stamp: 'ToonVerwaest 6/14/2011 15:37'!
basicBlocksDo: aBlock
	| currentBlock |
	currentBlock := preamble.
	[ currentBlock atEnd ] whileFalse: [
		aBlock value: currentBlock.
		currentBlock := currentBlock nextBlock ]
	! !

!P4TACCallable methodsFor: 'accessing' stamp: 'OliFlueckiger 5/6/2011 11:44'!
entry
	^ entry! !

!P4TACCallable methodsFor: 'accessing' stamp: 'OliFlueckiger 5/5/2011 01:03'!
entry: anEntry
	entry := anEntry .! !

!P4TACCallable methodsFor: 'accessing' stamp: 'OliFlueckiger 8/29/2011 20:40'!
expungeUnusedLocals
	| names toRemove local |
	names := locals keys.
	names do: [ :name |
		local :=(locals at: name).
		local isUnused ifTrue: [ locals removeKey: name ] ].
	toRemove := Set new.
	temporaries do: [ :aTemp | aTemp isUnused ifTrue: [ toRemove add: aTemp ]].
	toRemove do: [ :aTemp | temporaries remove: aTemp ].! !

!P4TACCallable methodsFor: 'accessing' stamp: 'OliFlueckiger 8/5/2011 17:41'!
frameSize
    ^ frameSize + self stackAllignment! !

!P4TACCallable methodsFor: 'accessing' stamp: 'OliFlueckiger 5/5/2011 00:51'!
frameSize: aFrameSize
	frameSize := aFrameSize ! !

!P4TACCallable methodsFor: 'accessing' stamp: 'ToonVerwaest 5/27/2011 17:42'!
hasLocal: aVariable
	^ locals includes: aVariable     ! !

!P4TACCallable methodsFor: 'accessing' stamp: 'OliFlueckiger 7/28/2011 12:49'!
invokeBlock
	^ invokeBlock! !

!P4TACCallable methodsFor: 'accessing' stamp: 'OliFlueckiger 7/28/2011 12:49'!
invokeBlock: anObject
	invokeBlock := anObject! !

!P4TACCallable methodsFor: 'accessing' stamp: 'ToonVerwaest 5/26/2011 18:05'!
locals
	^ locals! !

!P4TACCallable methodsFor: 'accessing' stamp: 'OliFlueckiger 9/7/2011 14:42'!
popArguments
	^ popArguments! !

!P4TACCallable methodsFor: 'accessing' stamp: 'OliFlueckiger 9/7/2011 14:42'!
popArguments: anObject
	popArguments := anObject! !

!P4TACCallable methodsFor: 'accessing' stamp: 'ToonVerwaest 5/24/2011 18:39'!
postamble
	^ postamble! !

!P4TACCallable methodsFor: 'accessing' stamp: 'ToonVerwaest 5/24/2011 18:39'!
postamble: anObject
	postamble := anObject! !

!P4TACCallable methodsFor: 'accessing' stamp: 'OliFlueckiger 5/26/2011 14:50'!
preamble
	^ preamble! !

!P4TACCallable methodsFor: 'accessing' stamp: 'OliFlueckiger 5/26/2011 14:50'!
preamble: anObject
	preamble := anObject! !

!P4TACCallable methodsFor: 'accessing' stamp: 'OliFlueckiger 7/26/2011 17:18'!
primitiveCalling
	^ primitiveCalling! !

!P4TACCallable methodsFor: 'accessing' stamp: 'OliFlueckiger 7/26/2011 17:18'!
primitiveCalling: anObject
	^ primitiveCalling := anObject! !

!P4TACCallable methodsFor: 'accessing' stamp: 'OliFlueckiger 8/4/2011 18:04'!
registerPushing
	^ registerPushing! !

!P4TACCallable methodsFor: 'accessing' stamp: 'OliFlueckiger 8/4/2011 18:06'!
registerPushing: anObject
	^ registerPushing := anObject! !

!P4TACCallable methodsFor: 'accessing' stamp: 'ToonVerwaest 5/27/2011 18:20'!
remoteVariables
	^ remoteVariables! !

!P4TACCallable methodsFor: 'accessing' stamp: 'ToonVerwaest 5/27/2011 18:20'!
remoteVariables: anObject
	remoteVariables := anObject! !

!P4TACCallable methodsFor: 'accessing' stamp: 'OliFlueckiger 9/8/2011 14:05'!
returnTokenFor: asm2tac
	^ asm2tac visitVariable: P4TACReturnTokenName instance! !

!P4TACCallable methodsFor: 'accessing' stamp: 'OliFlueckiger 8/5/2011 17:43'!
stackAllignment
	| realSize |
	realSize := (usedRegisters + frameSize + 1).
	self hasNonLocalReturn ifTrue: [ realSize := realSize + 1 ].
	^ realSize bitAnd: 1! !

!P4TACCallable methodsFor: 'accessing' stamp: 'OliFlueckiger 6/9/2011 19:33'!
temps
	^ temporaries! !

!P4TACCallable methodsFor: 'accessing' stamp: 'OliFlueckiger 5/7/2011 13:44'!
usedRegisters
	^ usedRegisters! !

!P4TACCallable methodsFor: 'accessing' stamp: 'OliFlueckiger 5/7/2011 13:44'!
usedRegisters: anObject
	usedRegisters := anObject! !

!P4TACCallable methodsFor: 'initialize-release' stamp: 'ToonVerwaest 5/28/2011 15:13'!
initialize
	locals := IdentityDictionary new.
	temporaries := P4Set new.! !

!P4TACCallable methodsFor: 'testing' stamp: 'ToonVerwaest 5/27/2011 17:16'!
is: variable lifeAfter: line
	liveness at: variable ifPresent: [ :ival |
		^ ival end > line ].
	^ false.! !

!P4TACCallable methodsFor: 'visiting' stamp: 'ToonVerwaest 5/6/2011 20:04'!
setupFrame: aVisitor
	^ aVisitor setupStaticFrame: self! !

!P4TACClosure methodsFor: 'accessing' stamp: 'OliFlueckiger 5/26/2011 18:02'!
accept: visitor
	visitor visitClosure: self ! !

!P4TACClosure methodsFor: 'accessing' stamp: 'ToonVerwaest 5/24/2011 17:51'!
code
	^ code! !

!P4TACClosure methodsFor: 'accessing' stamp: 'ToonVerwaest 5/24/2011 17:51'!
code: anObject
	code := anObject! !

!P4TACClosure methodsFor: 'accessing' stamp: 'OliFlueckiger 8/29/2011 12:51'!
export: aVariable
	locals at: aVariable ifPresent: [ :var | ^ var ].
	self import: aVariable.
	^ locals at: aVariable ifAbsent: [ nil ]! !

!P4TACClosure methodsFor: 'accessing' stamp: 'OliFlueckiger 8/4/2011 11:53'!
hasNonLocalReturn 
	^ false! !

!P4TACClosure methodsFor: 'accessing' stamp: 'ToonVerwaest 7/18/2011 21:56'!
import: aVariable
	| tacVariable |
	tacVariable := outerScope export: aVariable.
	tacVariable ifNil: [ ^ tacVariable ].
	imports add: tacVariable.
	^ locals at: aVariable put: tacVariable asAlias.! !

!P4TACClosure methodsFor: 'accessing' stamp: 'ToonVerwaest 5/26/2011 18:16'!
imports
	^ imports! !

!P4TACClosure methodsFor: 'accessing' stamp: 'OliFlueckiger 8/1/2011 16:34'!
methodFrameSize
	^ outerScope methodFrameSize! !

!P4TACClosure methodsFor: 'accessing' stamp: 'OliFlueckiger 6/16/2011 13:58'!
methodObject 
	^ outerScope methodObject ! !

!P4TACClosure methodsFor: 'accessing' stamp: 'ToonVerwaest 5/24/2011 18:01'!
origin
	" ^ self "! !

!P4TACClosure methodsFor: 'accessing' stamp: 'ToonVerwaest 5/26/2011 17:48'!
outerScope
	^ outerScope! !

!P4TACClosure methodsFor: 'accessing' stamp: 'ToonVerwaest 5/26/2011 17:48'!
outerScope: anObject
	outerScope := anObject! !

!P4TACClosure methodsFor: 'initialize-release' stamp: 'ToonVerwaest 5/26/2011 18:22'!
initialize
	super initialize.
	imports := OrderedCollection new.! !

!P4TACClosure methodsFor: 'testing' stamp: 'ToonVerwaest 5/24/2011 17:56'!
isAssignment
	^ true! !

!P4TACClosure methodsFor: 'testing' stamp: 'ToonVerwaest 5/24/2011 17:59'!
isConstant
	^ true! !

!P4TACClosure methodsFor: 'testing' stamp: 'OliFlueckiger 6/7/2011 22:17'!
numOfArguments
	^ locals inject: 0 into: [ :size :var | var shouldBeRemote ifTrue: [ size ] ifFalse: [ size + 1 ]  ]! !

!P4TACMethod methodsFor: 'visitor accepting' stamp: 'OliFlueckiger 5/7/2011 14:22'!
accept: aVisitor
	^ aVisitor visitMethod: self! !

!P4TACMethod methodsFor: 'accessing' stamp: 'OliFlueckiger 8/4/2011 11:52'!
addClosure: aBlock
	aBlock code hasReturnExpression ifTrue: [ nonLocalReturn := true ].
	^ closures add: aBlock! !

!P4TACMethod methodsFor: 'accessing' stamp: 'OliFlueckiger 9/8/2011 14:05'!
basePointer
	^ self locals at: P4TACBasePointerName instance! !

!P4TACMethod methodsFor: 'accessing' stamp: 'OliFlueckiger 7/5/2011 14:49'!
baseSize
	^ P4SmalltalkConfiguration objectHeaderSize + P4Method instSize + literals size! !

!P4TACMethod methodsFor: 'accessing' stamp: 'OliFlueckiger 7/5/2011 14:51'!
byteSize
	^ codeStream pointerSize * self baseSize + self codeSize ! !

!P4TACMethod methodsFor: 'accessing' stamp: 'OliFlueckiger 5/26/2011 16:41'!
closures
	^ closures! !

!P4TACMethod methodsFor: 'accessing' stamp: 'OliFlueckiger 5/26/2011 16:41'!
closures: anObject
	closures := anObject! !

!P4TACMethod methodsFor: 'accessing' stamp: 'OliFlueckiger 7/5/2011 14:50'!
codeSize
	^ codeStream size! !

!P4TACMethod methodsFor: 'accessing' stamp: 'OliFlueckiger 7/5/2011 14:59'!
codeStream
	^ codeStream! !

!P4TACMethod methodsFor: 'accessing' stamp: 'OliFlueckiger 7/8/2011 11:31'!
codeUid
	^ codeUid ifNil: [ uid := (host pfullName, '>>', self selector) asSymbol ]! !

!P4TACMethod methodsFor: 'accessing' stamp: 'OliFlueckiger 6/15/2011 16:12'!
codeUid: anObject
	^ codeUid := anObject! !

!P4TACMethod methodsFor: 'accessing' stamp: 'OliFlueckiger 8/4/2011 15:34'!
export: aVariable
	locals at: aVariable ifPresent: [ :var | ^ var ].
	^ nil! !

!P4TACMethod methodsFor: 'accessing' stamp: 'OliFlueckiger 7/29/2011 07:59'!
frameSize: aFrameSize
	returnAddress ifNotNil: [ returnAddress index: aFrameSize + 1].
	super frameSize: aFrameSize  ! !

!P4TACMethod methodsFor: 'accessing' stamp: 'OliFlueckiger 8/4/2011 11:40'!
hasNonLocalReturn
	^ nonLocalReturn! !

!P4TACMethod methodsFor: 'accessing' stamp: 'ToonVerwaest 5/17/2011 18:05'!
host
	^ host! !

!P4TACMethod methodsFor: 'accessing' stamp: 'ToonVerwaest 5/17/2011 18:05'!
host: anObject
	host := anObject! !

!P4TACMethod methodsFor: 'accessing' stamp: 'OliFlueckiger 7/26/2011 17:33'!
isPrimitive
	^ primitive isNil not! !

!P4TACMethod methodsFor: 'accessing' stamp: 'OliFlueckiger 5/12/2011 17:14'!
literals
	^ literals! !

!P4TACMethod methodsFor: 'accessing' stamp: 'OliFlueckiger 5/12/2011 17:14'!
literals: anObject
	literals := anObject! !

!P4TACMethod methodsFor: 'accessing' stamp: 'OliFlueckiger 5/16/2011 17:34'!
message 
	^ message! !

!P4TACMethod methodsFor: 'accessing' stamp: 'OliFlueckiger 5/16/2011 17:34'!
message: aMessage
	message := aMessage ! !

!P4TACMethod methodsFor: 'accessing' stamp: 'OliFlueckiger 8/1/2011 16:34'!
methodFrameSize
	^ self frameSize! !

!P4TACMethod methodsFor: 'accessing' stamp: 'OliFlueckiger 7/14/2011 18:07'!
methodObject 
	^ methodObject ifNil: [ ^ methodObject := P4TACMethodObject new ].
! !

!P4TACMethod methodsFor: 'accessing' stamp: 'OliFlueckiger 7/1/2011 15:25'!
numOfStringLiterals 
	^ (literals select: [ :l | l isString ]) size! !

!P4TACMethod methodsFor: 'accessing' stamp: 'OliFlueckiger 7/26/2011 17:32'!
primitive
	^ primitive! !

!P4TACMethod methodsFor: 'accessing' stamp: 'OliFlueckiger 7/26/2011 17:32'!
primitive: anObject
	primitive := anObject! !

!P4TACMethod methodsFor: 'accessing' stamp: 'OliFlueckiger 9/8/2011 14:05'!
returnToken  
	^ self locals at: P4TACReturnTokenName instance! !

!P4TACMethod methodsFor: 'accessing' stamp: 'ToonVerwaest 5/26/2011 12:59'!
selector
	^ message selector! !

!P4TACMethod methodsFor: 'accessing' stamp: 'ToonVerwaest 5/26/2011 12:59'!
selector: aSelector
	message selector: aSelector! !

!P4TACMethod methodsFor: 'accessing' stamp: 'OliFlueckiger 7/5/2011 14:43'!
stream: aStream
	^ codeStream := aStream ! !

!P4TACMethod methodsFor: 'initialization' stamp: 'OliFlueckiger 8/4/2011 11:47'!
initialize
	super initialize.
	closures := OrderedCollection new.
	nonLocalReturn := false.! !

!P4TACMethod methodsFor: 'printing' stamp: 'OliFlueckiger 6/9/2011 17:33'!
printOn: stream
	stream << message selector! !

!P4TACMethod methodsFor: 'printing' stamp: 'OliFlueckiger 5/24/2011 14:57'!
printSource
	| currentBlock stream |
	currentBlock := entry.
	stream := Stream new.
	[ currentBlock isLast ] whileFalse: [
		currentBlock do: [ :instr |
			instr printOn: stream ]
	].
	^ stream asString! !

!P4TACEndBlock methodsFor: 'testing' stamp: 'OliFlueckiger 5/7/2011 14:22'!
accept: aVisitor
	^ aVisitor visitEndBlock: self! !

!P4TACEndBlock methodsFor: 'testing' stamp: 'ToonVerwaest 5/6/2011 19:55'!
atEnd
	^ true! !

!P4TACEndBlock methodsFor: 'testing' stamp: 'OliFlueckiger 5/24/2011 15:18'!
printOn: stream
	stream << '---'! !

!P4TACEndBlock methodsFor: 'accessing' stamp: 'OliFlueckiger 5/24/2011 16:56'!
number: aValue
	"ignore"! !

!P4TACInstruction methodsFor: 'visiting' stamp: 'OliFlueckiger 5/7/2011 14:22'!
accept: aVisitor
	^ aVisitor visitInstruction: self! !

!P4TACInstruction methodsFor: 'visiting' stamp: 'OliFlueckiger 5/31/2011 17:29'!
acceptCaptureClosure: aVisitor
	
! !

!P4TACInstruction methodsFor: 'accessing' stamp: 'OliFlueckiger 5/12/2011 15:00'!
acceptRegisterSwapper: aVisitor
! !

!P4TACInstruction methodsFor: 'accessing' stamp: 'OliFlueckiger 5/7/2011 12:15'!
flowNumber
	^ flowNumber! !

!P4TACInstruction methodsFor: 'accessing' stamp: 'OliFlueckiger 5/7/2011 12:15'!
flowNumber: anObject
	flowNumber := anObject! !

!P4TACInstruction methodsFor: 'accessing' stamp: 'OliFlueckiger 5/7/2011 14:00'!
isAssignment
	^false! !

!P4TACInstruction methodsFor: 'accessing' stamp: 'OliFlueckiger 5/7/2011 12:20'!
printLineNumberOn: stream
	flowNumber isNil ifFalse: [ stream << flowNumber << ': ' ]! !

!P4TACInstruction methodsFor: 'instruction-stream' stamp: 'OliFlueckiger 6/8/2011 15:04'!
do: aBlock
	aBlock value: self! !

!P4TACInstruction methodsFor: 'instruction-stream' stamp: 'OliFlueckiger 6/8/2011 18:32'!
putObjectOn: anInstructionStream
	^ anInstructionStream nextPut: self! !

!P4TACBitShift methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 9/6/2011 16:47'!
accept: aVisitor
	^ aVisitor visitBitShift: self! !

!P4TACBitShift methodsFor: 'accessing' stamp: 'OliFlueckiger 9/6/2011 16:47'!
bits
	^ bits! !

!P4TACBitShift methodsFor: 'accessing' stamp: 'OliFlueckiger 9/6/2011 16:47'!
bits: anObject
	bits := anObject! !

!P4TACBitShift methodsFor: 'accessing' stamp: 'OliFlueckiger 9/6/2011 16:47'!
target
	^ target! !

!P4TACBitShift methodsFor: 'accessing' stamp: 'OliFlueckiger 9/6/2011 16:47'!
target: anObject
	target := anObject! !

!P4TACBitShiftRight methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 9/6/2011 16:46'!
accept: aVisitor
	^ aVisitor visitBitShiftRight: self! !

!P4TACBitShiftRight methodsFor: 'accessing' stamp: 'OliFlueckiger 9/6/2011 16:47'!
bits
	^ bits! !

!P4TACBitShiftRight methodsFor: 'accessing' stamp: 'OliFlueckiger 9/6/2011 16:47'!
bits: anObject
	bits := anObject! !

!P4TACBitShiftRight methodsFor: 'accessing' stamp: 'OliFlueckiger 9/6/2011 16:47'!
target
	^ target! !

!P4TACBitShiftRight methodsFor: 'accessing' stamp: 'OliFlueckiger 9/6/2011 16:47'!
target: anObject
	target := anObject! !

!P4TACBitTest methodsFor: 'accessing' stamp: 'OliFlueckiger 6/17/2011 16:15'!
accept: aVisitor
	^ aVisitor visitBitTest: self! !

!P4TACBitTest methodsFor: 'accessing' stamp: 'OliFlueckiger 6/17/2011 16:13'!
bit
	^ bit! !

!P4TACBitTest methodsFor: 'accessing' stamp: 'OliFlueckiger 6/17/2011 16:13'!
bit: anObject
	bit := anObject! !

!P4TACBitTest methodsFor: 'accessing' stamp: 'OliFlueckiger 6/17/2011 16:13'!
location
	^ location! !

!P4TACBitTest methodsFor: 'accessing' stamp: 'OliFlueckiger 6/17/2011 16:13'!
location: anObject
	location := anObject! !

!P4TACBitTest class methodsFor: 'initialize-release' stamp: 'OliFlueckiger 6/17/2011 16:14'!
of: num in: var
	^ self new location: var; bit: num     ! !

!P4TACCall methodsFor: 'visiting' stamp: 'OliFlueckiger 5/26/2011 13:47'!
accept: aVisitor
	^ aVisitor visitCall: self! !

!P4TACCall methodsFor: 'accessing' stamp: 'OliFlueckiger 8/9/2011 18:37'!
initialize 
	super initialize .
	offset := 0! !

!P4TACCall methodsFor: 'accessing' stamp: 'OliFlueckiger 5/16/2011 17:08'!
method
	^ method! !

!P4TACCall methodsFor: 'accessing' stamp: 'OliFlueckiger 5/16/2011 17:08'!
method: anObject
	method := anObject! !

!P4TACCall methodsFor: 'accessing' stamp: 'OliFlueckiger 8/9/2011 18:37'!
offset
	^ offset! !

!P4TACCall methodsFor: 'accessing' stamp: 'OliFlueckiger 8/9/2011 18:37'!
offset: anObject
	offset := anObject! !

!P4TACCall methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/5/2011 16:13'!
printOn: stream
	self printLineNumberOn: stream.  
	stream << '[%rax] := call ' << method asString << Character cr.! !

!P4TACCall class methodsFor: 'instance creation' stamp: 'OliFlueckiger 5/26/2011 11:56'!
to: aMethod
	^ self new method: aMethod! !

!P4TACCaptureClosure methodsFor: 'visiting' stamp: 'OliFlueckiger 5/26/2011 16:35'!
accept: visitor
	^ visitor visitCaptureClosure: self! !

!P4TACCaptureClosure methodsFor: 'visiting' stamp: 'OliFlueckiger 5/31/2011 17:29'!
acceptCaptureClosure: visitor
	^ visitor visitCaptureClosure: self! !

!P4TACCaptureClosure methodsFor: 'visiting' stamp: 'OliFlueckiger 6/8/2011 17:11'!
printOn: stream
	self printLineNumberOn: stream.
	stream << '['.
	closure printOn: stream.
	stream << ']'<< Character cr.  ! !

!P4TACCaptureClosure methodsFor: 'accessing' stamp: 'OliFlueckiger 5/26/2011 16:31'!
capturedAt
	^ capturedAt! !

!P4TACCaptureClosure methodsFor: 'accessing' stamp: 'OliFlueckiger 5/26/2011 16:31'!
capturedAt: aBasicBlock
	capturedAt := aBasicBlock ! !

!P4TACCaptureClosure methodsFor: 'accessing' stamp: 'OliFlueckiger 5/26/2011 16:01'!
closure
	^ closure! !

!P4TACCaptureClosure methodsFor: 'accessing' stamp: 'OliFlueckiger 5/26/2011 16:01'!
closure: anObject
	closure := anObject! !

!P4TACCaptureClosure methodsFor: 'accessing' stamp: 'OliFlueckiger 8/5/2011 15:24'!
hasReturnExpression 
	^ closure code hasReturnExpression! !

!P4TACCaptureClosure methodsFor: 'accessing' stamp: 'OliFlueckiger 6/7/2011 18:50'!
resultVariable
	^ resultVariable! !

!P4TACCaptureClosure methodsFor: 'accessing' stamp: 'OliFlueckiger 6/7/2011 18:50'!
resultVariable: anObject
	resultVariable := anObject! !

!P4TACHalt methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/24/2011 11:36'!
accept: aVisitor
	^ aVisitor visitHalt: self.! !

!P4TACHalt methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/25/2011 12:41'!
asValue 
	^ nil! !

!P4TACHalt methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/8/2011 17:11'!
printOn: stream
	self printLineNumberOn: stream.
	stream << 'halt' << Character cr.! !

!P4TACIndirectCall methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/31/2011 16:27'!
accept: aVisitor
	^ aVisitor visitIndirectCall: self! !

!P4TACIndirectCall methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/31/2011 17:51'!
printOn: stream
	self printLineNumberOn: stream.  
	stream << 'call: *'.
	register printRegisterOn: stream.
	stream << Character cr.! !

!P4TACIndirectCall methodsFor: 'accessing' stamp: 'OliFlueckiger 8/31/2011 16:28'!
register
	^ register! !

!P4TACIndirectCall methodsFor: 'accessing' stamp: 'OliFlueckiger 8/31/2011 16:28'!
register: anObject
	register := anObject! !

!P4TACIndirectCall class methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/31/2011 16:28'!
to: aTarget
	^ self new register: aTarget ! !

!P4TACIndirectJump methodsFor: 'visiting' stamp: 'OliFlueckiger 5/24/2011 14:08'!
accept: aVisitor
	^ aVisitor visitIndirectJump: self! !

!P4TACIndirectJump methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/31/2011 17:51'!
printOn: stream
	self printLineNumberOn: stream.  
	stream << 'jump: *'.
	register printRegisterOn: stream.
	stream << Character cr.! !

!P4TACIndirectJump methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 5/24/2011 12:58'!
register: aRegister
	register := aRegister! !

!P4TACIndirectJump methodsFor: 'accessing' stamp: 'OliFlueckiger 5/24/2011 12:58'!
register
	^ register! !

!P4TACIndirectJump class methodsFor: 'instance creation' stamp: 'OliFlueckiger 5/26/2011 14:12'!
to: aTarget
	^ self new register: aTarget ! !

!P4TACJump methodsFor: 'visiting' stamp: 'OliFlueckiger 6/17/2011 15:59'!
accept: aVisitor
	(carry isNil and: [ zero isNil ]) ifTrue: [ ^ aVisitor visitJump: self ].
	^ aVisitor visitConditionalJump: self.! !

!P4TACJump methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/17/2011 15:32'!
carry
	carry := true! !

!P4TACJump methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/17/2011 15:33'!
equals
	self zero! !

!P4TACJump methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/17/2011 16:05'!
ifCarrySet: aBlock else: anotherBlock
	carry ifTrue: [ ^ aBlock value ].
	carry ifFalse: [ ^ anotherBlock value ].
! !

!P4TACJump methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/17/2011 15:56'!
ifCarryTest: aBlock else: anotherBlock
	carry ifNil: [ ^ anotherBlock value ].
	^ aBlock value! !

!P4TACJump methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/12/2011 15:08'!
ifEqualsSet: aBlock else: anotherBlock
	zero 
		ifTrue: [ ^ aBlock value ]
		ifFalse: [ ^ anotherBlock value ].! !

!P4TACJump methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/17/2011 15:56'!
ifEqualsTest: aBlock else: anotherBlock
	zero ifNil: [ ^ anotherBlock value ].
	^ aBlock value! !

!P4TACJump methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/17/2011 17:06'!
isShort
	^ short isNil not and: [ short ]! !

!P4TACJump methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/17/2011 15:32'!
noCarry
	carry := false! !

!P4TACJump methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/17/2011 15:33'!
notEquals
	self notZero! !

!P4TACJump methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/17/2011 15:32'!
notZero
	zero := false! !

!P4TACJump methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/17/2011 19:02'!
printOn: stream
	self printLineNumberOn: stream.
	stream << 'jump'.
	self ifEqualsTest: [ self ifEqualsSet: [] else: [stream << 'Not']. stream << 'Equals'  ] else: [].
	self ifCarryTest: [ self ifCarrySet: [] else: [stream << 'No']. stream << 'Carry'  ] else: [].
	stream << ' ' << target printString << Character cr.
! !

!P4TACJump methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/17/2011 17:05'!
short
	short := true.! !

!P4TACJump methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 5/6/2011 16:22'!
target: aTarget
	target := aTarget! !

!P4TACJump methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/17/2011 15:55'!
zero
	zero := true! !

!P4TACJump methodsFor: 'accessing' stamp: 'ToonVerwaest 5/6/2011 19:54'!
target
	^ target! !

!P4TACJump class methodsFor: 'instance creation' stamp: 'OliFlueckiger 5/26/2011 12:04'!
to: aTarget
	^ self new target: aTarget ! !

!P4TACNilInstruction methodsFor: 'instruction-stream' stamp: 'OliFlueckiger 6/9/2011 18:48'!
putObjectOn: aStream! !

!P4TACNilInstruction class methodsFor: 'singleton' stamp: 'OliFlueckiger 6/9/2011 18:49'!
instance
	^ instance ifNil: [ instance := self new ].! !

!P4TACOperation methodsFor: 'visiting' stamp: 'ToonVerwaest 6/14/2011 15:08'!
acceptRegisterSwapper: aVisitor 
	^ aVisitor visitOperation: self  ! !

!P4TACOperation methodsFor: 'accessing' stamp: 'ToonVerwaest 6/14/2011 14:46'!
left
	^ left! !

!P4TACOperation methodsFor: 'accessing' stamp: 'ToonVerwaest 6/14/2011 14:47'!
left: aLeft
	left := aLeft.! !

!P4TACOperation methodsFor: 'accessing' stamp: 'ToonVerwaest 6/14/2011 14:46'!
right
	^ right! !

!P4TACOperation methodsFor: 'accessing' stamp: 'ToonVerwaest 6/14/2011 14:46'!
right: aValue
	"self assert: ( aValue respondsTo: #asRegister )."
	right := aValue.! !

!P4TACOperation methodsFor: 'printing' stamp: 'ToonVerwaest 6/14/2011 14:47'!
printOn: stream
	self printLineNumberOn: stream.
	stream << self op << ' '.  
	left printOn: stream.
	stream << ', '.
	right printOn: stream.
	stream << Character tab << Character tab << Character tab << Character tab.
	stream << '#'.
	left printRegisterOn: stream .
	stream  << ', '.
	right printRegisterOn: stream.
	stream << Character cr
! !

!P4TACOperation class methodsFor: 'instance creation' stamp: 'ToonVerwaest 6/14/2011 15:12'!
a: left to: aRight
	^ self new left: left; right: aRight
	! !

!P4TACAdd methodsFor: 'visitor accepting' stamp: 'ToonVerwaest 6/14/2011 14:57'!
accept: aVisitor
	^ aVisitor visitAdd: self! !

!P4TACAdd methodsFor: 'accessing' stamp: 'ToonVerwaest 6/14/2011 17:35'!
op
	^ #add! !

!P4TACAnd methodsFor: 'visitor accepting' stamp: 'ToonVerwaest 6/14/2011 14:57'!
accept: aVisitor
	^ aVisitor visitAnd: self! !

!P4TACAnd methodsFor: 'accessing' stamp: 'ToonVerwaest 6/14/2011 17:35'!
op
	^ #and! !

!P4TACAssigning methodsFor: 'visiting' stamp: 'ToonVerwaest 6/14/2011 15:15'!
asValue 
	self flag: 'Not sure if this is correct'.
	^ left! !

!P4TACAssigning methodsFor: 'testing' stamp: 'OliFlueckiger 5/7/2011 14:00'!
isAssignment 
	^true! !

!P4TACAssigning methodsFor: 'accessing' stamp: 'ToonVerwaest 6/14/2011 15:05'!
left
	^ left! !

!P4TACAssigning methodsFor: 'accessing' stamp: 'ToonVerwaest 6/14/2011 15:14'!
origin
	^ left! !

!P4TACAssigning methodsFor: 'accessing' stamp: 'OliFlueckiger 7/20/2011 18:39'!
origin: anOrigin
	self haltIf: anOrigin isNil.
	left := anOrigin ! !

!P4TACAssigning methodsFor: 'accessing' stamp: 'ToonVerwaest 6/14/2011 15:06'!
right
	^ right! !

!P4TACAssigning methodsFor: 'accessing' stamp: 'ToonVerwaest 6/14/2011 15:14'!
target
	^ right! !

!P4TACAssigning methodsFor: 'accessing' stamp: 'OliFlueckiger 7/20/2011 18:39'!
target: aTarget
	self haltIf: aTarget isNil.
	right := aTarget ! !

!P4TACAssigning class methodsFor: 'instance creation' stamp: 'ToonVerwaest 6/14/2011 15:12'!
assign: value to: target
	self halt.
	^ self new origin: value; target: target! !

!P4TACAssigning class methodsFor: 'instance creation' stamp: 'OliFlueckiger 5/26/2011 13:53'!
move: value to: target
	^ self new origin: value; target: target! !

!P4TACAssignment methodsFor: 'visiting' stamp: 'ToonVerwaest 6/17/2011 15:13'!
accept: aVisitor
	^ aVisitor visitAssignment: self! !

!P4TACAssignment methodsFor: 'accessing' stamp: 'ToonVerwaest 6/17/2011 15:13'!
op
	^ #mov! !

!P4TACLoadAddress methodsFor: 'accessing' stamp: 'ToonVerwaest 6/17/2011 15:13'!
accept: aVisitor
	^ aVisitor visitLoadAddress: self! !

!P4TACLoadAddress methodsFor: 'accessing' stamp: 'ToonVerwaest 6/17/2011 15:07'!
op
	^ #lea! !

!P4TACLoadAddress class methodsFor: 'instance creation' stamp: 'ToonVerwaest 6/17/2011 15:10'!
load: aValue in: aTarget
	^ self new left: aValue; right: aTarget! !

!P4TACCompare methodsFor: 'accessing' stamp: 'OliFlueckiger 5/6/2011 21:32'!
accept: aVisitor
	^ aVisitor visitCompare: self! !

!P4TACCompare methodsFor: 'accessing' stamp: 'ToonVerwaest 6/14/2011 14:46'!
op
	^ #cmp! !

!P4TACOr methodsFor: 'visitor accepting' stamp: 'ToonVerwaest 6/14/2011 14:57'!
accept: aVisitor
	^ aVisitor visitOr: self! !

!P4TACOr methodsFor: 'accessing' stamp: 'ToonVerwaest 6/14/2011 17:35'!
op
	^ #or! !

!P4TACSub methodsFor: 'visitor accepting' stamp: 'ToonVerwaest 6/14/2011 14:57'!
accept: aVisitor
	^ aVisitor visitSub: self! !

!P4TACSub methodsFor: 'accessing' stamp: 'ToonVerwaest 6/14/2011 17:35'!
op
	^ #sub! !

!P4TACTest methodsFor: 'visitor accepting' stamp: 'ToonVerwaest 6/14/2011 17:35'!
accept: aVisitor
	^ aVisitor visitTest: self! !

!P4TACTest methodsFor: 'accessing' stamp: 'ToonVerwaest 6/14/2011 17:35'!
op
	^ #test! !

!P4TACXOr methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/11/2011 18:56'!
accept: aVisitor
	^ aVisitor visitXor: self! !

!P4TACXOr methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/11/2011 18:56'!
op
	^ #xor! !

!P4TACPop methodsFor: 'visitor accepting' stamp: 'ToonVerwaest 5/13/2011 16:16'!
accept: aVisitor
	^ aVisitor visitPop: self! !

!P4TACPop methodsFor: 'printing' stamp: 'OliFlueckiger 5/13/2011 15:57'!
printOn: aStream
	aStream << 'pop ' << register asString << Character cr.! !

!P4TACPop methodsFor: 'accessing' stamp: 'OliFlueckiger 5/13/2011 15:50'!
register
	^ register! !

!P4TACPop methodsFor: 'accessing' stamp: 'OliFlueckiger 5/13/2011 15:50'!
register: anObject
	register := anObject! !

!P4TACPush methodsFor: 'visiting' stamp: 'ToonVerwaest 5/13/2011 16:16'!
accept: aVisitor
	^ aVisitor visitPush: self! !

!P4TACPush methodsFor: 'printing' stamp: 'OliFlueckiger 5/13/2011 15:57'!
printOn: aStream
	aStream << 'push ' << register asString << Character cr.! !

!P4TACPush methodsFor: 'accessing' stamp: 'OliFlueckiger 8/4/2011 12:12'!
register
	register ifNotNil: [ ^ register ].
	^ variable register! !

!P4TACPush methodsFor: 'accessing' stamp: 'OliFlueckiger 8/4/2011 12:12'!
register: aRegister
	register := aRegister ! !

!P4TACPush methodsFor: 'accessing' stamp: 'OliFlueckiger 8/4/2011 12:08'!
variable: anObject
	variable := anObject! !

!P4TACReturn methodsFor: 'visiting' stamp: 'ToonVerwaest 5/6/2011 19:51'!
accept: aVisitor
	^ aVisitor visitReturn: self! !

!P4TACReturn methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/12/2011 16:20'!
initialize 
	teardown := true! !

!P4TACReturn methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/12/2011 15:58'!
noTeardown
	teardown := false! !

!P4TACReturn methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 5/7/2011 12:21'!
printOn: stream
	self printLineNumberOn: stream.  
	stream << 'return' << Character cr! !

!P4TACReturn methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/12/2011 16:20'!
tearDown 
	^teardown! !

!P4TACTeardown methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/12/2011 15:59'!
accept: aVisitor
	^ aVisitor visitTeardown: self! !

!P4TACTeardown methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 9/7/2011 14:34'!
initialize 
	super initialize .
	keepArguments := false! !

!P4TACTeardown methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 9/7/2011 14:33'!
keepArguments 
	keepArguments := true! !

!P4TACTeardown methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/12/2011 15:59'!
printOn: stream
	self printLineNumberOn: stream.  
	stream << '--teardown Frame' << Character cr! !

!P4TACTeardown methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 9/7/2011 14:33'!
shouldKeepArguments
	^ keepArguments! !

!P4TACVolatileFence methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/10/2011 14:23'!
accept: visitor
	visitor visitVolatileFence: self! !

!P4TACVolatileFence methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/10/2011 14:31'!
printOn: stream
	stream << '--volatile fence--' << Character cr! !

!P4TACMessage methodsFor: 'accessing' stamp: 'OliFlueckiger 8/11/2011 17:15'!
numOfArguments
	^ numOfArguments! !

!P4TACMessage methodsFor: 'accessing' stamp: 'OliFlueckiger 8/11/2011 17:15'!
numOfArguments: anObject
	numOfArguments := anObject! !

!P4TACMessage methodsFor: 'accessing' stamp: 'OliFlueckiger 8/11/2011 17:15'!
selector
	^ selector! !

!P4TACMessage methodsFor: 'accessing' stamp: 'OliFlueckiger 8/11/2011 17:15'!
selector: anObject
	selector := anObject! !

!P4TACValue methodsFor: 'testing' stamp: 'OliFlueckiger 5/24/2011 19:07'!
asAsm 
	^ self! !

!P4TACValue methodsFor: 'testing' stamp: 'ToonVerwaest 5/12/2011 22:45'!
isAccess
	^ false! !

!P4TACValue methodsFor: 'testing' stamp: 'OliFlueckiger 5/7/2011 02:17'!
isConstant 
	^ false! !

!P4TACValue methodsFor: 'testing' stamp: 'OliFlueckiger 5/19/2011 14:04'!
isDoubleAccess
	^ false! !

!P4TACValue methodsFor: 'testing' stamp: 'OliFlueckiger 8/29/2011 15:03'!
wrapTypeGuard: types andCondition: conditions around: aBlock fallback: anOtherBlock with: helper
	^ helper insertTypeGuard: types andCondition: conditions for: self around: aBlock fallback: anOtherBlock! !

!P4TACValue methodsFor: 'testing' stamp: 'OliFlueckiger 8/29/2011 11:41'!
wrapTypeGuard: types around: aBlock fallback: anOtherBlock with: helper
	^ self wrapTypeGuard: types andCondition: {} around: aBlock fallback: anOtherBlock with: helper! !

!P4TACValue methodsFor: 'visiting' stamp: 'ToonVerwaest 5/16/2011 18:43'!
asValue
	^self! !

!P4TACValue methodsFor: 'accessing' stamp: 'OliFlueckiger 7/25/2011 14:08'!
hasTypeHint
	^ self typeHint ~~ nil! !

!P4TACValue methodsFor: 'accessing' stamp: 'OliFlueckiger 7/25/2011 14:08'!
isStaticallyTyped
	^ self staticType ~~ nil! !

!P4TACValue methodsFor: 'accessing' stamp: 'OliFlueckiger 7/25/2011 16:08'!
moveTo: aVariable
	self hasTypeHint ifTrue: [ aVariable typeHint: self typeHint ].
	self isStaticallyTyped ifTrue: [ aVariable staticType: self staticType ].
	^P4TACAssignment move: self to: aVariable  
! !

!P4TACValue methodsFor: 'accessing' stamp: 'OliFlueckiger 7/22/2011 16:11'!
staticType
	^ staticType! !

!P4TACValue methodsFor: 'accessing' stamp: 'OliFlueckiger 7/22/2011 16:11'!
staticType: anObject
	(self hasTypeHint and: [ typeHint ~~ anObject ]) ifTrue: [ self error: 'trying to change the type of a variable']. 
	staticType := anObject! !

!P4TACValue methodsFor: 'accessing' stamp: 'OliFlueckiger 7/22/2011 16:11'!
typeHint
	^ typeHint! !

!P4TACValue methodsFor: 'accessing' stamp: 'OliFlueckiger 7/22/2011 16:49'!
typeHint: anObject
	(self hasTypeHint and: [ typeHint ~~ anObject ]) ifTrue: [ self error: 'not allowed to change type of ', self asString ,' from ',self typeHint asString,' to ',anObject asString ].  
	typeHint := anObject! !

!P4TACValue methodsFor: 'instruction-creation' stamp: 'ToonVerwaest 6/17/2011 15:11'!
loadAddressIn: aVariable
	^P4TACLoadAddress load: self in: aVariable ! !

!P4TACValue methodsFor: 'printing' stamp: 'OliFlueckiger 5/31/2011 13:12'!
printRegisterOn: stream  
	stream << 'n/a' ! !

!P4TACValue methodsFor: 'liveness' stamp: 'ToonVerwaest 5/27/2011 17:38'!
usedAt: number  ! !

!P4TACAbstractVariable methodsFor: 'visiting' stamp: 'OliFlueckiger 6/9/2011 16:53'!
accept: aVisitor
	^ aVisitor visitVariable: self! !

!P4TACAbstractVariable methodsFor: 'conversion' stamp: 'OliFlueckiger 8/24/2011 16:59'!
accessAt: anIndex
	^ P4TACVariableAccess new index: anIndex ; variable: self! !

!P4TACAbstractVariable methodsFor: 'conversion' stamp: 'OliFlueckiger 8/4/2011 16:13'!
asAlias
	^ P4TACVariableAlias new variable: self! !

!P4TACAbstractVariable methodsFor: 'accessing' stamp: 'OliFlueckiger 8/24/2011 16:59'!
accessClass
	^ self accessAt: P4SmalltalkConfiguration classIndex ! !

!P4TACAbstractVariable methodsFor: 'accessing' stamp: 'OliFlueckiger 6/9/2011 16:45'!
name 
	^name! !

!P4TACAbstractVariable methodsFor: 'accessing' stamp: 'OliFlueckiger 6/9/2011 16:45'!
name: aName
	name := aName asSymbol! !

!P4TACAbstractVariable methodsFor: 'accessing' stamp: 'OliFlueckiger 7/29/2011 07:30'!
pop
	self register ifNil: [ self error: 'pop cannot be called before register allocation' ].
	^ P4TACPop new register: self register.! !

!P4TACAbstractVariable methodsFor: 'accessing' stamp: 'OliFlueckiger 6/9/2011 19:24'!
printRegisterOn: stream
	self hasRegisterAssigned ifFalse: [ ^ stream << 'n/a']  .
	self asAsm printOn: stream! !

!P4TACAbstractVariable methodsFor: 'accessing' stamp: 'OliFlueckiger 8/4/2011 12:10'!
push
	^ P4TACPush new variable: self.! !

!P4TACAbstractVariable methodsFor: 'liveness' stamp: 'OliFlueckiger 6/9/2011 17:14'!
assignedAt: num  ! !

!P4TACAbstractVariable methodsFor: 'liveness' stamp: 'OliFlueckiger 6/9/2011 17:25'!
isUnused 
	^false! !

!P4TACAbstractVariable methodsFor: 'liveness' stamp: 'OliFlueckiger 7/26/2011 15:10'!
isUsed 
	^self isUnused not! !

!P4TACAbstractVariable methodsFor: 'printing' stamp: 'OliFlueckiger 8/5/2011 16:19'!
printOn: stream 
	(self name isKindOf: String) ifFalse: [ ^ stream << name class asString ].
	stream << self name.! !

!P4TACAbstractVariable class methodsFor: 'instance creation' stamp: 'OliFlueckiger 8/4/2011 16:24'!
named: aName
self haltIf: aName == #closure.
	^ (self new) name: aName ! !

!P4TACFixedVariable methodsFor: 'accessing' stamp: 'OliFlueckiger 6/9/2011 17:30'!
asAsm 
	register ifNil: [ self error: 'this variable is not assigned to a register. is it live?' ].
	^ self register! !

!P4TACFixedVariable methodsFor: 'accessing' stamp: 'OliFlueckiger 6/9/2011 19:24'!
hasRegisterAssigned 
	^true! !

!P4TACFixedVariable methodsFor: 'accessing' stamp: 'OliFlueckiger 6/9/2011 17:39'!
initRegister: aRegister
	register ifNotNil: [ self error: 'register already assigned' ].
	register := aRegister  ! !

!P4TACFixedVariable methodsFor: 'accessing' stamp: 'OliFlueckiger 6/9/2011 17:00'!
register 
	^ register! !

!P4TACFixedVariable class methodsFor: 'instance creation' stamp: 'OliFlueckiger 6/9/2011 17:38'!
withRegister: aRegister
	^ (self new) initRegister: aRegister! !

!P4TACArgument methodsFor: 'liveness' stamp: 'OliFlueckiger 5/31/2011 14:02'!
isUnused
	"arguments are used to pass to another function, therefore they are used by definition, even if they are not used in the current context" 
	^ false! !

!P4TACResultVariable methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 5/31/2011 16:46'!
name
	^ #res! !

!P4TACResultVariable methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/25/2011 14:08'!
staticType 
	^nil! !

!P4TACResultVariable methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/25/2011 14:07'!
typeHint 
	^nil! !

!P4TACVariable methodsFor: 'visiting' stamp: 'OliFlueckiger 6/9/2011 17:22'!
assignRegister: aRegister for: aRegisterAllocator
	aRegisterAllocator assignRegister: aRegister to: self.! !

!P4TACVariable methodsFor: 'liveness' stamp: 'OliFlueckiger 6/9/2011 17:22'!
assignedAt: number
	(firstAssign isNil or: [ firstAssign > number ]) ifTrue: [ firstAssign := number ].
	lastAssign := number! !

!P4TACVariable methodsFor: 'liveness' stamp: 'OliFlueckiger 6/10/2011 13:36'!
canBeVolatile
	methodCalled ifNotNil: [
		^ (lastUse <= methodCalled) ].
	^ true.! !

!P4TACVariable methodsFor: 'liveness' stamp: 'OliFlueckiger 6/9/2011 17:22'!
firstAssign
	^ firstAssign! !

!P4TACVariable methodsFor: 'liveness' stamp: 'OliFlueckiger 6/9/2011 17:22'!
index
	self error: 'no access'! !

!P4TACVariable methodsFor: 'liveness' stamp: 'OliFlueckiger 8/29/2011 13:58'!
isSelf 
	 ^ false! !

!P4TACVariable methodsFor: 'liveness' stamp: 'OliFlueckiger 6/9/2011 17:23'!
isUnused
	^ self lastUse isNil ! !

!P4TACVariable methodsFor: 'liveness' stamp: 'OliFlueckiger 6/9/2011 17:23'!
lastAssign
	^ lastAssign! !

!P4TACVariable methodsFor: 'liveness' stamp: 'OliFlueckiger 6/9/2011 17:23'!
lastUse
	^ lastUse! !

!P4TACVariable methodsFor: 'liveness' stamp: 'OliFlueckiger 6/10/2011 13:46'!
methodCalled: pos
	firstAssign ifNotNil: [ methodCalled ifNil: [methodCalled := pos]].! !

!P4TACVariable methodsFor: 'liveness' stamp: 'OliFlueckiger 8/24/2011 17:37'!
usedAt: number
	lastUse ifNotNil: [(number < lastUse) ifTrue: [ ^self ]].
	lastUse := number! !

!P4TACVariable methodsFor: 'testing' stamp: 'OliFlueckiger 6/9/2011 19:24'!
hasRegisterAssigned
	^ self register ~~ nil! !

!P4TACVariable methodsFor: 'testing' stamp: 'OliFlueckiger 6/9/2011 17:22'!
isAccess
	^ self asAsm isAccess! !

!P4TACVariable methodsFor: 'printing' stamp: 'OliFlueckiger 6/9/2011 19:24'!
printRegisterOn: stream
	(self hasRegisterAssigned )
		ifTrue: [	self asAsm printOn: stream ]
		ifFalse: [ stream << 'n/a' ]! !

!P4TACVariable methodsFor: 'accessing' stamp: 'OliFlueckiger 6/9/2011 17:37'!
register: aRegister
	register := aRegister! !

!P4TACConstantLocal methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/4/2011 15:41'!
beRemote 
! !

!P4TACConstantLocal methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/4/2011 16:19'!
name: aName
	name := aName! !

!P4TACConstantLocal methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/4/2011 15:29'!
shouldBeRemote 
	^ false! !

!P4TACExternalizableVariable methodsFor: 'conversion' stamp: 'OliFlueckiger 8/29/2011 18:19'!
accept: aVisitor
	self shouldBeRemote ifTrue: [ ^ aVisitor visitVariableAccess: self remote ].
	^ super accept: aVisitor.  ! !

!P4TACExternalizableVariable methodsFor: 'conversion' stamp: 'OliFlueckiger 6/9/2011 17:30'!
asAsm
	self shouldBeRemote ifTrue: [ ^ self remote asAsm ] .
	^ super asAsm.
! !

!P4TACExternalizableVariable methodsFor: 'accessing' stamp: 'OliFlueckiger 6/9/2011 16:59'!
beRemote
	remote := true! !

!P4TACExternalizableVariable methodsFor: 'accessing' stamp: 'OliFlueckiger 6/9/2011 16:59'!
index
	self shouldBeRemote ifTrue: [ ^ remote index ].
	self error: 'no access'! !

!P4TACExternalizableVariable methodsFor: 'accessing' stamp: 'OliFlueckiger 6/9/2011 17:00'!
remote
	^ remote! !

!P4TACExternalizableVariable methodsFor: 'accessing' stamp: 'OliFlueckiger 6/9/2011 17:00'!
remote: aRemoteArray
	remote := aRemoteArray! !

!P4TACExternalizableVariable methodsFor: 'accessing' stamp: 'OliFlueckiger 8/29/2011 20:04'!
remoteIndex: next
	(remote isKindOf: P4TACValue) ifTrue: [^remote index].
	^ next! !

!P4TACExternalizableVariable methodsFor: 'accessing' stamp: 'OliFlueckiger 6/9/2011 17:01'!
remoteVariable
	^ remote variable! !

!P4TACExternalizableVariable methodsFor: 'accessing' stamp: 'OliFlueckiger 6/9/2011 18:35'!
variable
	self shouldBeRemote ifTrue: [ ^ remote variable ].
	self error: 'Not an access'.! !

!P4TACExternalizableVariable methodsFor: 'testing' stamp: 'OliFlueckiger 6/9/2011 17:00'!
isDoubleAccess
	self shouldBeRemote ifTrue:  [ ^ remote isDoubleAccess ].
	^ false.! !

!P4TACExternalizableVariable methodsFor: 'testing' stamp: 'OliFlueckiger 6/9/2011 17:01'!
shouldBeRemote
	^ remote isNil not! !

!P4TACExternalizableVariable methodsFor: 'printing' stamp: 'OliFlueckiger 6/9/2011 17:35'!
printOn: stream
	self shouldBeRemote ifTrue: [ stream << '@' ].
	super printOn: stream  ! !

!P4TACExternalizableVariable methodsFor: 'printing' stamp: 'OliFlueckiger 6/9/2011 20:26'!
printRegisterOn: stream
	self hasRegisterAssigned
		ifTrue: [	^super printRegisterOn: stream ].
	self shouldBeRemote
		ifTrue: [	
			remote == true ifTrue: [ ^ stream << 'n/a'].
			^ remote printRegisterOn: stream ].
	stream << 'n/a'! !

!P4TACVariableAlias methodsFor: 'liveness' stamp: 'OliFlueckiger 6/9/2011 18:36'!
assignedAt: number
	" Aliases you assign to will become remote. Then they behave like variable access. See variable access for more info. "
	super assignedAt: number.
	self usedAt: number.
	variable beRemote! !

!P4TACVariableAlias methodsFor: 'liveness' stamp: 'OliFlueckiger 6/9/2011 18:27'!
beRemote
	variable beRemote! !

!P4TACVariableAlias methodsFor: 'accessing' stamp: 'OliFlueckiger 7/22/2011 15:06'!
fixedType
	^ variable fixedType! !

!P4TACVariableAlias methodsFor: 'accessing' stamp: 'OliFlueckiger 7/22/2011 15:06'!
fixedType: aType
	^ variable fixedType: aType! !

!P4TACVariableAlias methodsFor: 'accessing' stamp: 'OliFlueckiger 6/9/2011 18:37'!
initialize 
	super initialize .
	lastAssign := firstAssign := 0.! !

!P4TACVariableAlias methodsFor: 'accessing' stamp: 'OliFlueckiger 5/31/2011 17:00'!
name
	^ variable name.! !

!P4TACVariableAlias methodsFor: 'accessing' stamp: 'OliFlueckiger 8/29/2011 20:02'!
remoteIndex: next
	^ variable remoteIndex: next    ! !

!P4TACVariableAlias methodsFor: 'accessing' stamp: 'OliFlueckiger 7/22/2011 15:05'!
typeHint 
	^ variable typeHint ! !

!P4TACVariableAlias methodsFor: 'accessing' stamp: 'OliFlueckiger 7/22/2011 15:07'!
typeHint: hint
	^ variable typeHint: hint ! !

!P4TACVariableAlias methodsFor: 'accessing' stamp: 'ToonVerwaest 5/27/2011 14:59'!
variable: aVariable
	variable := aVariable ! !

!P4TACVariableAlias methodsFor: 'testing' stamp: 'OliFlueckiger 8/24/2011 14:27'!
isUnused 
	^false! !

!P4TACVariableAlias methodsFor: 'testing' stamp: 'OliFlueckiger 5/31/2011 16:38'!
shouldBeRemote
	^ variable shouldBeRemote ! !

!P4TACVariableAlias methodsFor: 'printing' stamp: 'OliFlueckiger 5/31/2011 16:57'!
printOn: stream
	variable printOn: stream.
	stream << '`'  ! !

!P4TACRemoteArray methodsFor: 'accessing' stamp: 'OliFlueckiger 8/29/2011 20:02'!
add: aValue
	| result |
	result := self accessAt: (aValue remoteIndex: remotes size). 
	remotes add: aValue.
	^ result! !

!P4TACRemoteArray methodsFor: 'accessing' stamp: 'OliFlueckiger 6/10/2011 14:15'!
canBeVolatile 
	"remotes are inserted after liveness analysis. 
	we therefore cannot know if there are methods called within their lifespan"
	^false! !

!P4TACRemoteArray methodsFor: 'accessing' stamp: 'ToonVerwaest 5/28/2011 14:26'!
name
	^ #'_remote_'! !

!P4TACRemoteArray methodsFor: 'accessing' stamp: 'OliFlueckiger 5/31/2011 17:47'!
size
	^ remotes size! !

!P4TACRemoteArray methodsFor: 'iterating' stamp: 'ToonVerwaest 5/28/2011 14:14'!
do: aBlock
	^ remotes do: aBlock! !

!P4TACRemoteArray methodsFor: 'initialize-release' stamp: 'OliFlueckiger 6/16/2011 18:44'!
initialize
	remotes := OrderedCollection new.
	self assignedAt: 1.  ! !

!P4TACRemoteArray methodsFor: 'testing' stamp: 'ToonVerwaest 5/28/2011 14:13'!
isEmpty
	^ remotes isEmpty! !

!P4TACSelf methodsFor: 'testing' stamp: 'OliFlueckiger 7/22/2011 15:43'!
firstAssign 
	^ 1! !

!P4TACSelf methodsFor: 'testing' stamp: 'OliFlueckiger 6/9/2011 21:13'!
isConstant
	^ true! !

!P4TACSelf methodsFor: 'testing' stamp: 'OliFlueckiger 8/29/2011 13:58'!
isSelf
	^true! !

!P4TACSelf methodsFor: 'testing' stamp: 'OliFlueckiger 8/24/2011 17:30'!
shouldBeRemote 
	^false! !

!P4TACTemp methodsFor: 'testing' stamp: 'OliFlueckiger 6/9/2011 19:42'!
isConstant
	^ true! !

!P4TACClosureTemp methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 12/7/2011 22:21'!
wrapTypeGuard: types andCondition: condition around: aBlock fallback: anOtherBlock with: helper
	(types anySatisfy: [ :type | P4Closure asPClass == type ])
		ifTrue: [ ^ aBlock value.].
	anOtherBlock value.! !

!P4TACVariableAccess methodsFor: 'accessing' stamp: 'ToonVerwaest 5/29/2011 11:51'!
accept: aVisitor
	^ aVisitor visitVariableAccess: self  ! !

!P4TACVariableAccess methodsFor: 'accessing' stamp: 'OliFlueckiger 6/9/2011 17:47'!
asAsm 
	^ cachedRegister ifNil: [ cachedRegister := variable asAsm accessAt: index ] ! !

!P4TACVariableAccess methodsFor: 'accessing' stamp: 'OliFlueckiger 5/12/2011 18:17'!
index
	^ index! !

!P4TACVariableAccess methodsFor: 'accessing' stamp: 'OliFlueckiger 5/12/2011 18:17'!
index: anObject
	index := anObject! !

!P4TACVariableAccess methodsFor: 'accessing' stamp: 'OliFlueckiger 5/12/2011 19:02'!
name
	^ variable name! !

!P4TACVariableAccess methodsFor: 'accessing' stamp: 'OliFlueckiger 5/31/2011 12:42'!
printOn: stream
	variable printOn: stream.
	stream <<  '->' << index.! !

!P4TACVariableAccess methodsFor: 'accessing' stamp: 'OliFlueckiger 5/31/2011 18:38'!
register
	^ variable register ! !

!P4TACVariableAccess methodsFor: 'accessing' stamp: 'OliFlueckiger 5/16/2011 19:26'!
variable
	^ variable ! !

!P4TACVariableAccess methodsFor: 'accessing' stamp: 'OliFlueckiger 5/12/2011 19:01'!
variable: anObject
	variable := anObject! !

!P4TACVariableAccess methodsFor: 'liveness' stamp: 'ToonVerwaest 5/28/2011 18:40'!
assignedAt: number
	" when you assign to a variable[], then you actually use the variable "
	variable usedAt: number! !

!P4TACVariableAccess methodsFor: 'liveness' stamp: 'OliFlueckiger 8/5/2011 17:23'!
isUnused 
	^variable isUnused! !

!P4TACVariableAccess methodsFor: 'liveness' stamp: 'ToonVerwaest 5/27/2011 17:29'!
usedAt: number
	variable usedAt: number  ! !

!P4TACVariableAccess methodsFor: 'testing' stamp: 'OliFlueckiger 6/9/2011 19:24'!
hasRegisterAssigned 
	^ variable hasRegisterAssigned ! !

!P4TACVariableAccess methodsFor: 'testing' stamp: 'ToonVerwaest 5/12/2011 22:45'!
isAccess
	^ true! !

!P4TACVariableAccess methodsFor: 'testing' stamp: 'OliFlueckiger 5/19/2011 14:03'!
isDoubleAccess
	^ variable isAccess ! !

!P4TACConstant methodsFor: 'accessing' stamp: 'ToonVerwaest 5/6/2011 19:57'!
accept: aVisitor
	^ aVisitor visitConstant: self! !

!P4TACConstant methodsFor: 'accessing' stamp: 'ToonVerwaest 5/6/2011 22:33'!
constantValue
	^ value! !

!P4TACConstant methodsFor: 'accessing' stamp: 'OliFlueckiger 7/22/2011 17:48'!
isStaticallyTyped
	^ false! !

!P4TACConstant methodsFor: 'accessing' stamp: 'OliFlueckiger 7/22/2011 17:50'!
value: aValue
	(aValue isKindOf: SmallInteger) ifTrue: [
		typeHint := P4Package byPathName: #'Kernel.Number.SmallInteger' ].    
	value := aValue! !

!P4TACConstant methodsFor: 'accessing' stamp: 'OliFlueckiger 12/7/2011 22:21'!
wrapTypeGuard: types andCondition: condition around: aBlock fallback: anOtherBlock with: helper
	(types anySatisfy: [ :type | value pclass == type ])
		ifTrue: [ 
			aBlock value.
			^ condition ifNotEmpty: [ helper insertCondition: condition fallback: anOtherBlock ]].
	anOtherBlock value.! !

!P4TACConstant methodsFor: 'testing' stamp: 'ToonVerwaest 5/12/2011 22:45'!
isAccess
	^ false! !

!P4TACConstant methodsFor: 'testing' stamp: 'ToonVerwaest 7/18/2011 22:13'!
isConstant
	^ true! !

!P4TACConstant methodsFor: 'printing' stamp: 'OliFlueckiger 5/6/2011 17:29'!
printOn: stream 
	stream << '"'.
	value printOn: stream.
	 stream << '"'.! !

!P4TACConstant methodsFor: 'printing' stamp: 'OliFlueckiger 5/5/2011 01:09'!
printString 
	^ '"',value printString ,'"'! !

!P4TACConstant class methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 5/5/2011 01:11'!
with: aValue
	^ (self new) value: aValue ! !

!P4TACMethodObject methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/22/2011 17:24'!
accept: aVisitor
	self error: 'can only be accessed'! !

!P4TACMethodObject methodsFor: 'accessing' stamp: 'OliFlueckiger 6/22/2011 16:00'!
accessAt: anIndex
	^ (P4TACMethodObjectAccess new) index: anIndex; method: self! !

!P4TACMethodObject methodsFor: 'testing' stamp: 'ToonVerwaest 5/12/2011 22:45'!
isAccess
	^ true! !

!P4TACMethodObject class methodsFor: 'instance creation' stamp: 'OliFlueckiger 6/22/2011 16:00'!
with: aValue
	^ self new target: aValue  ! !

!P4TACMethodObjectAccess methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/22/2011 15:51'!
accept: aVisitor
	^ aVisitor visitMethodObjectAccess: self! !

!P4TACMethodObjectAccess methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/22/2011 15:59'!
printOn: stream
	methodObject printOn: stream.
	stream << '[' << index << ']'! !

!P4TACMethodObjectAccess methodsFor: 'accessing' stamp: 'OliFlueckiger 6/15/2011 16:54'!
index
	^ index! !

!P4TACMethodObjectAccess methodsFor: 'accessing' stamp: 'OliFlueckiger 6/15/2011 16:54'!
index: anObject
	index := anObject! !

!P4TACMethodObjectAccess methodsFor: 'accessing' stamp: 'OliFlueckiger 6/22/2011 15:58'!
method: aMethodObject
	methodObject := aMethodObject! !

!P4TACMethodObjectAccess methodsFor: 'accessing' stamp: 'OliFlueckiger 7/14/2011 18:43'!
target
	^ methodObject    ! !

!P4TACReference methodsFor: 'accessing' stamp: 'OliFlueckiger 6/7/2011 14:29'!
accept: visitor
	^ visitor visitReference: self! !

!P4TACReference methodsFor: 'accessing' stamp: 'OliFlueckiger 6/7/2011 15:15'!
printOn: stream 
	stream << '&' << target asString .! !

!P4TACReference methodsFor: 'accessing' stamp: 'OliFlueckiger 6/7/2011 14:22'!
target
	^ target! !

!P4TACReference methodsFor: 'accessing' stamp: 'OliFlueckiger 6/7/2011 14:22'!
target: anObject
	target := anObject! !

!P4TACReference class methodsFor: 'instance creation' stamp: 'ToonVerwaest 6/10/2011 16:27'!
target: aTarget
	^ self new target: aTarget! !

!P4TACExternalReference methodsFor: 'visitor accepting' stamp: 'ToonVerwaest 6/17/2011 20:02'!
accept: visitor
	^ visitor visitConstantReference: self! !

!P4TACExternalReference methodsFor: 'testing' stamp: 'ToonVerwaest 7/18/2011 22:30'!
isConstant
	^ true! !

!P4TACExternalReference methodsFor: 'testing' stamp: 'OliFlueckiger 12/7/2011 22:21'!
wrapTypeGuard: types andCondition: condition around: aBlock fallback: anOtherBlock with: helper
	(types anySatisfy: [ :type | target pclass == type ])
		ifTrue: [ 
			aBlock value.
			^ condition ifNotEmpty: [ helper insertCondition: condition fallback: anOtherBlock ]].
	anOtherBlock value.! !

!P4TACVariableName methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/5/2011 12:28'!
name
	^ self! !

!P4TACVariableName class methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/5/2011 12:28'!
instance
	^ inst ifNil: [ ^ inst := self new]! !

!P4A2THelper methodsFor: 'convenience' stamp: 'ToonVerwaest 5/25/2011 17:51'!
annotation: anAnnotation! !

!P4A2THelper methodsFor: 'convenience' stamp: 'OliFlueckiger 7/21/2011 11:34'!
currentHost: aMethod  ! !

!P4A2THelper methodsFor: 'convenience' stamp: 'OliFlueckiger 8/31/2011 16:38'!
invoke: message for: receiver with: arguments
	"load selector"
	builder move: (builder loadConstant: message selector) to: self selectorVariable.
	builder invoke: message numOfArguments.
! !

!P4A2THelper methodsFor: 'convenience' stamp: 'OliFlueckiger 8/12/2011 15:33'!
loadArguments: arguments andReceiver: receiver toSend: message
	| nativeArgsize |
	"the first argument is the receiver -> nativeArgsize := args + 1"
	nativeArgsize := arguments size + 1.
	
	builder move: receiver to: ( self arg: 1 of: nativeArgsize ).

	arguments withIndexDo: [ :arg :index |
		builder
			move: arg
			to: (self arg: index + 1 of: nativeArgsize) ].
	! !

!P4A2THelper methodsFor: 'convenience' stamp: 'OliFlueckiger 7/25/2011 18:04'!
loadMethodArguments: parameters
	| theSelf numOfArgs aLocal i |

	"arg 1 is the caller class"
	
	numOfArgs := parameters size + 1.
	
	theSelf := builder local: #self.  
	builder move: ( self arg: 1 of: numOfArgs ) to: theSelf.
	i := 0.
	parameters do: [ :arg |
		aLocal := builder declare: arg name.
		i := i + 1.
		builder move: ( self arg: i + 1 of: numOfArgs ) to: aLocal ]. 
	
	builder volatileFence! !

!P4A2THelper methodsFor: 'convenience' stamp: 'ToonVerwaest 5/26/2011 11:35'!
methodReturn: aReturnExpression
	| ret |
	ret := aReturnExpression expression accept: methodCompiler.
	builder return: ret.
	^ ret! !

!P4A2THelper methodsFor: 'convenience' stamp: 'OliFlueckiger 7/26/2011 18:13'!
unrollPrimitiveFor: callable 
	| code |
	callable isPrimitive ifFalse: [^self].
	code := callable primitiveCalling.
	code positionAtBeginning.
	builder 
		directCall: callable primitive;
		compare: (P4TACConstant with: 0) to: self resultVariable;
		jumpEqual: callable entry;
		return: self resultVariable ! !

!P4A2THelper methodsFor: 'arguments' stamp: 'ToonVerwaest 5/28/2011 16:24'!
arg: num of: total
	^ (P4TACArgument withRegister: (processor callRegister: num of: total)) name: 'arg', num asString! !

!P4A2THelper methodsFor: 'arguments' stamp: 'OliFlueckiger 9/7/2011 13:33'!
intermediate
	^ (P4TACFixedVariable withRegister: (processor intermediateRegisters at: 2)) name: #intermediate! !

!P4A2THelper methodsFor: 'arguments' stamp: 'OliFlueckiger 9/7/2011 13:11'!
intermediateLValue
	^ (P4TACFixedVariable withRegister: (processor intermediateRegisters at: 1)) name: #intermediateLValue! !

!P4A2THelper methodsFor: 'arguments' stamp: 'OliFlueckiger 7/29/2011 07:18'!
stackPointer 
	^ (P4TACFixedVariable withRegister: (processor stackPointer)) name: #stack! !

!P4A2THelper methodsFor: 'accessing' stamp: 'OliFlueckiger 8/24/2011 10:42'!
builder: aBuilder
	builder := aBuilder.
	resultVariable := builder resultVariable: processor resultVariable.
	inlinedMethods builder: builder.! !

!P4A2THelper methodsFor: 'accessing' stamp: 'ToonVerwaest 5/25/2011 18:07'!
methodCompiler: anObject
	methodCompiler := anObject! !

!P4A2THelper methodsFor: 'accessing' stamp: 'ToonVerwaest 5/25/2011 18:07'!
processor: anObject
	processor := anObject! !

!P4A2THelper methodsFor: 'accessing' stamp: 'ToonVerwaest 5/28/2011 18:33'!
resultVariable
	^ resultVariable! !

!P4A2THelper methodsFor: 'accessing' stamp: 'OliFlueckiger 9/7/2011 12:35'!
selectorVariable
	^ resultVariable ! !

!P4A2THelper methodsFor: 'accessing' stamp: 'OliFlueckiger 9/7/2011 12:35'!
typeVariable
	^ resultVariable! !

!P4A2THelper methodsFor: 'optimizations' stamp: 'OliFlueckiger 8/24/2011 10:42'!
implements: aSelector
	^ inlinedMethods implements: aSelector! !

!P4A2THelper methodsFor: 'optimizations' stamp: 'OliFlueckiger 8/24/2011 10:42'!
send: aMessage to: aReceiver with: theArguments for: aVisitor
	^ inlinedMethods send: aMessage to: aReceiver with: theArguments for: aVisitor! !

!P4A2THelper methodsFor: 'initialize-release' stamp: 'OliFlueckiger 8/29/2011 12:53'!
initialize
	groundTypes := false.
	inlinedMethods := P4TACInlineMessages new
							builder: builder;
							helper: self.! !

!P4A2THelper methodsFor: 'typeChecking' stamp: 'OliFlueckiger 8/24/2011 12:35'!
inlineCacheHitCheck: method
	| invokeBlock |
	invokeBlock := builder nextBasicBlock.
	method invokeBlock: invokeBlock.  
	^ self 
		inlineCacheHitCheck: method host 
		for: (self arg: 1 of: methodCompiler argCount) 
		fallbackLabel: invokeBlock! !

!P4A2THelper methodsFor: 'typeChecking' stamp: 'OliFlueckiger 12/7/2011 19:53'!
inlineCacheHitCheck: host for: receiver fallbackLabel: invokeBlock
	| endBlock taggedBlock phost |
	
	phost := host inPharo.
	
	builder testBit: 0 on: receiver.
	
	phost == P4SmallInteger  
		ifTrue: [ ^ builder jumpNoCarry: invokeBlock].
			
	(P4SmallInteger inheritsFrom: phost) 
		ifTrue: [
			taggedBlock := builder nextBasicBlock.
			endBlock := builder nextBasicBlock.

			builder shortJumpCarry: taggedBlock.
	
			builder 
				compare: (receiver accessClass)
				to: self typeVariable.
			builder jumpNotEqual: invokeBlock.
			builder shortJump: endBlock.  

			builder useAsNextBasicBlock: taggedBlock.
			builder
				compare: (P4TACExternalReference target: P4SmallInteger asPClass theBehavior)
				to: self typeVariable.
			builder jumpNotEqual: invokeBlock.

			^ builder useAsNextBasicBlock: endBlock. ].

		builder jumpCarry: invokeBlock.
		builder 
			compare: (receiver accessClass)
			to: self typeVariable.
		builder jumpNotEqual: invokeBlock.		  
		
		
! !

!P4A2THelper methodsFor: 'typeChecking' stamp: 'OliFlueckiger 8/29/2011 11:51'!
insertCondition: consitions fallback: aFallback
	self insertCondition: consitions fallback: aFallback block: builder nextBasicBlock.! !

!P4A2THelper methodsFor: 'typeChecking' stamp: 'OliFlueckiger 8/29/2011 12:05'!
insertCondition: conditions fallback: aFallback block: fallbackBlock
	| endBlock |
	endBlock := builder nextBasicBlock.
	
	(conditions includes: #carry) 
		ifTrue: [ builder shortJumpCarry: fallbackBlock ].  
	
	self flag: 'we just assume that the fallback will not be more than a small jump away. this should be the case since the fallback will normally just call a function'.
	builder shortJump: endBlock.
	
	builder useAsNextBasicBlock: fallbackBlock.
	aFallback value.
	
	builder useAsNextBasicBlock: endBlock.! !

!P4A2THelper methodsFor: 'typeChecking' stamp: 'OliFlueckiger 12/7/2011 19:52'!
insertTypeGuard: types andCondition: conditions for: receiver around: aBlock fallback: aFallback
	| nextBlock codeBlock fallbackBlock type |
	
	builder volatileFence.
	codeBlock := builder nextBasicBlock.
	fallbackBlock := builder nextBasicBlock.
	
	1 to: (types size - 1) do: [ :i |
		type := types at: i.
		nextBlock := builder nextBasicBlock.
		type inPharo ~~ P4SmallInteger 
			ifTrue: [ builder move: (builder loadConstant: type theBehavior) to: self typeVariable ].
		self inlineCacheHitCheck: type for: receiver fallbackLabel: nextBlock.
		builder shortJump: codeBlock.  
		builder useAsNextBasicBlock: nextBlock].
	
	type := types at: types size.
	
	type inPharo ~~ P4SmallInteger 
		ifTrue: [ builder move: (builder loadConstant: type theBehavior) to: self typeVariable ].
	self inlineCacheHitCheck: type for: receiver fallbackLabel: fallbackBlock.
	
	builder useAsNextBasicBlock: codeBlock.  
	aBlock value.
	
	self insertCondition: conditions fallback: aFallback block: fallbackBlock.! !

!P4A2THelper methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/28/2011 12:31'!
insertMethodPreamble: method
	self inlineCacheHitCheck: method! !

!P4A2THelper methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 9/7/2011 14:40'!
insertPopArguments! !

!P4A2THelper methodsFor: 'visitor' stamp: 'OliFlueckiger 8/18/2011 12:28'!
invokeBlockFor: method
	method invokeBlock 
		<< ((builder loadConstant: method selector ) moveTo: self resultVariable);
		<< (P4TACJump to: (P4Object earlySelectorAddress: #invoke:)).! !

!P4A2TStatic methodsFor: 'convenience' stamp: 'OliFlueckiger 7/22/2011 16:13'!
currentHost: host 
	(host inPharo class canPerform: #typeHints) ifTrue: [
		host inPharo typeHints keysAndValuesDo: [ :name :type |
			self typeHint: name as: type]]! !

!P4A2TStatic methodsFor: 'convenience' stamp: 'OliFlueckiger 7/22/2011 16:16'!
resolve: classPath
	^P4Package byPathName: classPath! !

!P4A2TStatic methodsFor: 'hardwired-calls' stamp: 'OliFlueckiger 12/8/2011 14:39'!
insertTypeGuardForCall: method expected: aType
	| receiver |
	self 
		insertTypeGuard: {aType}
		andCondition: {}
		for: (self arg: 1 of: methodCompiler argCount)
		around: [
			builder 
				directCallSkipTypeCheck: method earlySelectorAddress 
				on: method pMethodClass.]
		fallback: [
			builder 
				move: (builder loadConstant: method selector) to: self resultVariable;
				invoke: method numArgs.]! !

!P4A2TStatic methodsFor: 'visitor' stamp: 'OliFlueckiger 12/7/2011 19:50'!
invoke: message for: receiver with: arguments
	| method |
	(receiver hasTypeHint and: [groundTypes not]) ifTrue: [	
			builder move: (builder loadConstant: receiver typeHint) to: self typeVariable.
			^ builder directCall: (receiver typeHint earlySelectorAddress: message selector) ] .
		
	(receiver hasTypeHint) ifTrue: [ 
		method := receiver typeHint pLookupSelector: message selector.
		^ self insertTypeGuardForCall: method expected: receiver typeHint ].
	
	(receiver isStaticallyTyped)	ifTrue: [
		method := receiver staticType pLookupSelector: message selector.
			^ builder 
				directCallSkipTypeCheck: method earlySelectorAddress   
				on: method pMethodClass ].
	
	^ super invoke: message for: receiver with: arguments.! !

!P4A2TStatic methodsFor: 'accessing' stamp: 'OliFlueckiger 7/22/2011 14:58'!
staticType: variable as: type
		(builder localOrInstVar: variable) staticType: (self resolve: type). ! !

!P4A2TStatic methodsFor: 'accessing' stamp: 'OliFlueckiger 7/22/2011 14:58'!
typeHint: variable as: type
	(builder localOrInstVar: variable) typeHint: (self resolve: type).  
! !

!P4A2TKernel methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/18/2011 12:15'!
annotation: annotation
	( annotation selector == #fixedType:as: ) ifTrue: [
		self staticType: annotation arguments first symbol as: annotation arguments second symbol ].
	( annotation selector == #typeHint:as: ) ifTrue: [
		self typeHint: annotation arguments first symbol as: annotation arguments second symbol ].
	( annotation selector == #rename: ) ifTrue: [ 
		methodCompiler method selector: annotation arguments first symbol  ].
	( annotation selector == #globalName: ) ifTrue: [
		methodCompiler method codeUid: annotation arguments first symbol ].
	( annotation selector == #pprimitive: ) ifTrue: [
		methodCompiler method primitive: annotation arguments first symbol ].
	( annotation selector == #renameExport: ) ifTrue: [
		methodCompiler method selector: annotation arguments first symbol ].
	( annotation selector == #groundTypes ) ifTrue: [
		groundTypes := true ].! !

!P4A2TInvoke methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 9/8/2011 14:37'!
insertMethodPreamble: method
	method invokeBlock: builder nextBasicBlock.
	processor callRegisters reverseDo: [ :r | builder push: r ]! !

!P4A2TInvoke methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 9/8/2011 14:40'!
insertPopArguments
	processor callRegisters do: [ :r | builder pop: r ]! !

!P4A2TInvoke methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/24/2011 14:57'!
loadMethodArguments: parameters
	| theSelf paramName |
	"invoke gets the only 1 arg (the selector) "
	
	theSelf := builder self.
	builder move: ( self arg: 1 of: 1 ) to: theSelf.
	
	paramName := parameters first name.
	builder declare: paramName.
	builder move: self selectorVariable to: (builder local: paramName).
	
	builder volatileFence! !

!P4TACBuilder methodsFor: 'tac-value-builder' stamp: 'ToonVerwaest 6/14/2011 15:00'!
add: value to: aVariable
	currentBasicBlock << (P4TACAdd a: value to: aVariable)! !

!P4TACBuilder methodsFor: 'tac-value-builder' stamp: 'ToonVerwaest 6/14/2011 15:01'!
and: value with: aVariable
	currentBasicBlock << (P4TACAnd a: value to: aVariable)! !

!P4TACBuilder methodsFor: 'tac-value-builder' stamp: 'OliFlueckiger 8/31/2011 17:53'!
closure: aClosure inScope: aCallable
	| closure capture temp |
	temp := self nextClosureTemp.
	closure := P4TACClosure new.
	closure code: aClosure.
	closure outerScope: aCallable.
	capture := P4TACCaptureClosure new.
	capture closure: closure.
	capture capturedAt: currentBasicBlock.
	capture resultVariable: temp.
	currentBasicBlock << capture.
	^ capture! !

!P4TACBuilder methodsFor: 'tac-value-builder' stamp: 'OliFlueckiger 6/8/2011 16:54'!
compare: value to: aVariable
	currentBasicBlock << (P4TACCompare a: value to: aVariable)! !

!P4TACBuilder methodsFor: 'tac-value-builder' stamp: 'OliFlueckiger 6/8/2011 16:56'!
directCall: aSymbol
	currentBasicBlock << (P4TACCall to: aSymbol)! !

!P4TACBuilder methodsFor: 'tac-value-builder' stamp: 'OliFlueckiger 8/9/2011 18:46'!
directCallSkipTypeCheck: aSymbol on: type
	currentBasicBlock << ((P4TACCall to: aSymbol) offset: type typeCheckByteSize)! !

!P4TACBuilder methodsFor: 'tac-value-builder' stamp: 'OliFlueckiger 8/12/2011 16:49'!
directReturn: value
	self move: value to: resultVariable.
	currentBasicBlock << P4TACReturn new noTeardown
! !

!P4TACBuilder methodsFor: 'tac-value-builder' stamp: 'OliFlueckiger 5/26/2011 11:57'!
endBlock
	currentBasicBlock nextBlock ifNotNil: [ self error: 'Trying to end non-final block' ].
	currentBasicBlock nextBlock: P4TACEndBlock new! !

!P4TACBuilder methodsFor: 'tac-value-builder' stamp: 'OliFlueckiger 8/31/2011 16:27'!
indirectCall: target
	currentBasicBlock << (P4TACIndirectCall to: target)! !

!P4TACBuilder methodsFor: 'tac-value-builder' stamp: 'OliFlueckiger 6/22/2011 11:31'!
indirectJump: target
	currentBasicBlock << (P4TACIndirectJump to: target)! !

!P4TACBuilder methodsFor: 'tac-value-builder' stamp: 'OliFlueckiger 9/6/2011 17:16'!
indirectTailJump: target
	currentBasicBlock 
		<< P4TACTeardown new;
		<< (P4TACIndirectJump to: target)! !

!P4TACBuilder methodsFor: 'tac-value-builder' stamp: 'OliFlueckiger 8/11/2011 19:02'!
intAdd: value to: aVariable
	currentBasicBlock 
		<< (P4TACXOr a: (P4TACConstant with: 1) to: aVariable);
		<< (P4TACAdd a: value to: aVariable)! !

!P4TACBuilder methodsFor: 'tac-value-builder' stamp: 'OliFlueckiger 8/29/2011 22:46'!
intSub: value from: aVariable
	currentBasicBlock 
		<< (P4TACSub a: value to: aVariable);
		<< (P4TACOr a: (P4TACConstant with: 1) to: aVariable)! !

!P4TACBuilder methodsFor: 'tac-value-builder' stamp: 'OliFlueckiger 8/18/2011 12:28'!
invoke: n
	currentBasicBlock << (P4TACCall to: (P4Object earlySelectorAddress: #invoke:) )! !

!P4TACBuilder methodsFor: 'tac-value-builder' stamp: 'OliFlueckiger 6/8/2011 17:39'!
jump: target
	currentBasicBlock << (P4TACJump to: target)! !

!P4TACBuilder methodsFor: 'tac-value-builder' stamp: 'OliFlueckiger 7/26/2011 19:01'!
jumpCarry: target
	currentBasicBlock << ((P4TACJump to: target) carry)! !

!P4TACBuilder methodsFor: 'tac-value-builder' stamp: 'OliFlueckiger 6/17/2011 16:23'!
jumpEqual: target
	currentBasicBlock << ((P4TACJump to: target) equals)! !

!P4TACBuilder methodsFor: 'tac-value-builder' stamp: 'OliFlueckiger 6/17/2011 16:22'!
jumpNoCarry: target
	currentBasicBlock << ((P4TACJump to: target) noCarry)! !

!P4TACBuilder methodsFor: 'tac-value-builder' stamp: 'OliFlueckiger 6/17/2011 16:22'!
jumpNotEqual: target
	currentBasicBlock << ((P4TACJump to: target) notEquals)! !

!P4TACBuilder methodsFor: 'tac-value-builder' stamp: 'ToonVerwaest 8/5/2011 12:28'!
literalFrameIndex: aConstant	
	literals add: aConstant.
	^ literals size.! !

!P4TACBuilder methodsFor: 'tac-value-builder' stamp: 'ToonVerwaest 8/5/2011 12:38'!
loadConstant: aConstant
	| index |
	index := self literalFrameIndex: aConstant.
	^ (method accessAt: index)! !

!P4TACBuilder methodsFor: 'tac-value-builder' stamp: 'OliFlueckiger 6/9/2011 19:14'!
move: aTACValue to: aTACVariable
	currentBasicBlock << (aTACValue moveTo: aTACVariable ).! !

!P4TACBuilder methodsFor: 'tac-value-builder' stamp: 'ToonVerwaest 6/14/2011 15:01'!
or: value with: aVariable
	currentBasicBlock << (P4TACOr a: value to: aVariable)! !

!P4TACBuilder methodsFor: 'tac-value-builder' stamp: 'OliFlueckiger 8/24/2011 11:37'!
pHalt
	currentBasicBlock << P4TACHalt new.
	^ self loadConstant: nil.  ! !

!P4TACBuilder methodsFor: 'tac-value-builder' stamp: 'OliFlueckiger 6/8/2011 16:13'!
pop: register
	currentBasicBlock << register pop! !

!P4TACBuilder methodsFor: 'tac-value-builder' stamp: 'OliFlueckiger 6/8/2011 16:13'!
push: register
	currentBasicBlock << register push! !

!P4TACBuilder methodsFor: 'tac-value-builder' stamp: 'OliFlueckiger 6/8/2011 16:13'!
return: value
	self move: value to: resultVariable.
	currentBasicBlock << P4TACReturn new
! !

!P4TACBuilder methodsFor: 'tac-value-builder' stamp: 'OliFlueckiger 6/16/2011 13:53'!
setMethodObject: aCallable
	method := aCallable methodObject  ! !

!P4TACBuilder methodsFor: 'tac-value-builder' stamp: 'OliFlueckiger 6/17/2011 17:04'!
shortJump: target
	currentBasicBlock << ((P4TACJump to: target) short)! !

!P4TACBuilder methodsFor: 'tac-value-builder' stamp: 'OliFlueckiger 7/26/2011 18:59'!
shortJumpCarry: target
	currentBasicBlock << ((P4TACJump to: target) carry; short)! !

!P4TACBuilder methodsFor: 'tac-value-builder' stamp: 'ToonVerwaest 6/18/2011 01:30'!
shortJumpEqual: target
	currentBasicBlock << ((P4TACJump to: target) equals; short)! !

!P4TACBuilder methodsFor: 'tac-value-builder' stamp: 'OliFlueckiger 6/17/2011 17:05'!
shortJumpNoCarry: target
	currentBasicBlock << ((P4TACJump to: target) noCarry; short)! !

!P4TACBuilder methodsFor: 'tac-value-builder' stamp: 'OliFlueckiger 6/17/2011 17:05'!
shortJumpNotEqual: target
	currentBasicBlock << ((P4TACJump to: target) notEquals; short)! !

!P4TACBuilder methodsFor: 'tac-value-builder' stamp: 'OliFlueckiger 8/12/2011 16:02'!
tailJump: target
	currentBasicBlock 
		<< P4TACTeardown new;
		<< (P4TACJump to: target)! !

!P4TACBuilder methodsFor: 'tac-value-builder' stamp: 'OliFlueckiger 8/12/2011 16:41'!
teardown
	currentBasicBlock 
		<< P4TACTeardown new! !

!P4TACBuilder methodsFor: 'tac-value-builder' stamp: 'OliFlueckiger 9/7/2011 14:33'!
teardownToPerform
	currentBasicBlock 
		<< P4TACTeardown new keepArguments! !

!P4TACBuilder methodsFor: 'tac-value-builder' stamp: 'ToonVerwaest 6/14/2011 17:36'!
test: value with: aVariable
	currentBasicBlock << (P4TACTest a: value to: aVariable)! !

!P4TACBuilder methodsFor: 'tac-value-builder' stamp: 'OliFlueckiger 6/17/2011 16:14'!
testBit: num on: aVariable
	currentBasicBlock << (P4TACBitTest of: num in: aVariable)! !

!P4TACBuilder methodsFor: 'tac-value-builder' stamp: 'OliFlueckiger 6/10/2011 14:25'!
volatileFence
	currentBasicBlock << P4TACVolatileFence new.
! !

!P4TACBuilder methodsFor: 'accessing' stamp: 'ToonVerwaest 7/19/2011 17:34'!
addGlobal: anObject
	^ globals at: anObject name asSymbol  put: (P4TACExternalReference target: anObject )! !

!P4TACBuilder methodsFor: 'accessing' stamp: 'OliFlueckiger 12/8/2011 14:22'!
classReferenceFor: aName
	klass := (Smalltalk globals at: aName ifAbsent: [ self error: 'Undeclared class ', aName ]) asPClass.
	^ self loadConstant: klass
! !

!P4TACBuilder methodsFor: 'accessing' stamp: 'OliFlueckiger 5/10/2011 18:08'!
currentBasicBlock
	^ currentBasicBlock
! !

!P4TACBuilder methodsFor: 'accessing' stamp: 'OliFlueckiger 7/15/2011 14:37'!
global: aGlobal
	^ globals at: aGlobal! !

!P4TACBuilder methodsFor: 'accessing' stamp: 'ToonVerwaest 7/19/2011 17:33'!
initializeGlobals
	globals := P4IdentityDictionary new.
	self 
		addGlobal: nil;
		addGlobal: true;
		addGlobal: false.! !

!P4TACBuilder methodsFor: 'accessing' stamp: 'OliFlueckiger 8/24/2011 14:49'!
instVar: aName
	^self instVar: aName ifAbsent: [ self error: 'this is no instVar']! !

!P4TACBuilder methodsFor: 'accessing' stamp: 'OliFlueckiger 8/24/2011 14:48'!
instVar: aName ifAbsent: aBlock
	^ instVars at: aName ifAbsentPut: [
		instVarsIdx at: aName 
			ifPresent: [ :i | self self accessAt: i ]
			ifAbsent: aBlock ]! !

!P4TACBuilder methodsFor: 'accessing' stamp: 'OliFlueckiger 8/24/2011 14:51'!
instVarOrGlobal: aName
	^ self instVar: aName ifAbsent: [ 
		globals at: aName ifAbsent: [
			(aName at: 1) isUppercase 
				ifTrue: [ self classReferenceFor: aName ]
				ifFalse: [ self error: 'Unknown variable: ', aName ]]]
! !

!P4TACBuilder methodsFor: 'accessing' stamp: 'OliFlueckiger 5/12/2011 17:19'!
literals
	^ literals! !

!P4TACBuilder methodsFor: 'accessing' stamp: 'OliFlueckiger 5/31/2011 16:45'!
local: aName
	^ locals
		at: aName
		ifAbsent: [ self error: 'no such local variable' ]! !

!P4TACBuilder methodsFor: 'accessing' stamp: 'OliFlueckiger 6/9/2011 20:31'!
local: aName ifAbsent: aBlock
	^ locals
		at: aName
		ifAbsent: aBlock! !

!P4TACBuilder methodsFor: 'accessing' stamp: 'ToonVerwaest 5/26/2011 18:08'!
locals: aDictionary
	locals := aDictionary! !

!P4TACBuilder methodsFor: 'accessing' stamp: 'ToonVerwaest 5/28/2011 18:37'!
resultVariable: aRegister
	^ resultVariable := P4TACResultVariable withRegister: aRegister! !

!P4TACBuilder methodsFor: 'accessing' stamp: 'OliFlueckiger 8/24/2011 15:06'!
self
	^ locals at: #self ifAbsent: selfImport! !

!P4TACBuilder methodsFor: 'accessing' stamp: 'ToonVerwaest 5/28/2011 14:31'!
temps: aCollection
	temps := aCollection! !

!P4TACBuilder methodsFor: 'helper' stamp: 'OliFlueckiger 9/6/2011 16:52'!
bitShift: target by: num
	currentBasicBlock << P4TACBitShift new target: target; bits: num! !

!P4TACBuilder methodsFor: 'helper' stamp: 'OliFlueckiger 8/11/2011 18:09'!
declare: variableName
	^ locals at: variableName ifAbsentPut: (P4TACLocal named: variableName)! !

!P4TACBuilder methodsFor: 'helper' stamp: 'OliFlueckiger 8/24/2011 14:47'!
declareInstVars: someInstVars
	| index |
	index := 0.
	someInstVars do: [ :v |
		instVarsIdx at: v asSymbol put: index.
		index := index + 1 ]! !

!P4TACBuilder methodsFor: 'helper' stamp: 'ToonVerwaest 5/26/2011 17:21'!
declareLocals: someLocals
	| name |
	someLocals do: [ :v |
		name := v name asSymbol.
		self declare: name.  
	]! !

!P4TACBuilder methodsFor: 'helper' stamp: 'OliFlueckiger 6/9/2011 21:17'!
declareSelf: variableName
	^ locals at: variableName put: (P4TACSelf named: variableName)! !

!P4TACBuilder methodsFor: 'helper' stamp: 'OliFlueckiger 5/26/2011 14:45'!
firstBasicBlock
	^ currentBasicBlock := P4TACBasicBlock number: 1  
	! !

!P4TACBuilder methodsFor: 'helper' stamp: 'OliFlueckiger 8/24/2011 14:53'!
loadSelf: variableName from: aBlock
	selfImport := aBlock! !

!P4TACBuilder methodsFor: 'helper' stamp: 'OliFlueckiger 8/24/2011 14:50'!
localOrInstVar: aName
	| temp |
	^ self local: aName ifAbsent: [
		self instVar: aName ifAbsent: [ self error: 'no such local or intsance variable'] ].! !

!P4TACBuilder methodsFor: 'helper' stamp: 'OliFlueckiger 5/24/2011 16:51'!
nextBasicBlock
	^ P4TACBasicBlock new
	! !

!P4TACBuilder methodsFor: 'helper' stamp: 'OliFlueckiger 8/31/2011 17:54'!
nextClosureTemp
	^ temps add: (P4TACClosureTemp named: ('closureTmp', temps size asString)).! !

!P4TACBuilder methodsFor: 'helper' stamp: 'OliFlueckiger 6/9/2011 17:12'!
nextTemp
	^ temps add: (P4TACTemp named: ('tmp', temps size asString)).! !

!P4TACBuilder methodsFor: 'helper' stamp: 'OliFlueckiger 5/26/2011 14:41'!
postamble
	^ currentBasicBlock := P4TACBasicBlock number: -1
! !

!P4TACBuilder methodsFor: 'helper' stamp: 'OliFlueckiger 5/26/2011 14:52'!
preamble
	^ currentBasicBlock := P4TACBasicBlock number: 0
! !

!P4TACBuilder methodsFor: 'helper' stamp: 'OliFlueckiger 6/9/2011 20:52'!
temporaryStore: aValue
	| temp |
	aValue isConstant ifTrue: [ ^ aValue ].
	temp := self nextTemp.
	self move: aValue to: temp.
	^ temp! !

!P4TACBuilder methodsFor: 'helper' stamp: 'OliFlueckiger 9/6/2011 16:52'!
untag: target
	currentBasicBlock << P4TACBitShiftRight new target: target; bits: 1! !

!P4TACBuilder methodsFor: 'helper' stamp: 'OliFlueckiger 5/26/2011 14:39'!
useAsNextBasicBlock: aBlock
	currentBasicBlock ifNotNil: [ 
		^ currentBasicBlock := currentBasicBlock nextBlock: aBlock ].
	aBlock number: 0.
	currentBasicBlock := aBlock 
! !

!P4TACBuilder methodsFor: 'initialize-release' stamp: 'OliFlueckiger 8/24/2011 15:21'!
clearInstVars
	instVars removeAll.! !

!P4TACBuilder methodsFor: 'initialize-release' stamp: 'OliFlueckiger 8/24/2011 15:16'!
initialize
	literals := OrderedCollection new.
	instVars := IdentityDictionary new.
	instVarsIdx := IdentityDictionary new.
	locals := IdentityDictionary new.
	self initializeGlobals.! !

!P4TACBuilder methodsFor: 'initialize-release' stamp: 'OliFlueckiger 8/24/2011 15:15'!
reset
	literals removeAll.
	instVars removeAll.
	instVarsIdx removeAll.
	locals removeAll.! !

!P4TACBuilder methodsFor: 'globals' stamp: 'ToonVerwaest 8/5/2011 12:41'!
false
	^ globals at: #false! !

!P4TACBuilder methodsFor: 'globals' stamp: 'ToonVerwaest 8/5/2011 12:41'!
nil
	^ globals at: #nil! !

!P4TACBuilder methodsFor: 'globals' stamp: 'ToonVerwaest 8/5/2011 12:39'!
true
	^ globals at: #true! !

!P4TACInlineMessages methodsFor: 'control-messages' stamp: 'OliFlueckiger 8/30/2011 12:36'!
+ other
	| res msg aReceiver blockTmp anOther |
	aReceiver := builder temporaryStore: (receiver accept: visitor).
	anOther := other accept: visitor.
	res := builder nextTemp.
	aReceiver 
		wrapTypeGuard: {P4SmallInteger asPClass}
		andCondition: {#carry}
		around: [ 
			builder move: aReceiver to: res.
			builder intAdd: anOther to: res.]
		fallback: [ 
			msg := P4TACMessage new selector: #+ ; numOfArguments: 1.
			visitor tacSend: msg to: aReceiver with: {anOther}.
			builder move: helper resultVariable to: res. ]
		with: helper.
	^ res! !

!P4TACInlineMessages methodsFor: 'control-messages' stamp: 'OliFlueckiger 8/30/2011 12:36'!
- other
	| res msg aReceiver blockTmp anOther |
	aReceiver := builder temporaryStore: (receiver accept: visitor).
	anOther := other accept: visitor.
	res := builder nextTemp.
	aReceiver 
		wrapTypeGuard: {P4SmallInteger asPClass}
		andCondition: {#carry}
		around: [ 
			builder move: aReceiver to: res.
			builder intSub: anOther from: res.]
		fallback: [ 
			msg := P4TACMessage new selector: #- ; numOfArguments: 1.
			visitor tacSend: msg to: aReceiver with: {anOther}.
			builder move: helper resultVariable to: res. ]
		with: helper.
	^ res! !

!P4TACInlineMessages methodsFor: 'control-messages' stamp: 'ToonVerwaest 8/5/2011 12:35'!
== other
	| nextBlock resultValue left right temp trueBlock |

	left := receiver accept: visitor.
	right := other accept: visitor.
	temp := builder nextTemp.
	builder move: right to: temp.
	
	trueBlock := builder nextBasicBlock.
	nextBlock := builder nextBasicBlock.
	resultValue := builder nextTemp.
	
	builder compare: left to: temp.
	builder jumpEqual: trueBlock.
	builder move: builder false to: resultValue.
	builder jump: nextBlock.
		
	builder useAsNextBasicBlock: trueBlock.  
	builder move: builder true to: resultValue.

	builder useAsNextBasicBlock: nextBlock.	
	^ resultValue ! !

!P4TACInlineMessages methodsFor: 'control-messages' stamp: 'OliFlueckiger 8/30/2011 12:26'!
ifFalse: block
	| aReceiver nextBlock fallbackBlock resultValue testBlock msg aBlock |
	aReceiver := builder temporaryStore: (receiver accept: visitor).
	resultValue := builder nextTemp.
	builder move: builder nil to: resultValue.
	
	nextBlock := builder nextBasicBlock.
	testBlock := builder nextBasicBlock.
	fallbackBlock := builder nextBasicBlock.

	builder compare: builder false to: aReceiver.
	builder jumpNotEqual: testBlock.

	visitor visitInlinedBlock: block returnTo: resultValue.
	builder shortJump: nextBlock.
	
	builder useAsNextBasicBlock: testBlock.    
	builder compare: builder true to: aReceiver.   
	builder shortJumpNotEqual: fallbackBlock.
	builder shortJump: nextBlock.
	  
	builder useAsNextBasicBlock: fallbackBlock.    
	msg := P4TACMessage new selector: #ifFalse: ; numOfArguments: 1.
	aBlock := block accept: visitor.
	visitor tacSend: msg to: aReceiver with: { aBlock }.
	builder move: helper resultVariable to: resultValue.
	
	builder useAsNextBasicBlock: nextBlock.
	
	^ resultValue! !

!P4TACInlineMessages methodsFor: 'control-messages' stamp: 'OliFlueckiger 8/30/2011 12:41'!
ifFalse: falseBlock ifTrue: trueBlock
	| trueBasicBlock nextBasicBlock result value fallbackBasicBlock msg trueArg falseArg |
	value := builder temporaryStore: (receiver accept: visitor).
	
	trueBasicBlock := builder nextBasicBlock.  
	fallbackBasicBlock := builder nextBasicBlock.
	nextBasicBlock := builder nextBasicBlock.

	result := builder nextTemp .
	
	builder compare: builder true to: value.
	builder jumpEqual: trueBasicBlock.
	builder compare: builder false to: value.
	builder jumpNotEqual: fallbackBasicBlock.
	
	visitor visitInlinedBlock: falseBlock returnTo: result .
	builder jump: nextBasicBlock.
		
	builder useAsNextBasicBlock: trueBasicBlock.
	visitor visitInlinedBlock: trueBlock returnTo: result.
	builder jump: nextBasicBlock.
	
	builder useAsNextBasicBlock: fallbackBasicBlock.
	msg := P4TACMessage new selector: #ifFalse:ifTrue: ; numOfArguments: 2.
	falseArg := builder temporaryStore: (falseBlock accept: visitor).
	trueArg := trueBlock accept: visitor.
	visitor tacSend: msg to: value with: { falseArg. trueArg }.
	builder move: helper resultVariable to: result.

	builder useAsNextBasicBlock: nextBasicBlock.
	^ result ! !

!P4TACInlineMessages methodsFor: 'control-messages' stamp: 'OliFlueckiger 8/29/2011 23:18'!
ifNil: block
	| aReceiver res |
	aReceiver := receiver accept: visitor.
	res := builder nextTemp.
	self block: block condition: builder nil receiver: aReceiver result: res.
	^ res.! !

!P4TACInlineMessages methodsFor: 'control-messages' stamp: 'OliFlueckiger 8/11/2011 18:07'!
ifNil: block ifNotNil: notblock
	| receiverTemp evaluatedReceiverTemp notNilBlock nilBlock nextBlock ret |
	notblock parameters 
		ifNotEmpty: [
			receiverTemp := builder declare: notblock parameters first name.
			evaluatedReceiverTemp := receiver accept: visitor.
			builder move: evaluatedReceiverTemp to: receiverTemp]
		ifEmpty: [
			receiverTemp := receiver accept: visitor].
		
	notNilBlock := builder nextBasicBlock.
	nilBlock := builder nextBasicBlock.
	nextBlock := builder nextBasicBlock.
	ret := builder nextTemp.
	builder move: builder nil to: ret.
		
	builder compare: builder nil to: receiverTemp.
	builder jumpEqual: nilBlock.
	
	builder useAsNextBasicBlock: notNilBlock.
	visitor visitInlinedBlock: notblock returnTo: ret.
	builder jump: nextBlock.
	
	builder useAsNextBasicBlock: nilBlock.
	visitor visitInlinedBlock: block returnTo: ret.
	
	builder useAsNextBasicBlock: nextBlock.  
	^ ret! !

!P4TACInlineMessages methodsFor: 'control-messages' stamp: 'OliFlueckiger 8/29/2011 14:53'!
ifNotNil: block
	| receiverTemp evaluatedReceiverTemp res |
	evaluatedReceiverTemp := receiver accept: visitor.
	block parameters ifNotEmpty: [
		receiverTemp := builder declare: block parameters first name.
		builder move: evaluatedReceiverTemp to: receiverTemp ] .
	res := builder nextTemp.
	self block: block condition: builder nil receiver: evaluatedReceiverTemp equal: false result: res.
	^ res! !

!P4TACInlineMessages methodsFor: 'control-messages' stamp: 'OliFlueckiger 8/11/2011 18:11'!
ifNotNil: notblock ifNil: block
	^ self ifNil: block ifNotNil: notblock
	
! !

!P4TACInlineMessages methodsFor: 'control-messages' stamp: 'OliFlueckiger 8/30/2011 12:26'!
ifTrue: block
	| aReceiver nextBlock fallbackBlock resultValue testBlock msg aBlock |
	aReceiver := builder temporaryStore: (receiver accept: visitor).
	resultValue := builder nextTemp.
	builder move: builder nil to: resultValue.
	
	nextBlock := builder nextBasicBlock.
	testBlock := builder nextBasicBlock.
	fallbackBlock := builder nextBasicBlock.

	builder compare: builder true to: aReceiver.
	builder jumpNotEqual: testBlock.

	visitor visitInlinedBlock: block returnTo: resultValue.
	builder shortJump: nextBlock.
	
	builder useAsNextBasicBlock: testBlock.    
	builder compare: builder false to: aReceiver.   
	builder shortJumpNotEqual: fallbackBlock.
	builder shortJump: nextBlock.
	  
	builder useAsNextBasicBlock: fallbackBlock.
	msg := P4TACMessage new selector: #ifTrue: ; numOfArguments: 1.
	aBlock := block accept: visitor.
	visitor tacSend: msg to: aReceiver with: { aBlock }.
	builder move: helper resultVariable to: resultValue.
	
	builder useAsNextBasicBlock: nextBlock.
	
	^ resultValue! !

!P4TACInlineMessages methodsFor: 'control-messages' stamp: 'OliFlueckiger 8/31/2011 17:31'!
ifTrue: trueBlock ifFalse: falseBlock
	| falseBasicBlock nextBasicBlock result value fallbackBasicBlock msg trueArg falseArg |
	value := builder temporaryStore: (receiver accept: visitor).
	
	falseBasicBlock := builder nextBasicBlock.  
	fallbackBasicBlock := builder nextBasicBlock.
	nextBasicBlock := builder nextBasicBlock.

	result := builder nextTemp .
	
	builder compare: builder false to: value.
	builder jumpEqual: falseBasicBlock.
	builder compare: builder true to: value.
	builder jumpNotEqual: fallbackBasicBlock.
	
	visitor visitInlinedBlock: trueBlock returnTo: result .
	builder jump: nextBasicBlock.
		
	builder useAsNextBasicBlock: falseBasicBlock.
	visitor visitInlinedBlock: falseBlock returnTo: result.
	builder jump: nextBasicBlock.
	
	builder useAsNextBasicBlock: fallbackBasicBlock.
	msg := P4TACMessage new selector: #ifTrue:ifFalse: ; numOfArguments: 2.
	trueArg := builder temporaryStore: (trueBlock accept: visitor).
	falseArg := falseBlock accept: visitor.
	visitor tacSend: msg to: value with: { trueArg. falseArg }.
	builder move: helper resultVariable to: result.

	builder useAsNextBasicBlock: nextBasicBlock .  	
	^ result ! !

!P4TACInlineMessages methodsFor: 'control-messages' stamp: 'OliFlueckiger 7/25/2011 11:54'!
pHalt
	^ builder pHalt! !

!P4TACInlineMessages methodsFor: 'control-messages' stamp: 'OliFlueckiger 12/7/2011 22:18'!
perform: selector andCacheOn: object  
	| aMethod anObject msg |
	aMethod := builder temporaryStore: (receiver accept: visitor).
	anObject := object accept: visitor.
	aMethod 
		wrapTypeGuard: {P4Method asPClass}
		around: [
			builder move: (aMethod accessAt: 0) to: helper intermediateLValue.
			builder untag: helper intermediateLValue.
			builder bitShift: helper intermediateLValue by: 3.
			builder add: aMethod to: helper intermediateLValue.
			builder move: anObject to: (helper arg: 1 of: 1).
			builder directCallSkipTypeCheck: (P4Object earlySelectorAddress: #behavior) on: P4Object asPClass.
			builder 	tailJump: 'inline_cache_and_call' asSymbol .]
		fallback: [
			self methodObject: aMethod perform: selector ]
		with: helper.
	^ aMethod! !

!P4TACInlineMessages methodsFor: 'control-messages' stamp: 'OliFlueckiger 12/7/2011 22:18'!
perform: selector on: object  
	| aMethod anObject |
	aMethod := builder temporaryStore: (receiver accept: visitor).
	anObject := object accept: visitor.
	aMethod 
		wrapTypeGuard: {P4Method asPClass}
		around: [
			builder move: (aMethod accessAt: 0) to: helper intermediateLValue.
			builder untag: helper intermediateLValue.
			builder bitShift: helper intermediateLValue by: 3.
			builder add: aMethod to: helper intermediateLValue.
			builder move: anObject to: (helper arg: 1 of: 1).
			builder directCallSkipTypeCheck: (P4Object earlySelectorAddress: #behavior) on: P4Object asPClass.
			builder 	indirectTailJump: helper intermediateLValue.]
		fallback: [
			self methodObject: aMethod perform: selector ]
		with: helper.
	^ aMethod! !

!P4TACInlineMessages methodsFor: 'control-messages' stamp: 'OliFlueckiger 12/7/2011 19:01'!
perform: selector on: object with: arguments
	| aMethod anObject theArgs aSelector msg |
	aMethod := builder temporaryStore: (receiver accept: visitor).
	aSelector := builder temporaryStore: (selector accept: visitor).
	anObject := builder temporaryStore: (object accept: visitor).
	theArgs := arguments accept: visitor.  
	aMethod 
		wrapTypeGuard: {P4Method asPClass}
		around: [
			builder move: (aMethod accessAt: 0) to: helper intermediateLValue.
			builder untag: helper intermediateLValue.
			builder bitShift: helper intermediateLValue by: 3.
			builder add: aMethod to: helper intermediateLValue.
			builder move: anObject to: (helper arg: 1 of: 1).
			builder directCallSkipTypeCheck: (P4Object earlySelectorAddress: #behavior) on: P4Object asPClass.
			builder move: theArgs to: (helper intermediate).
			builder directCall: #'unwrap'.
			builder 	indirectTailJump: helper intermediateLValue.]
		fallback: [
			msg := P4TACMessage new selector: #perform:on:with:; numOfArguments: 3.
			visitor tacSend: msg to: aMethod with: { aSelector. anObject. theArgs }. ]
		with: helper.
	^ aMethod! !

!P4TACInlineMessages methodsFor: 'control-messages' stamp: 'OliFlueckiger 8/29/2011 21:03'!
to: end by: step do: aBlock
	| startValue endValue stepValue resultValue currentValue bodyBlock nextBlock res plus smaller msg currentValueName |
	startValue := builder temporaryStore: (receiver accept: visitor).
	endValue := builder temporaryStore: (end accept: visitor).
	stepValue := builder temporaryStore: (step accept: visitor).
	
	plus := P4TACMessage new selector: #+ ; numOfArguments: 1.
	smaller := P4TACMessage new selector: #<= ; numOfArguments: 1.
	resultValue := builder nextTemp.
	
	startValue
		wrapTypeGuard: {P4SmallInteger asPClass } 
		around: [
			builder move: builder nil to: resultValue.
			currentValueName := aBlock parameters ifEmpty: [ #index ] ifNotEmpty: [ aBlock parameters first name ].
			currentValue := builder declare: currentValueName.
			builder move: startValue to: currentValue.
	
			bodyBlock := builder nextBasicBlock.
			nextBlock := builder nextBasicBlock.

			builder useAsNextBasicBlock: bodyBlock.
			res := visitor tacSend: smaller to: currentValue with: {endValue}.
			builder compare: builder true to: res.
			builder jumpNotEqual: nextBlock.  
		
			visitor visitInlinedBlock: aBlock returnTo: resultValue.
			res := visitor tacSend: plus to: currentValue with: {stepValue}.
			builder move: res to: currentValue.
			builder jump: bodyBlock.
	
			builder useAsNextBasicBlock: nextBlock.]
		fallback: [
			msg := P4TACMessage new selector: #to:by:do: ; numOfArguments: 3.
			visitor tacSend: msg to: startValue with: {stepValue . endValue }.
			builder move: helper resultVariable to: resultValue.]
		with: helper.
	^ resultValue! !

!P4TACInlineMessages methodsFor: 'control-messages' stamp: 'OliFlueckiger 8/31/2011 16:56'!
value
	| msg aReceiver |
	aReceiver := receiver accept: visitor.
	builder volatileFence.
	
	msg := P4TACMessage new selector: #value; numOfArguments: 0.
	helper loadArguments: {} andReceiver: aReceiver toSend: msg selector.
	
	^ self sendValue: msg to: aReceiver! !

!P4TACInlineMessages methodsFor: 'control-messages' stamp: 'OliFlueckiger 8/31/2011 17:16'!
value: arg
	| msg aReceiver anArg |
	aReceiver := builder temporaryStore: (receiver accept: visitor).
	anArg := arg accept: visitor.  
	builder volatileFence.
	
	msg := P4TACMessage new selector: #value:; numOfArguments: 1.
	helper loadArguments: {anArg} andReceiver: aReceiver toSend: msg selector.

	^ self sendValue: msg to: aReceiver! !

!P4TACInlineMessages methodsFor: 'control-messages' stamp: 'OliFlueckiger 8/31/2011 17:16'!
value: arg1 value: arg2
	| msg aReceiver anArg1 anArg2 |
	aReceiver := builder temporaryStore: (receiver accept: visitor).
	anArg1 := builder temporaryStore: (arg1 accept: visitor).
	anArg2 := arg2 accept: visitor.  
	builder volatileFence.
	
	msg := P4TACMessage new selector: #value:value:; numOfArguments: 2.
	helper loadArguments: {anArg1. anArg2} andReceiver: aReceiver toSend: msg selector.

	^ self sendValue: msg to: aReceiver! !

!P4TACInlineMessages methodsFor: 'control-messages' stamp: 'OliFlueckiger 8/31/2011 17:17'!
value: arg1 value: arg2 value: arg3
	| msg aReceiver anArg1 anArg2 anArg3 |
	aReceiver := builder temporaryStore: (receiver accept: visitor).
	anArg1 := builder temporaryStore: (arg1 accept: visitor).
	anArg2 := builder temporaryStore: (arg2 accept: visitor).
	anArg3 := arg3 accept: visitor.  
	builder volatileFence.
	
	msg := P4TACMessage new selector: #value:value:value:; numOfArguments: 3.
	helper loadArguments: {anArg1. anArg2. anArg3} andReceiver: aReceiver toSend: msg selector.

	^ self sendValue: msg to: aReceiver! !

!P4TACInlineMessages methodsFor: 'control-messages' stamp: 'OliFlueckiger 8/31/2011 17:17'!
value: arg1 value: arg2 value: arg3 value: arg4
	| msg aReceiver anArg1 anArg2 anArg3 anArg4 |
	aReceiver := builder temporaryStore: (receiver accept: visitor).
	anArg1 := builder temporaryStore: (arg1 accept: visitor).
	anArg2 := builder temporaryStore: (arg2 accept: visitor).
	anArg3 := builder temporaryStore: (arg3 accept: visitor).
	anArg4 := arg4 accept: visitor.  
	builder volatileFence.
	
	msg := P4TACMessage new selector: #value:value:value:value:; numOfArguments: 4.
	helper loadArguments: {anArg1. anArg2. anArg3. anArg4} andReceiver: aReceiver toSend: msg selector.

	^ self sendValue: msg to: aReceiver! !

!P4TACInlineMessages methodsFor: 'control-messages' stamp: 'ToonVerwaest 8/5/2011 12:38'!
whileFalse: block
	^ self while: block condition: builder false! !

!P4TACInlineMessages methodsFor: 'control-messages' stamp: 'ToonVerwaest 8/5/2011 12:38'!
whileTrue: block
	^ self while: block condition: builder true! !

!P4TACInlineMessages methodsFor: 'convenience' stamp: 'OliFlueckiger 8/29/2011 14:52'!
block: block condition: aCondition receiver: aReceiver equal: testEquals result: resultValue
	| nextBlock |

	builder move: builder nil to: resultValue.

	builder compare: aCondition to: aReceiver.
		
	nextBlock := builder nextBasicBlock.
	testEquals 
		ifTrue: [ builder jumpNotEqual: nextBlock. ]
		ifFalse: [ builder jumpEqual: nextBlock. ].

	visitor visitInlinedBlock: block returnTo: resultValue.
	
	builder useAsNextBasicBlock: nextBlock.! !

!P4TACInlineMessages methodsFor: 'convenience' stamp: 'OliFlueckiger 8/29/2011 14:52'!
block: block condition: aCondition receiver: aReceiver result: resultValue
	^self block: block condition: aCondition receiver: aReceiver equal: true result: resultValue! !

!P4TACInlineMessages methodsFor: 'convenience' stamp: 'ToonVerwaest 8/5/2011 12:38'!
checkReturns: aBasicBlock to: aVariable
	aBasicBlock isEmpty 
		ifTrue: [ builder move: builder nil to: aVariable ]
		ifFalse: [ builder move: aBasicBlock lastElement asValue to: aVariable ].
! !

!P4TACInlineMessages methodsFor: 'convenience' stamp: 'OliFlueckiger 9/8/2011 16:10'!
methodObject: aMethod perform: selector
	| msg aSelector numArgs |

	numArgs := builder nextTemp.
	aSelector := selector accept: visitor.
	msg := P4TACMessage new selector: #countArgs; numOfArguments: 0.
	visitor tacSend: msg to: aSelector with: {}.
	builder move: helper resultVariable to: numArgs.
	
	msg := P4TACMessage new selector: #basicNew:; numOfArguments: 1.
	visitor tacSend: msg to: (builder loadConstant: Array asPClass) with: { numArgs }.
	
	builder move: helper resultVariable to: (helper arg:4 of:4).
	builder move: aSelector to: (helper arg:2 of:4).
	builder move: aMethod to: (helper arg:1 of:4).
	builder move: (builder loadConstant: #perform:on:with:) to: helper resultVariable.
	builder move: numArgs to: helper intermediateLValue.
	
	builder teardownToPerform.
	builder move: (helper stackPointer accessAt: 0) to: (helper arg:3 of:4).
	builder jump: #'wrap_and_call'! !

!P4TACInlineMessages methodsFor: 'convenience' stamp: 'OliFlueckiger 8/31/2011 16:56'!
sendValue: msg to: aReceiver
	
	aReceiver 
		wrapTypeGuard: {P4Closure asPClass}
		around: [ 
			builder move: (aReceiver accessAt: 0) to: helper intermediate.
			builder indirectCall: helper intermediate]
		fallback: [ 
			helper invoke: msg for: aReceiver with: {}]
		with: helper.
		
	^ helper resultVariable.! !

!P4TACInlineMessages methodsFor: 'convenience' stamp: 'ToonVerwaest 8/5/2011 12:37'!
while: block condition: aCondition
	| whileBasicBlock nextBasicBlock checkResult result checkBlock |
	checkBlock := receiver.	
	whileBasicBlock := builder nextBasicBlock.  
	nextBasicBlock := builder nextBasicBlock.	
	builder useAsNextBasicBlock: whileBasicBlock.  

	checkResult := builder nextTemp.
	visitor visitInlinedBlock: checkBlock returnTo: checkResult.
	builder compare: aCondition to: checkResult.
	builder jumpNotEqual: nextBasicBlock.
	
	result := builder nextTemp.
	visitor visitInlinedBlock: block returnTo: result.
	builder jump: whileBasicBlock.  

	builder useAsNextBasicBlock: nextBasicBlock.
	^ result! !

!P4TACInlineMessages methodsFor: 'accessing' stamp: 'OliFlueckiger 5/7/2011 14:47'!
builder: aBuilder
	builder := aBuilder .! !

!P4TACInlineMessages methodsFor: 'accessing' stamp: 'OliFlueckiger 8/24/2011 10:43'!
helper: aHelper
	helper := aHelper ! !

!P4TACInlineMessages methodsFor: 'accessing' stamp: 'OliFlueckiger 5/26/2011 11:19'!
implements: aSelector
	| method |
	method := self class methodDictionary at: aSelector ifAbsent: [ ^ false ].
	^ method category == #'control-messages'
! !

!P4TACInlineMessages methodsFor: 'accessing' stamp: 'OliFlueckiger 5/6/2011 18:21'!
visitor
	^ visitor! !

!P4TACInlineMessages methodsFor: 'accessing' stamp: 'ToonVerwaest 5/25/2011 15:17'!
visitor: anObject
	visitor := anObject.! !

!P4TACInlineMessages methodsFor: 'facade' stamp: 'ToonVerwaest 5/25/2011 18:22'!
send: aMessage to: aReceiver with: theArguments for: aVisitor
	receiver := aReceiver.
	visitor := aVisitor.
	^ self perform: aMessage selector withArguments: theArguments.
! !

!P4TACInlineMessages class methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 5/6/2011 15:29'!
doesNotUnderstand
	^ nil! !

!P4TACInlineMessages class methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 5/6/2011 15:09'!
instance
	instance isNil ifTrue: [ instance := self new ].
	^ instance! !

!P4TACLinearScanRegisterAllocator methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 5/12/2011 18:50'!
assignRegister: aRegister to: aVariable
	aVariable register: aRegister! !

!P4TACLinearScanRegisterAllocator methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/9/2011 14:49'!
backupRegistersFor: aMethod
	| block |
	block := aMethod registerPushing.
	block positionAtBeginning.
	aMethod hasNonLocalReturn ifTrue: [ maxUsedRegisters := self numberOfRegisters ].
	
	1 to: maxUsedRegisters do: [ :i |
		block << (processor extraRegisters at: i) push ].
	aMethod hasNonLocalReturn 
		ifTrue: [ block << (processor intermediateRegisters at: 1) push ].
	
	block := aMethod postamble.
	block positionAtBeginning.
	aMethod hasNonLocalReturn 
		ifTrue: [ block << (processor intermediateRegisters at: 1) pop ].
	maxUsedRegisters to: 1 by: -1 do: [ :i |
		block << (processor extraRegisters at: i) pop ].

! !

!P4TACLinearScanRegisterAllocator methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/11/2011 11:38'!
checkForUnassignedLocals: locals
	locals do: [ :l |
		l firstAssign ifNil: [
			self error: 'Register allocation cannot proceed. there seems to be a problem with the TAC since a variable was used but never assigned.']]! !

!P4TACLinearScanRegisterAllocator methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/9/2011 21:08'!
expireIntervalsBefore: line
	| toRemove |
	toRemove := 0.
	actives reverseDo: [ :var |
		( var lastUse > line ) 
			ifTrue: [ ^ actives removeLast: toRemove ].
		toRemove := toRemove + 1.
		self freeRegister: var register.
	].

	^ actives removeFirst: toRemove! !

!P4TACLinearScanRegisterAllocator methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/10/2011 14:04'!
freeRegister: aRegister
	(usedVolatileRegisters includes: aRegister) 
		ifTrue: [ usedVolatileRegisters remove: aRegister ]
		ifFalse: [ (usedRegisters includes: aRegister) 
			ifTrue: [ usedRegisters remove: aRegister ]
			ifFalse: [ self error: 'couldn''t free register. its not used']]
! !

!P4TACLinearScanRegisterAllocator methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/10/2011 14:06'!
isRegisterFreeFor: variable
	variable canBeVolatile ifTrue: [
		(usedVolatileRegisters size < self numberOfVolatileRegisters)
			ifTrue: [ ^ true ]].
	^ usedRegisters size < self numberOfRegisters
! !

!P4TACLinearScanRegisterAllocator methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/12/2011 17:37'!
linearScanRegisterAllocation
	variables do: [ :var |
		self expireIntervalsBefore: var firstAssign.
		(self isRegisterFreeFor: var)
			ifFalse: [ self spill: var ]
			ifTrue: [
				self nextFreeRegisterFor: var.  
				actives add: var ]].! !

!P4TACLinearScanRegisterAllocator methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/10/2011 14:02'!
nextFreeRegisterFor: aVariable
	aVariable canBeVolatile ifTrue: [ (self nextVolatileRegisterFor: aVariable) ifNotNil: [ ^self ]].
	(self nextRegisterFor: aVariable) ifNil: [ self error: 'couldn''t find a free register' ]! !

!P4TACLinearScanRegisterAllocator methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/12/2011 17:46'!
nextRegisterFor: aVariable
	processor extraRegisters do: [ :r |
		(usedRegisters includes: r) ifFalse: [
			( maxUsedRegisters == usedRegisters size ) ifTrue: [
				maxUsedRegisters := maxUsedRegisters +1].
			usedRegisters add: r.
			^ aVariable assignRegister: r for: self ]].
	^ nil! !

!P4TACLinearScanRegisterAllocator methodsFor: 'as yet unclassified' stamp: 'ToonVerwaest 5/13/2011 16:34'!
nextStackPosition
	| oldSize |
	oldSize := stackSize.
	stackSize := stackSize + 1.
	^ P4ASMRegisterAccess new
		register: processor stackPointer;
		offset: oldSize * processor pointerSize! !

!P4TACLinearScanRegisterAllocator methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/12/2011 17:45'!
nextVolatileRegisterFor: aVariable
	processor volatileRegisters do: [ :r |
		(usedVolatileRegisters includes: r) ifFalse: [
			usedVolatileRegisters add: r.
			^ aVariable assignRegister: r for: self ]].
	^ nil.! !

!P4TACLinearScanRegisterAllocator methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 5/7/2011 13:26'!
numberOfRegisters
	^ processor extraRegisters size! !

!P4TACLinearScanRegisterAllocator methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/10/2011 13:59'!
numberOfVolatileRegisters
	^ processor volatileRegisters size! !

!P4TACLinearScanRegisterAllocator methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 5/7/2011 13:19'!
processor: aProcessor
	processor := aProcessor! !

!P4TACLinearScanRegisterAllocator methodsFor: 'as yet unclassified' stamp: 'ToonVerwaest 5/28/2011 18:54'!
runOn: aTACNode
	aTACNode accept: self
	! !

!P4TACLinearScanRegisterAllocator methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/29/2011 14:40'!
spill: variable
	| spill |
	"self has to stay in a register. otherwise getting the class of an instVar can be a triple access."
	spill := actives first.
	spill isSelf ifTrue: [ spill := actives second ].  
	( spill lastUse > variable lastUse or: [variable isSelf])
		ifTrue: [
			variable register: spill register .  
			spill register: self nextStackPosition.
			actives remove: spill.
			actives add: variable.
		] ifFalse: [
			variable register: self nextStackPosition.
		]! !

!P4TACLinearScanRegisterAllocator methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/11/2011 11:43'!
visitCallable: aCallable
	aCallable expungeUnusedLocals.
	self checkForUnassignedLocals: aCallable locals values.  
	self checkForUnassignedLocals: aCallable temps.  
	variables := aCallable locals values asSortedCollection:  [ :a :b | a firstAssign < b firstAssign ].
	variables addAll: aCallable temps.
	actives := SortedCollection sortBlock: [ :a :b | a lastUse > b lastUse ].
	usedRegisters := Set new.
	usedVolatileRegisters := Set new.
	stackSize := 0.
	maxUsedRegisters := 0.
	self linearScanRegisterAllocation.
	aCallable usedRegisters: maxUsedRegisters .
	aCallable frameSize: stackSize.
	self backupRegistersFor: aCallable.! !

!P4TACLinearScanRegisterAllocator methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 5/26/2011 17:58'!
visitClosure: aClosure
	self visitCallable: aClosure   ! !

!P4TACLinearScanRegisterAllocator methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 5/26/2011 18:05'!
visitMethod: aMethod
	self visitCallable: aMethod.
	
	aMethod closures do: [ :closure |
		closure accept: self ]
! !

!P4TACLivenessAnalysis methodsFor: 'private' stamp: 'OliFlueckiger 7/25/2011 14:38'!
removeInstructionsOf: aMethod
	| toRemove currentBasicBlock |
	currentBasicBlock := aMethod preamble.
	[ currentBasicBlock atEnd ] whileFalse: [
		currentBasicBlock do: [ :instruction |
			instruction isAssignment ifTrue: [
				(instruction target isUnused) ifTrue: [
					currentBasicBlock remove: instruction ]]].
		currentBasicBlock := currentBasicBlock nextBlock. ].
! !

!P4TACLivenessAnalysis methodsFor: 'accessing' stamp: 'OliFlueckiger 5/6/2011 22:19'!
runOn: aTACNode
	aTACNode accept: self
	! !

!P4TACLivenessAnalysis methodsFor: 'exceptionbuilder' stamp: 'ToonVerwaest 5/24/2011 18:07'!
tag: aTAC
	position := position +1.
	aTAC flowNumber: position .  
	  ! !

!P4TACLivenessAnalysis methodsFor: 'visiting' stamp: 'ToonVerwaest 6/14/2011 15:10'!
visitAdd: anAdd
	self visitOperation: anAdd! !

!P4TACLivenessAnalysis methodsFor: 'visiting' stamp: 'ToonVerwaest 6/14/2011 15:37'!
visitAnd: anAnd
	self visitOperation: anAnd! !

!P4TACLivenessAnalysis methodsFor: 'visiting' stamp: 'OliFlueckiger 6/9/2011 18:21'!
visitAssignment: anAssignment
	self tag: anAssignment .
	anAssignment target assignedAt: position.
	anAssignment origin usedAt: position.  
	  ! !

!P4TACLivenessAnalysis methodsFor: 'visiting' stamp: 'OliFlueckiger 6/8/2011 16:11'!
visitBasicBlock: aBasicBlock
	aBasicBlock do: [ :s | s accept: self ]. 	! !

!P4TACLivenessAnalysis methodsFor: 'visiting' stamp: 'OliFlueckiger 9/6/2011 16:53'!
visitBitShift: aBitShift
	self tag: aBitShift.
	aBitShift target usedAt: position.
! !

!P4TACLivenessAnalysis methodsFor: 'visiting' stamp: 'OliFlueckiger 9/6/2011 16:53'!
visitBitShiftRight: aBitShift
	self tag: aBitShift.
	aBitShift target usedAt: position.
! !

!P4TACLivenessAnalysis methodsFor: 'visiting' stamp: 'OliFlueckiger 6/17/2011 16:24'!
visitBitTest: aBitTest
	self tag: aBitTest.
	aBitTest location usedAt: position.
! !

!P4TACLivenessAnalysis methodsFor: 'visiting' stamp: 'OliFlueckiger 6/10/2011 14:27'!
visitCall: aCall
	self tag: aCall.
! !

!P4TACLivenessAnalysis methodsFor: 'visiting' stamp: 'OliFlueckiger 8/4/2011 15:50'!
visitCallable: aCallable
	position := 0.
	callable := aCallable.
	callable basicBlocksDo: [ :b | b accept: self ] .
	self removeInstructionsOf: aCallable.
! !

!P4TACLivenessAnalysis methodsFor: 'visiting' stamp: 'OliFlueckiger 8/5/2011 16:20'!
visitCaptureClosure: capture
	self tag: capture.
	capture resultVariable assignedAt: position.  
	capture closure imports do: [ :aVariable | 
		aVariable usedAt: position+1 ].
	capture hasReturnExpression ifTrue: [
		callable basePointer usedAt: position+1 ]  
! !

!P4TACLivenessAnalysis methodsFor: 'visiting' stamp: 'OliFlueckiger 5/26/2011 17:57'!
visitClosure: aClosure
	self visitCallable: aClosure! !

!P4TACLivenessAnalysis methodsFor: 'visiting' stamp: 'ToonVerwaest 6/14/2011 15:09'!
visitCompare: aComparison
	self visitOperation: aComparison! !

!P4TACLivenessAnalysis methodsFor: 'visiting' stamp: 'OliFlueckiger 5/7/2011 01:49'!
visitCompareEqual: aComparison
	self visitCompare: aComparison   	
	  ! !

!P4TACLivenessAnalysis methodsFor: 'visiting' stamp: 'OliFlueckiger 5/7/2011 01:49'!
visitCompareNotEqual: aComparison
	self visitCompare: aComparison   	
	  ! !

!P4TACLivenessAnalysis methodsFor: 'visiting' stamp: 'OliFlueckiger 6/17/2011 16:24'!
visitConditionalJump: aJump
	self tag: aJump! !

!P4TACLivenessAnalysis methodsFor: 'visiting' stamp: 'OliFlueckiger 5/7/2011 13:57'!
visitEndBlock: aEndBlock
! !

!P4TACLivenessAnalysis methodsFor: 'visiting' stamp: 'OliFlueckiger 6/8/2011 17:12'!
visitHalt: aHalt
  	self tag: aHalt! !

!P4TACLivenessAnalysis methodsFor: 'visiting' stamp: 'OliFlueckiger 8/31/2011 16:30'!
visitIndirectCall: aCall
	self tag: aCall.
! !

!P4TACLivenessAnalysis methodsFor: 'visiting' stamp: 'ToonVerwaest 5/27/2011 17:27'!
visitIndirectJump: anIndirectJump
	self tag: anIndirectJump.
	anIndirectJump register usedAt: position
	
! !

!P4TACLivenessAnalysis methodsFor: 'visiting' stamp: 'OliFlueckiger 8/29/2011 20:23'!
visitJump: aJump
	| startPos |
	self tag: aJump.
	aJump target isSymbol ifTrue: [^self].
	startPos := aJump target firstElement flowNumber.
	"startPos was already tagged -> backJump"
	startPos ifNotNil: [
		{callable locals. callable temps} do: 
			[ :vars | vars do: [ :var |
				(var isUsed and: [var lastUse >= startPos]) ifTrue: [
					var usedAt: position ]]]].
! !

!P4TACLivenessAnalysis methodsFor: 'visiting' stamp: 'OliFlueckiger 8/4/2011 16:13'!
visitMethod: aMethod
	self visitCallable: aMethod.
	
	aMethod closures do: [ :closure |
		closure accept: self ]
! !

!P4TACLivenessAnalysis methodsFor: 'visiting' stamp: 'ToonVerwaest 6/14/2011 15:10'!
visitOperation: anOperation
	self tag: anOperation.
	anOperation left usedAt: position.
	anOperation right usedAt: position.! !

!P4TACLivenessAnalysis methodsFor: 'visiting' stamp: 'ToonVerwaest 6/14/2011 15:10'!
visitOr: anOr
	self visitOperation: anOr! !

!P4TACLivenessAnalysis methodsFor: 'visiting' stamp: 'OliFlueckiger 6/22/2011 11:33'!
visitPop: aReg! !

!P4TACLivenessAnalysis methodsFor: 'visiting' stamp: 'OliFlueckiger 6/22/2011 11:33'!
visitPush: aReg! !

!P4TACLivenessAnalysis methodsFor: 'visiting' stamp: 'OliFlueckiger 8/12/2011 15:56'!
visitReturn: aReturn
	self tag: aReturn! !

!P4TACLivenessAnalysis methodsFor: 'visiting' stamp: 'ToonVerwaest 6/14/2011 15:10'!
visitSub: aSub
	self visitOperation: aSub! !

!P4TACLivenessAnalysis methodsFor: 'visiting' stamp: 'OliFlueckiger 8/12/2011 16:18'!
visitTeardown: aReturn
	self tag: aReturn! !

!P4TACLivenessAnalysis methodsFor: 'visiting' stamp: 'ToonVerwaest 6/14/2011 17:37'!
visitTest: aTest
	self visitOperation: aTest! !

!P4TACLivenessAnalysis methodsFor: 'visiting' stamp: 'OliFlueckiger 8/29/2011 20:24'!
visitVolatileFence: volatileFence
	self tag: volatileFence.
	callable temps do: [ :t | t methodCalled: position ].
	callable locals do: [ :v | v methodCalled: position ].
! !

!P4TACLivenessAnalysis methodsFor: 'visiting' stamp: 'OliFlueckiger 8/11/2011 18:59'!
visitXor: anOr
	self visitOperation: anOr! !

!P4TACPostCompiler methodsFor: 'accessing' stamp: 'OliFlueckiger 6/8/2011 16:28'!
basicBlock
	^ basicBlock! !

!P4TACPostCompiler methodsFor: 'accessing' stamp: 'ToonVerwaest 5/28/2011 18:25'!
helper: aHelper
	helper := aHelper! !

!P4TACPostCompiler methodsFor: 'as yet unclassified' stamp: 'ToonVerwaest 5/27/2011 17:13'!
callable 
	^ callable ! !

!P4TACPostCompiler methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 5/26/2011 17:13'!
process: statement
	self subclassResponsibility! !

!P4TACPostCompiler methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 5/26/2011 17:09'!
runOn: aTACNode
	aTACNode accept: self
	
	! !

!P4TACPostCompiler methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/8/2011 16:28'!
visitBasicBlock: aBasicBlock
	basicBlock := aBasicBlock.
	basicBlock do: [ :i | self process: i.	].! !

!P4TACPostCompiler methodsFor: 'as yet unclassified' stamp: 'ToonVerwaest 5/28/2011 14:12'!
visitCallable: aCallable
	callable := aCallable.
	callable basicBlocksDo: [ :b | b accept: self ]  ! !

!P4TACPostCompiler methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 5/26/2011 18:00'!
visitClosure: aClosure
	self visitCallable: aClosure     
! !

!P4TACPostCompiler methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 5/26/2011 17:09'!
visitEndBlock: aBasicBlock
	! !

!P4TACPostCompiler methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/8/2011 17:13'!
visitMethod: aMethod
	self visitCallable: aMethod.  
	aMethod closures do: [ :closure |
		self visitClosure: closure  ]! !

!P4TACAnalyzeRemote methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/29/2011 19:51'!
externalizeVariables
	| locals remotes |
	remotes := P4TACRemoteArray new.
	locals := callable locals.
	locals do: [ :var | 
		var shouldBeRemote ifTrue: [
			var remote: (remotes add: var).
			var firstAssign isNil ifFalse: [
				remotes assignedAt: var firstAssign.].
			remotes usedAt: var lastUse ]].
	
	callable remoteVariables: remotes.
	
	remotes isEmpty ifFalse: [
		remotes do: [ :remote | locals removeKey: remote name ].
		locals at: remotes name put: remotes. ].! !

!P4TACAnalyzeRemote methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 5/31/2011 17:29'!
process: statement
	statement acceptCaptureClosure: self! !

!P4TACAnalyzeRemote methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/29/2011 19:56'!
visitCallable: aCallable
	" first find which variables should be remote "
	super visitCallable: aCallable.
	" then make them remote "
	self externalizeVariables.
    ! !

!P4TACAnalyzeRemote methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/11/2011 13:07'!
visitCaptureClosure: captureClosure
	(captureClosure closure imports select: 
		[ :variable |	variable shouldBeRemote not ])   
			do: [ :variable |
				(variable lastAssign > captureClosure flowNumber) ifTrue: [
					variable beRemote ]]! !

!P4TACAssignmentRemover methodsFor: 'visiting' stamp: 'OliFlueckiger 8/29/2011 13:43'!
visitBasicBlock: aBasicBlock
	aBasicBlock isEmpty ifTrue: [ ^ self ].
	
	aBasicBlock do: [ :instr |
		( instr isAssignment and: [ instr origin asAsm == instr target asAsm ] ) 
			ifTrue: [ aBasicBlock remove: instr ]].! !

!P4TACClosureInstaller methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/29/2011 19:45'!
fix: imports
	imports reverseDo: [ :aVariable |
		aVariable shouldBeRemote
			ifTrue: [
				imports remove: aVariable.
				importedRemotes add: aVariable remoteVariable ]].
	importedRemotes do: [ :aRemote | imports add: aRemote ].
	importedRemotes removeAll.! !

!P4TACClosureInstaller methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/26/2011 19:10'!
installRemotes: method
	(method entry positionAtBeginning) 
		<< ((P4TACConstant with: method remoteVariables size asTaggedInteger ) moveTo: ( helper arg: 1 of: 1 ));
		<< (P4TACCall to: (P4RemoteArray earlyClassSelectorAddress: #pNew:));
		<< (helper resultVariable moveTo: method remoteVariables).
! !

!P4TACClosureInstaller methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/29/2011 17:26'!
loadClosureVariable: closure
	| closureObj i unwind |
	closureObj := helper intermediateLValue.
	closure entry positionAtBeginning.
	closure entry << ((helper arg: 1 of: closure) moveTo: closureObj).  
	i := 1.
	closure imports do: [ :var |
		closure entry << ((closureObj accessAt: i) moveTo: (closure locals at: var name)).
		i := i + 1 ].! !

!P4TACClosureInstaller methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 5/31/2011 17:29'!
process: statement
	statement acceptCaptureClosure: self! !

!P4TACClosureInstaller methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 9/7/2011 13:28'!
unroll: captureClosure
	| closure imports copyImports i closureVariable |
	closure := captureClosure closure.
	imports := closure imports.
	self fix: imports.
	closureVariable := captureClosure resultVariable.
	closureVariable assignedAt: captureClosure flowNumber.  

	basicBlock overridePosition: captureClosure.
	basicBlock 
		<< ((P4TACConstant with: (imports size + 1) asTaggedInteger) moveTo: (helper arg: 1 of: 1));
		<< (P4TACCall to: (P4Closure earlyClassSelectorAddress: #pNew:));
		<< (helper resultVariable moveTo: closureVariable );
		
		<< ((P4TACReference new target: closure) loadAddressIn: helper intermediateLValue );
		<< (helper intermediateLValue moveTo: (closureVariable accessAt: 0 )).
			
	i := 1.
	imports do: [ :aVariable |
		basicBlock << (aVariable moveTo: (closureVariable accessAt: i)).
		i := i + 1]
! !

!P4TACClosureInstaller methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/7/2011 21:45'!
visitCaptureClosure: captureClosure
	self unroll: captureClosure.
	self loadClosureVariable: captureClosure closure.! !

!P4TACClosureInstaller methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/8/2011 16:20'!
visitMethod: method
	super visitMethod: method.
	method remoteVariables isEmpty ifFalse: [
		self installRemotes: method  ].
	method expungeUnusedLocals. ! !

!P4TACClosureInstaller methodsFor: 'accessing' stamp: 'ToonVerwaest 6/24/2011 19:38'!
helper: aHelper
	helper := aHelper! !

!P4TACClosureInstaller methodsFor: 'initialize-release' stamp: 'ToonVerwaest 5/28/2011 15:55'!
initialize
	importedRemotes := P4IdentitySet new.! !

!P4TACRegisterSwapper methodsFor: 'as yet unclassified' stamp: 'ToonVerwaest 6/24/2011 19:38'!
helper: aHelper
	helper := aHelper! !

!P4TACRegisterSwapper methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 5/26/2011 17:13'!
process: statement
	statement acceptRegisterSwapper: self! !

!P4TACRegisterSwapper methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/29/2011 15:43'!
visitOperation: instruction
	| left replacement right |
	replacement := P4ObjectStream new.
	( instruction left isDoubleAccess )
		ifTrue: [
			left := (helper intermediate).
			replacement << (instruction left variable moveTo: left).
			left := left accessAt: instruction left index ]
		ifFalse: [ left := instruction left  ].
	
	( instruction right isDoubleAccess )
		ifTrue: [
			right := helper intermediateLValue.
			replacement << (instruction right variable moveTo: right).
			right := right accessAt: instruction right index ]
		ifFalse: [ right := instruction right ].
		
	( (left isAccess or: [ left isConstant]) and: [ right isAccess or: [ right isConstant ] ] ) ifTrue: [
		replacement << (left moveTo: helper intermediate).
		left := helper intermediate].
	
	replacement isEmpty ifFalse: [
		instruction left: left; right: right.
		replacement << instruction.
		(basicBlock overridePosition: instruction)  << replacement]! !

!P4CustomMethodDictionary methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 9/8/2011 15:23'!
aMethod 
	'  -> i''m a catchall Method' print.
	^1! !

!P4CustomMethodDictionary methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 9/8/2011 15:22'!
at: key
	(key == #callCustomMethodObject ) 
		ifTrue: [ ^ P4TestMethod new. ].
	(key == #callCustomMethodObjectWith:with:with:)
		ifTrue: [ ^ P4TestMethod2 new ].
	^ self class methodDictionary at: #aMethod! !

!P4CustomMethodDictionary methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 9/8/2011 15:20'!
print
	'print method of a custom method dict called'! !

!P4DoesUnderstand methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 9/8/2011 15:56'!
doesNotUnderstand: message
	^ message! !

!P4KernelTest methodsFor: 'test' stamp: 'OliFlueckiger 7/28/2011 13:26'!
+ other
	^ true! !

!P4KernelTest methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/26/2011 16:41'!
arg1: argA
	^ argA+1! !

!P4KernelTest methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/24/2011 16:11'!
do: block
	block value.
	^ 1+1
! !

!P4KernelTest methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/5/2011 17:59'!
do: block with: value
	block value: value
! !

!P4KernelTest methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 10/7/2011 15:30'!
fib2: n
	^ (n<2) ifTrue: [ 1 ] ifFalse: [ (self fib2: (n-1)) + (self fib2: (n-2)) ]! !

!P4KernelTest methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 10/7/2011 15:25'!
fib: n
	^ (n<2) ifTrue: [ 1 ] ifFalse: [ (self fib: (n-1)) + (self fib: (n-2)) ]! !

!P4KernelTest methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/6/2011 12:47'!
get1
	^ 1! !

!P4KernelTest methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/6/2011 12:49'!
get5
	^ 5! !

!P4KernelTest methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/18/2011 14:41'!
getNumber 
	^2! !

!P4KernelTest methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/26/2011 19:50'!
getSelf
	^ self! !

!P4KernelTest methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/9/2011 21:55'!
nonLocalReturn
	self do: [].
	self do: [ : val | ^val ] with: true.
	^ false! !

!P4KernelTest methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/9/2011 15:38'!
ok
	'ok' print! !

!P4KernelTest methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/28/2011 18:36'!
readArray: p
	(p at: 10) == #bla ifFalse: [ self pHalt ]	! !

!P4KernelTest methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/29/2011 06:35'!
test0
	self test1 shouldBe: self test1! !

!P4KernelTest methodsFor: 'as yet unclassified' stamp: 'ToonVerwaest 7/26/2011 14:20'!
test1
	^ self test2! !

!P4KernelTest methodsFor: 'as yet unclassified' stamp: 'ToonVerwaest 7/25/2011 23:59'!
test2
	^ 23! !

!P4KernelTest methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/29/2011 06:36'!
testArray
	| p |
	p := P4Array new: 20.
	p at: 10 put: #bla.
	(p at: 10) shouldBe: #bla.
	self readArray: p.
	! !

!P4KernelTest methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 9/13/2011 10:45'!
testCustomMethodDict
	| obj  test |
	obj := P4TestObject new.
	obj class methodDictionary: P4CustomMethodDictionary new.
	obj callSomeMethod shouldBe: 1.

	' --> calling to a custom method object' print.
	((obj callCustomMethodObject at: 1) == obj) shouldBeTrue.	
	test := (obj callCustomMethodObjectWith: 1 with: 2 with: 42).
	(test at: 3) shouldBe: 42.
	((test at: 4) == obj) shouldBeTrue.
	test pInspect.  
! !

!P4KernelTest methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 10/5/2011 18:03'!
testDictionary
	| dict |
	'-- create' print.
	dict := P4IdentityDictionary new.
	'-- put' print.
	dict at: #bla put: 2.
	dict at: #bla2 put: 3.
	'-- read' print.
	(dict at: #bla) shouldBe: 2.
	
	'-- grow' print.
	1 to: 110 do: [ :i |
		dict at: i put: i ].
	
	'-- read again' print.
	(dict at: 101) shouldBe: 101.

	'-- grow more' print.
	1 to: 5000 do: [ :i |
		dict at: i put: i+1 ].
	
	'-- read again' print.
	(dict at: 4801) shouldBe: 4802.
	
			! !

!P4KernelTest methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 10/18/2011 17:38'!
testDynamic
	'*** dynamic tests...' print.
	self test0.
	
	'*** tests inst vars 2' print.
	self testInstVar.
	
	'*** test non boolean receivers' print.
	self testNonBooleanReceivers.

	'*** test doesNotUnderstand' print.
	self bla: #foo bla: #bar bla: 1 bla: 2 bla: 3.

	'*** with 1 argument:' print.
	(self arg1: 1) shouldBe: 2.  
	
	'*** fib' print.
	(self fib: 5) shouldBe: 8.
		
	'*** test inlinecaching... this should not take more than 1s:' print.
	(self fib: 34) == 9227465 ifFalse: [self pHalt].

	'*** testing invoke with a custom methodDictionary' print.
	self testCustomMethodDict.
	
	'*** testing message proxy' print.
	self testMessageProxy.

	'*** testing fallbacks for inlined methods' print.
	self testInlineFallback.

	'*** forcing an inline cache miss' print.
	a := 1.
	a + 1.
	a := self.
	(a + 1) shouldBeTrue.
	
	'*** test if grounded Types work' print.
	self testGroundedTypes.
	
	'*** overriding does not undestand' print.
	P4DoesUnderstand new blablabla selector shouldBe: #blablabla.

	'*** testing lookup of SmallInteger methods' print.
	(self get1 + 2) shouldBe: 3.  
	(self get5 \\ 2) shouldBe: 1.  
	
	'*** testing array' print.
	self testArray.

	'*** testing nonlocal return' print.
	self nonLocalReturn shouldBeTrue.
	
	'*** testing dictionary' print.
	self testDictionary.
	
	'*** run the examples' print.
	P4ExamplesTest new run.
	
	'*** done' print.
	
	^ P4Object new.
	! !

!P4KernelTest methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/18/2011 14:26'!
testGroundedTypes
	<groundTypes>
	a := 1.
	a + 1.
	a := self.
	(a + 1) shouldBeTrue.! !

!P4KernelTest methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/18/2011 14:41'!
testGroundedTypes2
	<groundTypes>
	<typeHint: #var as: #'Test.StaticKernelTest'>
	| var |
	var := self.
	(var getNumber) shouldBe: 2.! !

!P4KernelTest methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/31/2011 16:44'!
testInlineFallback
	(self to: 1 by: 1 do: [])  shouldBeTrue.
	self value shouldBeTrue.
	(self value: false value: true) shouldBeTrue.! !

!P4KernelTest methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/24/2011 16:10'!
testInstVar
	[ a := #bla ] value.
	a shouldBe: #bla.
	self do: [ b := 1 ].
	b shouldBe: 1.
	a shouldBe: #bla.! !

!P4KernelTest methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 10/7/2011 15:30'!
testMessageProxy
	| obj proxy |
	proxy := P4MessageProxy for: (P4KernelTest methodDictionary at: #fib2:).
	P4KernelTest methodDictionary at: #fib2: put: proxy.
	proxy counter shouldBe: 0.
	(self fib2: 3) shouldBe: 3.
	proxy counter shouldBe: 5.
	! !

!P4KernelTest methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/30/2011 12:31'!
testNonBooleanReceivers
	| v test |
	test := false.
	v := 'test'.
	v ifFalse: [ self pHalt ].
	v ifTrue: [ test := true ].
	test ifFalse: [ self pHalt ].
	v ifTrue: [  ] ifFalse: [ self pHalt ].
		
	test := false.
	v := nil.
	v ifTrue: [ self pHalt ].
	v ifFalse: [ test := true ].
	test ifFalse: [ self pHalt ].
	v ifTrue: [ self pHalt ] ifFalse: [ 'ok' print ].! !

!P4KernelTest methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/29/2011 21:01'!
to: aha by: ogo do: iga
	^ true! !

!P4KernelTest methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/31/2011 16:18'!
value
	^true! !

!P4KernelTest methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/31/2011 16:44'!
value: arg1 value: arg2
	^arg2! !

!P4MessageProxy methodsFor: 'accessing' stamp: 'OliFlueckiger 10/5/2011 16:21'!
counter
	^ counter! !

!P4MessageProxy methodsFor: 'accessing' stamp: 'OliFlueckiger 10/5/2011 16:21'!
counter: anObject
	counter := anObject! !

!P4MessageProxy methodsFor: 'accessing' stamp: 'OliFlueckiger 10/5/2011 16:22'!
initialize 
	counter := 0! !

!P4MessageProxy methodsFor: 'accessing' stamp: 'OliFlueckiger 10/7/2011 15:30'!
perform: selector on: receiver with: args
	counter := counter + 1.
	^ proxiedMethod perform: selector on: receiver with: args! !

!P4MessageProxy methodsFor: 'accessing' stamp: 'OliFlueckiger 10/5/2011 16:21'!
proxiedMethod
	^ proxiedMethod! !

!P4MessageProxy methodsFor: 'accessing' stamp: 'OliFlueckiger 10/5/2011 16:21'!
proxiedMethod: anObject
	proxiedMethod := anObject! !

!P4MessageProxy class methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 10/5/2011 17:41'!
for: aMethod
	^ self new proxiedMethod: aMethod; yourself! !

!P4PerformanceTest methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 10/5/2011 14:49'!
dictionary
	| dict |
	dict := P4Dictionary new.
	1 to: 1000000 do: [ :i |
		dict at: i put: i.
		dict at: i ].! !

!P4PerformanceTest methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 10/4/2011 15:13'!
fib: n
	^ (n<2) ifTrue: [ 1 ] ifFalse: [(self fib: (n-1)) + (self fib: (n-2))]! !

!P4PerformanceTest methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 10/4/2011 16:25'!
run
	self dictionary! !

!P4StaticKernelTest methodsFor: 'test' stamp: 'ToonVerwaest 7/26/2011 22:26'!
arrayTest
	<typeHint: #x as: #'Kernel.Collection.Array'>  
	| x|
	x := Array basicNew: 10.
	x basicAt: 5 put: 7.
	^ x basicAt: 5.! !

!P4StaticKernelTest methodsFor: 'test' stamp: 'ToonVerwaest 7/26/2011 22:24'!
arrayTest2
	<typeHint: #x as: #'Kernel.Collection.Array'>  
	<typeHint: #y as: #'Kernel.Collection.Array'>  
	|x y |
	x := Array basicNew: 10.
	y := Array basicNew: 1.
	1 to: 10 do: [ :i |
		x basicAt: i put: i ].
	y basicAt: 1 put: x.
	^ y basicAt: 1.! !

!P4StaticKernelTest methodsFor: 'test' stamp: 'OliFlueckiger 8/31/2011 17:58'!
blockTest
	| x y z|
	x := 1.
	y := x + 1.
	z := [ :v | y := x + v. ].
	z value: 2.
	^ y! !

!P4StaticKernelTest methodsFor: 'test' stamp: 'OliFlueckiger 8/29/2011 18:01'!
blockTest2
	<globalName: #blockTest2>
	| x |
	x := 1.
	a := 2.
	[ [ [ x ] value ] value ] value shouldBe: 1.  
	^ [ [ [ a ] value ] value ] value! !

!P4StaticKernelTest methodsFor: 'test' stamp: 'OliFlueckiger 8/29/2011 20:06'!
blockTest3
	| h h2 |
	h := 7.
	h2 := 2.	
	[[h+h2] value + 1]  value shouldBe: 10.
	[[[h] value ] value ] value shouldBe: 7.  
	[[[[h+h2] value ] value ] value ] value shouldBe: 9.  
	h2 := 1.
	h := 2.
	[[[[[h+h2] value ] value ] value ] value ] value shouldBe: 3.
	^ h + h2! !

!P4StaticKernelTest methodsFor: 'test' stamp: 'OliFlueckiger 8/29/2011 17:52'!
blockTest4
	| h |
	a := 5.
	[ a ] value shouldBe: 5.
	a := 6.
	[ a ] value shouldBe: 6.
	a := 7.
	[ [a] value + 1]  value shouldBe: 8.
	h := 1.
	[[[[[a+h] value ] value ] value ] value ] value shouldBe: 8. 
	^ a + h! !

!P4StaticKernelTest methodsFor: 'test' stamp: 'OliFlueckiger 8/31/2011 16:46'!
blockTest5
	[ :arg1 :arg2 :arg3 :arg4 | arg1 shouldBeTrue. arg4 shouldBe: 3 ] value: true value: false value: false value: 3.! !

!P4StaticKernelTest methodsFor: 'test' stamp: 'OliFlueckiger 8/18/2011 14:40'!
get1
	^1
! !

!P4StaticKernelTest methodsFor: 'test' stamp: 'OliFlueckiger 8/18/2011 14:41'!
getNumber 
	^ 1! !

!P4StaticKernelTest methodsFor: 'test' stamp: 'ToonVerwaest 6/10/2011 18:53'!
simpleMethod
	<globalName: #simpleMethod>
	1 + 1.
	[] value.
	^ [ self ] value! !

!P4StaticKernelTest methodsFor: 'test' stamp: 'OliFlueckiger 8/24/2011 16:08'!
testInstVar
	a := 1.
	b := self.
	c := a + 1.
	d := #test.! !

!P4StaticKernelTest methodsFor: 'test' stamp: 'OliFlueckiger 8/31/2011 18:16'!
testStatic
	<globalName: #testStatic>
	self get1 == 1 ifFalse: [ self pHalt ].
	self get1 == 2 ifFalse: [ '*** return values are correct' print ].

	self blockTest == 3 ifFalse: [self pHalt].
	self blockTest2 == 2 ifFalse: [self pHalt].	
	self blockTest5.
	'*** finished blocks' print.

	self blockTest3.
	self blockTest4.
	'*** finished testing remote variables' print.

	self arrayTest == 7 ifFalse: [self pHalt].
	(self arrayTest2 basicAt: 10) == 10 ifFalse: [self pHalt].
	'*** finished arrays' print.
	
	self testInstVar.
	a == 1 ifFalse: [self pHalt].
	b == self ifFalse: [self pHalt].
	c == 2 ifFalse: [self pHalt].
	d == #test ifFalse: [self pHalt].
	'*** inst vars work' print.	
	
	'*** all done ***' print.! !

!P4StaticKernelTest class methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/21/2011 10:50'!
testc
	^self! !

!P4StaticKernelTest class methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/25/2011 13:57'!
typeHints 
	<preventExport>
	^ { #self -> #'Test.StaticKernelTest' } asDictionary! !

!P4TestMethod methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 9/7/2011 15:25'!
numArgs 
	^0! !

!P4TestMethod methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 9/8/2011 15:51'!
perform: selector on: receiver with: args   
	| all |
	all := Array new: (args size +1).
	1 to: args size do: [ :i |
		all at: i put: (args at: i) ].
	all at: (args size +1) put: receiver.
	^ all! !

!P4TestMethod2 methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 9/7/2011 16:09'!
numArgs 
	^3! !

!ASTNode methodsFor: 'comparing' stamp: 'CamilloBruni 6/23/2010 19:03'!
= other
	^ self species = other species! !

!ASTNode methodsFor: 'visiting' stamp: 'ToonVerwaest 7/15/2010 13:33'!
accept: visitor
	self subclassResponsibility! !

!ASTNode methodsFor: 'visiting' stamp: 'ToonVerwaest 6/19/2011 13:23'!
acceptIgnoreResult: visitor
	^ self accept: visitor! !

!ASTNode methodsFor: 'testing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
hasReturnExpression
	^ false! !

!ASTNode methodsFor: 'testing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
isReturnExpression
	^ false! !

!ASTNode methodsFor: 'testing' stamp: 'ToonVerwaest 5/24/2011 14:56'!
isSuper
	^ false! !

!ASTNode methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
scoped
	" we only care if it is a binary expression (for associativity reasons) "

	! !

!ASTNode class methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
pClassMethods
	<preventExport>
	^ #all! !

!ASTNode class methodsFor: 'accessing' stamp: 'ToonVerwaest 5/16/2011 23:04'!
pname
	<preventExport>
	^ pname ifNil: [ pname := (self name copyFrom: 'AST' size + 1 to: self name size) asSymbol ]! !

!ASTBlock methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 6/23/2010 18:56'!
= other
	super = other ifFalse: [ ^ false].
	self parameters = other parameters ifFalse: [ ^ false ].
	self statements = other statements ifFalse: [ ^ false ].
	self temporaries = other temporaries ifFalse: [ ^ false ].
	^ true! !

!ASTBlock methodsFor: 'visiting' stamp: 'OliFlueckiger 5/26/2011 16:17'!
accept: visitor
	^ visitor visitClosure: self! !

!ASTBlock methodsFor: 'testing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
hasReturnExpression
	^ self statements anySatisfy: #hasReturnExpression! !

!ASTBlock methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
parameters
	^ parameters! !

!ASTBlock methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
parameters: aCollection
	parameters := aCollection! !

!ASTBlock methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
statements
	^ statements! !

!ASTBlock methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
statements: anObject
	statements := anObject! !

!ASTBlock methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
temporaries
	^ temporaries! !

!ASTBlock methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
temporaries: anObject
	temporaries := anObject! !

!ASTAssignmentExpression methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 6/23/2010 18:56'!
= other
	super = other ifFalse: [ ^ false ].
	self expression = other expression ifFalse: [ ^ false ].
	self variable = other variable ifFalse: [ ^ false ].
	^ true.! !

!ASTAssignmentExpression methodsFor: 'visiting' stamp: 'ToonVerwaest 7/15/2010 13:31'!
accept: visitor
	^ visitor visitAssignmentExpression: self! !

!ASTAssignmentExpression methodsFor: 'visiting' stamp: 'ToonVerwaest 6/19/2011 13:23'!
acceptIgnoreResult: visitor
	^ visitor visitAssignmentStatement: self! !

!ASTAssignmentExpression methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
expression
	^ expression! !

!ASTAssignmentExpression methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
expression: anObject
	expression := anObject! !

!ASTAssignmentExpression methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
variable
	^ variable! !

!ASTAssignmentExpression methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
variable: anObject
	variable := anObject! !

!ASTAssignmentExpression methodsFor: 'testing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
hasReturnExpression
	^ expression hasReturnExpression! !

!ASTBraceExpression methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 6/23/2010 18:56'!
= other
	super = other ifFalse: [ ^ false ].
	self expression = other expression ifFalse: [ ^ false ].
	^ true.! !

!ASTBraceExpression methodsFor: 'visiting' stamp: 'ToonVerwaest 7/15/2010 13:32'!
accept: visitor
	^ visitor visitBraceExpression: self! !

!ASTBraceExpression methodsFor: 'accessing' stamp: 'CamilloBruni 6/23/2010 18:56'!
expressions
	^ expressions! !

!ASTBraceExpression methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
expressions: newExpressions
	expressions := newExpressions! !

!ASTBraceExpression methodsFor: 'testing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
hasReturnExpression
	^ self expressions anySatisfy: #hasReturnExpression! !

!ASTMessageCascadeExpression methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 6/23/2010 18:57'!
= other
	super = other ifFalse: [ ^ false ].
	self cascades = other cascades ifFalse: [ ^ false ].
	self receiver = other receiver ifFalse: [ ^ false ].
	^ true.! !

!ASTMessageCascadeExpression methodsFor: 'visiting' stamp: 'ToonVerwaest 7/15/2010 13:32'!
accept: visitor
	^ visitor visitMessageCascadeExpression: self! !

!ASTMessageCascadeExpression methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
cascades
	^ cascades! !

!ASTMessageCascadeExpression methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
cascades: anObject
	cascades := anObject! !

!ASTMessageCascadeExpression methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
receiver
	^ receiver! !

!ASTMessageCascadeExpression methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
receiver: anObject
	receiver := anObject! !

!ASTMessageCascadeExpression methodsFor: 'testing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
hasReturnExpression
	^ cascades anySatisfy: #hasReturnExpression! !

!ASTMessageCascadeExpression class methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
astSelectors
	^ Array with: #cascades with: #receivers! !

!ASTReturnExpression methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 6/23/2010 18:57'!
= other
	super = other ifFalse: [ ^ false ].
	self expression = other expression ifFalse: [ ^ false ].
	^ true.! !

!ASTReturnExpression methodsFor: 'visiting' stamp: 'ToonVerwaest 7/15/2010 13:32'!
accept: visitor
	^ visitor visitReturnExpression: self! !

!ASTReturnExpression methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
expression
	^ expression! !

!ASTReturnExpression methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
expression: anObject
	expression := anObject! !

!ASTReturnExpression methodsFor: 'testing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
hasReturnExpression
	^ true! !

!ASTReturnExpression methodsFor: 'testing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
isReturnExpression
	^ true! !

!ASTReturnExpression class methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
astSelectors
	^ Array with: #expression! !

!ASTArray methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 6/23/2010 18:58'!
= other 
	super  = other ifFalse: [^ false].
	self literals = other literals ifFalse: [^ false].
	^ true.! !

!ASTArray methodsFor: 'visiting' stamp: 'ToonVerwaest 7/15/2010 13:33'!
accept: visitor
	^ visitor visitArray: self! !

!ASTArray methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
isEmpty
	^ self literals isEmpty! !

!ASTArray methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
literals
	^ literals! !

!ASTArray methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
literals: aCollection
	literals := aCollection! !

!ASTArray class methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
astSelectors
	^ Array with: #literals! !

!ASTCharacter methodsFor: 'as yet unclassified' stamp: 'ToonVerwaest 9/7/2010 15:02'!
= other 
	super = other ifFalse: [^ false].
	char = other char ifFalse: [^ false].
	^ true.! !

!ASTCharacter methodsFor: 'visiting' stamp: 'ToonVerwaest 7/15/2010 13:33'!
accept: visitor
	^ visitor visitCharacter: self! !

!ASTCharacter methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
char
	^ char! !

!ASTCharacter methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
char: aChar
	char := aChar! !

!ASTCharacter class methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
astSelectors
	^ Array with: #char! !

!ASTFloat methodsFor: 'as yet unclassified' stamp: 'ToonVerwaest 9/7/2010 15:03'!
= other 
	super = other ifFalse: [^ false].
	low = other low ifFalse: [^ false].
	high = other high ifFalse: [^ false].
	^ true.! !

!ASTFloat methodsFor: 'visiting' stamp: 'ToonVerwaest 7/15/2010 13:33'!
accept: visitor
	^ visitor visitFloat: self! !

!ASTFloat methodsFor: 'accessing' stamp: 'ToonVerwaest 8/31/2010 14:41'!
asNumber
	^ high asNumber + (low asNumber / (10 asFloat raisedTo: low size))! !

!ASTFloat methodsFor: 'accessing' stamp: 'ToonVerwaest 8/30/2010 12:11'!
high
	^ high! !

!ASTFloat methodsFor: 'accessing' stamp: 'ToonVerwaest 8/30/2010 12:13'!
high: anObject
	high := anObject! !

!ASTFloat methodsFor: 'accessing' stamp: 'ToonVerwaest 8/30/2010 12:11'!
low
	^ low! !

!ASTFloat methodsFor: 'accessing' stamp: 'ToonVerwaest 8/30/2010 12:11'!
low: anObject
	low := anObject! !

!ASTFloat methodsFor: 'printing' stamp: 'ToonVerwaest 8/30/2010 12:14'!
printOn: aStream
	high printOn: aStream.
	aStream << $..
	low printOn: aStream! !

!ASTNumber methodsFor: 'as yet unclassified' stamp: 'ToonVerwaest 9/7/2010 15:03'!
= other 
	super = other ifFalse: [^ false].
	number = other number ifFalse: [^ false].
	base = other base ifFalse: [^ false].
	^ true.! !

!ASTNumber methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/11/2011 17:50'!
initialize 
	base := 10! !

!ASTNumber methodsFor: 'visiting' stamp: 'ToonVerwaest 7/15/2010 13:37'!
accept: visitor
	^ visitor visitNumber: self! !

!ASTNumber methodsFor: 'converting' stamp: 'ToonVerwaest 9/7/2010 15:04'!
asNumber
	^ self printString asNumber! !

!ASTNumber methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
base
	^ base! !

!ASTNumber methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
base: anObject
	base := anObject! !

!ASTNumber methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
number
	^ number! !

!ASTNumber methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
number: anObject
	number := anObject! !

!ASTNumber methodsFor: 'printing' stamp: 'ToonVerwaest 9/7/2010 15:03'!
printOn: aStream
	aStream << base << 'r' << number! !

!ASTNumber class methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
astSelectors
	^ Array with: #base with: #number! !

!ASTString methodsFor: 'as yet unclassified' stamp: 'ToonVerwaest 9/7/2010 15:06'!
= other 
	super = other ifFalse: [^ false].
	string = other string ifFalse: [^ false].
	^ true.! !

!ASTString methodsFor: 'visiting' stamp: 'ToonVerwaest 7/15/2010 13:37'!
accept: visitor
	^ visitor visitString: self! !

!ASTString methodsFor: 'converting' stamp: 'ToonVerwaest 3/25/2010 12:39'!
asString
	^ self string! !

!ASTString methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
string
	^ string! !

!ASTString methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
string: aString
	string := aString! !

!ASTString class methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
astSelectors
	^ Array with: #string! !

!ASTSymbol methodsFor: 'as yet unclassified' stamp: 'ToonVerwaest 9/7/2010 15:06'!
= other 
	super = other ifFalse: [^ false].
	symbol = other symbol ifFalse: [^ false].
	^ true.! !

!ASTSymbol methodsFor: 'visiting' stamp: 'ToonVerwaest 7/15/2010 13:37'!
accept: visitor
	^ visitor visitSymbol: self! !

!ASTSymbol methodsFor: 'converting' stamp: 'ToonVerwaest 3/25/2010 12:39'!
asSymbol
	^ symbol! !

!ASTSymbol methodsFor: 'printing' stamp: 'ToonVerwaest 9/7/2010 15:52'!
printOn: stream
	stream << symbol! !

!ASTSymbol methodsFor: 'accessing' stamp: 'ToonVerwaest 9/7/2010 15:18'!
selectorSymbol
	^ symbol! !

!ASTSymbol methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
symbol
	^ symbol! !

!ASTSymbol methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
symbol: aSymbol
	symbol := aSymbol asSymbol! !

!ASTSymbol class methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
astSelectors
	^ Array with: #symbol! !

!ASTSymbol class methodsFor: 'instance creation' stamp: 'ToonVerwaest 3/25/2010 12:39'!
named: anObject
	^ self new symbol: anObject! !

!ASTMethod methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 6/23/2010 18:59'!
= other 
	super  = other ifFalse: [^ false].
	self annotations = other annotations ifFalse: [^ false].
	self message = other message ifFalse: [^ false].
	self statements = other statements ifFalse: [^ false].
	self temporaries = other temporaries ifFalse: [^ false].
	^ true.! !

!ASTMethod methodsFor: 'visiting' stamp: 'ToonVerwaest 7/15/2010 13:34'!
accept: visitor
	^ visitor visitMethod: self! !

!ASTMethod methodsFor: 'testing' stamp: 'ToonVerwaest 9/7/2010 15:36'!
annotatedWith: selector
	^ self annotations anySatisfy: [ :annotation | annotation selector == selector ]! !

!ASTMethod methodsFor: 'testing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
hasReturnExpression
	^ self statements hasReturnExpression! !

!ASTMethod methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
annotations
	^ annotations! !

!ASTMethod methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
annotations: anObject
	annotations := anObject! !

!ASTMethod methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
message
	^ message! !

!ASTMethod methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
message: anObject
	message := anObject! !

!ASTMethod methodsFor: 'accessing' stamp: 'ToonVerwaest 5/24/2011 18:12'!
parameters
	^ message parameters! !

!ASTMethod methodsFor: 'accessing' stamp: 'ToonVerwaest 7/29/2010 10:26'!
sourceObject
	^ sourceObject! !

!ASTMethod methodsFor: 'accessing' stamp: 'ToonVerwaest 7/29/2010 10:26'!
sourceObject: anObject
	sourceObject := anObject! !

!ASTMethod methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
statements
	^ statements! !

!ASTMethod methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
statements: anObject
	statements := anObject! !

!ASTMethod methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
temporaries
	^ temporaries! !

!ASTMethod methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
temporaries: anObject
	temporaries := anObject! !

!ASTMethod methodsFor: 'printing' stamp: 'CamilloBruni 2/10/2011 15:47'!
printOn: aStream
	super printOn: aStream.
	aStream << $(.
	self message printOn: aStream.
	aStream << $)! !

!ASTPath methodsFor: 'as yet unclassified' stamp: 'ToonVerwaest 9/7/2010 15:06'!
= other 
	super = other ifFalse: [^ false].
	path = other path ifFalse: [^ false].
	^ true.! !

!ASTPath methodsFor: 'visiting' stamp: 'ToonVerwaest 7/15/2010 13:46'!
accept: visitor
	^ visitor visitPath: self! !

!ASTPath methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
path
	^ path! !

!ASTPath methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
path: anObject
	path := anObject! !

!ASTSelector methodsFor: 'as yet unclassified' stamp: 'ToonVerwaest 9/7/2010 15:06'!
= other 
	super = other ifFalse: [^ false].
	^ selector = other selector! !

!ASTSelector methodsFor: 'accessing' stamp: 'ToonVerwaest 5/24/2011 20:32'!
parameters
	^ OrderedCollection new! !

!ASTSelector methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
selector
	^ selector! !

!ASTSelector methodsFor: 'accessing' stamp: 'ToonVerwaest 9/7/2010 15:34'!
selector: anObject
	selector := anObject asSymbol! !

!ASTSelector methodsFor: 'converting' stamp: 'ToonVerwaest 9/7/2010 14:51'!
printOn: stream
	stream << selector! !

!ASTSelector class methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
astSelectors
	^ Array with: #selector! !

!ASTBinarySelector methodsFor: 'visiting' stamp: 'ToonVerwaest 7/15/2010 13:45'!
accept: visitor
	^ visitor visitBinarySelector: self! !

!ASTBinarySelector methodsFor: 'visiting' stamp: 'OliFlueckiger 5/16/2011 17:41'!
numOfArgs
	^ 1! !

!ASTBinaryExpression methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 6/23/2010 19:00'!
= other 
	super = other ifFalse: [^ false].
	self argument = other argument ifFalse: [^ false].
	self receiver = other receiver ifFalse: [^ false].
	^ true.! !

!ASTBinaryExpression methodsFor: 'visiting' stamp: 'ToonVerwaest 7/15/2010 13:38'!
accept: visitor
	^ visitor visitBinaryExpression: self! !

!ASTBinaryExpression methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
argument
	^ argument! !

!ASTBinaryExpression methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
argument: anObject
	argument := anObject! !

!ASTBinaryExpression methodsFor: 'accessing' stamp: 'OliFlueckiger 7/26/2011 11:58'!
arguments
	^ { argument }! !

!ASTBinaryExpression methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
receiver
	^ receiver! !

!ASTBinaryExpression methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
receiver: anObject
	receiver := anObject! !

!ASTBinaryExpression methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
scoped
	scoped := true! !

!ASTBinaryExpression methodsFor: 'testing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
hasReturnExpression
	^ (receiver ifNil: [ false ] ifNotNil: [ receiver hasReturnExpression ]) or: [ argument hasReturnExpression ]! !

!ASTBinaryExpression methodsFor: 'initialize-release' stamp: 'ToonVerwaest 3/25/2010 12:39'!
initialize
	super initialize.
	scoped := false! !

!ASTBinaryExpression methodsFor: 'printing' stamp: 'ToonVerwaest 8/6/2010 18:29'!
printOn: aStream
	self receiver printOn: aStream.
	aStream space.
	super printOn: aStream.
	aStream space.
	self argument printOn: aStream! !

!ASTBinaryMessageDefinition methodsFor: 'comparing' stamp: 'CamilloBruni 6/23/2010 19:01'!
= other 
	super = other ifFalse: [^ false].
	self parameter = other parameter ifFalse: [^ false].
	^ true.! !

!ASTBinaryMessageDefinition methodsFor: 'visiting' stamp: 'ToonVerwaest 7/15/2010 13:38'!
accept: visitor
	^ visitor visitBinaryMessageDefinition: self! !

!ASTBinaryMessageDefinition methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
parameter
	^ parameter! !

!ASTBinaryMessageDefinition methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
parameter: anObject
	parameter := anObject! !

!ASTBinaryMessageDefinition methodsFor: 'accessing' stamp: 'ToonVerwaest 5/24/2011 20:33'!
parameters
	^ OrderedCollection with: self parameter! !

!ASTKeywordSelector methodsFor: 'visiting' stamp: 'ToonVerwaest 7/15/2010 13:37'!
accept: visitor
	^ visitor visitKeywordSelector: self! !

!ASTKeywordSelector methodsFor: 'accessing' stamp: 'ToonVerwaest 9/7/2010 15:46'!
keywords: anObject
	selector := (String newFromAll: anObject) asSymbol! !

!ASTKeywordAnnotation methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 6/23/2010 19:01'!
= other 
	super = other ifFalse: [^ false].
	self arguments = other arguments ifFalse: [^ false].
	^ true.! !

!ASTKeywordAnnotation methodsFor: 'visiting' stamp: 'ToonVerwaest 7/15/2010 13:36'!
accept: visitor
	^ visitor visitKeywordAnnotation: self! !

!ASTKeywordAnnotation methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
arguments
	^ arguments! !

!ASTKeywordAnnotation methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
arguments: anObject
	arguments := anObject! !

!ASTKeywordAnnotation methodsFor: 'accessing' stamp: 'OliFlueckiger 5/16/2011 17:42'!
numOfArgs
	^ arguments size! !

!ASTKeywordMessageDefinition methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 6/23/2010 19:01'!
= other 
	super = other ifFalse: [^ false].
	self parameters = other parameters ifFalse: [^ false].
	^ true.! !

!ASTKeywordMessageDefinition methodsFor: 'visiting' stamp: 'ToonVerwaest 7/15/2010 13:36'!
accept: visitor
	^ visitor visitKeywordMessageDefinition: self! !

!ASTKeywordMessageDefinition methodsFor: 'accessing' stamp: 'OliFlueckiger 5/16/2011 17:51'!
numOfArgs
	^ parameters size! !

!ASTKeywordMessageDefinition methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
parameters
	^ parameters! !

!ASTKeywordMessageDefinition methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
parameters: aCollection
	parameters := aCollection! !

!ASTMessageExpression methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 6/23/2010 19:01'!
= other 
	super = other ifFalse: [^ false].
	self arguments = other arguments ifFalse: [^ false].
	self receiver = other receiver ifFalse: [^ false].
	^ true.! !

!ASTMessageExpression methodsFor: 'visiting' stamp: 'ToonVerwaest 7/15/2010 13:36'!
accept: visitor
	^ visitor visitMessageExpression: self! !

!ASTMessageExpression methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
arguments
	^ arguments! !

!ASTMessageExpression methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
arguments: anObject
	arguments := anObject! !

!ASTMessageExpression methodsFor: 'accessing' stamp: 'OliFlueckiger 5/16/2011 17:42'!
numOfArgs
	^ arguments size! !

!ASTMessageExpression methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
receiver
	^ receiver! !

!ASTMessageExpression methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
receiver: anObject
	receiver := anObject! !

!ASTMessageExpression methodsFor: 'testing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
hasReturnExpression
	^ (receiver ifNil: [ false ] ifNotNil: [ receiver hasReturnExpression ])
		or: [ self arguments anySatisfy: #hasReturnExpression ]! !

!ASTMessageExpression methodsFor: 'initialization' stamp: 'ToonVerwaest 3/25/2010 12:39'!
initialize
	super initialize.
	arguments := OrderedCollection new! !

!ASTUnarySelector methodsFor: 'visiting' stamp: 'ToonVerwaest 7/15/2010 13:38'!
accept: visitor
	^ visitor visitUnarySelector: self! !

!ASTUnarySelector methodsFor: 'visiting' stamp: 'OliFlueckiger 5/16/2011 17:42'!
numOfArgs
	^ 0! !

!ASTUnaryAnnotation methodsFor: 'visiting' stamp: 'ToonVerwaest 7/15/2010 13:35'!
accept: visitor
	^ visitor visitUnaryAnnotation: self! !

!ASTUnaryExpression methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 6/23/2010 19:02'!
= other 
	super = other ifFalse: [^ false].
	self receiver = other receiver ifFalse: [^ false].
	^ true.! !

!ASTUnaryExpression methodsFor: 'visiting' stamp: 'ToonVerwaest 7/15/2010 13:35'!
accept: visitor
	^ visitor visitUnaryExpression: self! !

!ASTUnaryExpression methodsFor: 'accessing' stamp: 'OliFlueckiger 7/26/2011 11:57'!
arguments
	^{}! !

!ASTUnaryExpression methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
receiver
	^ receiver! !

!ASTUnaryExpression methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
receiver: anObject
	receiver := anObject! !

!ASTUnaryExpression methodsFor: 'testing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
hasReturnExpression
	^ receiver ifNil: [ false ] ifNotNil: [ receiver hasReturnExpression ]! !

!ASTUnaryExpression methodsFor: 'printing' stamp: 'ToonVerwaest 8/6/2010 18:29'!
printOn: aStream
	self receiver printOn: aStream.
	aStream space.
	super printOn: aStream! !

!ASTUnaryMessageDefinition methodsFor: 'visiting' stamp: 'ToonVerwaest 7/15/2010 13:35'!
accept: visitor
	^ visitor visitUnaryMessageDefinition: self! !

!ASTSelf methodsFor: 'visiting' stamp: 'ToonVerwaest 7/15/2010 13:35'!
accept: visitor
	^ visitor visitSelf: self! !

!ASTSelf methodsFor: 'printing' stamp: 'ToonVerwaest 8/6/2010 18:28'!
printOn: aStream
	aStream << 'self'! !

!ASTSuper methodsFor: 'visiting' stamp: 'ToonVerwaest 7/15/2010 13:36'!
accept: visitor
	^ visitor visitSuper: self! !

!ASTSuper methodsFor: 'testing' stamp: 'ToonVerwaest 5/24/2011 14:56'!
isSuper
	^ true! !

!ASTVariable methodsFor: 'typing' stamp: 'CamilloBruni 6/23/2010 19:00'!
= other 
	super = other ifFalse: [^ false].
	self name = other name ifFalse: [^ false].
	^ true.! !

!ASTVariable methodsFor: 'typing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
hash
	^ self name hash! !

!ASTVariable methodsFor: 'visiting' stamp: 'ToonVerwaest 7/15/2010 13:34'!
accept: visitor
	^ visitor visitVariable: self! !

!ASTVariable methodsFor: 'initialize-release' stamp: 'ToonVerwaest 3/25/2010 12:39'!
initialize
	super initialize! !

!ASTVariable methodsFor: 'accessing' stamp: 'ToonVerwaest 9/30/2010 15:36'!
name
	^ name! !

!ASTVariable methodsFor: 'accessing' stamp: 'ToonVerwaest 9/30/2010 16:32'!
name: anObject
	name := anObject asSymbol! !

!ASTVariable methodsFor: 'printing' stamp: 'ToonVerwaest 8/6/2010 18:28'!
printOn: aStream
	super printOn: aStream.
	aStream << $( << self name << $)! !

!ASTVariable class methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
named: aName
	^ self new name: aName! !

!ASTVisitor methodsFor: 'convenience' stamp: 'ToonVerwaest 3/25/2010 12:39'!
acceptOnCollection: aCollection
	aCollection isNil
		ifTrue: [ ^ OrderedCollection new: 1 ].
	^ aCollection collect: [ :each | each accept: self ]! !

!ASTVisitor methodsFor: 'visitor' stamp: 'ToonVerwaest 3/25/2010 12:39'!
visit: anASTNode
	^ anASTNode accept: self! !

!ASTVisitor class methodsFor: 'as yet unclassified' stamp: 'ToonVerwaest 5/16/2011 23:04'!
pname
	<preventExport>
	^ pname ifNil: [ pname := (self name copyFrom: 'AST' size + 1 to: self name size) asSymbol ]! !

!P4AST2TAC methodsFor: 'convenience' stamp: 'OliFlueckiger 8/12/2011 17:26'!
argumentsEmptyOrStatic: arguments
	^ arguments allSatisfy: [:arg | (arg isKindOf: ASTVariable) or: [ arg isKindOf: ASTLiteral  ] ]


! !

!P4AST2TAC methodsFor: 'convenience' stamp: 'OliFlueckiger 9/8/2011 13:50'!
callable 
	^callable! !

!P4AST2TAC methodsFor: 'convenience' stamp: 'OliFlueckiger 7/28/2011 16:40'!
compileInvokeBlock ! !

!P4AST2TAC methodsFor: 'convenience' stamp: 'OliFlueckiger 8/12/2011 17:26'!
evaluateArguments: arguments
	| argumentTemps argument value |
	argumentTemps := Array new: arguments size.
	1 to: arguments size - 1 do: [ :index |
		argument := arguments at: index.
		value := builder temporaryStore: (argument accept: self).
		argumentTemps at: index put: value ].
	argumentTemps at: arguments size put: (arguments last accept: self).
	
	^ argumentTemps! !

!P4AST2TAC methodsFor: 'convenience' stamp: 'OliFlueckiger 9/7/2011 14:40'!
insertPopArguments! !

!P4AST2TAC methodsFor: 'convenience' stamp: 'ToonVerwaest 5/26/2011 10:27'!
insertPreamble! !

!P4AST2TAC methodsFor: 'convenience' stamp: 'OliFlueckiger 5/31/2011 13:43'!
loadIncomingArguments: arguments
	self subclassResponsibility! !

!P4AST2TAC methodsFor: 'convenience' stamp: 'OliFlueckiger 7/20/2011 18:43'!
lookupLValue: anASTVariable
	^ builder local: anASTVariable name ifAbsent: [
		builder instVar: anASTVariable name ]! !

!P4AST2TAC methodsFor: 'convenience' stamp: 'OliFlueckiger 7/22/2011 15:09'!
readAnnotations: aCallable  ! !

!P4AST2TAC methodsFor: 'convenience' stamp: 'OliFlueckiger 10/5/2011 18:01'!
send: message to: receiver receiverTac: receiverTac with: arguments
	
	| receiverTemp argumentTemps ret tacMessage |
	(helper implements: message selector ) ifTrue: [ 
		^ helper send: message to: receiver with: arguments for: self ].	
	
	receiverTac 
		ifNil: [receiverTemp := receiver accept: self]
		ifNotNil: [receiverTemp := receiverTac].
	
	(self argumentsEmptyOrStatic: arguments)
		ifTrue: [ 
			argumentTemps := arguments collect: [ :arg | arg accept: self ]]
		ifFalse: [
			receiverTemp := builder temporaryStore: receiverTemp.
			argumentTemps := self evaluateArguments: arguments. ].
		
	tacMessage := P4TACMessage new selector: message selector; numOfArguments: message arguments size.
		
	receiver isSuper 
		ifTrue: [^self tacSuperSend: tacMessage to: receiverTemp with: argumentTemps]
		ifFalse: [^self tacSend: tacMessage to: receiverTemp with: argumentTemps]! !

!P4AST2TAC methodsFor: 'convenience' stamp: 'OliFlueckiger 10/5/2011 18:01'!
send: message to: receiver with: arguments
	^ self send: message to: receiver receiverTac: nil with: arguments! !

!P4AST2TAC methodsFor: 'convenience' stamp: 'OliFlueckiger 8/12/2011 15:34'!
tacSend: message to: receiver with: arguments
	builder volatileFence.
	helper loadArguments: arguments andReceiver: receiver toSend: message selector.
	
	helper invoke: message for: receiver with: arguments.
	^ helper resultVariable! !

!P4AST2TAC methodsFor: 'convenience' stamp: 'OliFlueckiger 8/12/2011 15:34'!
tacSuperSend: message to: receiver with: arguments
	builder volatileFence.
	helper loadArguments: arguments andReceiver: receiver toSend: message selector.
	
	self flag: 'the super call should really not be looked up statically!!'.
	builder move: (receiver accessAt: P4SmalltalkConfiguration classIndex) to: helper resultVariable.
	builder directCall: (self methodSuper earlySelectorAddress: message selector).

	^ helper resultVariable! !

!P4AST2TAC methodsFor: 'compiling' stamp: 'OliFlueckiger 9/7/2011 15:04'!
compileCallable: aCallable
	builder locals: callable locals.
	builder temps: callable temps.
	builder setMethodObject: callable.
	builder declareLocals: aCallable temporaries.
	self declareInstVars.
	
	callable preamble: builder preamble.
	self insertPreamble.

	builder useAsNextBasicBlock: (callable registerPushing: builder nextBasicBlock).
	self storeBasePointer.

	callable argumentLoading: builder nextBasicBlock.
	builder useAsNextBasicBlock: callable argumentLoading.
	self loadIncomingArguments: aCallable parameters.
	self readAnnotations: aCallable.
	
	builder useAsNextBasicBlock: (callable primitiveCalling: builder nextBasicBlock).

	callable entry: builder nextBasicBlock.
	self unrollPrimitive.	
	builder useAsNextBasicBlock: callable entry.

	self compileStatements: aCallable statements.
	builder endBlock.
	
	callable postamble: builder postamble.
	callable popArguments: builder nextBasicBlock.
	builder useAsNextBasicBlock: callable popArguments.  
	self insertPopArguments.
	
	self compileInvokeBlock.
! !

!P4AST2TAC methodsFor: 'compiling' stamp: 'OliFlueckiger 7/11/2011 12:07'!
compileStatements: statements
	|result|
	
	statements isEmpty ifTrue: [ ^ self emptyBody ].
	
	1 to: statements size - 1 do: [ :i |
		(statements at: i) acceptIgnoreResult: self ].
	
	result := statements last accept: self.
		
	statements last isReturnExpression ifFalse: [
		self insertReturn: result ]! !

!P4AST2TAC methodsFor: 'compiling' stamp: 'OliFlueckiger 7/8/2011 13:19'!
currentInstVars: vars
	currentInstVars := vars! !

!P4AST2TAC methodsFor: 'compiling' stamp: 'OliFlueckiger 5/26/2011 15:04'!
emptyBody
	self subclassResponsibility! !

!P4AST2TAC methodsFor: 'compiling' stamp: 'OliFlueckiger 5/26/2011 15:04'!
insertReturn: lastValue
	self subclassResponsibility! !

!P4AST2TAC methodsFor: 'compiling' stamp: 'OliFlueckiger 7/26/2011 17:05'!
unrollPrimitive! !

!P4AST2TAC methodsFor: 'accessing' stamp: 'ToonVerwaest 5/25/2011 18:02'!
helper: aHelper
	helper := aHelper! !

!P4AST2TAC methodsFor: 'accessing' stamp: 'ToonVerwaest 5/25/2011 17:35'!
methodSuper
	self subclassResponsibility! !

!P4AST2TAC methodsFor: 'visitor' stamp: 'OliFlueckiger 5/4/2011 17:08'!
visitArray: anArray
	self error: 'Literal arrays are not yet supported by the compiler. Patches welcome!!'! !

!P4AST2TAC methodsFor: 'visitor' stamp: 'OliFlueckiger 6/9/2011 20:53'!
visitAssignmentExpression: anAssignmentExpression
	| value variable |
	variable := self lookupLValue: anAssignmentExpression variable.
	value := anAssignmentExpression expression accept: self.
	value := builder temporaryStore: value.  
	builder move: value to: variable.
	^ value
! !

!P4AST2TAC methodsFor: 'visitor' stamp: 'ToonVerwaest 6/19/2011 13:26'!
visitAssignmentStatement: anAssignmentExpression
	| value variable |
	variable := self lookupLValue: anAssignmentExpression variable.
	value := anAssignmentExpression expression accept: self.
	builder move: value to: variable.! !

!P4AST2TAC methodsFor: 'visitor' stamp: 'OliFlueckiger 5/6/2011 16:17'!
visitBinaryExpression: aBinaryExpression
	^ self
		send: aBinaryExpression
		to: aBinaryExpression receiver
		with: { aBinaryExpression argument } 
! !

!P4AST2TAC methodsFor: 'visitor' stamp: 'OliFlueckiger 5/4/2011 17:08'!
visitBraceExpression: braceExpression
	self error: 'Brace expressions are not supported by the compiler. Patches welcome!!'! !

!P4AST2TAC methodsFor: 'visitor' stamp: 'ToonVerwaest 5/12/2011 22:37'!
visitCharacter: anASTCharacter
	^ builder loadConstant: anASTCharacter char! !

!P4AST2TAC methodsFor: 'visitor' stamp: 'OliFlueckiger 6/10/2011 14:25'!
visitClosure: closure
	| result |
	builder volatileFence.
	result := builder closure: closure inScope: callable.
	closureCaptures add: result.
	^ result resultVariable! !

!P4AST2TAC methodsFor: 'visitor' stamp: 'ToonVerwaest 5/12/2011 22:37'!
visitFloat: anASTFloat
	^ builder loadConstant: anASTFloat asNumber! !

!P4AST2TAC methodsFor: 'visitor' stamp: 'OliFlueckiger 9/6/2011 14:56'!
visitInlinedBlock: aBlock returnTo: aResultVariable
	| lastStatement |
	( aBlock statements size > 1 ) ifTrue: [
		1 to: (aBlock statements size - 1) do: [ :nr |
			(aBlock statements at: nr) accept: self ]].
	( aBlock statements size > 0 ) 
		ifTrue: [
			lastStatement := aBlock statements last accept: self.
			lastStatement asValue 
				ifNil: [ builder move: builder nil to: aResultVariable ]
				ifNotNil: [ builder move: lastStatement asValue to: aResultVariable ]]
		ifFalse: [
			builder move: builder nil to: aResultVariable ].
	^ aResultVariable.
! !

!P4AST2TAC methodsFor: 'visitor' stamp: 'OliFlueckiger 5/4/2011 17:08'!
visitKeywordSelector: anASTKeywordSelector
	^ anASTKeywordSelector selectorSymbol! !

!P4AST2TAC methodsFor: 'visitor' stamp: 'OliFlueckiger 10/5/2011 18:02'!
visitMessageCascadeExpression: anASTMessageCascadeExpression
	| lastMessage receiver |
	receiver := builder temporaryStore: (anASTMessageCascadeExpression receiver accept: self).
	anASTMessageCascadeExpression cascades do: [ :aMessageExpression |
		lastMessage := self send: aMessageExpression to: anASTMessageCascadeExpression receiver receiverTac: receiver with: aMessageExpression arguments ].
	^ lastMessage! !

!P4AST2TAC methodsFor: 'visitor' stamp: 'OliFlueckiger 5/6/2011 16:17'!
visitMessageExpression: aMessageExpression
	^ self
		send: aMessageExpression
		to: aMessageExpression receiver
		with: aMessageExpression arguments! !

!P4AST2TAC methodsFor: 'visitor' stamp: 'ToonVerwaest 6/14/2011 16:52'!
visitNumber: anASTNumber
	self flag: 'Support bignums separately'.
	^ P4TACConstant with: (anASTNumber asNumber << 1) + 1! !

!P4AST2TAC methodsFor: 'visitor' stamp: 'ToonVerwaest 5/25/2011 14:49'!
visitPath: aPath
	self error: 'NYI'! !

!P4AST2TAC methodsFor: 'visitor' stamp: 'ToonVerwaest 5/25/2011 17:56'!
visitReturnExpression: aReturnExpression
	self subclassResponsibility! !

!P4AST2TAC methodsFor: 'visitor' stamp: 'ToonVerwaest 5/24/2011 14:59'!
visitSelf: aSelf
	^ builder self! !

!P4AST2TAC methodsFor: 'visitor' stamp: 'ToonVerwaest 5/12/2011 22:37'!
visitString: anASTString
	^ builder loadConstant: anASTString string! !

!P4AST2TAC methodsFor: 'visitor' stamp: 'ToonVerwaest 5/24/2011 14:59'!
visitSuper: anASTSuper
	^ builder self! !

!P4AST2TAC methodsFor: 'visitor' stamp: 'ToonVerwaest 5/12/2011 22:37'!
visitSymbol: anASTSymbol
	^ builder loadConstant: anASTSymbol symbol! !

!P4AST2TAC methodsFor: 'visitor' stamp: 'ToonVerwaest 5/25/2011 14:50'!
visitUnaryExpression: anASTUnaryExpression
	^ self
		send: anASTUnaryExpression
		to: anASTUnaryExpression receiver
		with: #()! !

!P4AST2TAC methodsFor: 'visitor' stamp: 'OliFlueckiger 5/5/2011 18:41'!
visitUnarySelector: aUnarySelector
! !

!P4AST2TAC methodsFor: 'visitor' stamp: 'OliFlueckiger 7/15/2011 14:36'!
visitVariable: anASTVariable
	^ builder local: anASTVariable name ifAbsent: [
		builder instVarOrGlobal: anASTVariable name ]! !

!P4AST2TAC class methodsFor: 'accessing' stamp: 'ToonVerwaest 5/16/2011 23:04'!
pname
	<preventExport>
	^ pname ifNil: [ pname := (self name copyFrom: 'P4' size + 1 to: self name size) asSymbol ]! !

!P4A2TClosure methodsFor: 'accessing' stamp: 'ToonVerwaest 5/25/2011 18:33'!
builder: anObject
	builder := anObject! !

!P4A2TClosure methodsFor: 'accessing' stamp: 'OliFlueckiger 5/26/2011 16:40'!
closures: anObject
	closureCaptures := anObject! !

!P4A2TClosure methodsFor: 'accessing' stamp: 'ToonVerwaest 5/25/2011 17:42'!
methodCompiler: aMethodCompiler
	methodCompiler := aMethodCompiler! !

!P4A2TClosure methodsFor: 'accessing' stamp: 'ToonVerwaest 5/25/2011 17:41'!
methodSuper
	^ methodCompiler methodSuper! !

!P4A2TClosure methodsFor: 'compiling' stamp: 'ToonVerwaest 6/24/2011 19:52'!
compile: aClosure
	callable := aClosure.
	self compileCallable: aClosure code! !

!P4A2TClosure methodsFor: 'compiling' stamp: 'OliFlueckiger 8/24/2011 15:21'!
declareInstVars 
	builder loadSelf: #self from: [callable import: #self].
	builder clearInstVars.! !

!P4A2TClosure methodsFor: 'compiling' stamp: 'OliFlueckiger 7/29/2011 10:39'!
emptyBody
	builder return: (builder global: #nil)! !

!P4A2TClosure methodsFor: 'compiling' stamp: 'OliFlueckiger 7/29/2011 10:39'!
insertReturn: lastResult
	builder return: lastResult.! !

!P4A2TClosure methodsFor: 'visitor' stamp: 'OliFlueckiger 8/24/2011 14:44'!
loadIncomingArguments: parameters 
	| numOfArgs aLocal i |

	"arg 1 is the closure"
	numOfArgs := parameters size + 1.
	i := 0.
	parameters do: [ :arg |
		aLocal := builder declare: arg name.
		i := i + 1.
		builder move: ( helper arg: i + 1 of: numOfArgs ) to: aLocal ]. 
	
	builder volatileFence ! !

!P4A2TClosure methodsFor: 'visitor' stamp: 'OliFlueckiger 8/24/2011 14:28'!
lookupLValue: anASTVariable
	^ builder local: anASTVariable name ifAbsent: [
		(callable import: anASTVariable name) ifNil: [
			builder instVar: anASTVariable name ]]! !

!P4A2TClosure methodsFor: 'visitor' stamp: 'OliFlueckiger 8/5/2011 12:05'!
storeBasePointer ! !

!P4A2TClosure methodsFor: 'visitor' stamp: 'OliFlueckiger 8/5/2011 15:55'!
visitReturnExpression: aReturnExpression
	| ret |
	ret := aReturnExpression expression accept: self.
	builder move: (callable returnTokenFor: self) to: (helper arg: 1 of: 1).
	builder move: ret to: helper resultVariable. 
	builder directCall: (P4Closure earlySelectorAddress: #return).
	^ ret! !

!P4A2TClosure methodsFor: 'visitor' stamp: 'OliFlueckiger 7/15/2011 14:37'!
visitSelf: aSelf
	^ builder local: #self ifAbsent: [ callable import: #self ]! !

!P4A2TClosure methodsFor: 'visitor' stamp: 'OliFlueckiger 8/24/2011 13:49'!
visitVariable: anASTVariable
	^ builder local: anASTVariable name ifAbsent: [
		(callable import: anASTVariable name) ifNil: [
			builder instVarOrGlobal: anASTVariable name ]]! !

!P4A2TMethod methodsFor: 'accessing' stamp: 'ToonVerwaest 5/26/2011 17:39'!
argCount
	^ callable message numOfArgs + 1! !

!P4A2TMethod methodsFor: 'accessing' stamp: 'OliFlueckiger 7/28/2011 16:42'!
compileInvokeBlock 
	helper invokeBlockFor: callable  ! !

!P4A2TMethod methodsFor: 'accessing' stamp: 'OliFlueckiger 9/8/2011 14:09'!
declareInstVars
	builder declareSelf: #self.
	builder declareInstVars: currentInstVars.
	callable locals at: P4TACBasePointerName instance put: (P4TACConstantLocal named: P4TACBasePointerName instance).
	callable locals at: P4TACReturnTokenName instance put: (P4TACConstantLocal named: P4TACReturnTokenName instance)..
	helper currentHost: host.! !

!P4A2TMethod methodsFor: 'accessing' stamp: 'ToonVerwaest 5/25/2011 18:38'!
helper: aHelper
	helper := aHelper.
	closureCompiler helper: aHelper.
	aHelper
		builder: builder;
		methodCompiler: self.! !

!P4A2TMethod methodsFor: 'accessing' stamp: 'OliFlueckiger 7/11/2011 12:22'!
host: aClass
	host := aClass.
! !

!P4A2TMethod methodsFor: 'accessing' stamp: 'ToonVerwaest 5/26/2011 17:39'!
method
	^ callable! !

!P4A2TMethod methodsFor: 'accessing' stamp: 'OliFlueckiger 7/26/2011 17:47'!
methodSuper
	^ callable host superclass! !

!P4A2TMethod methodsFor: 'accessing' stamp: 'OliFlueckiger 7/22/2011 15:10'!
readAnnotations: aCallable  
	aCallable annotations do: [ :a | a accept: self ].! !

!P4A2TMethod methodsFor: 'compiling' stamp: 'OliFlueckiger 7/11/2011 12:24'!
compile: anAst
	self reset.
	^ self visit: anAst ! !

!P4A2TMethod methodsFor: 'compiling' stamp: 'OliFlueckiger 5/26/2011 15:05'!
emptyBody
	builder return: builder self  ! !

!P4A2TMethod methodsFor: 'compiling' stamp: 'ToonVerwaest 5/28/2011 18:34'!
insertReturn: lastResult
	builder return: builder self! !

!P4A2TMethod methodsFor: 'compiling' stamp: 'OliFlueckiger 7/26/2011 17:06'!
unrollPrimitive
	helper unrollPrimitiveFor: callable! !

!P4A2TMethod methodsFor: 'visitor' stamp: 'ToonVerwaest 6/7/2011 17:39'!
compileClosureCapture: closureCapture
	closureCompiler compile: closureCapture closure.! !

!P4A2TMethod methodsFor: 'visitor' stamp: 'OliFlueckiger 9/7/2011 13:30'!
createNonLocalReturnToken
	callable entry positionAtBeginning.
	callable entry     
		<< (P4TACCall to: #newClosureReturnToken);
		<< (helper resultVariable moveTo:  (callable returnToken));
		<< (callable returnToken moveTo:  (callable basePointer accessAt: 0));
		<< ((callable basePointer) moveTo: (callable returnToken accessAt: 0))

! !

!P4A2TMethod methodsFor: 'visitor' stamp: 'OliFlueckiger 9/7/2011 14:40'!
insertPopArguments
	helper insertPopArguments! !

!P4A2TMethod methodsFor: 'visitor' stamp: 'OliFlueckiger 7/28/2011 12:32'!
insertPreamble
	helper insertMethodPreamble: callable
! !

!P4A2TMethod methodsFor: 'visitor' stamp: 'OliFlueckiger 5/31/2011 13:43'!
loadIncomingArguments: parameters
	^ helper loadMethodArguments: parameters! !

!P4A2TMethod methodsFor: 'visitor' stamp: 'ToonVerwaest 5/25/2011 18:44'!
visitKeywordAnnotation: anASTKeywordAnnotation
	^ helper annotation: anASTKeywordAnnotation
! !

!P4A2TMethod methodsFor: 'visitor' stamp: 'OliFlueckiger 8/24/2011 13:47'!
visitMethod: aMethod
	| entry currentCapture |
	callable host: host.
	callable message: aMethod message.
	
	self compileCallable: aMethod.
	
	[ closureCaptures isEmpty ] whileFalse: [
		currentCapture := closureCaptures removeFirst.
		self compileClosureCapture: currentCapture.
		callable addClosure: currentCapture closure. ].

	callable hasNonLocalReturn ifTrue: [ self createNonLocalReturnToken ].
				
	callable literals: builder literals.
	
	^ callable! !

!P4A2TMethod methodsFor: 'visitor' stamp: 'ToonVerwaest 5/25/2011 17:56'!
visitReturnExpression: aReturnExpression
	^ helper methodReturn: aReturnExpression! !

!P4A2TMethod methodsFor: 'visitor' stamp: 'ToonVerwaest 5/25/2011 18:44'!
visitUnaryAnnotation: anASTUnaryAnnotation
	^ helper annotation: anASTUnaryAnnotation! !

!P4A2TMethod methodsFor: 'initialize-release' stamp: 'ToonVerwaest 6/24/2011 20:01'!
initialize
	builder := P4TACBuilder new.
	closureCaptures := OrderedCollection new.
	closureCompiler := P4A2TClosure new
							builder: builder;
							closures: closureCaptures;
							methodCompiler: self.! !

!P4A2TMethod methodsFor: 'initialize-release' stamp: 'ToonVerwaest 6/24/2011 20:00'!
reset
	builder reset.
	callable := P4TACMethod new.
	closureCaptures removeAll.! !

!P4A2TMethod methodsFor: 'convenience' stamp: 'OliFlueckiger 8/5/2011 17:27'!
storeBasePointer
	builder move: helper stackPointer to: callable basePointer! !

!P4TAC2ASM methodsFor: 'instructions' stamp: 'OliFlueckiger 6/22/2011 11:39'!
checkShortJump: aJump for: aBlock
	| result |
	aJump isShort ifTrue: [ processor forceShortJump ].
	result := aBlock value.
	processor unforceShortJump.
	^ result! !

!P4TAC2ASM methodsFor: 'instructions' stamp: 'OliFlueckiger 8/9/2011 15:29'!
visitAdd: anInstruction
	^ processor
		add: (anInstruction left accept: self)
		to: (anInstruction right accept: self)! !

!P4TAC2ASM methodsFor: 'instructions' stamp: 'ToonVerwaest 6/14/2011 15:14'!
visitAnd: anInstruction
	^ processor
		and: (anInstruction left accept: self)
		with: (anInstruction right accept: self)! !

!P4TAC2ASM methodsFor: 'instructions' stamp: 'ToonVerwaest 5/6/2011 22:36'!
visitAssignment: anAssignment
	^ processor
		mov: (anAssignment origin accept: self)
		to: (anAssignment target accept: self)! !

!P4TAC2ASM methodsFor: 'instructions' stamp: 'OliFlueckiger 9/6/2011 16:54'!
visitBitShift: anInstruction
	^ processor
		shl: (anInstruction target accept: self)
		by: (anInstruction bits)! !

!P4TAC2ASM methodsFor: 'instructions' stamp: 'OliFlueckiger 9/6/2011 16:54'!
visitBitShiftRight: anInstruction
	^ processor
		shr: (anInstruction target accept: self)
		by: (anInstruction bits)! !

!P4TAC2ASM methodsFor: 'instructions' stamp: 'OliFlueckiger 6/17/2011 16:17'!
visitBitTest: anInstruction
	^ processor
		testBit: (anInstruction bit)
		on: (anInstruction location accept: self)! !

!P4TAC2ASM methodsFor: 'instructions' stamp: 'OliFlueckiger 8/9/2011 18:38'!
visitCall: aNative
	^ processor directRelativeCall: aNative method offset: aNative offset    ! !

!P4TAC2ASM methodsFor: 'instructions' stamp: 'ToonVerwaest 5/12/2011 22:49'!
visitCompare: aComparison
	^ processor
		cmp: (aComparison left accept: self)
		with: (aComparison right accept: self)! !

!P4TAC2ASM methodsFor: 'instructions' stamp: 'OliFlueckiger 8/9/2011 12:58'!
visitConditionalJump: aJump
	^ self checkShortJump: aJump for: [
		aJump 
			ifEqualsTest: [ aJump
				ifCarryTest: [ self error: 'combined checks of multiple flags (jge an the like) is not yet supported' ] 
				else: [ aJump 
					ifEqualsSet: [ processor je: aJump target ] 
					else: [ processor jne: aJump target ] ] ] 
			else: [ aJump 
				ifCarryTest: [ aJump 
					ifCarrySet: [ processor jc: aJump target ] 
					else: [ processor jnc: aJump target ] ]
				else: [ self error: 'this is not a conditional jump']]]! !

!P4TAC2ASM methodsFor: 'instructions' stamp: 'OliFlueckiger 6/22/2011 16:02'!
visitConstantReference: aReference
	^ processor externalReference: aReference target! !

!P4TAC2ASM methodsFor: 'instructions' stamp: 'OliFlueckiger 8/24/2011 11:33'!
visitHalt: aHalt
	^ processor int3! !

!P4TAC2ASM methodsFor: 'instructions' stamp: 'OliFlueckiger 8/31/2011 16:27'!
visitIndirectCall: aCall
	^ processor indirectCall: ( aCall register accept: self )! !

!P4TAC2ASM methodsFor: 'instructions' stamp: 'OliFlueckiger 5/24/2011 14:18'!
visitIndirectJump: aJump
	^ processor indirectJmp: ( aJump register accept: self )! !

!P4TAC2ASM methodsFor: 'instructions' stamp: 'OliFlueckiger 6/22/2011 11:37'!
visitJump: aJump
	^ self checkShortJump: aJump for: [ processor jmp: aJump target ]! !

!P4TAC2ASM methodsFor: 'instructions' stamp: 'ToonVerwaest 6/17/2011 15:14'!
visitLoadAddress: aLoadAddress
	^ processor
		lea: (aLoadAddress origin accept: self)
		to: (aLoadAddress target accept: self)! !

!P4TAC2ASM methodsFor: 'instructions' stamp: 'OliFlueckiger 8/29/2011 22:46'!
visitOr: anInstruction
	^ processor
		or: (anInstruction left accept: self)
		with: (anInstruction right accept: self)! !

!P4TAC2ASM methodsFor: 'instructions' stamp: 'ToonVerwaest 5/13/2011 16:47'!
visitPop: aPop
	^ processor pop: aPop register! !

!P4TAC2ASM methodsFor: 'instructions' stamp: 'ToonVerwaest 5/13/2011 16:16'!
visitPush: aPush
	^ processor push: aPush register! !

!P4TAC2ASM methodsFor: 'instructions' stamp: 'ToonVerwaest 6/17/2011 18:25'!
visitReference: aReference
	^ processor reference: aReference target.! !

!P4TAC2ASM methodsFor: 'instructions' stamp: 'OliFlueckiger 9/7/2011 15:24'!
visitReturn: aReturn
	aReturn tearDown ifTrue: [self tearDownFrame: false].
	processor ret.! !

!P4TAC2ASM methodsFor: 'instructions' stamp: 'OliFlueckiger 8/29/2011 22:43'!
visitSub: anInstruction
	^ processor
		sub: (anInstruction left accept: self)
		from: (anInstruction right accept: self)! !

!P4TAC2ASM methodsFor: 'instructions' stamp: 'OliFlueckiger 9/7/2011 14:42'!
visitTeardown: aReturn
	self tearDownFrame: aReturn shouldKeepArguments.! !

!P4TAC2ASM methodsFor: 'instructions' stamp: 'ToonVerwaest 6/14/2011 17:37'!
visitTest: anInstruction
	^ processor
		test: (anInstruction left accept: self)
		with: (anInstruction right accept: self)! !

!P4TAC2ASM methodsFor: 'instructions' stamp: 'OliFlueckiger 8/11/2011 18:57'!
visitXor: anInstruction
	^ processor
		xor: (anInstruction left accept: self)
		with: (anInstruction right accept: self)! !

!P4TAC2ASM methodsFor: 'compiling' stamp: 'OliFlueckiger 7/28/2011 12:50'!
compile: aMethod
	processor reset.
	processor tagMethod: aMethod.
	self compileCallable: aMethod.
	aMethod stream: processor stream.
	aMethod closures do: [ :aClosure |
		processor tagClosure: aClosure.
		self compileCallable: aClosure ].
	processor finalize.
	^ P4Method fromTac: aMethod.	
	! !

!P4TAC2ASM methodsFor: 'compiling' stamp: 'ToonVerwaest 5/13/2011 14:02'!
compileBasicBlock: aCodeBlock
	processor label: aCodeBlock.
	aCodeBlock do: [ :anInstruction | anInstruction accept: self ]! !

!P4TAC2ASM methodsFor: 'compiling' stamp: 'OliFlueckiger 7/28/2011 12:52'!
compileCallable: aCallable
	| currentBasicBlock |
	methods add: aCallable.
	aCallable setupFrame: self.
	currentBasicBlock := aCallable entry.
	[ currentBasicBlock atEnd ] whileFalse: [
		self compileBasicBlock: currentBasicBlock.
		currentBasicBlock := currentBasicBlock nextBlock ].
	aCallable invokeBlock ifNotNil: [self compileBasicBlock: aCallable invokeBlock].
	currentCallable := nil.! !

!P4TAC2ASM methodsFor: 'compiling' stamp: 'OliFlueckiger 6/16/2011 14:07'!
initialize 
	methods := OrderedCollection new.! !

!P4TAC2ASM methodsFor: 'accessing' stamp: 'ToonVerwaest 5/4/2011 11:33'!
processor: aProcessor
	processor := aProcessor! !

!P4TAC2ASM methodsFor: 'private' stamp: 'OliFlueckiger 8/4/2011 18:11'!
setupStaticFrame: aCallable
	| entry currentBasicBlock |
	currentCallable ifNotNil: [ self error: 'Should not build up a frame while another frame is active' ].
	currentCallable := aCallable.
	
	currentBasicBlock := currentCallable preamble.	
	[ currentBasicBlock == currentCallable argumentLoading  ] whileFalse: [
		self compileBasicBlock: currentBasicBlock.
		currentBasicBlock := currentBasicBlock nextBlock ].	

	currentCallable frameSize > 0
		ifTrue: [ 
			processor
				sub: (processor constant: currentCallable frameSize * processor pointerSize )
				from: processor stackPointer ].

	currentBasicBlock := currentCallable argumentLoading .	
	[ currentBasicBlock == currentCallable entry ] whileFalse: [
		self compileBasicBlock: currentBasicBlock.
		currentBasicBlock := currentBasicBlock nextBlock ].
! !

!P4TAC2ASM methodsFor: 'private' stamp: 'OliFlueckiger 9/7/2011 14:43'!
tearDownFrame: shouldKeepArguments
	currentCallable frameSize > 0
		ifTrue: [ 
			processor
				add: (processor constant: currentCallable frameSize * processor pointerSize )
				to: processor stackPointer ].
	self compileBasicBlock: currentCallable postamble. 
	shouldKeepArguments 
		ifFalse: [self compileBasicBlock: currentCallable popArguments.]
! !

!P4TAC2ASM methodsFor: 'values' stamp: 'ToonVerwaest 5/6/2011 22:34'!
visitConstant: aConstant
	^ processor constant: aConstant constantValue! !

!P4TAC2ASM methodsFor: 'values' stamp: 'OliFlueckiger 7/14/2011 18:33'!
visitMethodObjectAccess: aLiteral
	^ (P4ASMObjectAccess new)
		target: aLiteral target;
		offset: aLiteral index * processor pointerSize  ! !

!P4TAC2ASM methodsFor: 'values' stamp: 'OliFlueckiger 5/31/2011 18:15'!
visitVariable: aVariable
	^ aVariable asAsm! !

!P4TAC2ASM methodsFor: 'values' stamp: 'ToonVerwaest 5/29/2011 11:51'!
visitVariableAccess: aVariableAccess
	^ aVariableAccess register accessAt: aVariableAccess index * processor pointerSize! !

!P4TAC2ASM methodsFor: 'visiting' stamp: 'OliFlueckiger 6/10/2011 14:27'!
visitVolatileFence: aP4TACVolatileFence ! !

!P4ASMValue methodsFor: 'accessing' stamp: 'ToonVerwaest 5/5/2011 18:36'!
combination
	^ 0! !

!P4ASMValue methodsFor: 'testing' stamp: 'ToonVerwaest 5/4/2011 20:51'!
isAccess
	^ false! !

!P4ASMValue methodsFor: 'testing' stamp: 'ToonVerwaest 5/5/2011 16:47'!
isConstant
	^ false! !

!P4ASMValue methodsFor: 'testing' stamp: 'OliFlueckiger 6/23/2011 17:14'!
isExternal
	^false! !

!P4ASMValue methodsFor: 'testing' stamp: 'OliFlueckiger 6/22/2011 16:17'!
isRelative
	^ false! !

!P4ASMConstant methodsFor: 'accessing' stamp: 'ToonVerwaest 5/5/2011 18:35'!
constantValue
	^ constantValue! !

!P4ASMConstant methodsFor: 'accessing' stamp: 'ToonVerwaest 5/5/2011 18:35'!
constantValue: anObject
	constantValue := anObject! !

!P4ASMConstant methodsFor: 'testing' stamp: 'ToonVerwaest 5/12/2011 22:43'!
isAccess
	^ false! !

!P4ASMConstant methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/22/2011 16:17'!
isConstant 
	^ true! !

!P4ASMExternalReference methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/22/2011 17:16'!
constantValue 
	^0! !

!P4ASMExternalReference methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/23/2011 17:14'!
isExternal 
	^ true! !

!P4ASMExternalReference methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/22/2011 17:16'!
label
	^ label! !

!P4ASMExternalReference methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/22/2011 17:16'!
label: aLabel
	label := aLabel ! !

!P4ASMReference methodsFor: 'testing' stamp: 'ToonVerwaest 6/17/2011 15:00'!
isAccess
	^ true! !

!P4ASMReference methodsFor: 'testing' stamp: 'OliFlueckiger 6/22/2011 16:18'!
isRelative 
	^ true! !

!P4ASMReference methodsFor: 'accessing' stamp: 'OliFlueckiger 6/7/2011 15:52'!
label
	^ label! !

!P4ASMReference methodsFor: 'accessing' stamp: 'OliFlueckiger 6/22/2011 16:34'!
label: anObject
	label := anObject! !

!P4ASMReference methodsFor: 'accessing' stamp: 'OliFlueckiger 6/22/2011 16:20'!
offset
	^0! !

!P4ASMReference methodsFor: 'accessing' stamp: 'OliFlueckiger 6/22/2011 15:54'!
target
	^ target! !

!P4ASMReference methodsFor: 'accessing' stamp: 'OliFlueckiger 6/22/2011 16:33'!
target: anObject
	target := anObject! !

!P4ASMObjectAccess methodsFor: 'accessing' stamp: 'ToonVerwaest 6/17/2011 15:00'!
offset
	^ offset ifNil: [ 0 ]! !

!P4ASMObjectAccess methodsFor: 'accessing' stamp: 'OliFlueckiger 6/15/2011 16:58'!
offset: anObject
	offset := anObject! !

!P4ASMRegister methodsFor: 'converting' stamp: 'ToonVerwaest 5/5/2011 14:00'!
accessAt: offset
	^ P4ASMRegisterAccess new
		register: self;
		offset: offset! !

!P4ASMRegister methodsFor: 'converting' stamp: 'ToonVerwaest 5/7/2011 14:04'!
asRegister! !

!P4ASMRegister methodsFor: 'accessing' stamp: 'ToonVerwaest 5/4/2011 20:47'!
combination
	^ combination! !

!P4ASMRegister methodsFor: 'accessing' stamp: 'ToonVerwaest 5/4/2011 20:47'!
combination: anObject
	combination := anObject! !

!P4ASMRegister methodsFor: 'accessing' stamp: 'ToonVerwaest 5/4/2011 20:47'!
index
	^ index! !

!P4ASMRegister methodsFor: 'accessing' stamp: 'ToonVerwaest 5/4/2011 20:47'!
index: anObject
	index := anObject! !

!P4ASMRegister methodsFor: 'accessing' stamp: 'ToonVerwaest 5/4/2011 20:47'!
name
	^ name! !

!P4ASMRegister methodsFor: 'accessing' stamp: 'ToonVerwaest 5/4/2011 20:47'!
name: anObject
	name := anObject! !

!P4ASMRegister methodsFor: 'instruction-creation' stamp: 'OliFlueckiger 5/26/2011 14:10'!
pop
	^ P4TACPop new register: self! !

!P4ASMRegister methodsFor: 'instruction-creation' stamp: 'OliFlueckiger 5/26/2011 14:10'!
push
	^ P4TACPush new register: self! !

!P4ASMRegister methodsFor: 'printing' stamp: 'OliFlueckiger 5/6/2011 18:05'!
printOn: stream
	stream << '%' << name! !

!P4ASMRegister methodsFor: 'printing' stamp: 'OliFlueckiger 5/4/2011 23:20'!
printString 
	^ '%',name! !

!P4ASMRegister class methodsFor: 'instance creation' stamp: 'ToonVerwaest 5/4/2011 20:48'!
named: aName
	^ self new name: aName! !

!P4ASMRegisterAccess methodsFor: 'converting' stamp: 'ToonVerwaest 5/7/2011 14:04'!
asRegister
	^ register! !

!P4ASMRegisterAccess methodsFor: 'accessing' stamp: 'ToonVerwaest 5/5/2011 18:36'!
combination
	^ register combination! !

!P4ASMRegisterAccess methodsFor: 'accessing' stamp: 'ToonVerwaest 5/6/2011 17:18'!
index
	^ register index! !

!P4ASMRegisterAccess methodsFor: 'accessing' stamp: 'ToonVerwaest 5/12/2011 22:42'!
isDirect
	^ false! !

!P4ASMRegisterAccess methodsFor: 'accessing' stamp: 'ToonVerwaest 5/4/2011 20:47'!
offset
	^ offset! !

!P4ASMRegisterAccess methodsFor: 'accessing' stamp: 'ToonVerwaest 5/4/2011 20:47'!
offset: anObject
	offset := anObject! !

!P4ASMRegisterAccess methodsFor: 'accessing' stamp: 'OliFlueckiger 5/13/2011 15:06'!
printOn: stream
	register printOn: stream .
	stream << '[' << offset asString << ']'  ! !

!P4ASMRegisterAccess methodsFor: 'accessing' stamp: 'ToonVerwaest 5/4/2011 20:47'!
register
	^ register! !

!P4ASMRegisterAccess methodsFor: 'accessing' stamp: 'ToonVerwaest 5/4/2011 20:47'!
register: anObject
	register := anObject! !

!P4ASMRegisterAccess methodsFor: 'testing' stamp: 'ToonVerwaest 5/4/2011 20:51'!
isAccess
	^ true! !

!P4ASMRegisterDynAccess methodsFor: 'accessing' stamp: 'ToonVerwaest 5/4/2011 20:47'!
offsetRegister
	^ offsetRegister! !

!P4ASMRegisterDynAccess methodsFor: 'accessing' stamp: 'ToonVerwaest 5/4/2011 20:47'!
offsetRegister: anObject
	offsetRegister := anObject! !

!P4SmalltalkCompiler methodsFor: 'compiling' stamp: 'ToonVerwaest 5/25/2011 18:05'!
a2tHelper: aMethodAST
	^ P4A2THelper new
	
	
! !

!P4SmalltalkCompiler methodsFor: 'compiling' stamp: 'OliFlueckiger 8/5/2011 13:42'!
compileMethod: aMethodSource
	| methodAST methodTAC |
	methodAST := parser parse: aMethodSource.
	(self shouldBeExported: methodAST) ifFalse: [ ^ nil ].
	self haltIf: (self hasHalt: methodAST).
	self helper: (self a2tHelper: methodAST).
	methodTAC := ast2tac compile: methodAST.
	livenessAnalyzer runOn: methodTAC.
	analyzeRemote runOn: methodTAC.
	closureInstaller runOn: methodTAC.
	registerAllocator runOn: methodTAC.
	registerSwapper runOn: methodTAC.
	assignmentRemover runOn: methodTAC.
	^tac2asm compile: methodTAC
	"self halt."
! !

!P4SmalltalkCompiler methodsFor: 'compiling' stamp: 'OliFlueckiger 8/5/2011 13:42'!
hasHalt: methodAST
	^ (methodAST annotatedWith: #halt)! !

!P4SmalltalkCompiler methodsFor: 'compiling' stamp: 'ToonVerwaest 6/24/2011 19:44'!
helper: anA2THelper
	anA2THelper processor: processor.
	ast2tac helper: anA2THelper.
	registerSwapper helper: anA2THelper.
	closureInstaller helper: anA2THelper.
! !

!P4SmalltalkCompiler methodsFor: 'compiling' stamp: 'ToonVerwaest 5/24/2011 21:52'!
shouldBeExported: methodAST
	^ (methodAST annotatedWith: #preventExport) not! !

!P4SmalltalkCompiler methodsFor: 'accessing' stamp: 'OliFlueckiger 7/8/2011 13:17'!
currentClass: aClass
	ast2tac currentClass: aClass    ! !

!P4SmalltalkCompiler methodsFor: 'accessing' stamp: 'ToonVerwaest 7/21/2011 17:19'!
host: anObject
	ast2tac host: anObject .
	ast2tac currentInstVars: anObject inPharo allInstVarNames.
! !

!P4SmalltalkCompiler methodsFor: 'accessing' stamp: 'ToonVerwaest 6/24/2011 19:20'!
processor: aProcessor
	processor := aProcessor.
	registerAllocator processor: aProcessor.
	tac2asm processor: aProcessor.! !

!P4SmalltalkCompiler methodsFor: 'initialize-release' stamp: 'OliFlueckiger 7/15/2011 17:10'!
initialize
	
	parser := P4SmalltalkParser instance method.
	
	livenessAnalyzer := P4TACLivenessAnalysis new.
	registerAllocator := P4TACLinearScanRegisterAllocator new.
	registerSwapper := P4TACRegisterSwapper new.
	assignmentRemover := P4TACAssignmentRemover new.
	analyzeRemote := P4TACAnalyzeRemote new.
	closureInstaller := P4TACClosureInstaller new.
	tac2asm := P4TAC2ASM new.
	ast2tac := P4A2TMethod new.
	
! !

!P4SmalltalkKernelCompiler methodsFor: 'as yet unclassified' stamp: 'ToonVerwaest 5/26/2011 15:25'!
a2tHelper: methodAST
	( methodAST annotatedWith: #invoke ) ifTrue: [ ^ P4A2TInvoke new ].
	^ P4A2TKernel new! !

!P4SmalltalkKernelCompiler methodsFor: 'as yet unclassified' stamp: 'KenD 8/24/2022 17:09:06'!
initialize 
"
	self initialize.
"
	super initialize.
	P4Package loadClasses.! !

!P4ExamplesTest methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 12/7/2011 23:02'!
messageLogTest
	| obj log oldBehavior |
	obj := P4Dictionary new.
	log := P4MessageLog new.
	oldBehavior := obj behavior.
	'** setUp logger' print.
	obj behavior: (P4MessageLogBehavior new logger: log; wrap: oldBehavior).
	'** send some messages' print.
	obj at: 1 put: #bla.
	obj at: 2 put: #whoo.
	obj at: 1.
	'** tearDown logger' print.
	obj behavior: oldBehavior.
	'** replay' print.
	log replay.
! !

!P4ExamplesTest methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 12/9/2011 19:22'!
prototypesTest
	| proto1 m1 m2 proto2 proto3 |
	'*** Testing Prototypes' print.
	
	proto1 := P4Prototype new.

	m1 := P4ProbeMethod new.
	m2 := P4ProbeMethod new.
	
	m1 return: #one when: #call.
	m1 return: #one when: #call1.
	m2 return: #two when: #call.
	
	proto1 addMethod: m1 at: #call.
	proto1 addMethod: m1 at: #call1.
	
	proto2 := proto1 clone.
	proto2 addMethod: m2 at: #call.
	
	proto1 call shouldBe: #one.  
	proto1 call1 shouldBe: #one. 
	proto2 call shouldBe: #two.  
	proto2 call1 shouldBe: #one. 
	
	proto3 := proto2 clone.
	proto3 call shouldBe: #two.
	proto3 call1 shouldBe: #one.

	proto2 class.
	'*** done' print! !

!P4ExamplesTest methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 12/7/2011 22:50'!
run
	self messageLogTest.
	self prototypesTest.
! !

!P4MessageLogProxy methodsFor: 'accessing' stamp: 'OliFlueckiger 10/18/2011 18:06'!
logger
	^ logger! !

!P4MessageLogProxy methodsFor: 'accessing' stamp: 'OliFlueckiger 10/18/2011 18:06'!
logger: anObject
	logger := anObject! !

!P4MessageLogProxy methodsFor: 'accessing' stamp: 'OliFlueckiger 10/18/2011 17:26'!
method
	^ method! !

!P4MessageLogProxy methodsFor: 'accessing' stamp: 'OliFlueckiger 10/18/2011 17:26'!
method: anObject
	method := anObject! !

!P4MessageLogProxy methodsFor: 'accessing' stamp: 'OliFlueckiger 10/18/2011 18:27'!
perform: selector on: receiver with: args
	| message |
	message := Array new: 4.
	message
			at: 1 put: method;
			at: 2 put: selector;
			at: 3 put: receiver;
			at: 4 put: args.
	logger log: message.
	^ method perform: selector on: receiver with: args! !

!P4MessageLogProxy class methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 10/18/2011 18:06'!
wrap: method logger: logger
	^ self new method: method; logger: logger! !

!P4ProbeMethod methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 9/13/2011 12:21'!
initialize 
	returnValues := P4IdentityDictionary new.! !

!P4ProbeMethod methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 9/13/2011 12:22'!
perform: selector on: name with: args
	^ returnValues at: selector ! !

!P4ProbeMethod methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 9/13/2011 12:05'!
return: returnValue when: selector
	returnValues at: selector put: returnValue! !

!P4Prototype methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 12/7/2011 23:44'!
addMethod: method at: selector
	slots at: selector put: method! !

!P4Prototype methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 12/8/2011 09:31'!
behavior
	<pprimitive: #'behavior'>
	self pHalt! !

!P4Prototype methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 12/8/2011 14:34'!
clone
	| clone |
	clone := P4Prototype basicNew.
	clone initializeClone.    
	clone delegate: self.
	^clone! !

!P4Prototype methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 12/9/2011 19:25'!
initialize
	slots := P4IdentityDictionary new.
	delegate := nil.
	self behavior: (P4PrototypeBehavior new initialize: self).
	P4Prototype setBehavior:  self behavior.  ! !

!P4Prototype methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 12/8/2011 15:42'!
initializeClone
	slots := P4IdentityDictionary new.
	delegate := nil.! !

!P4Prototype methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 9/13/2011 14:20'!
slot: name 
	^ slots at: name ifAbsent: nil! !

!P4Prototype methodsFor: 'accessing' stamp: 'OliFlueckiger 12/7/2011 23:08'!
delegate
	^ delegate! !

!P4Prototype methodsFor: 'accessing' stamp: 'OliFlueckiger 12/7/2011 23:08'!
delegate: anObject
	delegate := anObject! !

!P4Prototype methodsFor: 'accessing' stamp: 'OliFlueckiger 12/9/2011 19:25'!
doesNotUnderstand: aMessage
	'doesNotUnderstand' print! !

!P4PrototypeBehavior methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 12/8/2011 14:33'!
initialize: object
	originalMethods := object class methodDictionary.! !

!P4PrototypeBehavior methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 12/8/2011 15:41'!
lookup: selector for: object
	| currentObj |
	(originalMethods at: selector) 
		ifNotNil: [ :method | ^ method ].

	currentObj := object.
	[currentObj == nil] whileFalse: [
		(currentObj slot: selector) 
			ifNotNil: [ :method | ^ method ].
		currentObj := currentObj delegate ].

	^ P4DoesNotUnderstand new! !

!P4Exception methodsFor: 'PharoIntegration' stamp: 'OliFlueckiger 5/5/2011 17:54'!
defaultAction
	"No one has handled this error, but now give them a chance to decide
	how to debug it. If none handle this either then open debugger (see
	UnhandedError-defaultAction) "
	<preventExport>
	UnhandledError signalForException: self! !

!P4Exception methodsFor: 'PharoIntegration' stamp: 'ToonVerwaest 7/19/2011 17:31'!
description
	<preventExport>
	"Return a textual description of the exception."
	| desc mt |
	desc := self class name asString.
	^ (mt := self messageText) == nil
		ifTrue: [desc]
		ifFalse: [desc , ': ' , mt]! !

!P4Exception methodsFor: 'PharoIntegration' stamp: 'ToonVerwaest 7/19/2011 17:32'!
messageText
	<preventExport>
	| stream |
	stream := WriteStream on: ''.
	self warnOn: stream.
	^ stream contents! !

!P4Exception methodsFor: 'PharoIntegration' stamp: 'OliFlueckiger 8/9/2011 13:38'!
pSignal
	<renameExport: #signal>
	'---> signalled:' print.
	self printObj.
	self pHalt.
	
	! !

!P4Exception methodsFor: 'PharoIntegration' stamp: 'OliFlueckiger 5/5/2011 17:52'!
signal
	"Ask ContextHandlers in the sender chain to handle this signal. The
	default is to execute and return my defaultAction."
	<preventExport>
	environment := thisContext contextTag.
	^ environment nextHandlerContext handleSignal: self! !

!P4Exception methodsFor: 'PharoIntegration' stamp: 'OliFlueckiger 5/5/2011 17:54'!
signalerContext
	<preventExport>
	^ environment
		findContextSuchThat: [:ctxt | (ctxt receiver == self
				or: [ctxt receiver == self class]) not]! !

!P4KeyNotFound methodsFor: 'accessing' stamp: 'ToonVerwaest 8/20/2010 11:58'!
dictionary
	^ dictionary! !

!P4KeyNotFound methodsFor: 'accessing' stamp: 'ToonVerwaest 8/20/2010 11:58'!
dictionary: anObject
	dictionary := anObject! !

!P4KeyNotFound methodsFor: 'accessing' stamp: 'ToonVerwaest 8/20/2010 11:58'!
key
	^ key! !

!P4KeyNotFound methodsFor: 'accessing' stamp: 'ToonVerwaest 8/20/2010 11:58'!
key: anObject
	key := anObject! !

!P4KeyNotFound methodsFor: 'printing' stamp: 'ToonVerwaest 8/20/2010 12:00'!
warnOn: aStream
	aStream << 'Key not found: '.
	key printOn: aStream.! !

!P4ELF64RelocationEntry methodsFor: 'accessing' stamp: 'ToonVerwaest 6/7/2011 16:15'!
absolute
	type := 16rB! !

!P4ELF64RelocationEntry methodsFor: 'accessing' stamp: 'ToonVerwaest 7/18/2011 19:21'!
info
	^ symbol symbolTableIndex! !

!P4ELF64RelocationEntry methodsFor: 'accessing' stamp: 'ToonVerwaest 5/10/2011 20:49'!
offset
	^ offset! !

!P4ELF64RelocationEntry methodsFor: 'accessing' stamp: 'OliFlueckiger 7/7/2011 18:24'!
offset: anObject
	offset := anObject! !

!P4ELF64RelocationEntry methodsFor: 'accessing' stamp: 'ToonVerwaest 6/7/2011 16:12'!
relative
	type := 16r2! !

!P4ELF64RelocationEntry methodsFor: 'accessing' stamp: 'ToonVerwaest 5/10/2011 20:49'!
symbol
	^ symbol! !

!P4ELF64RelocationEntry methodsFor: 'accessing' stamp: 'ToonVerwaest 5/10/2011 20:49'!
symbol: anObject
	symbol := anObject! !

!P4ELF64RelocationEntry methodsFor: 'accessing' stamp: 'ToonVerwaest 6/7/2011 16:12'!
type
	"
	0 	R_X86_64_NONE
	1 	R_X86_64_64
	2 	R_X86_64_PC32                     == RELATIVE
	3 	R_X86_64_GOT32
	4 	R_X86_64_PLT32
	5 	R_X86_64_COPY
	6 	R_X86_64_GLOB_DAT
	7 	R_X86_64_JUMP_SLO
	8 	R_X86_64_RELATIVE
	9 	R_X86_64_GOTPCREL
	A 	R_X86_64_32
	B 	R_X86_64_32S                         == ABSOLUTE
	C 	R_X86_64_16
	D 	R_X86_64_PC16
	E 	R_X86_64_8
	F 	R_X86_64_PC8
	"
	^ type! !

!P4ELF64RelocationEntry methodsFor: 'writing' stamp: 'ToonVerwaest 7/18/2011 19:23'!
writeOn: aStream
	aStream pointerPut: offset.

	" this is 64bit specific. on 32 bit it's info << 8 + type "
	aStream pointerPut: (self info << 32 + self type).
	"aStream wordPut: self type.
	aStream wordPut: self info."
	"aStream pointerPut: (self info << 8 + self type)"! !

!P4ELF64RelocationEntry class methodsFor: 'as yet unclassified' stamp: 'ToonVerwaest 5/17/2011 11:33'!
pname
	<preventExport>
	^ pname ifNil: [ pname := (self name copyFrom: 'P4ELF' size + 1 to: self name size) asSymbol ]! !

!P4ELF64RelocationEntryWithAddend methodsFor: 'accessing' stamp: 'ToonVerwaest 7/28/2011 16:42'!
addend
	type = 16r2 ifTrue: [ ^ -4 ].
	^ 0! !

!P4ELF64RelocationEntryWithAddend methodsFor: 'writing' stamp: 'ToonVerwaest 7/28/2011 16:22'!
writeOn: aStream 
	super writeOn: aStream.
	aStream pointerPut: self addend! !

!P4ELFIndexable methodsFor: 'accessing' stamp: 'OliFlueckiger 6/16/2011 16:04'!
name
	^ name
! !

!P4ELFIndexable methodsFor: 'accessing' stamp: 'OliFlueckiger 6/16/2011 16:04'!
nameIndex
	^ nameIndex! !

!P4ELFIndexable methodsFor: 'accessing' stamp: 'OliFlueckiger 6/16/2011 16:04'!
nameIndex: anObject
	nameIndex := anObject! !

!P4ELFIndexable methodsFor: 'accessing' stamp: 'OliFlueckiger 6/16/2011 15:27'!
symbolTable: aSymbolTable
	symbolTable := aSymbolTable ! !

!P4ELFIndexable methodsFor: 'accessing' stamp: 'OliFlueckiger 6/16/2011 15:27'!
symbolTableIndex
	^ symbolTableIndex! !

!P4ELFIndexable methodsFor: 'accessing' stamp: 'OliFlueckiger 6/16/2011 15:27'!
symbolTableIndex: anObject
	symbolTableIndex := anObject! !

!P4ELFIndexable methodsFor: 'header' stamp: 'OliFlueckiger 6/16/2011 16:04'!
name: aName
	name := aName! !

!P4ELFSection methodsFor: 'header' stamp: 'ToonVerwaest 5/11/2011 15:36'!
addrAlign
	" No alignment enforced. Should be power of 2 to enforce alignment "
	^ addrAlign! !

!P4ELFSection methodsFor: 'header' stamp: 'ToonVerwaest 5/12/2011 16:43'!
alloc
	"
	SHF_WRITE 					0x1
	SHF_ALLOC						0x2
	SHF_EXECINSTR				0x4
	SHF_MERGE					0x10
	SHF_STRINGS					0x20
	SHF_INFO_LINK				0x40
	SHF_LINK_ORDER				0x80
	SHF_OS_NONCONFORMING	0x100
	SHF_GROUP					0x200
	SHF_TLS						0x400
	SHF_MASKOS					0x0ff00000
	SHF_MASKPROC				0xf0000000
	"
	flags := flags bitXor: 16r2! !

!P4ELFSection methodsFor: 'header' stamp: 'ToonVerwaest 5/9/2011 20:46'!
bind
	"
	STB_LOCAL 	0
	STB_GLOBAL 	1
	STB_WEAK   	2
	"
	^ 0! !

!P4ELFSection methodsFor: 'header' stamp: 'ToonVerwaest 5/10/2011 23:14'!
entrySize: pointerSize
	^ self entrySizeInPointers * pointerSize! !

!P4ELFSection methodsFor: 'header' stamp: 'ToonVerwaest 5/10/2011 23:12'!
entrySizeInPointers
	self subclassResponsibility! !

!P4ELFSection methodsFor: 'header' stamp: 'ToonVerwaest 5/12/2011 16:43'!
exec
	"
	SHF_WRITE 					0x1
	SHF_ALLOC						0x2
	SHF_EXECINSTR				0x4
	SHF_MERGE					0x10
	SHF_STRINGS					0x20
	SHF_INFO_LINK				0x40
	SHF_LINK_ORDER				0x80
	SHF_OS_NONCONFORMING	0x100
	SHF_GROUP					0x200
	SHF_TLS						0x400
	SHF_MASKOS					0x0ff00000
	SHF_MASKPROC				0xf0000000
	"
	flags := flags bitXor: 16r4! !

!P4ELFSection methodsFor: 'header' stamp: 'ToonVerwaest 5/12/2011 16:42'!
flags
	"
	SHF_WRITE 					0x1
	SHF_ALLOC						0x2
	SHF_EXECINSTR				0x4
	SHF_MERGE					0x10
	SHF_STRINGS					0x20
	SHF_INFO_LINK				0x40
	SHF_LINK_ORDER				0x80
	SHF_OS_NONCONFORMING	0x100
	SHF_GROUP					0x200
	SHF_TLS						0x400
	SHF_MASKOS					0x0ff00000
	SHF_MASKPROC				0xf0000000
	"
	^ flags! !

!P4ELFSection methodsFor: 'header' stamp: 'ToonVerwaest 5/10/2011 23:00'!
info
	" see link "
	^ 16r0! !

!P4ELFSection methodsFor: 'header' stamp: 'ToonVerwaest 5/10/2011 23:00'!
link
	"
	if type is ... then link = section header index of...; info = 
	
	DYNAMIC string table used by entries; 0
	HASH symbol table to which hash tables applies; 0
	REL/RELA associated symbol table; section header index of the section to which the relocation applies
	SYMTAB/DYNSYM associated string table; symbol table index of last local symbol + 1
	
	other -> UNDEF; 0
	"
	^ 16r0! !

!P4ELFSection methodsFor: 'header' stamp: 'ToonVerwaest 5/12/2011 16:43'!
merge
	"
	SHF_WRITE 					0x1
	SHF_ALLOC						0x2
	SHF_EXECINSTR				0x4
	SHF_MERGE					0x10
	SHF_STRINGS					0x20
	SHF_INFO_LINK				0x40
	SHF_LINK_ORDER				0x80
	SHF_OS_NONCONFORMING	0x100
	SHF_GROUP					0x200
	SHF_TLS						0x400
	SHF_MASKOS					0x0ff00000
	SHF_MASKPROC				0xf0000000
	"
	flags := flags bitXor: 16r10! !

!P4ELFSection methodsFor: 'header' stamp: 'ToonVerwaest 7/27/2011 16:52'!
other
	^ 0! !

!P4ELFSection methodsFor: 'header' stamp: 'ToonVerwaest 5/10/2011 23:11'!
size: pointerSize
	^ self sizeInPointers * pointerSize! !

!P4ELFSection methodsFor: 'header' stamp: 'ToonVerwaest 5/10/2011 23:11'!
sizeInPointers
	^ 0! !

!P4ELFSection methodsFor: 'header' stamp: 'ToonVerwaest 5/12/2011 16:43'!
strings
	"
	SHF_WRITE 					0x1
	SHF_ALLOC						0x2
	SHF_EXECINSTR				0x4
	SHF_MERGE					0x10
	SHF_STRINGS					0x20
	SHF_INFO_LINK				0x40
	SHF_LINK_ORDER				0x80
	SHF_OS_NONCONFORMING	0x100
	SHF_GROUP					0x200
	SHF_TLS						0x400
	SHF_MASKOS					0x0ff00000
	SHF_MASKPROC				0xf0000000
	"
	flags := flags bitXor: 16r20! !

!P4ELFSection methodsFor: 'header' stamp: 'ToonVerwaest 5/11/2011 14:47'!
symbolType
	^ 16r3! !

!P4ELFSection methodsFor: 'header' stamp: 'ToonVerwaest 5/9/2011 12:04'!
type
	"
	0 NULL Inactive header
	1 PROGBITS Format and meaning determined solely by the program
	2 SYMTAB Symbol table (single)
	3 STRTAB String table (multiple)
	4 RELA Relocation entries with explicit addends (multiple)
	5 HASH Symbol hash table (for dynamic linking, single)
	6 DYNAMIC Information for dynamic linking (single)
	7 NOTE File marking
	8 NOBITS Occupies no space in the file, otherwise similar to PROGBITS
	9 REL Relocation entries without explicit addents (multiple)
	10 SHLIB Unspecified semantics (not conform to ABI)
	11 DYNSYM 
	
	Region for processor-specific semantics: 
	0x70000000 LOPROC
	0x7FFFFFFF HIPROC
	
	Region can be used for application specific section types without conflicting with current/future system-defined types:
	0x80000000 LOUSER
	0x8FFFFFFF HIUSER
	
	"
	self subclassResponsibility! !

!P4ELFSection methodsFor: 'header' stamp: 'ToonVerwaest 7/27/2011 23:51'!
visibility
	^ self isLocal
		ifTrue: [ 16r0 ]
		ifFalse: [ 16r1 ]! !

!P4ELFSection methodsFor: 'header' stamp: 'ToonVerwaest 5/12/2011 16:43'!
write
	"
	SHF_WRITE 					0x1
	SHF_ALLOC						0x2
	SHF_EXECINSTR				0x4
	SHF_MERGE					0x10
	SHF_STRINGS					0x20
	SHF_INFO_LINK				0x40
	SHF_LINK_ORDER				0x80
	SHF_OS_NONCONFORMING	0x100
	SHF_GROUP					0x200
	SHF_TLS						0x400
	SHF_MASKOS					0x0ff00000
	SHF_MASKPROC				0xf0000000
	"
	flags := flags bitXor: 16r1! !

!P4ELFSection methodsFor: 'converting' stamp: 'ToonVerwaest 5/11/2011 16:10'!
asSymbol
	^ self name! !

!P4ELFSection methodsFor: 'testing' stamp: 'ToonVerwaest 5/10/2011 17:33'!
hasRelocationTable
	^ false! !

!P4ELFSection methodsFor: 'testing' stamp: 'ToonVerwaest 7/27/2011 23:57'!
isLocal
	^ true! !

!P4ELFSection methodsFor: 'accessing' stamp: 'ToonVerwaest 5/11/2011 13:25'!
headerIndex
	^ headerIndex! !

!P4ELFSection methodsFor: 'accessing' stamp: 'ToonVerwaest 5/11/2011 13:25'!
headerIndex: anObject
	headerIndex := anObject! !

!P4ELFSection methodsFor: 'accessing' stamp: 'ToonVerwaest 5/10/2011 23:02'!
offset
	^ offset
! !

!P4ELFSection methodsFor: 'accessing' stamp: 'ToonVerwaest 5/10/2011 23:02'!
offset: anObject
	offset := anObject! !

!P4ELFSection methodsFor: 'initialize-release' stamp: 'ToonVerwaest 5/12/2011 16:42'!
initialize
	addrAlign := 0.
	flags := 0.! !

!P4ELFSection methodsFor: 'writing' stamp: 'ToonVerwaest 6/24/2011 17:46'!
writeHeaderOn: aStream
	aStream wordPut: nameIndex.
	aStream wordPut: self type.
	
	aStream pointerPut: self flags.
	" For now we don't allow sections to force addresses "
	aStream pointerPut: 0.
	aStream pointerPut: self offset.
	aStream pointerPut: (self size: aStream pointerSize).
	
	aStream wordPut: self link.
	aStream wordPut: self info.
	
	aStream pointerPut: self addrAlign.
	aStream pointerPut: (self entrySize: aStream pointerSize).! !

!P4ELFSection methodsFor: 'writing' stamp: 'OliFlueckiger 5/19/2011 15:55'!
writeOn: aStream
	offset := aStream position! !

!P4ELFSection methodsFor: 'writing' stamp: 'ToonVerwaest 7/27/2011 18:43'!
writeSymbolOn: aStream
	aStream wordPut: 0.
	aStream nextPut: (self visibility bitShift: 4) + (self symbolType bitAnd: 16rF).
	aStream nextPut: self other.
	aStream halfWordPut: self headerIndex.
	aStream pointerPut: 0.
	aStream pointerPut: 0! !

!P4ELFSection class methodsFor: 'as yet unclassified' stamp: 'ToonVerwaest 5/17/2011 11:33'!
pname
	<preventExport>
	^ pname ifNil: [ pname := (self name copyFrom: 'P4ELF' size + 1 to: self name size) asSymbol ]! !

!P4ELFMarkerSection methodsFor: 'header' stamp: 'ToonVerwaest 5/11/2011 01:24'!
entrySize: pointerSize
	^ 0! !

!P4ELFMarkerSection methodsFor: 'header' stamp: 'ToonVerwaest 7/28/2011 00:03'!
headerIndex
	^ 0! !

!P4ELFMarkerSection methodsFor: 'header' stamp: 'ToonVerwaest 5/11/2011 11:40'!
offset
	^ 0! !

!P4ELFMarkerSection methodsFor: 'header' stamp: 'ToonVerwaest 5/10/2011 23:48'!
size: pointerSize
	^ 0! !

!P4ELFMarkerSection methodsFor: 'header' stamp: 'ToonVerwaest 5/11/2011 09:59'!
type
	"
	The number of entries in the program header table. The product of e_phentsize and e_phnum gives
	the table's size in bytes. If a file has no program header table, e_phnum holds the value zero.

	If the number of program headers is greater than or equal to PN_XNUM (0xffff), this member has
	the value PN_XNUM (0xffff). The actual number of program header table entries is contained in the
	sh_info field of the section header at index 0. Otherwise, the sh_info member of the initial section
	header entry contains the value zero.
	"
	^ 16r0! !

!P4ELFMarkerSection methodsFor: 'initialize-release' stamp: 'ToonVerwaest 7/28/2011 00:03'!
initialize
	super initialize.
	nameIndex := 0.
	offset := 0.! !

!P4ELFSectionWithData methodsFor: 'accessing' stamp: 'OliFlueckiger 7/7/2011 16:29'!
asElfSymbol 
	elfSymbol ifNotNil: [ ^ elfSymbol ].
	elfSymbol := P4ELFObjectSymbol new
		section: self;
		value: 0;
		size: 0;
		nameIndex: ( symbolTable stringTable allocateString: self name).
	symbolTable add: elfSymbol.
	^elfSymbol! !

!P4ELFSectionWithData methodsFor: 'accessing' stamp: 'ToonVerwaest 5/10/2011 21:48'!
data
	^ data! !

!P4ELFSectionWithData methodsFor: 'accessing' stamp: 'ToonVerwaest 5/10/2011 21:48'!
data: anObject
	data := anObject! !

!P4ELFNote methodsFor: 'header' stamp: 'ToonVerwaest 5/9/2011 12:15'!
type
	" 7 NOTE File marking "
	^ 16r7! !

!P4ELFProgramSection methodsFor: 'header' stamp: 'ToonVerwaest 5/9/2011 18:57'!
entrySize: wordSize
	^ 1! !

!P4ELFProgramSection methodsFor: 'header' stamp: 'ToonVerwaest 5/10/2011 17:55'!
infoLink
	"
	SHF_WRITE 					0x1
	SHF_ALLOC						0x2
	SHF_EXECINSTR				0x4
	SHF_MERGE					0x10
	SHF_STRINGS					0x20
	SHF_INFO_LINK				0x40
	SHF_LINK_ORDER				0x80
	SHF_OS_NONCONFORMING	0x100
	SHF_GROUP					0x200
	SHF_TLS						0x400
	SHF_MASKOS					0x0ff00000
	SHF_MASKPROC				0xf0000000
	"
	flags := flags bitXor: 16r40! !

!P4ELFProgramSection methodsFor: 'header' stamp: 'ToonVerwaest 5/10/2011 17:55'!
linkOrder
	"
	SHF_WRITE 					0x1
	SHF_ALLOC						0x2
	SHF_EXECINSTR				0x4
	SHF_MERGE					0x10
	SHF_STRINGS					0x20
	SHF_INFO_LINK				0x40
	SHF_LINK_ORDER				0x80
	SHF_OS_NONCONFORMING	0x100
	SHF_GROUP					0x200
	SHF_TLS						0x400
	SHF_MASKOS					0x0ff00000
	SHF_MASKPROC				0xf0000000
	"
	flags := flags bitXor: 16r80! !

!P4ELFProgramSection methodsFor: 'header' stamp: 'ToonVerwaest 5/9/2011 12:26'!
size: words
	^ data size! !

!P4ELFProgramSection methodsFor: 'header' stamp: 'ToonVerwaest 5/9/2011 12:05'!
type
	" 1 PROGBITS Format and meaning determined solely by the program "
	^ 16r1! !

!P4ELFProgramSection methodsFor: 'testing' stamp: 'ToonVerwaest 5/10/2011 17:34'!
hasRelocationTable
	^ relocation isEmpty not! !

!P4ELFProgramSection methodsFor: 'initialize-release' stamp: 'ToonVerwaest 5/10/2011 23:13'!
initialize
	super initialize.
	flags := 0.
	data := #().! !

!P4ELFProgramSection methodsFor: 'accessing' stamp: 'ToonVerwaest 5/10/2011 18:06'!
relocation: aRelocationTable
	relocation := aRelocationTable.
	relocation target: self! !

!P4ELFProgramSection methodsFor: 'accessing' stamp: 'ToonVerwaest 5/10/2011 20:52'!
relocationTable
	^ relocation! !

!P4ELFProgramSection methodsFor: 'writing' stamp: 'OliFlueckiger 6/21/2011 16:40'!
writeOn: aStream
	super writeOn: aStream.
	aStream << data.! !

!P4ELFProgramSection class methodsFor: 'instance creation' stamp: 'ToonVerwaest 5/10/2011 17:52'!
newFor: aSectionTable
	^ self new
		relocation: aSectionTable createRelocationTable! !

!P4ELFRelocationTableExplicitAddends methodsFor: 'accessing' stamp: 'ToonVerwaest 7/28/2011 16:21'!
absoluteRelocate: aSymbol at: position
	data add: (P4ELF64RelocationEntryWithAddend new
				absolute;
				symbol: aSymbol target;
				offset: position)! !

!P4ELFRelocationTableExplicitAddends methodsFor: 'accessing' stamp: 'ToonVerwaest 6/16/2011 21:23'!
name
	^ name ifNil: [ name := ('.rela', target name) asSymbol ]! !

!P4ELFRelocationTableExplicitAddends methodsFor: 'accessing' stamp: 'ToonVerwaest 7/28/2011 16:21'!
relocate: aSymbol at: position
	data add: (P4ELF64RelocationEntryWithAddend new
				relative;
				symbol: aSymbol target;
				offset: position)! !

!P4ELFRelocationTableExplicitAddends methodsFor: 'accessing' stamp: 'ToonVerwaest 5/10/2011 18:06'!
target: anObject
	target := anObject! !

!P4ELFRelocationTableExplicitAddends methodsFor: 'header' stamp: 'ToonVerwaest 5/11/2011 15:40'!
addrAlign 
	^ 8! !

!P4ELFRelocationTableExplicitAddends methodsFor: 'header' stamp: 'ToonVerwaest 5/10/2011 23:12'!
entrySizeInPointers
	^ 3! !

!P4ELFRelocationTableExplicitAddends methodsFor: 'header' stamp: 'ToonVerwaest 5/11/2011 15:59'!
info
	^ target headerIndex! !

!P4ELFRelocationTableExplicitAddends methodsFor: 'header' stamp: 'ToonVerwaest 5/11/2011 16:01'!
link
	^ symbolTable headerIndex! !

!P4ELFRelocationTableExplicitAddends methodsFor: 'header' stamp: 'ToonVerwaest 5/9/2011 13:41'!
type
	" 4 RELA Relocation entries with explicit addends (multiple) "
	^ 16r4! !

!P4ELFRelocationTableExplicitAddends methodsFor: 'initialize-release' stamp: 'ToonVerwaest 5/11/2011 15:36'!
initialize
	super initialize.
	data := OrderedCollection new! !

!P4ELFRelocationTableExplicitAddends methodsFor: 'initialize-release' stamp: 'ToonVerwaest 5/10/2011 23:12'!
sizeInPointers
	" address + symbol identifier + addend "
	^ data size * 3! !

!P4ELFRelocationTableExplicitAddends methodsFor: 'testing' stamp: 'ToonVerwaest 5/10/2011 17:34'!
isEmpty
	^ data isEmpty! !

!P4ELFRelocationTableExplicitAddends methodsFor: 'writing' stamp: 'ToonVerwaest 5/11/2011 15:50'!
writeOn: aStream
	super writeOn: aStream.
	data do: [ :aRelocation | aRelocation writeOn: aStream ].! !

!P4ELFRelocationTableImplicitAddends methodsFor: 'accessing' stamp: 'ToonVerwaest 6/7/2011 17:11'!
absoluteRelocate: aSymbol at: codeStream addend: anAddend
	data add: (P4ELF64RelocationEntry new
				absolute;
				symbol: aSymbol;
				offset: codeStream position).
				
	codeStream wordPut: anAddend! !

!P4ELFRelocationTableImplicitAddends methodsFor: 'accessing' stamp: 'OliFlueckiger 7/7/2011 18:13'!
relocate: aSymbol at: codeStream addend: addend
"	self halt."
	data add: (P4ELF64RelocationEntry new
				relative;
				symbol: aSymbol;
				offset: codeStream position).
				
	codeStream wordPut: addend! !

!P4ELFRelocationTableImplicitAddends methodsFor: 'accessing' stamp: 'ToonVerwaest 5/10/2011 23:12'!
sizeInPointers
	" address + symbol identifier "
	^ data size * 2! !

!P4ELFRelocationTableImplicitAddends methodsFor: 'header' stamp: 'ToonVerwaest 5/10/2011 23:12'!
entrySizeInPointers
	^ 2! !

!P4ELFRelocationTableImplicitAddends methodsFor: 'header' stamp: 'ToonVerwaest 5/9/2011 13:42'!
type
	" 9 REL Relocation entries without explicit addents (multiple) "
	^ 16r9! !

!P4ELFHashTable methodsFor: 'header' stamp: 'ToonVerwaest 5/9/2011 12:13'!
type
	" 5 HASH Symbol hash table (for dynamic linking, single) "
	^ 16r5! !

!P4ELFStringTable methodsFor: 'header' stamp: 'ToonVerwaest 5/11/2011 15:41'!
addrAlign 
	^ 1! !

!P4ELFStringTable methodsFor: 'header' stamp: 'ToonVerwaest 5/9/2011 12:12'!
type
	" 16r3 STRTAB String table (multiple) "
	^ 16r3 ! !

!P4ELFStringTable methodsFor: 'accessing' stamp: 'ToonVerwaest 7/27/2011 23:25'!
allocateString: aName
	| ndx |
	aName = '' ifTrue: [ ^ 0 ].
	ndx := data position.
	" Encode as 0-terminated C-strings "
	data nextPutAll: aName asByteArray.
	data nextPut: 16r0.
	^ ndx! !

!P4ELFStringTable methodsFor: 'accessing' stamp: 'ToonVerwaest 5/11/2011 11:36'!
entrySize: pointerSize
	^ 0! !

!P4ELFStringTable methodsFor: 'accessing' stamp: 'ToonVerwaest 5/11/2011 10:13'!
size: pointerSize
	self flag: 'should extract this to a "finalize" method'.
	^ data size + 1! !

!P4ELFStringTable methodsFor: 'initialize-release' stamp: 'ToonVerwaest 6/24/2011 18:09'!
initialize
	self flag: 'use the stream from the processor'.
	super initialize.
	data := P4BinaryWriteStream new.
	data nextPut: 16r0! !

!P4ELFStringTable methodsFor: 'writing' stamp: 'ToonVerwaest 5/11/2011 12:20'!
writeOn: aStream
	super writeOn: aStream.
	self flag: 'Optimize'.
	aStream nextPutAll: data contents.
	aStream nextPut: 16r0! !

!P4ELFSymbolTable methodsFor: 'accessing' stamp: 'ToonVerwaest 7/28/2011 01:05'!
add: aSymbol
	aSymbol name ifNil: [ self halt ]. 
	
	aSymbol symbolTable: self.
	aSymbol isLocal 
		ifTrue: [ locals addLast: aSymbol ]
		ifFalse: [ data addLast: aSymbol ].
	symbols at: aSymbol name put: aSymbol.
	^ aSymbol 
! !

!P4ELFSymbolTable methodsFor: 'accessing' stamp: 'ToonVerwaest 7/28/2011 00:05'!
data
	^ self shouldNotCall! !

!P4ELFSymbolTable methodsFor: 'accessing' stamp: 'ToonVerwaest 5/11/2011 10:15'!
entrySizeInPointers
	^ 3! !

!P4ELFSymbolTable methodsFor: 'accessing' stamp: 'ToonVerwaest 7/28/2011 00:07'!
finalize
	data addAllFirst: locals.
	data withIndexDo: [ :aSymbol :anIndex |
		aSymbol symbolTableIndex: anIndex ]! !

!P4ELFSymbolTable methodsFor: 'accessing' stamp: 'ToonVerwaest 5/11/2011 16:05'!
sizeInPointers
	^ 3 * (data size + 1)! !

!P4ELFSymbolTable methodsFor: 'accessing' stamp: 'ToonVerwaest 5/11/2011 14:01'!
stringTable
	^ stringTable! !

!P4ELFSymbolTable methodsFor: 'accessing' stamp: 'ToonVerwaest 5/11/2011 14:01'!
stringTable: anObject
	stringTable := anObject! !

!P4ELFSymbolTable methodsFor: 'header' stamp: 'ToonVerwaest 5/11/2011 15:41'!
addrAlign 
	^ 8! !

!P4ELFSymbolTable methodsFor: 'header' stamp: 'ToonVerwaest 7/28/2011 00:39'!
info
	^ locals size + 1! !

!P4ELFSymbolTable methodsFor: 'header' stamp: 'ToonVerwaest 5/11/2011 14:00'!
link
	^ stringTable headerIndex! !

!P4ELFSymbolTable methodsFor: 'header' stamp: 'ToonVerwaest 5/9/2011 12:13'!
type
	" 16r2 SYMTAB Symbol table (single) "
	^ 16r2! !

!P4ELFSymbolTable methodsFor: 'header' stamp: 'ToonVerwaest 7/28/2011 00:18'!
writeOn: aStream
	super writeOn: aStream.
	P4ELFNoTypeSymbol new writeSymbolOn: aStream.
	data do: [ :aSymbol | aSymbol writeSymbolOn: aStream ]! !

!P4ELFSymbolTable methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 7/27/2011 15:30'!
createReference: aName on: aSection
	^ self add: (P4ELFNoTypeSymbol new
						nameIndex: (stringTable allocateString: aName);
						name: aName;
						global)! !

!P4ELFSymbolTable methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 7/27/2011 15:30'!
ensureReference: aName on: aSection
	^ symbols at: aName ifAbsent: [ self createReference: aName on: aSection]! !

!P4ELFSymbolTable methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 7/29/2011 16:15'!
objectNamed: aName on: aSection
	| sym |
	sym := P4ELFObjectSymbol new
				value: aSection data position;
				nameIndex: (stringTable allocateString: aName);
				name: aName;
				section: aSection;
				global.
	^ self add: sym.! !

!P4ELFSymbolTable methodsFor: 'initialize-release' stamp: 'ToonVerwaest 7/28/2011 00:06'!
initialize
	super initialize.
	data := OrderedCollection new.
	locals := OrderedCollection new.
	symbols := P4IdentityDictionary new.! !

!P4ELFSectionWithoutData methodsFor: 'header' stamp: 'ToonVerwaest 5/12/2011 16:49'!
addrAlign
	^ 4! !

!P4ELFSectionWithoutData methodsFor: 'header' stamp: 'OliFlueckiger 5/19/2011 15:48'!
entrySize: pointerSize
	^ pointerSize! !

!P4ELFSectionWithoutData methodsFor: 'header' stamp: 'ToonVerwaest 5/12/2011 16:58'!
link
	^ siblingSection headerIndex! !

!P4ELFSectionWithoutData methodsFor: 'header' stamp: 'OliFlueckiger 6/9/2011 13:55'!
size: pointerSize
	^ size * pointerSize! !

!P4ELFSectionWithoutData methodsFor: 'header' stamp: 'ToonVerwaest 5/9/2011 12:16'!
type
	" 8 NOBITS Occupies no space in the file, otherwise similar to PROGBITS "
	^ 16r8! !

!P4ELFSectionWithoutData methodsFor: 'accessing' stamp: 'OliFlueckiger 6/16/2011 14:56'!
allocate: amount 
	| result |
	result := size.
	size := size + amount.
	^ result! !

!P4ELFSectionWithoutData methodsFor: 'accessing' stamp: 'ToonVerwaest 5/12/2011 16:58'!
siblingSection
	^ siblingSection! !

!P4ELFSectionWithoutData methodsFor: 'accessing' stamp: 'ToonVerwaest 5/12/2011 16:58'!
siblingSection: anObject
	siblingSection := anObject! !

!P4ELFSectionWithoutData methodsFor: 'initialize-release' stamp: 'ToonVerwaest 5/12/2011 15:11'!
initialize
	super initialize.
	size := 0.! !

!P4ELFSectionWithoutData class methodsFor: 'instance creation' stamp: 'ToonVerwaest 5/12/2011 16:59'!
newFor: aSection
	^ self new
		siblingSection: aSection! !

!P4ELFSymbol methodsFor: 'accessing' stamp: 'ToonVerwaest 5/10/2011 19:55'!
bind
	^ bind! !

!P4ELFSymbol methodsFor: 'accessing' stamp: 'ToonVerwaest 5/9/2011 20:44'!
size
	^ size! !

!P4ELFSymbol methodsFor: 'accessing' stamp: 'OliFlueckiger 6/16/2011 10:59'!
size: anObject
	size := anObject! !

!P4ELFSymbol methodsFor: 'accessing' stamp: 'ToonVerwaest 5/10/2011 20:55'!
value
	^ value
! !

!P4ELFSymbol methodsFor: 'accessing' stamp: 'ToonVerwaest 5/10/2011 20:55'!
value: anObject
	value := anObject! !

!P4ELFSymbol methodsFor: 'accessing' stamp: 'ToonVerwaest 5/9/2011 20:44'!
visibility
	^ visibility! !

!P4ELFSymbol methodsFor: 'visibility' stamp: 'ToonVerwaest 5/10/2011 21:14'!
default
	visibility := 16r0! !

!P4ELFSymbol methodsFor: 'visibility' stamp: 'ToonVerwaest 5/10/2011 21:14'!
hidden
	visibility := 16r2! !

!P4ELFSymbol methodsFor: 'visibility' stamp: 'ToonVerwaest 5/10/2011 21:14'!
internal
	visibility := 16r1! !

!P4ELFSymbol methodsFor: 'visibility' stamp: 'ToonVerwaest 5/10/2011 21:14'!
protected
	visibility := 16r3! !

!P4ELFSymbol methodsFor: 'bind' stamp: 'ToonVerwaest 5/10/2011 19:55'!
global
	bind := 16r1! !

!P4ELFSymbol methodsFor: 'bind' stamp: 'ToonVerwaest 5/11/2011 14:33'!
isLocal
	^ bind = 16r0! !

!P4ELFSymbol methodsFor: 'bind' stamp: 'ToonVerwaest 5/10/2011 19:55'!
local
	bind := 16r0! !

!P4ELFSymbol methodsFor: 'bind' stamp: 'ToonVerwaest 5/10/2011 19:55'!
weak
	bind := 16r2! !

!P4ELFSymbol methodsFor: 'header' stamp: 'ToonVerwaest 5/11/2011 11:59'!
info
	^ 0! !

!P4ELFSymbol methodsFor: 'header' stamp: 'ToonVerwaest 5/11/2011 11:59'!
other
	^ 0! !

!P4ELFSymbol methodsFor: 'header' stamp: 'ToonVerwaest 5/11/2011 11:49'!
sectionHeaderIndex
	^ 16r0! !

!P4ELFSymbol methodsFor: 'initialize-release' stamp: 'OliFlueckiger 6/16/2011 16:17'!
initialize
	nameIndex := 0.
	self
		local;
		default.! !

!P4ELFSymbol methodsFor: 'writing' stamp: 'OliFlueckiger 6/16/2011 16:07'!
writeSymbolOn: aStream
	aStream wordPut: self nameIndex.
	aStream nextPut: (self bind << 4) + (self type bitAnd: 16rF).
	aStream nextPut: self other.
	aStream halfWordPut: self sectionHeaderIndex.
	aStream pointerPut: self value.
	aStream pointerPut: self size! !

!P4ELFSymbol class methodsFor: 'as yet unclassified' stamp: 'ToonVerwaest 5/17/2011 11:34'!
pname
	<preventExport>
	^ pname ifNil: [ pname := (self name copyFrom: 'P4ELF' size + 1 to: self name size) asSymbol ]! !

!P4ELFFileSymbol methodsFor: 'header' stamp: 'ToonVerwaest 5/11/2011 13:33'!
sectionHeaderIndex
	" special section index: FILE "
	^ -15! !

!P4ELFFileSymbol methodsFor: 'header' stamp: 'ToonVerwaest 5/16/2011 12:06'!
size
	^ 0! !

!P4ELFFileSymbol methodsFor: 'header' stamp: 'ToonVerwaest 5/10/2011 21:04'!
type
	^ 16r4! !

!P4ELFFileSymbol methodsFor: 'header' stamp: 'ToonVerwaest 5/16/2011 12:06'!
value
	^ 0! !

!P4ELFNoTypeSymbol methodsFor: 'header' stamp: 'ToonVerwaest 5/11/2011 16:04'!
sectionHeaderIndex
	" special section index: COMMON "
	^ 0! !

!P4ELFNoTypeSymbol methodsFor: 'header' stamp: 'ToonVerwaest 5/11/2011 16:04'!
size
	^ 16r0! !

!P4ELFNoTypeSymbol methodsFor: 'header' stamp: 'ToonVerwaest 5/10/2011 21:04'!
type
	^ 16r0! !

!P4ELFNoTypeSymbol methodsFor: 'header' stamp: 'ToonVerwaest 5/11/2011 16:04'!
value
	^ 16r0! !

!P4ELFObjectSymbol methodsFor: 'accessing' stamp: 'OliFlueckiger 7/11/2011 16:28'!
initialize 
	super initialize.
	size := 0.! !

!P4ELFObjectSymbol methodsFor: 'accessing' stamp: 'OliFlueckiger 6/15/2011 14:40'!
section
	^ section! !

!P4ELFObjectSymbol methodsFor: 'accessing' stamp: 'OliFlueckiger 6/15/2011 14:40'!
section: anObject
	section := anObject! !

!P4ELFObjectSymbol methodsFor: 'accessing' stamp: 'CamilloBruni 7/27/2011 15:52'!
sectionOffset
	^ value! !

!P4ELFObjectSymbol methodsFor: 'header' stamp: 'OliFlueckiger 6/15/2011 14:41'!
sectionHeaderIndex
	" special section index: COMMON "
	section ifNotNil: [ ^section headerIndex ].
	^ -14.! !

!P4ELFObjectSymbol methodsFor: 'header' stamp: 'ToonVerwaest 5/10/2011 21:04'!
type
	^ 16r1! !

!P4ELFFuncSymbol methodsFor: 'accessing' stamp: 'ToonVerwaest 5/11/2011 13:25'!
sectionHeaderIndex
	^ section headerIndex! !

!P4ELFFuncSymbol methodsFor: 'header' stamp: 'ToonVerwaest 5/10/2011 21:04'!
type
	^ 16r2! !

!P4ELFProgramTable methodsFor: 'header' stamp: 'ToonVerwaest 5/9/2011 14:38'!
entryCount
	^ 0! !

!P4ELFProgramTable methodsFor: 'header' stamp: 'ToonVerwaest 5/10/2011 23:28'!
entrySize: aStream
	^ 0! !

!P4ELFProgramTable methodsFor: 'header' stamp: 'ToonVerwaest 5/9/2011 14:39'!
header: aSegment! !

!P4ELFProgramTable methodsFor: 'printing' stamp: 'ToonVerwaest 5/10/2011 22:43'!
writeHeaderOn: aStream
	! !

!P4ELFProgramTable class methodsFor: 'as yet unclassified' stamp: 'ToonVerwaest 5/17/2011 11:33'!
pname
	<preventExport>
	^ pname ifNil: [ pname := (self name copyFrom: 'P4ELF' size + 1 to: self name size) asSymbol ]! !

!P4ELFSectionTable methodsFor: 'accessing' stamp: 'ToonVerwaest 7/28/2011 00:29'!
addSection: aSection
	sections at: aSection name ifPresent: [ :section |
		self error: 'Duplicate section ', aSection name ].

	aSection nameIndex: (sectionHeaderStringTable allocateString: aSection name).
	sections at: aSection name put: aSection.
	symbolTable add: aSection.! !

!P4ELFSectionTable methodsFor: 'accessing' stamp: 'ToonVerwaest 6/16/2011 22:04'!
code
	^ sections at: #'.pinocchio'! !

!P4ELFSectionTable methodsFor: 'accessing' stamp: 'OliFlueckiger 6/22/2011 14:25'!
codeStream
	^ self code data! !

!P4ELFSectionTable methodsFor: 'accessing' stamp: 'ToonVerwaest 5/12/2011 14:12'!
constant
	^ sections at: #'.bss'! !

!P4ELFSectionTable methodsFor: 'accessing' stamp: 'ToonVerwaest 5/11/2011 16:00'!
createRelocationTable
	^ elf createRelocationTable
		symbolTable: symbolTable! !

!P4ELFSectionTable methodsFor: 'accessing' stamp: 'ToonVerwaest 5/10/2011 17:43'!
elf: anELF
	elf := anELF! !

!P4ELFSectionTable methodsFor: 'accessing' stamp: 'ToonVerwaest 7/28/2011 00:15'!
filename: filename
	| name |
	name := filename.
	symbolTable add:
		(P4ELFFileSymbol new
			name: name;
			nameIndex: (self allocateString: name))! !

!P4ELFSectionTable methodsFor: 'accessing' stamp: 'OliFlueckiger 7/15/2011 17:38'!
functionFor: anObject on: aSection
	| sym |
	sym := P4ELFFuncSymbol new
					value: aSection data position;
					nameIndex: (self allocateString: anObject pByteName);
					name: anObject pByteName;
					size: anObject pByteSize;
					section: aSection;
					global.
	symbolTable add: sym.
	^sym! !

!P4ELFSectionTable methodsFor: 'accessing' stamp: 'OliFlueckiger 7/1/2011 14:51'!
readOnly
	^ sections at: #'.pinocchio_rodata'! !

!P4ELFSectionTable methodsFor: 'building' stamp: 'ToonVerwaest 7/28/2011 00:26'!
allSectionsDo: aBlock
	sections do: [ :aSection |
		aBlock value: aSection.
		aSection hasRelocationTable
			ifTrue: [ aBlock value: aSection relocationTable ]].
	
	aBlock value: symbolTable.
	aBlock value: stringTable.
	aBlock value: sectionHeaderStringTable. ! !

!P4ELFSectionTable methodsFor: 'symbols' stamp: 'ToonVerwaest 6/24/2011 17:50'!
allocateString: aString
	^ stringTable allocateString: aString! !

!P4ELFSectionTable methodsFor: 'symbols' stamp: 'CamilloBruni 7/27/2011 14:39'!
symbolTable
	^ symbolTable! !

!P4ELFSectionTable methodsFor: 'installing' stamp: 'ToonVerwaest 5/10/2011 21:47'!
code: code
	self code data: code! !

!P4ELFSectionTable methodsFor: 'header' stamp: 'ToonVerwaest 5/11/2011 10:11'!
entryCount
	^ sections inject: 4 into: [ :aValue :aSection |
		aSection hasRelocationTable
			ifTrue: [ aValue + 2 ]
			ifFalse: [ aValue + 1 ]]! !

!P4ELFSectionTable methodsFor: 'header' stamp: 'ToonVerwaest 5/10/2011 23:31'!
entrySize: aStream
	^ (4 * aStream wordSize) + (6 * aStream pointerSize)! !

!P4ELFSectionTable methodsFor: 'header' stamp: 'ToonVerwaest 5/10/2011 17:29'!
sectionHeaderStringTableIndex
	^ self entryCount - 1! !

!P4ELFSectionTable methodsFor: 'initialize-release' stamp: 'ToonVerwaest 7/28/2011 01:09'!
initialize
	
	" contains the names of sections "
	sectionHeaderStringTable := P4ELFStringTable new name: #'.shstrtab'.
	
	" contains constant strings used in the runtime "
	stringTable := P4ELFStringTable new name: #'.strtab'.
	
	" contains function and section names for linking "
	symbolTable := (P4ELFSymbolTable new name: #'.symtab')
						stringTable: stringTable.
	
	
	" marker section in case we have a too large program table "
	markerSection := P4ELFMarkerSection new.
	
	sections := IdentityDictionary new.! !

!P4ELFSectionTable methodsFor: 'initialize-release' stamp: 'ToonVerwaest 7/28/2011 00:10'!
initializeStandardSections
	" Program code "
	self addSection: ((P4ELFProgramSection newFor: self) name: #'.pinocchio'; write; alloc; exec; data: elf processor createStream).
	" Uninitialized Data "
	self addSection: ((P4ELFSectionWithoutData newFor: self code) name: #'.bss'; alloc; write).
	" Exception handling "
	self addSection: ((P4ELFProgramSection newFor: self) name: #'.eh_frame'; alloc).
	" Read-write data "
	self addSection: ((P4ELFProgramSection newFor: self) name: #'.data'; write; alloc).
	" DWARF debugging data "
	self addSection: ((P4ELFProgramSection newFor: self) name: #'.stab').
	" Metadata (loadable) "
	self addSection: ((P4ELFProgramSection newFor: self) name: #'.note').
	" Metadata (non-loadable) "
	self addSection: ((P4ELFProgramSection newFor: self) name: #'.comment'; merge; strings).
	
	" Hint to the GNU linker that no executable stack is required "
	self addSection: ((P4ELFProgramSection newFor: self) name: #'.note.GNU-stack').! !

!P4ELFSectionTable methodsFor: 'writing' stamp: 'ToonVerwaest 7/28/2011 00:02'!
writeHeaderOn: aStream
	markerSection writeHeaderOn: aStream.
	self allSectionsDo: [ :aSection |
		aSection writeHeaderOn: aStream ]! !

!P4ELFSectionTable methodsFor: 'writing' stamp: 'ToonVerwaest 7/28/2011 01:03'!
writeOn: aStream
	" self collectSectionNames. "
	| index |
	index := 0.
	symbolTable finalize.
	self allSectionsDo: [ :aSection |
		aSection nameIndex: (sectionHeaderStringTable allocateString: aSection name).
		aSection headerIndex: (index := index + 1).
		aSection writeOn: aStream ]! !

!P4ELFSectionTable class methodsFor: 'instance-creation' stamp: 'OliFlueckiger 7/6/2011 18:32'!
newFor: anELF
	^ self new
		elf: anELF;
		initializeStandardSections! !

!P4ELFSectionTable class methodsFor: 'instance-creation' stamp: 'ToonVerwaest 5/17/2011 11:34'!
pname
	<preventExport>
	^ pname ifNil: [ pname := (self name copyFrom: 'P4ELF' size + 1 to: self name size) asSymbol ]! !

!P4ELFStringSet methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/21/2011 17:40'!
add: string
	^ strings at: string ifAbsentPut: [ |result|
		result := size.
		size := size + string size + 1.
		result ]! !

!P4ELFStringSet methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/21/2011 17:26'!
initialize 
	strings := Dictionary new.
	size := 0.! !

!P4ELFStringSet methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/1/2011 16:19'!
putOn: aStream
	strings keys reverseDo: [ :string |
		aStream 
			<< string;
			nextPut: 0 ]! !

!P4ELFStringSet methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/21/2011 17:41'!
size
	^size! !

!P4DwarfCommonInformationEntry methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/1/2011 13:49'!
augmentation
	"null-terminated string with legal values being  or 'z' optionally followed by single occurrances of 'P', 'L', or 'R' in any order.
         The presence of character(s) in the string dictates the content of field 8, the Augmentation Section. Each character has one 
         or two associated operands in the AS. Operand order depends on position in the string ('z' must be first)."
	^ 0
	! !

!P4DwarfCommonInformationEntry methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/1/2011 13:47'!
cieId.
	^ 0! !

!P4DwarfCommonInformationEntry methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/1/2011 13:52'!
length
	"length without length field"
	^ 46	! !

!P4DwarfCommonInformationEntry methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/1/2011 13:55'!
putOn: stream
	stream putUnsigned: self length bytes: 4.	
	stream put: self cieId bytes: 4.
	stream nextPut: self version.
	stream nextPut: self augmentation.
	stream putUnsigned: self codeAlignFactor bytes: 16. 
	stream put: self dataAlignFactor bytes: 16.
	stream nextPut: self returnAddressRegister.
	
	! !

!P4DwarfCommonInformationEntry methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/1/2011 13:47'!
version.
	^ 1! !

!P4DwarfCommonInformationEntry methodsFor: 'accessing' stamp: 'OliFlueckiger 8/1/2011 13:50'!
codeAlignFactor
	"To be multiplied with the Advance Location instructions in the CFIs"
	^ codeAlignFactor! !

!P4DwarfCommonInformationEntry methodsFor: 'accessing' stamp: 'OliFlueckiger 8/1/2011 13:48'!
codeAlignFactor: anObject
	codeAlignFactor := anObject! !

!P4DwarfCommonInformationEntry methodsFor: 'accessing' stamp: 'OliFlueckiger 8/1/2011 13:50'!
dataAlignFactor
	"To be multiplied with all offset in the Call Frame Instructions"
	^ dataAlignFactor! !

!P4DwarfCommonInformationEntry methodsFor: 'accessing' stamp: 'OliFlueckiger 8/1/2011 13:48'!
dataAlignFactor: anObject
	dataAlignFactor := anObject! !

!P4DwarfCommonInformationEntry methodsFor: 'accessing' stamp: 'OliFlueckiger 8/1/2011 13:54'!
returnAddressRegister
	"A virtual register representation of the return address. 
	In Dwarf V2, this is a byte, otherwise it is uleb128. It is a byte in gcc 3.3.x"
	^ returnAddressRegister! !

!P4DwarfCommonInformationEntry methodsFor: 'accessing' stamp: 'OliFlueckiger 8/1/2011 13:53'!
returnAddressRegister: anObject
	returnAddressRegister := anObject! !

!P4DwarfFrameDescriptorEntry methodsFor: 'accessing' stamp: 'OliFlueckiger 8/1/2011 14:04'!
addressRange
	"Size of the function code corresponding to this FDE.
	 If 'R' is missing from the CIE Augmentation String, the field is an 8-byte unsigned number. [...]".
	^ addressRange! !

!P4DwarfFrameDescriptorEntry methodsFor: 'accessing' stamp: 'OliFlueckiger 8/1/2011 14:01'!
addressRange: anObject
	addressRange := anObject! !

!P4DwarfFrameDescriptorEntry methodsFor: 'accessing' stamp: 'OliFlueckiger 8/1/2011 14:01'!
callFrameInstructions
	^ callFrameInstructions! !

!P4DwarfFrameDescriptorEntry methodsFor: 'accessing' stamp: 'OliFlueckiger 8/1/2011 14:01'!
callFrameInstructions: anObject
	callFrameInstructions := anObject! !

!P4DwarfFrameDescriptorEntry methodsFor: 'accessing' stamp: 'OliFlueckiger 8/1/2011 14:02'!
ciePointer
	"Distance from this field to the nearest preceding CIE (the value is subtracted from the current address). This value
         can never be zero and thus can be used to distinguish CIE's and FDE's when scanning the .eh_frame section"
	^ ciePointer! !

!P4DwarfFrameDescriptorEntry methodsFor: 'accessing' stamp: 'OliFlueckiger 8/1/2011 14:01'!
ciePointer: anObject
	ciePointer := anObject! !

!P4DwarfFrameDescriptorEntry methodsFor: 'accessing' stamp: 'OliFlueckiger 8/1/2011 14:03'!
initialLocation
	"Reference to the function code corresponding to this FDE.
         If 'R' is missing from the CIE Augmentation String, the field is an 8-byte absolute pointer. [...]"
	^ initialLocation! !

!P4DwarfFrameDescriptorEntry methodsFor: 'accessing' stamp: 'OliFlueckiger 8/1/2011 14:01'!
initialLocation: anObject
	initialLocation := anObject! !

!P4DwarfFrameDescriptorEntry methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/1/2011 14:01'!
length
	^ 24 + callFrameInstructions length! !

!P4DwarfFrameDescriptorEntry methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/1/2011 13:59'!
putOn: stream
	stream putUnsigned: self length bytes: 4.
	stream put: self ciePointer bytes: 4.
	stream put: self initialLocation bytes: 8.
	stream put: self addressRange bytes: 8.
	self putCallFrameInstructionsOn: stream.
	! !

!P4MOCommand methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 7/26/2011 18:16'!
commandSize
	self subclassResponsibility ! !

!P4MOCommand methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 7/26/2011 18:20'!
fileOffset: offset
	self subclassResponsibility ! !

!P4MOCommand methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 7/26/2011 16:21'!
type
	"
	/* Constants for the cmd field of all load commands, the type */
	LC_SEGMENT  0x1 /* segment of this file to be mapped */
	LC_SYMTAB   0x2 /* link-edit stab symbol table info */
	LC_SYMSEG   0x3 /* link-edit gdb symbol table info (obsolete) */
	LC_THREAD   0x4 /* thread */
	LC_UNIXTHREAD   0x5 /* unix thread (includes a stack) */
	LC_LOADFVMLIB   0x6 /* load a specified fixed VM shared library *
	LC_IDFVMLIB 0x7 /* fixed VM shared library identification */
	LC_IDENT    0x8 /* object identification info (obsolete) */
	LC_FVMFILE  0x9 /* fixed VM file inclusion (internal use) */
	LC_PREPAGE      0xa     /* prepage command (internal use) */
	LC_DYSYMTAB 0xb /* dynamic link-edit symbol table info */
	LC_LOAD_DYLIB   0xc /* load a dynamically linked shared library *
	LC_ID_DYLIB 0xd /* dynamically linked shared lib ident */
	LC_LOAD_DYLINKER 0xe    /* load a dynamic linker */
	LC_ID_DYLINKER  0xf /* dynamic linker identification */
	LC_PREBOUND_DYLIB 0x10  /* modules prebound for a dynamically */
	        /*  linked shared library */
	LC_ROUTINES 0x11    /* image routines */
	LC_SUB_FRAMEWORK 0x12   /* sub framework */
	LC_SUB_UMBRELLA 0x13    /* sub umbrella */
	LC_SUB_CLIENT   0x14    /* sub client */
	LC_SUB_LIBRARY  0x15    /* sub library */
	LC_TWOLEVEL_HINTS 0x16  /* two-level namespace lookup hints */
	LC_PREBIND_CKSUM  0x17  /* prebind checksum */"
	self subclassResponsibility! !

!P4MOCommand methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 7/26/2011 18:15'!
writeCommandOn: aStream
	aStream wordPut: self type.
	aStream wordPut: self commandSize.! !

!P4MORelocation methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 7/27/2011 15:08'!
absolute
	isAbsolute := true! !

!P4MORelocation methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 7/27/2011 15:14'!
address: position
	"In MH_OBJECT files, this is an offset from the start of the section to the item containing the address requiring relocation. If the high bit of this field is set (which you can check using the R_SCATTERED bit mask), the relocation_info structure is actually a scattered_relocation_info structure.
	In images used by the dynamic linker, this is an offset from the virtual memory address of the data of the first segment_command that appears in the file (not necessarily the one with the lowest address). For images with the MH_SPLIT_SEGS flag set, this is an offset from the virtual memory address of data of the first read/write segment_command."
	address := position! !

!P4MORelocation methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 7/27/2011 17:50'!
fileSize
	"sizeof(relocation_info) = 1 * sizeof(pointer) = 8"
	^ 8! !

!P4MORelocation methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 7/27/2011 15:08'!
initialize 
	isAbsolute := false! !

!P4MORelocation methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 7/27/2011 15:16'!
isExternal
	"Indicates whether the r_symbolnum field is an index into the symbol table (true) or a section number (false)."
	^ true! !

!P4MORelocation methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 7/29/2011 14:54'!
length
	"long"
	isAbsolute ifFalse: [ ^ 2].
	"quad"
	^ 2! !

!P4MORelocation methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 7/27/2011 15:09'!
symbol: aSymbol
	symbol := aSymbol! !

!P4MORelocation methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 7/29/2011 16:27'!
type
    "For the x86-64 environment, the r_type field may contain any of these values:
        X86_64_RELOC_UNSIGNED,   (0) // for absolute addresses
        X86_64_RELOC_SIGNED,     (1) // for signed 32-bit displacement
        X86_64_RELOC_BRANCH,     (2) // a CALL/JMP instruction with 32-bit displacement
        X86_64_RELOC_GOT_LOAD,   (3) // a MOVQ load of a GOT entry
        X86_64_RELOC_GOT,        (4) // other GOT references
        X86_64_RELOC_SUBTRACTOR, (5) // must be followed by a X86_64_RELOC_UNSIGNED
        X86_64_RELOC_SIGNED_1,   (6) // for signed 32-bit displacement with a -1 addend
        X86_64_RELOC_SIGNED_2,   (7) // for signed 32-bit displacement with a -2 addend
        X86_64_RELOC_SIGNED_4,   (8) // for signed 32-bit displacement with a -4 addend
        X86_64_RELOC_TLV,        (9) // for thread local variables"
	
	isAbsolute ifTrue: [ ^ 0 "X86_64_RELOC_UNSIGNED"].
	^ 2 "X86_64_RELOC_BRANCH"! !

!P4MORelocation methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 7/28/2011 13:17'!
writeOn: aStream
	|part|
	"struct relocation_info {
		int32_t r_address;
		uint32_t r_symbolnum:24,
		r_pcrel:1,
		r_length:2,
		r_extern:1,
		r_type:4;
	};"
	aStream wordPut: address. "r_address"
	part := (symbol index bitAnd: 16rFFFFFF). "r_symbolnum"
	part := part bitOr: (self type bitShift: 28). "r_type"
	part := part bitOr: (self isExternal asBit bitShift: 27). "r_extern"
	part := part bitOr: (self length bitShift:  25). "r_length"
	part := part bitOr: (isAbsolute not asBit bitShift: 24). "r_pcrel"
	aStream wordPut: part.! !

!P4MORelocationTable methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 7/29/2011 14:11'!
absoluteRelocate: aSymbol at: position
	(aSymbol isKindOf: P4ExportedSectionReference)
		ifTrue: [
			^ self add: (P4MOSectionBasedRelocation new
				absolute;
				section: aSymbol target;
				address: position) ]
		ifFalse: [ 
			^ self add: (P4MORelocation new
				absolute;
				symbol: aSymbol target;
				address: position) ]! !

!P4MORelocationTable methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 7/27/2011 15:01'!
add: aRelocation
	^ entries add: aRelocation! !

!P4MORelocationTable methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 7/26/2011 17:25'!
fileOffset
	^ fileOffset! !

!P4MORelocationTable methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 7/28/2011 21:02'!
fileOffset: offset
	"just align it on 16bytes, we're lazy..."
	fileOffset := (offset / 16) ceiling * 16.
	^ fileOffset + self fileSize! !

!P4MORelocationTable methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 7/26/2011 18:31'!
fileSize
	^ entries inject: 0 into: [ :sum :relocationEntry| sum + relocationEntry fileSize]! !

!P4MORelocationTable methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 7/26/2011 18:32'!
initialize
	entries := OrderedCollection new.! !

!P4MORelocationTable methodsFor: 'as yet unclassified' stamp: 'ToonVerwaest 7/28/2011 16:44'!
relocate: aSymbol at: position
	^ self add: (P4MORelocation new
			symbol: aSymbol target;
			address: position)! !

!P4MORelocationTable methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 7/26/2011 18:33'!
size
	^ entries size! !

!P4MORelocationTable methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 7/28/2011 21:12'!
writeOn: aStream
	aStream fillTo: fileOffset with: 16r00.
	entries do: [ :relocationEntry| relocationEntry writeOn: aStream].! !

!P4MOSection methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 7/26/2011 10:59'!
attributes
	"
	Constants for the section attributes part of the flags field of a section structure.
	SECTION_ATTRIBUTES_USR	    0xff000000	/* User setable attributes */
			
	S_ATTR_PURE_INSTRUCTIONS   0x80000000	/* section contains only true machine instructions */
	S_ATTR_NO_TOC    	       0x40000000	/* section contains coalesced symbols that are not to be in a ranlib table of contents */
	S_ATTR_STRIP_STATIC_SYMS   0x20000000	/* ok to strip static symbols in this section in files with the MH_DYLDLINK flag */
	S_ATTR_NO_DEAD_STRIP       0x10000000	/* no dead stripping */
	S_ATTR_LIVE_SUPPORT	       0x08000000	/* blocks are live if they reference live blocks */
	S_ATTR_SELF_MODIFYING_CODE 0x04000000	/* Used with i386 code stubs written on by dyld */
		
	If a segment contains any sections marked with S_ATTR_DEBUG then all
	sections in that segment must have this attribute.  No section other than
	a section marked with this attribute may reference the contents of this
	section.  A section with this attribute may contain no symbols and must have
	a section type S_REGULAR.  The static linker will not copy section contents
	from sections with this attribute into its output file.  These sections
	generally contain DWARF debugging info.
	S_ATTR_DEBUG		         0x02000000	/* a debug section */
				
	SECTION_ATTRIBUTES_SYS   0x00ffff00	/* system setable attributes */
	S_ATTR_SOME_INSTRUCTIONS 0x00000400	/* section contains some machine instructions */
	S_ATTR_EXT_RELOC	        0x00000200	/* section has external relocation entries */
	S_ATTR_LOC_RELOC	        0x00000100	/* section has local relocation entries */"
	self subclassResponsibility! !

!P4MOSection methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 7/25/2011 18:09'!
byteAlignment
	"section alignment (power of 2)"
	self subclassResponsibility! !

!P4MOSection methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 7/26/2011 18:15'!
commandSize
	"sizeof(section_64) = 10 * sizeof(pointer) = 80"
	^ 80! !

!P4BinaryOut methodsFor: 'initialize-release' stamp: 'OliFlueckiger 12/7/2011 20:19'!
addClassReference: class for: allocated
	| classReference |
	classReference := self localDump: class theBehavior.
	self referTo: classReference at: allocated pointerOffset: -2.	! !

!P4BinaryOut methodsFor: 'initialize-release' stamp: 'ToonVerwaest 7/19/2011 12:47'!
addPharoClasses: pharoClasses 
	pharoClasses do: [ :pclass | todo add: (P4Package loadClass: pclass) ]! !

!P4BinaryOut methodsFor: 'initialize-release' stamp: 'OliFlueckiger 7/7/2011 16:04'!
alignObject
	executableFormat alignObject.! !

!P4BinaryOut methodsFor: 'initialize-release' stamp: 'OliFlueckiger 7/22/2011 11:39'!
allocate: anObject
	| allocated |
	anObject pclass pIsVariableOrBytes ifTrue: [
		executableFormat pointerPut: anObject pVariableSizeHeader ].
	executableFormat allocatePointer.
	executableFormat pointerPut: anObject pHeader.
	allocated := dumped at: anObject 
		put: ( executableFormat allocate: anObject pVariableSize + anObject pclass pInstSize named: anObject pExportedName ).

	anObject pByteName ifNotNil: [ executableFormat functionFor: anObject ].
	1 to: anObject pByteSize do: [ :i |
		executableFormat nextPut: (anObject pByteAt: i) ].
	self alignObject.
	anObject pByteName ifNotNil: [ :name | executableFormat allocate: 0 named: ('__eo-',name asString,'__') ].
	
	self addClassReference: anObject pclass for: allocated.
	
	^allocated! !

!P4BinaryOut methodsFor: 'initialize-release' stamp: 'OliFlueckiger 7/20/2011 15:30'!
dump: anObject
	anObject dumpGlobalOn: self.! !

!P4BinaryOut methodsFor: 'initialize-release' stamp: 'OliFlueckiger 7/20/2011 15:31'!
dumpCoreObjects
	^ P4BinarySymbolOut new 
		processor: processor os: os;
		dump: true; dump: false; dump: nil; into: 'core';
		flushOut ! !

!P4BinaryOut methodsFor: 'initialize-release' stamp: 'OliFlueckiger 7/20/2011 15:31'!
dumpPackages
	P4RootPackage instance packagesDo: [ :package | 
		package dumpGlobalOn: self ].
	self into: 'packages';
	flushOut ! !

!P4BinaryOut methodsFor: 'initialize-release' stamp: 'OliFlueckiger 7/20/2011 15:31'!
dumpSymbolTable 
	^ P4BinarySymbolOut new 
		processor: processor os: os;
		dump: symbolTable; into: 'symbols';
		flushOut ! !

!P4BinaryOut methodsFor: 'initialize-release' stamp: 'ToonVerwaest 7/18/2011 21:27'!
flushOut
	executableFormat := os executableFormat.  
	executableFormat processor: processor. 
	executableFormat readWriteExec.
	dumped removeAll.! !

!P4BinaryOut methodsFor: 'initialize-release' stamp: 'ToonVerwaest 7/18/2011 21:46'!
initialize
	todo := OrderedCollection new.
	done := Set new.
	dumped := P4IdentityDictionary new.
	symbolTable := P4SymbolTable new.! !

!P4BinaryOut methodsFor: 'initialize-release' stamp: 'OliFlueckiger 7/20/2011 15:30'!
into: aName
	executableFormat pack: aName.
	self flushOut ! !

!P4BinaryOut methodsFor: 'initialize-release' stamp: 'ToonVerwaest 7/19/2011 12:44'!
localDump: anObject
	self haltIf: (anObject isKindOf: P4Class).
	dumped at: anObject ifPresent: [ :aReference | ^ aReference ].
	^ anObject dumpLocalOn: self.! !

!P4BinaryOut methodsFor: 'initialize-release' stamp: 'OliFlueckiger 7/6/2011 15:25'!
nextPut: object
	executableFormat nextPut: object ! !

!P4BinaryOut methodsFor: 'initialize-release' stamp: 'OliFlueckiger 7/6/2011 16:30'!
pointerPut: object
	executableFormat pointerPut: object ! !

!P4BinaryOut methodsFor: 'initialize-release' stamp: 'CamilloBruni 7/27/2011 15:52'!
pointerPut: object at: aReference pointerOffset: anOffset
	executableFormat pointerPut: object at: aReference sectionOffset pointerOffset: anOffset! !

!P4BinaryOut methodsFor: 'initialize-release' stamp: 'ToonVerwaest 7/19/2011 12:43'!
postpone: anObject
	self todo: anObject.
	^ dumped at: anObject put: (executableFormat global: anObject pExportedName )! !

!P4BinaryOut methodsFor: 'initialize-release' stamp: 'OliFlueckiger 7/11/2011 14:17'!
processor: aProcessor os: anOs
	processor := aProcessor.
	os := anOs.
	self flushOut.! !

!P4BinaryOut methodsFor: 'initialize-release' stamp: 'OliFlueckiger 7/5/2011 17:24'!
readOnly
	executableFormat readOnly! !

!P4BinaryOut methodsFor: 'initialize-release' stamp: 'OliFlueckiger 7/5/2011 17:25'!
readWrite
	executableFormat readWrite! !

!P4BinaryOut methodsFor: 'initialize-release' stamp: 'OliFlueckiger 7/5/2011 17:25'!
readWriteExec
	executableFormat readWriteExec! !

!P4BinaryOut methodsFor: 'initialize-release' stamp: 'OliFlueckiger 7/7/2011 15:23'!
referTo: aReference at: aSymbol pointerOffset: anOffset
	^ executableFormat referTo: aReference at: aSymbol pointerOffset: anOffset! !

!P4BinaryOut methodsFor: 'initialize-release' stamp: 'OliFlueckiger 7/22/2011 12:31'!
resolveReferences: method reference: methodRef
	| ref codeOffset |
	codeOffset := method class pInstSize + method pVariableSize.
	method usedGlobals keysAndValuesDo: [ :pos :global |
		ref := executableFormat createReference: global pExportedName .  
		executableFormat referTo: ref at: methodRef pointerOffset: codeOffset byteOffset: pos ].
	method usedReferences keysAndValuesDo: [ :pos :reference |
		ref := executableFormat createReference: reference.
		executableFormat relativeReferTo: ref at: methodRef pointerOffset: codeOffset byteOffset: pos ]
! !

!P4BinaryOut methodsFor: 'initialize-release' stamp: 'OliFlueckiger 7/15/2011 17:40'!
symbol: aSymbol
	symbolTable add: aSymbol.
	^ dumped at: aSymbol put: (executableFormat global: aSymbol pExportedName )! !

!P4BinaryOut methodsFor: 'initialize-release' stamp: 'OliFlueckiger 7/11/2011 14:02'!
todo
	^todo ! !

!P4BinaryOut methodsFor: 'initialize-release' stamp: 'OliFlueckiger 12/7/2011 18:44'!
todo: aTodo
	| superclass |
	(done includes: aTodo) ifTrue: [ ^ self ].
	(aTodo isKindOf: P4PharoClass) ifTrue: [
		done add: aTodo.
		^ todo add: aTodo ].
	(aTodo isKindOf: P4SmalltalkBehavior) ifTrue: [ 
		^ self todo: aTodo superclass].
	(aTodo isKindOf: P4PharoMetaclass) ifTrue: [ ^ self ].
	(aTodo isKindOf: P4AbstractPackage) ifTrue: [ ^ self ].
	"Classes can occur in type hints. the user is responsible for compiling the referenced types"
	(aTodo isKindOf: P4Object class) ifTrue: [ ^ self ].
	aTodo == true ifTrue: [ ^ self ].
	aTodo == false ifTrue: [ ^ self ].
	aTodo == nil ifTrue: [ ^ self ].
	self error: 'Unsupported global object detected'.  
	! !

!P4BinarySymbolOut methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/15/2011 17:27'!
symbol: aSymbol
	^ aSymbol dumpOn: self! !

!P4ExecutableFormat methodsFor: 'accessing' stamp: 'CamilloBruni 7/27/2011 14:30'!
alignObject
	currentStream alignByPointer! !

!P4ExecutableFormat methodsFor: 'accessing' stamp: 'CamilloBruni 7/27/2011 14:36'!
initialize
	globals := IdentityDictionary new.! !

!P4ExecutableFormat methodsFor: 'accessing' stamp: 'ToonVerwaest 6/24/2011 17:29'!
processor
	^ processor! !

!P4ExecutableFormat methodsFor: 'accessing' stamp: 'ToonVerwaest 6/24/2011 17:54'!
processor: aProcessor
	processor := aProcessor! !

!P4ExecutableFormat methodsFor: 'accessing' stamp: 'ToonVerwaest 6/24/2011 18:45'!
sourceExtension
	^ '.st'! !

!P4ExecutableFormat methodsFor: 'accessing' stamp: 'ToonVerwaest 5/16/2011 11:58'!
staticLibraryExtension
	self subclassResponsibility! !

!P4ExecutableFormat methodsFor: 'public' stamp: 'CamilloBruni 7/29/2011 15:50'!
allocate: size named: aName
	| reference |
	reference := aName
		ifNotNil: [
			P4ExportedObjectReference new
				target: (self objectNamed: aName);
				offset: 0 ]
		ifNil: [
			P4ExportedSectionReference new
				target: currentSection;
				offset: currentStream position ].
		
	1 to: size do: [ :i | currentStream pointerPut: 0 ].
	^ reference ! !

!P4ExecutableFormat methodsFor: 'public' stamp: 'CamilloBruni 7/27/2011 15:39'!
createReference: aName 
	aName isSymbol ifFalse: [ self error: 'can only refer to symbols' ].
	
	^ globals at: aName ifAbsentPut: [ 
		P4ExternalObjectReference new
			target: (symbolTable ensureReference: aName on: currentSection);
			offset: 0. ]! !

!P4ExecutableFormat methodsFor: 'public' stamp: 'CamilloBruni 7/25/2011 17:24'!
functionFor: anObject
	self subclassResponsibility! !

!P4ExecutableFormat methodsFor: 'public' stamp: 'CamilloBruni 7/27/2011 14:51'!
global: aSymbol
	^ self createReference: aSymbol! !

!P4ExecutableFormat methodsFor: 'public' stamp: 'CamilloBruni 7/26/2011 17:49'!
halfWordPut: halfWord
	currentStream halfWordPut: halfWord! !

!P4ExecutableFormat methodsFor: 'public' stamp: 'CamilloBruni 7/26/2011 17:48'!
nextPut: object
	currentStream nextPut: object! !

!P4ExecutableFormat methodsFor: 'public' stamp: 'CamilloBruni 7/26/2011 15:02'!
pointerPut: object
	currentStream pointerPut: object ! !

!P4ExecutableFormat methodsFor: 'public' stamp: 'CamilloBruni 7/27/2011 16:25'!
pointerPut: object at: aPosition pointerOffset: pointerOffset
	| currentPos |
	currentPos := currentStream position.
	currentStream position: aPosition + (pointerOffset * currentStream pointerSize).
	currentStream pointerPut: object.
	currentStream position: currentPos.! !

!P4ExecutableFormat methodsFor: 'public' stamp: 'CamilloBruni 7/25/2011 17:22'!
readWriteExec 
	self subclassResponsibility! !

!P4ExecutableFormat methodsFor: 'public' stamp: 'CamilloBruni 7/28/2011 16:18'!
referTo: aReference at: aSymbol pointerOffset: anOffset
	aSymbol relocationTable
		absoluteRelocate: aReference
		at: aSymbol sectionOffset + (anOffset * processor pointerSize).! !

!P4ExecutableFormat methodsFor: 'public' stamp: 'CamilloBruni 7/28/2011 14:08'!
referTo: aReference at: aSymbol pointerOffset: aPointerOffset byteOffset: anOffset
	self haltIf: aReference offset ~= 0.
	aSymbol relocationTable
		absoluteRelocate: aReference
		at: aSymbol sectionOffset + anOffset + ( processor pointerSize * aPointerOffset ).! !

!P4ExecutableFormat methodsFor: 'public' stamp: 'ToonVerwaest 7/28/2011 16:25'!
relativeReferTo: aReference at: aSymbol pointerOffset: aPointerOffset byteOffset: anOffset
	self haltIf: aReference offset ~= 0.
	aSymbol relocationTable
		relocate: aReference
		at: aSymbol sectionOffset + anOffset + ( processor pointerSize * aPointerOffset )! !

!P4ExecutableFormat methodsFor: 'public' stamp: 'CamilloBruni 7/26/2011 17:49'!
wordPut: word
	currentStream wordPut: word! !

!P4ExecutableFormat methodsFor: 'printing' stamp: 'CamilloBruni 7/26/2011 15:00'!
allocatePointer
	self pointerPut: 0! !

!P4ExecutableFormat methodsFor: 'printing' stamp: 'CamilloBruni 7/29/2011 15:56'!
objectNamed: aName
	^ symbolTable objectNamed: aName on: currentSection! !

!P4ExecutableFormat methodsFor: 'binpacking' stamp: 'ToonVerwaest 5/9/2011 13:52'!
header
	self subclassResponsibility! !

!P4ExecutableFormat methodsFor: 'binpacking' stamp: 'CamilloBruni 7/26/2011 13:42'!
pack
	self
		header;
		programHeaderTable;
		sections;
		sectionHeaderTable.! !

!P4ExecutableFormat methodsFor: 'binpacking' stamp: 'KenD 8/24/2022 15:35:30'!
pack: filename
	currentStream := processor createStream.
	self pack.
	((filename, self staticLibraryExtension) asFileEntry assureExistence writeStream)
		binary;
		nextPutAll: currentStream contents;
		close.
	currentStream := nil.! !

!P4ExecutableFormat methodsFor: 'binpacking' stamp: 'ToonVerwaest 5/10/2011 22:41'!
programHeaderTable
	self subclassResponsibility! !

!P4ExecutableFormat methodsFor: 'binpacking' stamp: 'ToonVerwaest 5/10/2011 22:42'!
sectionHeaderTable
	self subclassResponsibility! !

!P4ExecutableFormat methodsFor: 'binpacking' stamp: 'ToonVerwaest 5/10/2011 22:42'!
sections
	self subclassResponsibility! !

!P4ExecutableFormat methodsFor: 'configuration' stamp: 'ToonVerwaest 5/9/2011 13:57'!
programSection
	self subclassResponsibility! !

!P4ExecutableFormat methodsFor: 'configuration' stamp: 'ToonVerwaest 5/9/2011 13:57'!
relocationTable
	self subclassResponsibility! !

!P4ExecutableFormat methodsFor: 'configuration' stamp: 'ToonVerwaest 5/9/2011 13:58'!
symbolTable
	self subclassResponsibility! !

!P4ELF methodsFor: 'accessing' stamp: 'ToonVerwaest 5/10/2011 17:48'!
createRelocationTable
	processor elfClass = 1 ifTrue: [ ^ P4ELFRelocationTableImplicitAddends new ].
	processor elfClass = 2 ifTrue: [ ^ P4ELFRelocationTableExplicitAddends new ].
	self error: 'Invalid processor class'! !

!P4ELF methodsFor: 'accessing' stamp: 'CamilloBruni 7/26/2011 15:05'!
nextPut: object
	currentStream nextPut: object ! !

!P4ELF methodsFor: 'accessing' stamp: 'ToonVerwaest 6/24/2011 16:30'!
os: anObject
	os := anObject! !

!P4ELF methodsFor: 'accessing' stamp: 'KenD 8/21/2022 12:54:45'!
processor
	
	^processor! !

!P4ELF methodsFor: 'accessing' stamp: 'KenD 8/21/2022 12:54:25'!
processor: aProcessor
	processor := aProcessor.
	sectionTable := P4ELFSectionTable newFor: self.
	symbolTable := sectionTable symbolTable.
	programs := P4ELFProgramTable new.! !

!P4ELF methodsFor: 'accessing' stamp: 'CamilloBruni 7/26/2011 15:06'!
readWriteExec
	currentSection := sectionTable code.
	currentStream := currentSection data.! !

!P4ELF methodsFor: 'accessing' stamp: 'ToonVerwaest 5/16/2011 11:58'!
staticLibraryExtension
	^ '.o'! !

!P4ELF methodsFor: 'accessing' stamp: 'KenD 8/21/2022 12:55:12'!
symbolTable

	^symbolTable! !

!P4ELF methodsFor: 'header' stamp: 'ToonVerwaest 5/8/2011 21:54'!
entry
	" This member gives the virtual address to which the system first transfers control, thus
	starting the process. If the file has no associated entry point, this member holds zero "
	^ 0! !

!P4ELF methodsFor: 'header' stamp: 'ToonVerwaest 7/29/2011 18:42'!
header
	currentStream nextPutAll: self magicIdent.

	currentStream halfWordPut: self type.
	currentStream halfWordPut: self machine.
	currentStream wordPut: self version.
	
	currentStream pointerPut: self entry.
	
	currentStream pointerPut: self programHeaderOffset.
	
	" Keep position so that we can fill it in after writing the sections "
	sectionTablePointerOffset := currentStream position.
	currentStream pointerPut: self sectionHeaderOffset.
	
	currentStream wordPut: processor flags.
	currentStream halfWordPut: processor elfHeaderSize.
	currentStream halfWordPut: (programs entrySize: currentStream).
	
	currentStream halfWordPut: programs entryCount.
	currentStream halfWordPut: (sectionTable entrySize: currentStream).
	currentStream halfWordPut: sectionTable entryCount.
	currentStream halfWordPut:sectionTable sectionHeaderStringTableIndex.! !

!P4ELF methodsFor: 'header' stamp: 'ToonVerwaest 5/8/2011 21:41'!
machine
	^ processor elfMachine! !

!P4ELF methodsFor: 'header' stamp: 'KenD 8/24/2022 15:29:53'!
magicIdent
	^ { 16r7F. $E. $L. $F.
		processor elfClass.
		processor elfDataEncoding.
		self version.
		os elfABI.
		os elfABIVersion.
		16r00. 16r00. 16r00. 16r00. 16r00. 16r00. 16r00. }! !

!P4ELF methodsFor: 'header' stamp: 'ToonVerwaest 5/8/2011 21:59'!
programHeaderOffset
	" This member holds the program header table's file offset in bytes. If the file has no program header table, this member holds zero "
	^ 0! !

!P4ELF methodsFor: 'header' stamp: 'ToonVerwaest 5/8/2011 21:59'!
sectionHeaderOffset
	" This member holds the section header table's file offset in bytes. If the file has no section header table, this member holds zero "
	" TODO we'll need a section header :-) "
	^ 0! !

!P4ELF methodsFor: 'header' stamp: 'ToonVerwaest 5/9/2011 14:37'!
type
	"
	0 NONE none 
	1 REL relocatable 
	2 EXEC executable 
	3 DYN shared 
	4 CORE core 
	0xFF00 LOPROC processor specific
	0xFFFF HIPROC processor specific
	
	Current we'll only generate relocatable files, letting LD link them
	"
	^ 16r0001! !

!P4ELF methodsFor: 'header' stamp: 'ToonVerwaest 5/8/2011 21:44'!
version
	" 
	0 NONE Invalid version
	1 CURRENT Current version
	"
	^ 1! !

!P4ELF methodsFor: 'flushing' stamp: 'OliFlueckiger 6/23/2011 17:20'!
flushCache
	self flag: 'install self as method installer target'.
	"voodoo ahead:"
	self processor: processor.! !

!P4ELF methodsFor: 'printing' stamp: 'OliFlueckiger 7/14/2011 16:54'!
functionFor: anObject
	^sectionTable functionFor: anObject on: currentSection  ! !

!P4ELF methodsFor: 'printing' stamp: 'OliFlueckiger 6/23/2011 14:54'!
target
	^sectionTable! !

!P4ELF methodsFor: 'file writing' stamp: 'ToonVerwaest 6/24/2011 18:45'!
pack: filename
	" Add source filename to the symbol table "
	sectionTable filename: (filename, self sourceExtension).
	super pack: filename! !

!P4ELF methodsFor: 'file writing' stamp: 'CamilloBruni 7/26/2011 15:04'!
programHeaderTable
	programs writeHeaderOn: currentStream! !

!P4ELF methodsFor: 'file writing' stamp: 'ToonVerwaest 7/29/2011 18:42'!
sectionHeaderTable
	| sectionHeaderTablePosition offset |
	sectionHeaderTablePosition := currentStream position.
	currentStream position: sectionTablePointerOffset.
	currentStream pointerPut: sectionHeaderTablePosition.
	currentStream position: sectionHeaderTablePosition.
	sectionTable writeHeaderOn: currentStream.! !

!P4ELF methodsFor: 'file writing' stamp: 'CamilloBruni 7/26/2011 15:04'!
sections
	sectionTable writeOn: currentStream! !

!P4ELF methodsFor: 'program header' stamp: 'ToonVerwaest 5/8/2011 22:42'!
programHeader! !

!P4ExportedReference methodsFor: 'accessing' stamp: 'ToonVerwaest 7/28/2011 16:36'!
addend
	^ 0! !

!P4ExportedReference methodsFor: 'accessing' stamp: 'CamilloBruni 7/27/2011 15:37'!
offset
	^ offset! !

!P4ExportedReference methodsFor: 'accessing' stamp: 'CamilloBruni 7/27/2011 15:37'!
offset: anObject
	offset := anObject! !

!P4ExportedReference methodsFor: 'accessing' stamp: 'CamilloBruni 7/27/2011 15:37'!
target
	^target ! !

!P4ExportedReference methodsFor: 'accessing' stamp: 'CamilloBruni 7/29/2011 14:07'!
target: aTarget
	self haltIf: (aTarget isKindOf: P4ExportedReference).
	target := aTarget! !

!P4ExportedObjectReference methodsFor: 'accessing' stamp: 'CamilloBruni 7/27/2011 15:39'!
printOn: stream
	stream << 'a local Reference'! !

!P4ExportedObjectReference methodsFor: 'accessing' stamp: 'OliFlueckiger 7/14/2011 14:14'!
relocationTable
	^ target section relocationTable! !

!P4ExportedObjectReference methodsFor: 'accessing' stamp: 'CamilloBruni 7/27/2011 15:52'!
sectionOffset
	^ target sectionOffset + offset! !

!P4ExternalObjectReference methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 7/27/2011 15:39'!
printOn: aStream
	aStream << 'a global Reference'.! !

!P4ExternalObjectReference methodsFor: 'as yet unclassified' stamp: 'ToonVerwaest 7/28/2011 16:25'!
sectionOffset 
	^ 0! !

!P4ExportedSectionReference methodsFor: 'as yet unclassified' stamp: 'ToonVerwaest 7/28/2011 16:35'!
addend
	^ offset! !

!P4ExportedSectionReference methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 7/27/2011 15:39'!
printOn: aStream
	aStream << 'a section Reference'.! !

!P4ExportedSectionReference methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 7/27/2011 15:54'!
relocationTable
	^ target relocationTable! !

!P4ExportedSectionReference methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 7/27/2011 15:54'!
sectionOffset
	^ offset! !

!P4Behavior methodsFor: 'accessing' stamp: 'OliFlueckiger 7/26/2011 16:46'!
basicNew
	<pprimitive: #basicNew>
	self pHalt.! !

!P4Behavior methodsFor: 'accessing' stamp: 'OliFlueckiger 7/26/2011 16:54'!
basicNew: n
	<pprimitive: #'basicNew_'>
	self pHalt.! !

!P4Behavior methodsFor: 'accessing' stamp: 'OliFlueckiger 12/7/2011 16:40'!
initialize 
	<preventExport>
	behavior := P4SmalltalkBehavior for: self! !

!P4Behavior methodsFor: 'accessing' stamp: 'OliFlueckiger 12/7/2011 15:54'!
installMethod: aMethod  
	behavior installMethod: aMethod  ! !

!P4Behavior methodsFor: 'accessing' stamp: 'OliFlueckiger 7/22/2011 13:12'!
instanceHeader
	^ instanceHeader! !

!P4Behavior methodsFor: 'accessing' stamp: 'OliFlueckiger 7/22/2011 13:12'!
instanceHeader: anObject
	instanceHeader := anObject! !

!P4Behavior methodsFor: 'accessing' stamp: 'ToonVerwaest 5/16/2011 14:34'!
layout
	^ layout! !

!P4Behavior methodsFor: 'accessing' stamp: 'OliFlueckiger 12/7/2011 15:54'!
methodDictionary
	^ behavior methodDictionary! !

!P4Behavior methodsFor: 'accessing' stamp: 'OliFlueckiger 12/7/2011 15:54'!
methodDictionary: aMethodDictionary
	behavior methodDictionary: aMethodDictionary! !

!P4Behavior methodsFor: 'accessing' stamp: 'OliFlueckiger 7/28/2011 18:32'!
new
	^ self basicNew initialize! !

!P4Behavior methodsFor: 'accessing' stamp: 'OliFlueckiger 12/7/2011 22:54'!
setBehavior: anObject
	behavior := anObject! !

!P4Behavior methodsFor: 'accessing' stamp: 'OliFlueckiger 12/7/2011 16:03'!
superclass
	^ behavior superclass! !

!P4Behavior methodsFor: 'accessing' stamp: 'OliFlueckiger 12/7/2011 16:03'!
superclass: aSuperclass 
	behavior superclass: aSuperclass ! !

!P4Behavior methodsFor: 'accessing' stamp: 'OliFlueckiger 12/7/2011 16:32'!
theBehavior
	^ behavior! !

!P4Behavior methodsFor: 'accessing' stamp: 'OliFlueckiger 12/7/2011 16:32'!
theClass
	^ self! !

!P4Behavior methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/28/2011 18:32'!
new: n
	^ (self basicNew: n) initialize! !

!P4Class methodsFor: 'exporting' stamp: 'ToonVerwaest 7/18/2011 21:24'!
dumpGlobalOn: bo
	self error: 'Should go via pharo class'! !

!P4Class methodsFor: 'exporting' stamp: 'ToonVerwaest 7/18/2011 21:24'!
dumpLocalOn: bo
	self error: 'Should go via pharo class'! !

!P4Class methodsFor: 'exporting' stamp: 'ToonVerwaest 7/21/2011 16:20'!
pExportedName
	^ (self package relativeNameFor: self name) asSymbol! !

!P4Class methodsFor: 'accessing' stamp: 'OliFlueckiger 7/5/2011 15:57'!
name
	^ name
! !

!P4Class methodsFor: 'accessing' stamp: 'OliFlueckiger 7/5/2011 15:57'!
name: anObject
	name := anObject! !

!P4Class methodsFor: 'accessing' stamp: 'OliFlueckiger 7/5/2011 15:57'!
package
	^ package! !

!P4Class methodsFor: 'accessing' stamp: 'OliFlueckiger 7/5/2011 15:57'!
package: anObject
	package := anObject! !

!P4Class methodsFor: 'accessing' stamp: 'OliFlueckiger 7/15/2011 13:39'!
printOn: aStream
	aStream << name.! !

!P4Metaclass methodsFor: 'accessing' stamp: 'OliFlueckiger 7/20/2011 16:22'!
instance: aClass
	instance := aClass! !

!P4Metaclass methodsFor: 'accessing' stamp: 'OliFlueckiger 7/22/2011 11:46'!
pExportedName 
	^ (instance pExportedName,'_class') asSymbol ! !

!P4Metaclass class methodsFor: 'exporting' stamp: 'ToonVerwaest 7/25/2011 12:44'!
pExportedName
	^ self == P4Metaclass
		ifTrue: [ #Metaclass ]
		ifFalse: [ super pExportedName ]! !

!P4SmalltalkBehavior methodsFor: 'accessing' stamp: 'OliFlueckiger 12/7/2011 18:15'!
dumpGlobalOn: bo
	^ self dumpOn: bo! !

!P4SmalltalkBehavior methodsFor: 'accessing' stamp: 'OliFlueckiger 12/7/2011 18:06'!
dumpLocalOn: bo
	^ bo postpone: self  ! !

!P4SmalltalkBehavior methodsFor: 'accessing' stamp: 'OliFlueckiger 12/7/2011 16:46'!
initialize 
	methodDictionary := P4MethodDictionary new! !

!P4SmalltalkBehavior methodsFor: 'accessing' stamp: 'OliFlueckiger 12/7/2011 15:54'!
installMethod: aMethod  
	methodDictionary at: aMethod selector put: aMethod ! !

!P4SmalltalkBehavior methodsFor: 'accessing' stamp: 'OliFlueckiger 12/7/2011 15:51'!
methodDictionary
	^ methodDictionary! !

!P4SmalltalkBehavior methodsFor: 'accessing' stamp: 'OliFlueckiger 12/7/2011 15:51'!
methodDictionary: anObject
	methodDictionary := anObject! !

!P4SmalltalkBehavior methodsFor: 'accessing' stamp: 'OliFlueckiger 12/7/2011 18:04'!
pExportedName 
	<preventExport>
	^ (self theClass pExportedName, '_behavior') asSymbol ! !

!P4SmalltalkBehavior methodsFor: 'accessing' stamp: 'OliFlueckiger 12/7/2011 17:04'!
setClass: aClass
	class := aClass! !

!P4SmalltalkBehavior methodsFor: 'accessing' stamp: 'OliFlueckiger 12/7/2011 16:04'!
superbehavior 
	^ superbehavior ! !

!P4SmalltalkBehavior methodsFor: 'accessing' stamp: 'OliFlueckiger 12/7/2011 16:28'!
superbehavior: aBehavior
	superbehavior := aBehavior! !

!P4SmalltalkBehavior methodsFor: 'accessing' stamp: 'OliFlueckiger 12/7/2011 16:32'!
superclass 
	^ superbehavior 
		ifNil: [ nil ]
		ifNotNil: [ superbehavior theClass ]! !

!P4SmalltalkBehavior methodsFor: 'accessing' stamp: 'OliFlueckiger 12/7/2011 16:38'!
superclass: aClass
	aClass 
		ifNil: [ superbehavior := nil ]
		ifNotNil: [ superbehavior := aClass theBehavior ]! !

!P4SmalltalkBehavior methodsFor: 'accessing' stamp: 'OliFlueckiger 12/7/2011 16:32'!
theBehavior
	^ self! !

!P4SmalltalkBehavior methodsFor: 'accessing' stamp: 'OliFlueckiger 12/7/2011 16:33'!
theClass
	^ class! !

!P4SmalltalkBehavior methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 12/7/2011 19:25'!
lookup: selector for: object
	<groundTypes>
	<typeHint: #methods 	as: #'Kernel.Behavior.MethodDictionary'>
	<typeHint: #behavior 	as: #'Kernel.Behavior.SmalltalkBehavior'>

	| methods behavior |
	behavior := self.
	[ behavior == nil ] whileFalse: [
		methods := behavior methodDictionary.
		(methods at: selector) 
			ifNotNil: [ :method | ^ method ].
		behavior := behavior superbehavior ].
	
	^ P4DoesNotUnderstand new! !

!P4SmalltalkBehavior class methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 12/7/2011 16:42'!
for: aClass
	^ self new setClass: aClass ! !

!P4MessageLog methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 10/18/2011 17:34'!
incTally
	tally := tally + 1.
	(tally == self size)
		ifTrue: [ tally := 1 ] ! !

!P4MessageLog methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 10/18/2011 18:24'!
initialize 
	log := P4Array new: self size.
	tally := 0.! !

!P4MessageLog methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 10/18/2011 17:37'!
log
	^ log! !

!P4MessageLog methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 10/18/2011 18:24'!
log: aMessage
	self incTally.
	log at: tally put: aMessage.
! !

!P4MessageLog methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 10/18/2011 19:43'!
printMessage: m
	'------> sent:' print.
	(m at:3) print.
	(m at:2) print.
	(m at:4) do: [ :a | a print]! !

!P4MessageLog methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 10/18/2011 19:43'!
replay 
	| m |
	1 to: tally do: [ :i |
		m := log at: i.
		self printMessage: m].! !

!P4MessageLog methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 10/18/2011 18:15'!
size
	^ 100! !

!P4MessageLogBehavior methodsFor: 'accessing' stamp: 'OliFlueckiger 10/18/2011 18:07'!
logger
	^ logger! !

!P4MessageLogBehavior methodsFor: 'accessing' stamp: 'OliFlueckiger 10/18/2011 18:07'!
logger: anObject
	logger := anObject! !

!P4MessageLogBehavior methodsFor: 'accessing' stamp: 'OliFlueckiger 12/7/2011 23:00'!
wrap
	^ wrap! !

!P4MessageLogBehavior methodsFor: 'accessing' stamp: 'OliFlueckiger 12/7/2011 23:00'!
wrap: anObject
	wrap := anObject! !

!P4MessageLogBehavior methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 12/7/2011 23:00'!
lookup: selector for: object
	^ P4MessageLogProxy wrap: (wrap lookup: selector for: object) logger: logger! !

!P4False methodsFor: 'spec' stamp: 'OliFlueckiger 1/6/2012 15:26'!
and: aClosure
	^ false! !

!P4False methodsFor: 'spec' stamp: 'OliFlueckiger 8/24/2011 16:56'!
ifFalse: aBlock
	^ aBlock value  ! !

!P4False methodsFor: 'spec' stamp: 'OliFlueckiger 8/29/2011 13:05'!
ifFalse: aFalseBlock ifTrue: aBlock
	^aFalseBlock value! !

!P4False methodsFor: 'spec' stamp: 'OliFlueckiger 8/24/2011 16:56'!
ifTrue: aBlock  ! !

!P4False methodsFor: 'spec' stamp: 'OliFlueckiger 8/29/2011 13:05'!
ifTrue: aBlock  ifFalse: aFalseBlock
	^aFalseBlock value! !

!P4False methodsFor: 'spec' stamp: 'OliFlueckiger 10/4/2011 16:19'!
not
	^ true! !

!P4False methodsFor: 'spec' stamp: 'OliFlueckiger 10/4/2011 16:18'!
xor: aBoolean
	^aBoolean value! !

!P4True methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 1/6/2012 15:27'!
and: aClosure
	^ aClosure value! !

!P4True methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 10/4/2011 16:19'!
not
	^ false! !

!P4True methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/29/2011 06:28'!
shouldBeTrue
! !

!P4True methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 10/4/2011 16:18'!
xor: aBoolean
	^aBoolean value not! !

!P4Closure methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/1/2011 11:06'!
return
	<globalName: #closureReturn>
	<preventExport>! !

!P4Closure class methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/26/2011 19:10'!
pNew: size
	<globalName:#closureNew>
	<preventExport>
	"not really a primitive since the receiver is not passed, only the untagged size..."! !

!P4Method methodsFor: 'accessing' stamp: 'ToonVerwaest 5/16/2011 17:02'!
code
	^ code! !

!P4Method methodsFor: 'accessing' stamp: 'ToonVerwaest 5/16/2011 17:02'!
code: anObject
	code := anObject! !

!P4Method methodsFor: 'accessing' stamp: 'ToonVerwaest 5/16/2011 17:02'!
host
	^ host! !

!P4Method methodsFor: 'accessing' stamp: 'ToonVerwaest 5/16/2011 17:02'!
host: anObject
	host := anObject! !

!P4Method methodsFor: 'accessing' stamp: 'OliFlueckiger 9/7/2011 13:39'!
numArgs
	selector countArgs  ! !

!P4Method methodsFor: 'accessing' stamp: 'ToonVerwaest 5/16/2011 17:02'!
package
	^ package! !

!P4Method methodsFor: 'accessing' stamp: 'ToonVerwaest 5/16/2011 17:02'!
package: anObject
	package := anObject! !

!P4Method methodsFor: 'accessing' stamp: 'OliFlueckiger 7/15/2011 13:42'!
printOn: aStream
	aStream << '>>' << selector! !

!P4Method methodsFor: 'accessing' stamp: 'ToonVerwaest 5/16/2011 17:02'!
selector
	^ selector! !

!P4Method methodsFor: 'accessing' stamp: 'ToonVerwaest 5/16/2011 17:02'!
selector: anObject
	selector := anObject! !

!P4Method methodsFor: 'accessing' stamp: 'OliFlueckiger 7/8/2011 10:51'!
usedGlobals
	^ usedGlobals! !

!P4Method methodsFor: 'accessing' stamp: 'OliFlueckiger 7/8/2011 10:51'!
usedGlobals: anObject
	usedGlobals := anObject! !

!P4Method methodsFor: 'accessing' stamp: 'OliFlueckiger 7/8/2011 10:51'!
usedReferences
	^ usedReferences! !

!P4Method methodsFor: 'accessing' stamp: 'OliFlueckiger 7/8/2011 10:51'!
usedReferences: anObject
	usedReferences := anObject! !

!P4Method methodsFor: 'exporting' stamp: 'ToonVerwaest 7/19/2011 13:38'!
dumpOn: binaryOut
	<preventExport>
	| myRef |
	myRef := super dumpOn: binaryOut.  
	binaryOut resolveReferences: self reference: myRef.
	^ myRef! !

!P4Method methodsFor: 'exporting' stamp: 'OliFlueckiger 7/14/2011 16:13'!
pByteAt: i
	^ code at: i.
	! !

!P4Method methodsFor: 'exporting' stamp: 'OliFlueckiger 7/14/2011 16:49'!
pByteName
	^ host earlySelectorAddress: selector  ! !

!P4Method methodsFor: 'exporting' stamp: 'OliFlueckiger 7/14/2011 16:07'!
pByteSize
	^ code size! !

!P4Method methodsFor: 'exporting' stamp: 'OliFlueckiger 8/9/2011 16:01'!
pInstVarAt: i
	<preventExport>
	i = 1 ifTrue: [ ^ self pVariableSize + self class pInstSize  ].
	^ super pInstVarAt: i! !

!P4Method methodsFor: 'exporting' stamp: 'OliFlueckiger 7/15/2011 15:22'!
pVariableSize
	^ self basicSize! !

!P4Method class methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/14/2011 17:15'!
fromTac: aMethod
	| literals result |
	literals := aMethod literals.
	
	result := self new: literals size.
	1 to: literals size do: [:i | result at: i put: (literals at: i)].
	result code: aMethod codeStream contents.
	result host: aMethod host.
	result selector: aMethod selector.
	^ result
	! !

!P4Method class methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/14/2011 18:14'!
pInstSize 
	^ self instSize - 2! !

!P4Method class methodsFor: 'as yet unclassified' stamp: 'ToonVerwaest 7/25/2011 21:24'!
pIsBytes
	^ true! !

!P4DoesNotUnderstand methodsFor: 'accessing' stamp: 'OliFlueckiger 9/7/2011 16:44'!
arguments
	^ arguments! !

!P4DoesNotUnderstand methodsFor: 'accessing' stamp: 'OliFlueckiger 9/7/2011 16:44'!
selector
	^ selector! !

!P4DoesNotUnderstand methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 9/8/2011 16:08'!
perform: aSelector on: receiver with: args
	<groundTypes>
	<typeHint: #receiver as: #'Kernel.Object.Object'>
	arguments := args.
	selector := aSelector.
	^ receiver doesNotUnderstand: self  ! !

!P4Console class methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/26/2011 16:51'!
print: msg
	<pprimitive: #print>
	self pHalt.! !

!P4Array methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 1/8/2012 14:21'!
at: index
	<preventExport>
	^ super at: index! !

!P4Array methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 1/8/2012 14:21'!
at: index put: object
	<preventExport>
	^ super at: index put: object! !

!P4Array methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 9/8/2011 14:56'!
do: aBlock
	| size |
	size := self size.
	1 to: size do: [ :element |
		aBlock value: (self at: element) ]! !

!P4Array methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 1/8/2012 14:41'!
pAt: index
	<renameExport: #'at:'>
	<pprimitive: #basicAt>
	'access out of bounds or non integer index' print.
	self pHalt! !

!P4Array methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 1/8/2012 14:20'!
pAt: index put: object
	<renameExport: #'at:put:'>
	<pprimitive: #basicAtPut>
	! !

!P4Array methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 9/13/2011 10:45'!
pInspect 
	'an Array' print.
	self do: [ :e | e printObj ]! !

!P4Array methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/15/2011 13:44'!
printOn: aStream
	aStream << '{'.
	1 to: self size do: [ :i |
		(self pVariableAt: i) printOn: aStream.
		aStream << '. '  ].
	aStream << '}'.! !

!P4Array class methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/11/2011 12:57'!
isIndexed 
	^true! !

!P4Array class methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/28/2011 17:27'!
with: stuff
	| array |
	array := self basicNew: 1.
	array basicAt: 1 put: stuff.
	^array! !

!P4AbstractBucket methodsFor: 'accessing' stamp: 'ToonVerwaest 8/4/2010 11:36'!
bucketSize
	^ bucketSize! !

!P4AbstractBucket methodsFor: 'adding' stamp: 'ToonVerwaest 8/4/2010 11:36'!
copyFrom: aBucket
	1 to: aBucket bucketSize do: [ :idx | self at: idx put: (aBucket at: idx) ].
	bucketSize := aBucket bucketSize! !

!P4AbstractBucket methodsFor: 'initialization' stamp: 'ToonVerwaest 8/4/2010 11:37'!
initialize
	bucketSize := 0! !

!P4AbstractBucket methodsFor: 'testing' stamp: 'OliFlueckiger 8/5/2011 18:50'!
isFull
	^ bucketSize = self size! !

!P4AbstractBucket methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/15/2011 13:53'!
printOn: aStream
	aStream << 'a ' << self class name << ' {'.
	aStream cr.
	1 to: self bucketSize do: [ :i |
		(self pVariableAt: i) printOn: aStream.
		aStream << '. '  ].
	aStream << '}'.! !

!P4AbstractBucket methodsFor: 'removing' stamp: 'ToonVerwaest 8/5/2010 15:59'!
removeAll
	|oldSize|
	oldSize := bucketSize.
	bucketSize := 0.
	1 to: oldSize do: [:index | self at: index put: nil]! !

!P4AbstractBucket class methodsFor: 'instance creation' stamp: 'ToonVerwaest 8/4/2010 11:40'!
new
	self shouldNotCall! !

!P4AbstractBucket class methodsFor: 'instance creation' stamp: 'OliFlueckiger 7/28/2011 14:33'!
new: sizeRequested
	^ (super basicNew: sizeRequested) initialize! !

!P4DictBucket methodsFor: 'accessing' stamp: 'ToonVerwaest 8/4/2010 09:17'!
assign: key to: value
	1 to: bucketSize by: 2 do: [ :index |
		(self at: index) = key
			ifTrue: [ self at: index + 1 put: value. ^ true ]].
	^ false! !

!P4DictBucket methodsFor: 'accessing' stamp: 'ToonVerwaest 8/4/2010 09:36'!
at: aKey ifAbsent: aBlock
	1 to: bucketSize by: 2 do: [ :index | 
		(self at: index) = aKey ifTrue: [ ^ self at: index + 1 ]].
	^ aBlock value! !

!P4DictBucket methodsFor: 'accessing' stamp: 'ToonVerwaest 8/5/2010 11:33'!
scanFor: aKey
	1 to: bucketSize by: 2 do: [ :index | 
		(self at: index) = aKey ifTrue: [ ^ index ]].
	^ 0! !

!P4DictBucket methodsFor: 'enumeration' stamp: 'ToonVerwaest 8/4/2010 10:16'!
do: aBlock
	2 to: bucketSize by: 2 do: [ :index | aBlock value: (self at: index) ]! !

!P4DictBucket methodsFor: 'enumeration' stamp: 'ToonVerwaest 8/4/2010 09:53'!
keysAndValuesDo: aBlock
	1 to: bucketSize by: 2 do: [ :index | 
			"value: key v value: value value: index"
		aBlock value: (self at: index) value: (self at: index + 1) ]! !

!P4DictBucket methodsFor: 'enumeration' stamp: 'ToonVerwaest 8/4/2010 09:20'!
keysDo: aBlock
	1 to: bucketSize by: 2 do: [ :index | aBlock value: (self at: index) ]! !

!P4DictBucket methodsFor: 'testing' stamp: 'ToonVerwaest 8/4/2010 09:36'!
includes: anObject
	2 to: bucketSize by: 2 do: [ :index | 
		(self at: index) = anObject ifTrue: [ ^ true ]].
	^ false! !

!P4DictBucket methodsFor: 'testing' stamp: 'ToonVerwaest 8/5/2010 12:28'!
includesKey: aKey
	1 to: bucketSize by: 2 do: [ :index | 
		(self at: index) = aKey ifTrue: [ ^ true ]].
	^ false! !

!P4DictBucket methodsFor: 'adding' stamp: 'ToonVerwaest 8/3/2010 21:42'!
newKey: aKey value: anObject
	self at: bucketSize + 1 put: aKey.
	self at: bucketSize + 2 put: anObject.
	bucketSize := bucketSize + 2! !

!P4DictBucket methodsFor: 'removing' stamp: 'ToonVerwaest 8/4/2010 09:25'!
remove: aKey ifAbsent: aBlock
	| value |
	1 to: bucketSize by: 2 do: [ :index | 
		(self at: index) = aKey
			ifTrue: [
				value := self at: index + 1.
				self removeAt: index.
				^ value ]].
	^ aBlock value! !

!P4DictBucket methodsFor: 'removing' stamp: 'ToonVerwaest 8/4/2010 09:19'!
removeAt: index
	self at: index put: (self at: bucketSize - 1).
	self at: index + 1 put: (self at: bucketSize).
	bucketSize := bucketSize - 2.
	self at: bucketSize + 1 put: nil.
	self at: bucketSize + 2 put: nil! !

!P4DictBucket class methodsFor: 'instance creation' stamp: 'OliFlueckiger 7/28/2011 15:45'!
new: sizeRequested
	^ super new: sizeRequested * 2! !

!P4DictBucket class methodsFor: 'instance creation' stamp: 'OliFlueckiger 7/22/2011 17:19'!
typeHints 
	<preventExport>
	^ {
		#self-> #'Kernel.Collection.DictBucket'
	} asDictionary! !

!P4IdentityDictBucket methodsFor: 'accessing' stamp: 'OliFlueckiger 8/29/2011 20:48'!
assign: key to: value
	1 to: bucketSize by: 2 do: [ :index |
		(self at: index) == key
			ifTrue: [ self at: index + 1 put: value. ^true ]].
	^ false! !

!P4IdentityDictBucket methodsFor: 'accessing' stamp: 'OliFlueckiger 8/29/2011 20:29'!
at: aKey ifAbsent: aBlock
	<groundTypes>
	1 to: bucketSize by: 2 do: [ :index | 
		(self at: index) == aKey ifTrue: [ ^ self at: 1 + index ]].
	^ aBlock value! !

!P4IdentityDictBucket methodsFor: 'testing' stamp: 'ToonVerwaest 8/5/2010 12:28'!
includesKey: aKey
	1 to: bucketSize by: 2 do: [ :index | 
		(self at: index) == aKey ifTrue: [ ^ true ]].
	^ false! !

!P4IdentityDictBucket methodsFor: 'removing' stamp: 'ToonVerwaest 8/4/2010 11:42'!
remove: aKey ifAbsent: aBlock
	| value |
	1 to: bucketSize by: 2 do: [ :index | 
		(self at: index) == aKey
			ifTrue: [
				value := self at: index + 1.
				self removeAt: index.
				^ value ]].
	^ aBlock value! !

!P4IdentityDictBucket class methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/22/2011 17:19'!
typeHints 
	<preventExport>
	^ super typeHints addAll:
	{
		#self-> #'Kernel.Collection.IdentityDictBucket'
	} asDictionary! !

!P4SetBucket methodsFor: 'adding' stamp: 'ToonVerwaest 8/4/2010 11:16'!
addNew: value
	^ self at: (bucketSize := bucketSize + 1) put: value! !

!P4SetBucket methodsFor: 'enumeration' stamp: 'ToonVerwaest 8/4/2010 11:02'!
do: aBlock
	1 to: bucketSize do: [ :index | aBlock value: (self at: index) ]! !

!P4SetBucket methodsFor: 'testing' stamp: 'CamilloBruni 7/27/2010 22:30'!
includes: anObject
	1 to: bucketSize do: [ :index | 
			(self at: index) = anObject ifTrue: [ ^ true ] ].
	^ false! !

!P4SetBucket methodsFor: 'removing' stamp: 'ToonVerwaest 8/4/2010 11:09'!
remove: anObject ifAbsent: aBlock
	1 to: bucketSize do: [ :index |
		(self at: index) = anObject
			ifTrue: [ self removeAt: index. ^ anObject ]].
	^ aBlock value! !

!P4SetBucket methodsFor: 'removing' stamp: 'ToonVerwaest 8/5/2010 15:34'!
removeAt: anInteger
	self at: anInteger put: (self at: bucketSize).
	bucketSize := bucketSize - 1.
	self at: bucketSize + 1 put: nil. ! !

!P4IdentitySetBucket methodsFor: 'as yet unclassified' stamp: 'ToonVerwaest 8/5/2010 15:33'!
includes: anObject
	1 to: bucketSize do: [ :index | 
			(self at: index) == anObject ifTrue: [ ^ true ] ].
	^ false! !

!P4IdentitySetBucket methodsFor: 'as yet unclassified' stamp: 'ToonVerwaest 8/5/2010 15:34'!
remove: anObject ifAbsent: aBlock
	1 to: bucketSize do: [ :index |
		(self at: index) == anObject
			ifTrue: [ self removeAt: index. ^ anObject ]].
	^ aBlock value! !

!P4RemoteArray class methodsFor: 'instance creation' stamp: 'OliFlueckiger 7/26/2011 19:09'!
pNew: size
	<globalName: #remoteArrayNew>
	<preventExport>! !

!P4HashedCollection methodsFor: 'private' stamp: 'ToonVerwaest 8/5/2010 15:48'!
bucketWithRoomAt: index
	^ (buckets at: index)
		ifNil: [ self newBucketAt: index ]
		ifNotNil: [ :bucket |
			bucket isFull ifTrue: [ ^ self growBucketAt: index ].
			bucket ]! !

!P4HashedCollection methodsFor: 'private' stamp: 'ToonVerwaest 8/5/2010 15:49'!
checkGrow
	size := size + 1.
	(size * 100 // buckets size > ratio) ifTrue: [ self grow ]! !

!P4HashedCollection methodsFor: 'private' stamp: 'ToonVerwaest 8/5/2010 15:49'!
checkShrink
	size := size - 1.
	" TODO test if should shrink. ifTrue: [ self shrink ]"! !

!P4HashedCollection methodsFor: 'private' stamp: 'ToonVerwaest 7/19/2011 16:34'!
grow
	| oldBuckets |
	oldBuckets := buckets.
	buckets := Array new: oldBuckets size * 2.
	1 to: oldBuckets size do: [ :index |
		(oldBuckets at: index) ifNotNil: [ :bucket |
			self reAddBucket: bucket at: index]].! !

!P4HashedCollection methodsFor: 'private' stamp: 'ToonVerwaest 8/5/2010 15:57'!
growBucketAt: index
	| oldBucket newBucket |
	oldBucket := buckets at: index.
	newBucket := self newBucket: oldBucket size * 2.
	newBucket copyFrom: oldBucket.
	buckets at: index put: newBucket.
	^ newBucket! !

!P4HashedCollection methodsFor: 'private' stamp: 'OliFlueckiger 8/5/2011 17:55'!
isLinear
	^ linear! !

!P4HashedCollection methodsFor: 'private' stamp: 'ToonVerwaest 8/5/2010 15:56'!
newBucketAt: bucketIndex
	^ buckets at: bucketIndex put: (self newBucket: 4)! !

!P4HashedCollection methodsFor: 'private' stamp: 'ToonVerwaest 8/5/2010 15:55'!
shrink
	"TODO"

	! !

!P4HashedCollection methodsFor: 'enumerating' stamp: 'ToonVerwaest 8/5/2010 15:49'!
bucketsDo: aBlock
	1 to: buckets size do: [ :index |
		(buckets at: index) ifNotNil: [ :bucket | aBlock value: bucket ] ]! !

!P4HashedCollection methodsFor: 'enumerating' stamp: 'OliFlueckiger 12/7/2011 17:40'!
do: aBlock
	^ self bucketsDo: [ :bucket | bucket do: aBlock ]! !

!P4HashedCollection methodsFor: 'copying' stamp: 'ToonVerwaest 8/5/2010 15:56'!
copyEmpty
	"Answer an empty copy of this collection"
	^self species new: self size! !

!P4HashedCollection methodsFor: 'initialization' stamp: 'ToonVerwaest 8/5/2010 15:49'!
initialize
	self initialize: 20! !

!P4HashedCollection methodsFor: 'initialization' stamp: 'ToonVerwaest 7/19/2011 16:34'!
initialize: preferredSize
	size := 0.
	ratio := 500.
	maxLinear := 20.
	(linear := preferredSize <= maxLinear)
		ifTrue: [ buckets := Array with: (self newBucket: preferredSize) ]
		ifFalse: [ "TODO calculate proper size here"
			buckets := Array new: 32 ]! !

!P4HashedCollection methodsFor: 'accessing' stamp: 'ToonVerwaest 8/5/2010 15:56'!
maxLinear: anInteger
	maxLinear := anInteger! !

!P4HashedCollection methodsFor: 'accessing' stamp: 'ToonVerwaest 8/5/2010 15:55'!
ratio: aFloat
	<preventExport>
	ratio := (aFloat * 100) ceiling! !

!P4HashedCollection methodsFor: 'accessing' stamp: 'ToonVerwaest 8/5/2010 15:56'!
size
	^ size! !

!P4HashedCollection methodsFor: 'removing' stamp: 'ToonVerwaest 8/5/2010 15:55'!
removeAll
	size := 0.
	self bucketsDo: [:bucket| bucket removeAll ].! !

!P4HashedCollection class methodsFor: 'initialize-release' stamp: 'ToonVerwaest 8/5/2010 15:59'!
new: preferredSize
	^ super new initialize: preferredSize! !

!P4HashedCollection class methodsFor: 'initialize-release' stamp: 'ToonVerwaest 8/5/2010 15:59'!
newFrom: aCollection
	"Answer an instance of me containing the same elements as aCollection."
	| newCollection |
	newCollection := self new: aCollection size.
	newCollection addAll: aCollection.
	^ newCollection! !

!P4HashedCollection class methodsFor: 'initialize-release' stamp: 'OliFlueckiger 7/22/2011 16:17'!
typeHints
	<preventExport>
	^ {
		#size -> #'Kernel.Number.SmallInteger'.
		#maxLinear -> #'Kernel.Number.SmallInteger'.
		#ratio -> #'Kernel.Number.SmallInteger'.
		#buckets -> #'Kernel.Collection.Array'.
		#linear -> #'Kernel.Boolean.Boolean'.
	} asDictionary ! !

!P4Dictionary methodsFor: 'adding' stamp: 'ToonVerwaest 8/4/2010 09:54'!
addAll: aDictionary
	aDictionary == self ifTrue: [ ^ self ].
	aDictionary keysAndValuesDo: [:key :value | self at: key put: value].
	^ aDictionary.! !

!P4Dictionary methodsFor: 'adding' stamp: 'OliFlueckiger 7/21/2011 13:08'!
printOn: stream
	stream << 'a Dictionary {'.
	stream cr.
	self keysAndValuesDo: [ :k :v |
		k printOn: stream.
		stream << ' -> '.
		v printOn: stream.
		stream cr ] .
	stream << '}'! !

!P4Dictionary methodsFor: 'accessing' stamp: 'ToonVerwaest 8/20/2010 12:08'!
at: key
	^ self at: key ifAbsent: [ self errorKeyNotFound: key ]! !

!P4Dictionary methodsFor: 'accessing' stamp: 'ToonVerwaest 7/23/2011 18:40'!
at: key ifAbsent: aBlock
	<pPrimitive: #at:ifAbsent: plugin: #'Collection.Dictionary'>
	linear ifTrue: [ ^ (buckets at: 1) at: key ifAbsent: aBlock ].
	^ (buckets at: key pHash \\ buckets size + 1)
		ifNil: [ aBlock value ]
		ifNotNil: [ :bucket | bucket at: key ifAbsent: aBlock ]! !

!P4Dictionary methodsFor: 'accessing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
at: key ifAbsentPut: aBlock
	^ self at: key ifAbsent: [ self at: key put: aBlock value ]! !

!P4Dictionary methodsFor: 'accessing' stamp: 'ToonVerwaest 8/4/2010 09:58'!
at: key ifPresent: aBlock
	"Lookup the given key in the receiver.
	If it is present, answer the value of evaluating the given block with the value associated with the key.
	Otherwise, answer nil."
	^ aBlock value: (self at: key ifAbsent: [ ^ nil ])! !

!P4Dictionary methodsFor: 'accessing' stamp: 'OliFlueckiger 9/6/2011 14:56'!
at: key put: anObject
	| bucketIndex bucket |
	linear ifTrue: [ ^ self inFirstBucketAt: key put: anObject ].
		
	bucketIndex := key pHash \\ buckets size + 1.
	bucket := buckets at: bucketIndex.
	bucket ifNil: [
		(self newBucketAt: bucketIndex) newKey: key value: anObject.
		self checkGrow.
		^ anObject ].
	(bucket assign: key to: anObject) ifTrue: [ ^ anObject ].
	bucket isFull ifTrue: [ bucket := self growBucketAt: bucketIndex ].
	bucket newKey: key value: anObject.
	self checkGrow.
	^ anObject! !

!P4Dictionary methodsFor: 'accessing' stamp: 'ToonVerwaest 7/19/2011 16:33'!
keys
	| keys index |
	keys := Array new: size.
	index := 0.
	self keysDo: [ :key | keys at: (index := index + 1) put: key ].
	^ keys! !

!P4Dictionary methodsFor: 'accessing' stamp: 'ToonVerwaest 7/19/2011 16:33'!
values
	| values index |
	values := Array new: size.
	index := 0.
	self do: [ :value | values at: (index := index + 1) put: value ].
	^ values! !

!P4Dictionary methodsFor: 'inspecting' stamp: 'ToonVerwaest 8/9/2010 15:14'!
collect: aBlock displayingProgress: aString
	<preventExport>
	"Evaluate aBlock with each of my values as the argument.  Collect the
	resulting values into a collection that is like me. Answer with the new
	collection."
	| newCollection |
	newCollection := Dictionary new.
	(self keysAndValuesDo:[:key :value |
		newCollection at: key put: (aBlock value: value).
	]).
	^newCollection! !

!P4Dictionary methodsFor: 'inspecting' stamp: 'ToonVerwaest 8/31/2010 14:36'!
inspectChildrenOn: inspector
	self keysAndValuesDo: [ :key :value |
		inspector child: key value: [ value ]]! !

!P4Dictionary methodsFor: 'error handling' stamp: 'ToonVerwaest 7/19/2011 16:34'!
errorKeyNotFound: aKey
	^ P4KeyNotFound new
		key: aKey;
		dictionary: self;
		signal! !

!P4Dictionary methodsFor: 'private' stamp: 'ToonVerwaest 8/5/2010 16:46'!
inFirstBucketAt: key ifAbsentPut: aBlock
	^ (buckets at: 1) at: key ifAbsent: [
		^ self inFirstBucketAtNew: key put: aBlock value ]! !

!P4Dictionary methodsFor: 'private' stamp: 'OliFlueckiger 8/24/2011 13:24'!
inFirstBucketAt: key put: anObject
	^ ((buckets at: 1) assign: key to: anObject)
		ifTrue: [ anObject ]
		ifFalse: [ self inFirstBucketAtNew: key put: anObject ]! !

!P4Dictionary methodsFor: 'private' stamp: 'OliFlueckiger 8/29/2011 19:03'!
inFirstBucketAtNew: key put: value
	| bucket |
	bucket := buckets at: 1.
	bucket isFull ifTrue: [
		(bucket size < maxLinear)
			ifFalse: [
				linear := false.
				buckets := Array new: 32.
				self reAddBucket: bucket at: 1.
				^ self at: key put: value ].
		bucket := self growBucketAt: 1 ].
	bucket newKey: key value: value.
	size := size + 1.
	^ value! !

!P4Dictionary methodsFor: 'private' stamp: 'ToonVerwaest 7/19/2011 16:33'!
newBucket: sizeRequested
	^ P4DictBucket new: sizeRequested! !

!P4Dictionary methodsFor: 'private' stamp: 'ToonVerwaest 7/23/2011 18:40'!
reAddBucket: bucket at: index
	| c key bucketIndex |
	c := 1.
	buckets at: index put: bucket.
	[ c <= bucket bucketSize ] whileTrue: [ 
			key := bucket at: c.
			bucketIndex := key pHash \\ buckets size + 1.
			bucketIndex = index
				ifTrue: [ c := c + 2 ]
				ifFalse: [ 
					(self bucketWithRoomAt: bucketIndex) newKey: key value: (bucket at: c + 1).
					bucket removeAt: c ] ]! !

!P4Dictionary methodsFor: 'testing' stamp: 'ToonVerwaest 8/5/2010 12:16'!
includes: anObject
	self bucketsDo: [ :bucket | (bucket includes: anObject) ifTrue: [ ^ true ]].
	^ false! !

!P4Dictionary methodsFor: 'testing' stamp: 'ToonVerwaest 7/23/2011 18:40'!
includesKey: key
	<pPrimitive: #includesKey: plugin: #'Collection.Dictionary'>
	linear ifTrue: [ ^ (buckets at: 1) includesKey: key ].
	^ (buckets at: key pHash \\ buckets size + 1)
		ifNil: [ false ]
		ifNotNil: [ :bucket | bucket includesKey: key ]! !

!P4Dictionary methodsFor: 'enumerating' stamp: 'ToonVerwaest 8/4/2010 09:53'!
keysAndValuesDo: aBlock
	self bucketsDo: [ :bucket | bucket keysAndValuesDo: aBlock ]
	! !

!P4Dictionary methodsFor: 'enumerating' stamp: 'ToonVerwaest 8/4/2010 11:48'!
keysDo: aBlock
	self bucketsDo: [ :bucket | bucket keysDo: aBlock ]
	! !

!P4Dictionary methodsFor: 'enumerating' stamp: 'ToonVerwaest 8/4/2010 10:17'!
valuesDo: aBlock
	self bucketsDo: [ :bucket | bucket do: aBlock ]
	! !

!P4Dictionary methodsFor: 'removing' stamp: 'ToonVerwaest 3/25/2010 12:39'!
remove: anObject ifAbsent: aBlock
	self shouldNotCall! !

!P4Dictionary methodsFor: 'removing' stamp: 'OliFlueckiger 7/21/2011 11:55'!
removeKey: key
	"Remove key from the receiver.
	If key is not in the receiver, notify an error."

	^ self removeKey: key ifAbsent: [ self errorKeyNotFound: key ]! !

!P4Dictionary methodsFor: 'removing' stamp: 'ToonVerwaest 7/23/2011 18:41'!
removeKey: key ifAbsent: aBlock
	| value bucket |
	linear ifTrue: [
		value := (buckets at: 1) remove: key ifAbsent: [ ^ aBlock value ].
		self checkShrink.
		^ value ].
	bucket := buckets at: key pHash \\ buckets size + 1.
	bucket ifNil: [ ^ aBlock value ].
	value := bucket remove: key ifAbsent: [ ^ aBlock value ].
	self checkShrink.
	^ value! !

!P4Dictionary methodsFor: 'selecting' stamp: 'ToonVerwaest 8/3/2010 13:51'!
select: aBlock 
	"Evaluate aBlock with each of my values as the argument. Collect into a new dictionary, only those associations for which aBlock evaluates to true."

	| newCollection |
	newCollection := self copyEmpty.
	self keysAndValuesDo: [ :key :value |
		(aBlock value: value) ifTrue: [
			newCollection at: key put: value ] ].
	^newCollection! !

!P4Dictionary class methodsFor: 'staticTyping' stamp: 'ToonVerwaest 7/23/2011 19:12'!
pExportedName 
	^ self == P4Dictionary
		ifTrue: [ #Dictionary ]
		ifFalse: [ super pExportedName ]! !

!P4Dictionary class methodsFor: 'staticTyping' stamp: 'OliFlueckiger 7/22/2011 16:15'!
typeHints
	<preventExport>
	^ super typeHints addAll: {
		#self -> #'Kernel.Collection.Dictionary'
	} asDictionary ! !

!P4IdentityDictionary methodsFor: 'private' stamp: 'OliFlueckiger 8/29/2011 20:29'!
at: key ifAbsent: aBlock
	<typeHint: #bucket as: #'Kernel.Collection.IdentityDictBucket'>
	<typeHint: #hash as: #'Kernel.Number.SmallInteger'>
	<fixedType: #key as: #'Kernel.Object.Object'>
	<groundTypes>
	| bucket hash |
	linear ifTrue: [ bucket := (buckets at: 1). ^ bucket at: key ifAbsent: aBlock ].
	hash := key identityHash.
	bucket := buckets at: 1 + (hash \\ buckets size).
	^ bucket
		ifNil: [ aBlock value ]
		ifNotNil: [bucket at: key ifAbsent: aBlock ]! !

!P4IdentityDictionary methodsFor: 'private' stamp: 'OliFlueckiger 8/5/2011 14:39'!
at: key put: anObject
	| bucketIndex bucket |
	
	linear ifTrue: [ ^ self inFirstBucketAt: key put: anObject ].
		
	bucketIndex := key identityHash \\ buckets size + 1.
	bucket := buckets at: bucketIndex.
	bucket ifNil: [
		(self newBucketAt: bucketIndex) newKey: key value: anObject.
		self checkGrow.
		^ anObject ].
	(bucket assign: key to: anObject) ifTrue: [ ^ anObject ].
	bucket isFull ifTrue: [ bucket := self growBucketAt: bucketIndex ].
	bucket newKey: key value: anObject.
	self checkGrow.
	^ anObject! !

!P4IdentityDictionary methodsFor: 'private' stamp: 'ToonVerwaest 7/23/2011 18:39'!
includesKey: key
	linear ifTrue: [ ^ (buckets at: 1) includesKey: key ].
	^ (buckets at: key identityHash \\ buckets size + 1)
		ifNil: [ false ]
		ifNotNil: [ :bucket | bucket includesKey: key ]! !

!P4IdentityDictionary methodsFor: 'private' stamp: 'ToonVerwaest 7/23/2011 18:33'!
newBucket: sizeRequested
	^ P4IdentityDictBucket new: sizeRequested! !

!P4IdentityDictionary methodsFor: 'private' stamp: 'OliFlueckiger 9/6/2011 14:04'!
reAddBucket: bucket at: index
	| c key bucketIndex |
	c := 1.
	buckets at: index put: bucket.
	[ c <= bucket bucketSize ] whileTrue: [ 
			key := bucket at: c.
			bucketIndex := key identityHash \\ buckets size + 1.
			bucketIndex = index
				ifTrue: [ c := c + 2 ]
				ifFalse: [ 
					(self bucketWithRoomAt: bucketIndex) newKey: key value: (bucket at: c + 1).
					bucket removeAt: c ] ]! !

!P4IdentityDictionary methodsFor: 'removing' stamp: 'ToonVerwaest 7/23/2011 18:39'!
removeKey: key ifAbsent: aBlock
	| value bucket |
	linear ifTrue: [
		value := (buckets at: 1) remove: key ifAbsent: [ ^ aBlock value ].
		self checkShrink.
		^ value ].
	bucket := buckets at: key identityHash \\ buckets size + 1.
	bucket ifNil: [ ^ aBlock value ].
	value := bucket remove: key ifAbsent: [ ^ aBlock value ].
	self checkShrink.
	^ value! !

!P4IdentityDictionary class methodsFor: 'statictyping' stamp: 'ToonVerwaest 7/23/2011 19:12'!
pExportedName 
	^ self == P4IdentityDictionary
		ifTrue: [ #IdentityDictionary ]
		ifFalse: [ super pExportedName ]! !

!P4IdentityDictionary class methodsFor: 'statictyping' stamp: 'OliFlueckiger 7/22/2011 16:15'!
typeHints 
	<preventExport>
	^ super typeHints addAll:
	{
		#buckets -> #'Kernel.Collection.Array'.
		#self-> #'Kernel.Collection.IdentityDictionary'
	} asDictionary! !

!P4MethodDictionary methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 9/7/2011 16:26'!
at: key
	<groundTypes>
	^ self at: key ifAbsent: nil! !

!P4MethodDictionary class methodsFor: 'statictyping' stamp: 'ToonVerwaest 7/23/2011 19:12'!
pExportedName 
	^ self == P4MethodDictionary
		ifTrue: [ #MethodDictionary ]
		ifFalse: [ super pExportedName ]! !

!P4MethodDictionary class methodsFor: 'statictyping' stamp: 'OliFlueckiger 8/9/2011 18:57'!
typeHints 
	<preventExport>
	^ super typeHints addAll:
	{
		#self-> #'Kernel.Behavior.MethodDictionary'
	} asDictionary! !

!P4Set methodsFor: 'adding' stamp: 'ToonVerwaest 7/23/2011 18:41'!
add: value
	| bucketIndex bucket |
	linear ifTrue: [ ^ self addInFirstBucket: value ].
	
	bucketIndex := (value pHash \\ buckets size) + 1.
	bucket := buckets at: bucketIndex.
	bucket ifNil: [
		bucket := self newBucketAt: bucketIndex.
		bucket addNew: value.
		self checkGrow.
		^ value ].
	(bucket includes: value) ifTrue: [ ^ value ].
	bucket isFull ifTrue: [ bucket := self growBucketAt: bucketIndex ].
	bucket addNew: value.
	self checkGrow.
	^ value
	! !

!P4Set methodsFor: 'adding' stamp: 'ToonVerwaest 7/18/2011 21:43'!
addAll: values
	values do: [ :v | self add: v ]! !

!P4Set methodsFor: 'private' stamp: 'OliFlueckiger 8/5/2011 18:10'!
addInFirstBucket: value
	| bucket |
	bucket := buckets at: 1.
	(bucket includes: value) ifTrue: [ ^ value ].
	bucket isFull ifTrue: [
		size < maxLinear ifFalse: [
			linear := false.
			buckets := Array new: 32.
			self reAddBucket: bucket at: 1.
			^ self add: value ].
		bucket := self growBucketAt: 1 ].
	bucket addNew: value.
	size := size + 1.
	^ value! !

!P4Set methodsFor: 'private' stamp: 'ToonVerwaest 7/18/2011 22:32'!
newBucket: sizeRequested
	<preventExport>
	self flag: 'ne'.
	^ P4SetBucket new: sizeRequested! !

!P4Set methodsFor: 'private' stamp: 'ToonVerwaest 7/23/2011 18:41'!
reAddBucket: bucket at: index
	| c item bucketIndex |
	buckets at: index put: bucket.
	c := 1.
	[ c <= bucket bucketSize ] whileTrue: [ 
		item := bucket at: c.
		bucketIndex := item pHash \\ buckets size + 1.
		bucketIndex = index
			ifTrue: [ c := c + 1 ]
			ifFalse: [
				(self bucketWithRoomAt: bucketIndex) addNew: item.
				bucket removeAt: c ]]! !

!P4Set methodsFor: 'iterating' stamp: 'ToonVerwaest 7/18/2011 21:35'!
do: aBlock
	self bucketsDo: [ :bucket | bucket do: aBlock ]! !

!P4Set methodsFor: 'testing' stamp: 'ToonVerwaest 7/23/2011 18:41'!
includes: anObject
	linear ifTrue: [ ^ (buckets at: 1) includes: anObject ].
	^ (buckets at: anObject pHash \\ buckets size + 1)
		ifNil: [ false ]
		ifNotNil: [ :bucket | bucket includes: anObject ]! !

!P4Set methodsFor: 'testing' stamp: 'ToonVerwaest 7/18/2011 21:43'!
isEmpty
	^ self size == 0! !

!P4Set methodsFor: 'inspecting' stamp: 'ToonVerwaest 8/31/2010 14:21'!
inspectChildrenOn: inspector
	| index |
	index := 0.
	self do: [ :value |
		inspector
			child: (index := index + 1)
			value: [ value ]]! !

!P4Set methodsFor: 'removing' stamp: 'ToonVerwaest 9/6/2010 17:04'!
remove: anObject
	^ self remove: anObject ifAbsent: [ self valueNotFound: anObject ].! !

!P4Set methodsFor: 'removing' stamp: 'ToonVerwaest 7/23/2011 18:41'!
remove: anObject ifAbsent: aBlock
	| bucket value |
	linear ifTrue: [ bucket := buckets at: 1 ]
		ifFalse: [
			bucket := buckets at: anObject pHash \\ buckets size + 1.
			bucket ifNil: [ ^ aBlock value ]].
	value := bucket remove: anObject ifAbsent: [ ^ aBlock value ].
	self checkShrink.
	^ value! !

!P4SymbolTable methodsFor: 'exporting' stamp: 'OliFlueckiger 7/15/2011 17:20'!
dumpGlobalOn: binaryOut
	^  self dumpOn: binaryOut  ! !

!P4SymbolTable methodsFor: 'exporting' stamp: 'ToonVerwaest 7/23/2011 19:05'!
pExportedName 
	^ #symboltable! !

!P4IdentitySet methodsFor: 'adding' stamp: 'ToonVerwaest 8/5/2010 15:52'!
add: value
	| bucketIndex bucket |
	linear ifTrue: [ ^ self addInFirstBucket: value ].
	
	bucketIndex := (value identityHash \\ buckets size) + 1.
	bucket := buckets at: bucketIndex.
	bucket ifNil: [
		bucket := self newBucketAt: bucketIndex.
		bucket addNew: value.
		self checkGrow.
		^ value ].
	(bucket includes: value) ifTrue: [ ^ value ].
	bucket isFull ifTrue: [ bucket := self growBucketAt: bucketIndex ].
	bucket addNew: value.
	self checkGrow.
	^ value! !

!P4IdentitySet methodsFor: 'testing' stamp: 'ToonVerwaest 8/5/2010 15:53'!
includes: anObject
	linear ifTrue: [ ^ (buckets at: 1) includes: anObject ].
	^ (buckets at: anObject identityHash \\ buckets size + 1)
		ifNil: [ false ]
		ifNotNil: [ :bucket | bucket includes: anObject ]! !

!P4IdentitySet methodsFor: 'private' stamp: 'ToonVerwaest 7/18/2011 22:38'!
newBucket: sizeRequested
	<preventExport>
	self flag: 'ne'.
	^ P4IdentitySetBucket new: sizeRequested! !

!P4IdentitySet methodsFor: 'private' stamp: 'ToonVerwaest 8/5/2010 15:54'!
reAddBucket: bucket at: index
	| c item bucketIndex |
	buckets at: index put: bucket.
	c := 1.
	[ c <= bucket bucketSize ] whileTrue: [ 
		item := bucket at: c.
		bucketIndex := item identityHash \\ buckets size + 1.
		bucketIndex = index
			ifTrue: [ c := c + 1 ]
			ifFalse: [
				(self bucketWithRoomAt: bucketIndex) addNew: item.
				bucket removeAt: c ]]! !

!P4IdentitySet methodsFor: 'removing' stamp: 'ToonVerwaest 8/5/2010 15:55'!
remove: anObject ifAbsent: aBlock
	| bucket value |
	linear ifTrue: [ bucket := buckets at: 1 ]
		ifFalse: [
			bucket := buckets at: anObject identityHash \\ buckets size + 1.
			bucket ifNil: [ ^ aBlock value ]].
	value := bucket remove: anObject ifAbsent: [ ^ aBlock value ].
	self checkShrink.
	^ value! !

!P4IdentitySet class methodsFor: 'accessing' stamp: 'ToonVerwaest 5/20/2011 16:12'!
bucketClass
	^ P4IdentitySetBucket! !

!P4MemoryManager methodsFor: 'private' stamp: 'ToonVerwaest 5/24/2011 11:17'!
align: p
	" Align by 2 bytes to keep the last bit free "
	^ (p + 1) bitAnd: -2! !

!P4MemoryManager methodsFor: 'private' stamp: 'ToonVerwaest 5/21/2011 23:36'!
allocate: byteSize
	| result |
	limit - position < byteSize ifTrue: [
		self garbageCollect.
		limit - position < byteSize ifTrue: [
			self extendMemory.
			limit - position < byteSize ifTrue: [
				self outOfMemory ]]].
	result := position.
	position := self align: position + byteSize.
	^ result! !

!P4MemoryManager methodsFor: 'private' stamp: 'ToonVerwaest 5/21/2011 19:31'!
extendMemory
	<pNative>! !

!P4MemoryManager methodsFor: 'allocation' stamp: 'ToonVerwaest 5/21/2011 23:33'!
allocateBytes: size
	| result |
	result := self allocate: size + self headerSize.
	" no pointer, no mark "
	result write: (size << 2 + 2r00).
	^ result + self headerSize! !

!P4MemoryManager methodsFor: 'allocation' stamp: 'ToonVerwaest 5/21/2011 18:56'!
allocateClass: aClass
	^ aClass layout allocate: self! !

!P4MemoryManager methodsFor: 'allocation' stamp: 'ToonVerwaest 5/21/2011 23:35'!
allocatePointers: size
	| result |
	result := self allocate: size * self pointerSize + self headerSize.
	" pointer, no mark "
	result write: (size << 2 + 2r10).
	^ result + self headerSize! !

!P4MemoryManager methodsFor: 'garbage collection' stamp: 'ToonVerwaest 5/21/2011 22:54'!
garbageCollect
	self mark.
	self sweep.! !

!P4MemoryManager methodsFor: 'garbage collection' stamp: 'ToonVerwaest 5/21/2011 23:08'!
mark
	| current start |
	current := root.
	[ current == start ] whileFalse: [
		current := current markNext nextUnresolvedPointer ]! !

!P4MemoryManager methodsFor: 'garbage collection' stamp: 'ToonVerwaest 5/22/2011 00:07'!
sweep
	| current next |
	current := memory.
	position := memory.
	[ current == limit ] whileFalse: [
		current isMarked
			ifTrue: [
				current == position ifFalse: [ current move: position ].
				position restoreReferences.
				current := current + position size.
				position := position + position size ]
			ifFalse: [ current := current next ]]! !

!P4RawCell methodsFor: 'accessing' stamp: 'ToonVerwaest 5/21/2011 21:52'!
+ number
	<pNative: #plus module: #Memory>! !

!P4RawCell methodsFor: 'accessing' stamp: 'ToonVerwaest 5/21/2011 21:52'!
- number
	<pNative: #minus module: #Memory>! !

!P4RawCell methodsFor: 'accessing' stamp: 'ToonVerwaest 5/21/2011 21:53'!
>> number
	<pNative: #shiftRight module: #Memory>! !

!P4RawCell methodsFor: 'accessing' stamp: 'ToonVerwaest 5/21/2011 21:38'!
read
	<pNative: #read module: #Memory>! !

!P4RawCell methodsFor: 'accessing' stamp: 'ToonVerwaest 5/21/2011 21:38'!
write: aValue
	<pNative: #write module: #Memory>! !

!P4RawCell methodsFor: 'testing' stamp: 'ToonVerwaest 5/21/2011 21:51'!
isMarked
	^ (self read bitAnd: 1) = 1! !

!P4ObjectHeader methodsFor: 'testing' stamp: 'ToonVerwaest 5/21/2011 21:40'!
hasPointer
	^ (self read bitAnd: 2) = 2! !

!P4ObjectHeader methodsFor: 'testing' stamp: 'ToonVerwaest 5/21/2011 21:40'!
lastPointer
	^ self + self size! !

!P4ObjectHeader methodsFor: 'accessing' stamp: 'ToonVerwaest 5/21/2011 21:39'!
mark
	self write: (self read bitOr: 1)! !

!P4ObjectHeader methodsFor: 'accessing' stamp: 'ToonVerwaest 5/21/2011 21:40'!
size
	^ self read >> 2! !

!P4ObjectHeader methodsFor: 'accessing' stamp: 'ToonVerwaest 5/21/2011 21:40'!
unmark
	self write: (self read bitXor: 1)! !

!P4ObjectReference methodsFor: 'gc' stamp: 'ToonVerwaest 5/21/2011 23:19'!
markNext
	| header |
	header := self read.
	(header isMarked not and: [ header hasPointer ])
		ifTrue: [ ^ self swapAndDive ].
	^ self swapContinue! !

!P4ObjectReference methodsFor: 'gc' stamp: 'ToonVerwaest 5/21/2011 23:06'!
nextUnresolvedPointer
	| next |
	next := self.
	[ [ next notInSpace ] whileTrue: [ next := next - 1 ].
	next isMarked ] whileTrue: [ next := next read ].
	^ next! !

!P4ObjectReference methodsFor: 'gc' stamp: 'ToonVerwaest 5/21/2011 23:20'!
restoreReferences
	| current next |
	current := self read.
	[ current unmark.
	   next := current read.
	  current hasPointer ]
		whileFalse: [
			current write: self.
			current := next ].
	self write: next.
	current write: self.! !

!P4ObjectReference methodsFor: 'gc' stamp: 'ToonVerwaest 5/21/2011 23:21'!
swapAndDive
	| header next |
	header := self read.
	next := header next.
	next := next - next headerSize.
	self write: header.
	header write: self.
	^ next! !

!P4ObjectReference methodsFor: 'gc' stamp: 'ToonVerwaest 5/21/2011 23:07'!
swapContinue
	| header |
	header := self read.
	self write: header.
	header write: self.
	^ self - 1! !

!P4SmallInteger methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/28/2011 13:31'!
* anObject
	<pprimitive: #mult>
	self pHalt.! !

!P4SmallInteger methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/26/2011 16:46'!
+ anObject
	<pprimitive: #plus>
	self pHalt.! !

!P4SmallInteger methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/26/2011 16:47'!
- anObject
	<pprimitive: #minus>
	self pHalt.! !

!P4SmallInteger methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/6/2011 14:49'!
// anObject
	<pprimitive: #intDivide>
	self pHalt.! !

!P4SmallInteger methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/26/2011 16:46'!
< anObject
	<pprimitive: #smaller>
	self pHalt.! !

!P4SmallInteger methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/26/2011 16:46'!
<= anObject
	<pprimitive: #smallerEqual>
	self pHalt.! !

!P4SmallInteger methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/6/2011 14:50'!
> anObject
	<pprimitive: #bigger>
	self pHalt.! !

!P4SmallInteger methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/5/2011 18:59'!
\\ anObject
	<pprimitive: #modulo>
	self pHalt.! !

!P4SmallInteger methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/26/2011 16:46'!
bitShift: n
	<pprimitive: #bitShift>
	self pHalt.! !

!P4SmallInteger methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 10/4/2011 15:52'!
hash
	^ self ! !

!P4SmallInteger methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 9/8/2011 15:16'!
print
	self printObj ! !

!P4SmallInteger methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 8/29/2011 13:00'!
to: end by: step do: aBlock
	| nextValue |
	nextValue := self.
	[nextValue <= end]
		whileTrue: 
			[aBlock value: nextValue.
			nextValue := nextValue + step]! !

!P4SmallInteger methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 7/22/2011 18:01'!
to: end do: aBlock
	| nextValue |
	nextValue := self.
	[nextValue <= end]
		whileTrue: 
			[aBlock value: nextValue.
			nextValue := nextValue + 1]! !

!P4SmallInteger class methodsFor: 'exporting' stamp: 'ToonVerwaest 7/23/2011 19:12'!
pExportedName 
	^ self == P4SmallInteger
		ifTrue: [ #SmallInteger ]
		ifFalse: [ super pExportedName ]! !

!P4SmallInteger class methodsFor: 'exporting' stamp: 'OliFlueckiger 8/18/2011 13:10'!
typeCheckByteSize
	<preventExport>
	^ 10! !

!P4SmallInteger class methodsFor: 'exporting' stamp: 'OliFlueckiger 7/22/2011 17:54'!
typeHints 
	<preventExport>
	^ { #self -> #'Kernel.Number.SmallInteger' } asDictionary! !

!P4Linux methodsFor: 'elf' stamp: 'ToonVerwaest 5/9/2011 12:02'!
elfABI
	"
	ELFOSABI_NONE		0	No extensions or unspecified
	ELFOSABI_HPUX		1	Hewlett-Packard HP-UX
	ELFOSABI_NETBSD		2	NetBSD
	ELFOSABI_LINUX		3	Linux
	ELFOSABI_SOLARIS		6	Sun Solaris
	ELFOSABI_AIX			7	AIX
	ELFOSABI_IRIX			8	IRIX
	ELFOSABI_FREEBSD	9	FreeBSD
	ELFOSABI_TRU64		10	Compaq TRU64 UNIX
	ELFOSABI_MODESTO	11	Novell Modesto
	ELFOSABI_OPENBSD	12	Open BSD
	ELFOSABI_OPENVMS	13	Open VMS
	ELFOSABI_NSK			14	Hewlett-Packard Non-Stop Kernel
	ELFOSABI_AROS		15	Amiga Research OS
	ELFOSABI_FENIXOS	16	The FenixOS highly scalable multi-core OS
 	64-255					Architecture-specific value range
	"
	^ 16r00! !

!P4Linux methodsFor: 'elf' stamp: 'ToonVerwaest 5/9/2011 11:54'!
elfABIVersion
	^ 16r00! !

!P4Linux methodsFor: 'accessing' stamp: 'ToonVerwaest 5/10/2011 22:33'!
executableFormat
	^ P4ELF new
		os: self  ! !

!P4OSX methodsFor: 'as yet unclassified' stamp: 'CamilloBruni 7/26/2011 13:35'!
executableFormat
	^ P4MachO new ! !

!P4Assembler methodsFor: 'building' stamp: 'ToonVerwaest 5/13/2011 14:13'!
access: aRegister at: anOffset
	^ P4ASMRegisterAccess new
		register: aRegister;
		offset: anOffset * self pointerSize! !

!P4Assembler methodsFor: 'building' stamp: 'ToonVerwaest 5/5/2011 18:34'!
constant: aValue
	^ P4ASMConstant new
		constantValue: aValue! !

!P4Assembler methodsFor: 'accessing' stamp: 'ToonVerwaest 5/4/2011 19:53'!
basePointer
	self subclassResponsibility! !

!P4Assembler methodsFor: 'accessing' stamp: 'ToonVerwaest 5/13/2011 16:29'!
callRegister: num of: argSize
	num <= self callRegisterSize ifTrue: [ ^ self callRegisters at: num ].
	^ self stackPointer accessAt: (num - self callRegisterSize - 1) * self pointerSize! !

!P4Assembler methodsFor: 'accessing' stamp: 'ToonVerwaest 5/5/2011 13:57'!
callRegisterSize
	^ self callRegisters size! !

!P4Assembler methodsFor: 'accessing' stamp: 'ToonVerwaest 5/3/2011 21:58'!
callRegisters
	self subclassResponsibility! !

!P4Assembler methodsFor: 'accessing' stamp: 'ToonVerwaest 5/4/2011 19:53'!
extraRegisters
	self subclassResponsibility! !

!P4Assembler methodsFor: 'accessing' stamp: 'ToonVerwaest 5/9/2011 14:42'!
flags
	self subclassResponsibility! !

!P4Assembler methodsFor: 'accessing' stamp: 'OliFlueckiger 6/23/2011 15:36'!
installer: anInstaller
	installer := anInstaller ! !

!P4Assembler methodsFor: 'accessing' stamp: 'OliFlueckiger 6/10/2011 13:52'!
intermediateRegisters
	self subclassResponsibility! !

!P4Assembler methodsFor: 'accessing' stamp: 'OliFlueckiger 5/12/2011 19:41'!
pointerSize
	^ 4! !

!P4Assembler methodsFor: 'accessing' stamp: 'ToonVerwaest 5/4/2011 11:29'!
resultVariable
	self subclassResponsibility! !

!P4Assembler methodsFor: 'accessing' stamp: 'ToonVerwaest 5/4/2011 11:29'!
stackPointer
	self subclassResponsibility! !

!P4Assembler methodsFor: 'accessing' stamp: 'ToonVerwaest 7/26/2011 20:39'!
stream
	^ stream! !

!P4Assembler methodsFor: 'accessing' stamp: 'OliFlueckiger 6/10/2011 13:52'!
volatileRegisters
	self subclassResponsibility! !

!P4Assembler methodsFor: 'accessing' stamp: 'ToonVerwaest 5/10/2011 20:54'!
wordSize
	^ 4! !

!P4Assembler methodsFor: 'flushing' stamp: 'OliFlueckiger 6/22/2011 14:17'!
code
	^ stream! !

!P4Assembler methodsFor: 'flushing' stamp: 'ToonVerwaest 7/26/2011 21:06'!
finalize
	linker danglingReferences keysAndValuesDo: [ :function :positions |
		self haltIf: function isSymbol not.
		positions do: [ :position | installer installFunction: function at: position ]].
	linker danglingReferences removeAll.! !

!P4Assembler methodsFor: 'printing' stamp: 'OliFlueckiger 6/22/2011 18:18'!
createStream
	^ P4LittleEndianWriteStream new
		wordSize: self wordSize;
		pointerSize: self pointerSize! !

!P4Assembler methodsFor: 'elf' stamp: 'ToonVerwaest 5/8/2011 22:16'!
elfClass
	"
	0 None
	1 32 bit
	2 64 bit
	"
	^ 16r01! !

!P4Assembler methodsFor: 'elf' stamp: 'ToonVerwaest 5/8/2011 22:24'!
elfDataEncoding
	"
	0 NONE Invalid Data Encoding 
	1 DATA2LSB 2's complement Little Endian
	2 DATA2MSB 2's complement Big Endian
	"
	^ 16r01! !

!P4Assembler methodsFor: 'elf' stamp: 'ToonVerwaest 5/8/2011 22:04'!
elfHeaderSize
	self subclassResponsibility! !

!P4Assembler methodsFor: 'elf' stamp: 'ToonVerwaest 5/8/2011 21:41'!
elfMachine
	" A table can be found at: http://www.sco.com/developers/gabi/2003-12-17/ch4.eheader.html "
	self subclassResponsibility! !

!P4Assembler methodsFor: 'relocating' stamp: 'OliFlueckiger 6/22/2011 18:16'!
externalReference: label
	^ P4ASMExternalReference new label: label! !

!P4Assembler methodsFor: 'relocating' stamp: 'OliFlueckiger 7/14/2011 18:43'!
reference: label
	^ P4ASMReference new target: (linker addressForLabel: label ifAbsent: [ 0 ]); label: label! !

!P4Assembler methodsFor: 'initialize-release' stamp: 'OliFlueckiger 8/9/2011 12:51'!
forceShortJump
	forceShortJump := true.! !

!P4Assembler methodsFor: 'initialize-release' stamp: 'OliFlueckiger 7/5/2011 14:47'!
initialize
	linker := P4Linker new.
	stream := self createStream.! !

!P4Assembler methodsFor: 'initialize-release' stamp: 'OliFlueckiger 8/9/2011 12:47'!
isShortJump
	^ forceShortJump! !

!P4Assembler methodsFor: 'initialize-release' stamp: 'OliFlueckiger 8/9/2011 12:47'!
isShortJump: offset
	forceShortJump := false.
	^ (offset >= -128 and: [offset < 128]) 
! !

!P4Assembler methodsFor: 'initialize-release' stamp: 'OliFlueckiger 7/5/2011 14:58'!
reset
	stream reset! !

!P4Assembler methodsFor: 'initialize-release' stamp: 'OliFlueckiger 7/14/2011 19:15'!
tagMethod: aTacMethod
	linker putLabel: aTacMethod methodObject at: 0 - stream pointerSize * (aTacMethod literals size + 1)! !

!P4Assembler methodsFor: 'initialize-release' stamp: 'OliFlueckiger 6/22/2011 18:17'!
unforceShortJump
	forceShortJump := false.! !

!P4Assembler methodsFor: 'calling' stamp: 'OliFlueckiger 6/22/2011 18:03'!
label: aLabel
	linker label: aLabel at: stream! !

!P4Assembler methodsFor: 'installing' stamp: 'OliFlueckiger 6/23/2011 17:43'!
tagClosure: aClosure
	^  self label: aClosure! !

!P4X86_64 methodsFor: 'assembling' stamp: 'CamilloBruni 7/27/2011 13:03'!
accessMaskFor: accessReg

	" The instruction pointer can only be read as access 2r00 "
	accessReg asRegister == self instructionPointer ifTrue: [ ^ 2r00 ].
	accessReg isAccess ifFalse: [ ^ 2r11 ].
	
	" BasePointer (and R13) and InstructionPointer overlap, so 00 is an invalid access for the Base Pointer (and R13).
	  Otherwise it would look as if we were accessing the Instruction Pointer  "
	accessReg asRegister index == self basePointer index ifFalse: [
		accessReg offset = 0 ifTrue: [ ^ 2r00 ]].
	
	( -16r80 <= accessReg offset and: [ accessReg offset <= 16r7F ]) ifTrue: [ ^ 2r01 ].
	(-16r80000000 <= accessReg offset and: [ accessReg offset <= 16r7FFFFFFF ]) ifTrue: [ ^ 2r10 ].
	
	self error: 'outside range of signed 32bit displacement'! !

!P4X86_64 methodsFor: 'assembling' stamp: 'OliFlueckiger 6/23/2011 19:51'!
insertDanglingRelativeJump: label instructionIndex: anInstruction shortBase: shortBase longBase: longBase  longIsSecondOrder: longIsSecondOrder
	| short |
	short := self isShortJump.
	short 
		ifFalse: [ 
			longIsSecondOrder ifTrue: [self secondOrderCode]. 
			stream nextPut: anInstruction + longBase  ]
		ifTrue: [ stream nextPut: anInstruction + shortBase ].
		
	" Make the function dangling for filling when found or adding to globals for external linking "
	self link: label.

	short
		ifFalse: [ self prefillAddress ]
		ifTrue: [ self prefillShortAddress ].
	
	! !

!P4X86_64 methodsFor: 'assembling' stamp: 'OliFlueckiger 6/22/2011 14:17'!
insertRelativeJump: anAddress instructionIndex: anInstruction shortBase: shortBase longBase: longBase longIsSecondOrder: longIsSecondOrder
	| relative |
	relative := anAddress - stream position.
	( self isShortJump: relative )
		ifFalse: [ 
			longIsSecondOrder 
				ifTrue: [self secondOrderCode. relative := relative - 1].
			stream nextPut: anInstruction + longBase.
			stream wordPut: relative - 1 - stream wordSize ]
		ifTrue: [ 
			stream nextPut: anInstruction + shortBase.
			stream nextPut: relative - 2 ].! !

!P4X86_64 methodsFor: 'assembling' stamp: 'OliFlueckiger 8/6/2011 14:06'!
instructionIndex: anIndex constant: aConstant secondReg: secondReg
	| mark |
	secondReg isAccess
		ifTrue: [ secondReg combination = 1 ifTrue: [ stream nextPut: 16r41 ]]
		ifFalse: [ stream nextPut: 16r48 + secondReg combination ].
	
	anIndex < 8 ifTrue: [
		aConstant isExternal
			ifFalse: [
				( -16r80 <= aConstant constantValue and: [ aConstant constantValue <= 16r7F ]) ifTrue: [
					self writeInstruction: 16r83 mask: anIndex reg: secondReg.
					^ stream nextPut: aConstant constantValue ]].

		secondReg == rax ifTrue: [
			stream nextPut: (anIndex * 8) + 5.
			^ self putConstantWord: aConstant ].
		
		secondReg isAccess ifTrue: [ self error: 'Can''t combine 32bit constants with indirect registers!!' ].
		
		(-16r80000000 <= aConstant constantValue or: [ aConstant constantValue <= 16r7FFFFFFF ]) ifTrue: [
			self writeInstruction: 16r81 mask: anIndex reg: secondReg.
			^ self putConstantWord: aConstant ].
		
		self error: 'outside range of signed 32bit displacement' ].
	
	secondReg isAccess ifTrue: [ self error: 'Can''t combine 32bit constants with indirect registers!!' ].

	" At the moment this is just used for MOV. Not sure if it's used for something else ... "
	self writeInstruction: (anIndex * 8) + 16r3F mask: 2r000 reg: secondReg.
	self putConstantWord: aConstant.! !

!P4X86_64 methodsFor: 'assembling' stamp: 'OliFlueckiger 7/14/2011 19:17'!
instructionIndex: anIndex firstReg: firstReg secondReg: secondReg

	firstReg isRelative ifTrue: [
		secondReg isAccess
			ifTrue: [ self error: 'too many memory references' ].
		self
			writeInstruction: (anIndex * 8) + 3
			accessMask: 2r00
			firstReg: self instructionPointer
			secondReg: secondReg.

		self flag: 'Let the relocation add the offset rather than installing it here'.
		linker addressForLabel: firstReg target ifPresent: [ :address |
			^ stream wordPut: (address + firstReg offset - stream position - stream wordSize) ].
		self error: 'Should only happen for method objects... I suppose'. ].

	firstReg isConstant ifTrue: [
		^ self
			instructionIndex: anIndex
			constant: firstReg
			secondReg: secondReg ].
		
	firstReg isAccess ifTrue: [
		secondReg isAccess
			ifTrue: [ self error: 'too many memory references' ].
		^ self
			writeInstructionAccess: (anIndex * 8) + 3
			accessMask: (self accessMaskFor: firstReg)
			firstReg: firstReg
			secondReg: secondReg ].
	
	secondReg isAccess ifTrue: [
		^ self
			writeInstructionAccess: (anIndex * 8) + 1
			accessMask: (self accessMaskFor: secondReg)
			firstReg: secondReg
			secondReg: firstReg ].

	^ self
		writeInstruction: (anIndex * 8) + 1
		accessMask: (self accessMaskFor: secondReg)
		firstReg: secondReg
		secondReg: firstReg! !

!P4X86_64 methodsFor: 'assembling' stamp: 'ToonVerwaest 7/26/2011 20:34'!
jumpIndex: anIndex to: aLabel
	linker addressForLabel: aLabel ifPresent: [ :address |
		^ self insertRelativeJump: address instructionIndex: anIndex shortBase: 16r70 longBase: 16r80 longIsSecondOrder: true ].
	self insertDanglingRelativeJump: aLabel instructionIndex: anIndex  shortBase: 16r70 longBase: 16r80 longIsSecondOrder: true.
	! !

!P4X86_64 methodsFor: 'assembling' stamp: 'OliFlueckiger 6/23/2011 19:55'!
link: aLabel
	linker dangling: aLabel at: stream position! !

!P4X86_64 methodsFor: 'assembling' stamp: 'OliFlueckiger 6/22/2011 14:17'!
prefillAddress
	" Prefil space with 0 for linking (static or dynamic) "
	stream wordPut: 0.! !

!P4X86_64 methodsFor: 'assembling' stamp: 'OliFlueckiger 6/22/2011 14:17'!
prefillShortAddress
	" Prefil short address with 1, we have to fill this before linking with a short jump address"
	stream nextPut: 1.! !

!P4X86_64 methodsFor: 'assembling' stamp: 'OliFlueckiger 9/6/2011 17:04'!
prefixFor: aValue
	| prefix |
	" Assume 64 Bit Operand Size "
	prefix := 16r48 + aValue combination.
	stream nextPut: prefix! !

!P4X86_64 methodsFor: 'assembling' stamp: 'OliFlueckiger 6/22/2011 14:17'!
prefixFor: aValue and: secondValue
	| prefix |
	" Assume 64 Bit Operand Size "
	prefix := 16r48 + (secondValue combination << 2) + aValue combination.
	stream nextPut: prefix! !

!P4X86_64 methodsFor: 'assembling' stamp: 'OliFlueckiger 7/7/2011 18:23'!
putConstantWord: aConstant
	aConstant isExternal ifTrue: [ 
		installer global: aConstant label at: stream position.
		^ stream wordPut: 0 ].
	stream wordPut: aConstant constantValue.! !

!P4X86_64 methodsFor: 'assembling' stamp: 'OliFlueckiger 6/22/2011 14:17'!
secondOrderCode
	stream nextPut: 16r0F.! !

!P4X86_64 methodsFor: 'assembling' stamp: 'OliFlueckiger 7/22/2011 17:11'!
writeAccess: aReg mask: accessMask
	accessMask = 2r11 ifFalse: [
		aReg asRegister index == self stackPointer index ifTrue: [ stream nextPut: 16r24 ]].
	(accessMask = 2r10 or: [ aReg asRegister == self instructionPointer ])
		ifTrue: [ stream wordPut: aReg offset ].

	accessMask = 2r01 ifTrue: [ stream nextPut: aReg offset ].! !

!P4X86_64 methodsFor: 'assembling' stamp: 'OliFlueckiger 6/23/2011 19:46'!
writeInstruction: anInstruction accessMask: accessMask firstReg: firstReg secondReg: secondReg
	self prefixFor: firstReg and: secondReg.
	stream nextPut: anInstruction.
	stream nextPut: ((accessMask << 6) + (secondReg index << 3) + firstReg index).! !

!P4X86_64 methodsFor: 'assembling' stamp: 'OliFlueckiger 6/22/2011 14:17'!
writeInstruction: anInstruction mask: aMask reg: aReg
	| accessMask |
	stream nextPut: anInstruction.
	accessMask := self accessMaskFor: aReg.
	stream nextPut: ((accessMask << 6) + (aMask << 3) + aReg index).
	
	self writeAccess: aReg mask: accessMask! !

!P4X86_64 methodsFor: 'assembling' stamp: 'OliFlueckiger 6/23/2011 19:46'!
writeInstructionAccess: anInstruction accessMask: accessMask firstReg: firstReg secondReg: secondReg
	self writeInstruction: anInstruction accessMask: accessMask firstReg: firstReg secondReg: secondReg.
	self writeAccess: firstReg mask: accessMask! !

!P4X86_64 methodsFor: 'instructions' stamp: 'ToonVerwaest 5/8/2011 13:14'!
adc: firstReg with: secondReg
	self instructionIndex: 16r2 firstReg: firstReg secondReg: secondReg.! !

!P4X86_64 methodsFor: 'instructions' stamp: 'ToonVerwaest 5/8/2011 13:14'!
add: firstReg to: secondReg
	self instructionIndex: 16r0 firstReg: firstReg secondReg: secondReg.! !

!P4X86_64 methodsFor: 'instructions' stamp: 'ToonVerwaest 5/8/2011 13:15'!
and: firstReg with: secondReg
	self instructionIndex: 16r4 firstReg: firstReg secondReg: secondReg.! !

!P4X86_64 methodsFor: 'instructions' stamp: 'ToonVerwaest 6/10/2011 17:24'!
cmp: firstReg with: secondReg
	self instructionIndex: 16r7 firstReg: firstReg secondReg: secondReg.! !

!P4X86_64 methodsFor: 'instructions' stamp: 'OliFlueckiger 6/23/2011 19:53'!
lea: firstReg to: secondReg
	
	| accessMask |
	firstReg isAccess ifFalse: [ self error: 'LEA expects register access as first argument' ].
	secondReg isAccess ifTrue: [ self error: 'LEA expects normal register as second argument' ].
	accessMask := self accessMaskFor: rip.
	self
		writeInstruction: 16r8D
		accessMask: accessMask
		firstReg: rip
		secondReg: secondReg.

	self link: firstReg label.
	stream wordPut: 16r0.! !

!P4X86_64 methodsFor: 'instructions' stamp: 'ToonVerwaest 5/8/2011 00:18'!
mov: firstReg to: secondReg
	self instructionIndex: 16r11 firstReg: firstReg secondReg: secondReg.! !

!P4X86_64 methodsFor: 'instructions' stamp: 'ToonVerwaest 5/8/2011 13:15'!
or: firstReg with: secondReg
	self instructionIndex: 16r1 firstReg: firstReg secondReg: secondReg.! !

!P4X86_64 methodsFor: 'instructions' stamp: 'ToonVerwaest 5/8/2011 13:15'!
sbb: firstReg with: secondReg
	self instructionIndex: 16r3 firstReg: firstReg secondReg: secondReg.! !

!P4X86_64 methodsFor: 'instructions' stamp: 'OliFlueckiger 9/6/2011 17:08'!
shl: reg by: num
	reg isAccess ifTrue: [ self error: 'cannot be an access' ].
	self prefixFor: reg. 
	self writeInstruction: 16rC1 mask: 2r100 reg: reg.
	stream nextPut: num! !

!P4X86_64 methodsFor: 'instructions' stamp: 'OliFlueckiger 9/6/2011 17:08'!
shr: reg by: num
	reg isAccess ifTrue: [ self error: 'cannot be an access' ].
	self prefixFor: reg.  
	self writeInstruction: 16rC1 mask: 2r101 reg: reg.
	stream nextPut: num! !

!P4X86_64 methodsFor: 'instructions' stamp: 'ToonVerwaest 5/8/2011 13:15'!
sub: firstReg from: secondReg
	self instructionIndex: 16r5 firstReg: firstReg secondReg: secondReg.! !

!P4X86_64 methodsFor: 'instructions' stamp: 'OliFlueckiger 6/22/2011 14:17'!
test: firstReg with: secondReg
	firstReg isConstant ifTrue: [
		secondReg isAccess ifTrue: [ self error: 'Cannot test constant with register access' ].
		secondReg combination = 1 ifTrue: [ self error: 'Second combination registers not (yet) supported for "test"'].
		" We don't need a 64bit prefix if the value is within 32bit range "
		(-16r80000000 <= firstReg constantValue or: [ firstReg constantValue <= 16r7FFFFFFF ])
			ifFalse: [ self error: 'Can only test with constants of max 32bit' ].
		stream nextPut: 16rF7.
		stream nextPut: ((2r11 << 6) + (2r000 << 3) + secondReg index).
		^ stream wordPut: firstReg constantValue ].
	
	self error: 'NYI'! !

!P4X86_64 methodsFor: 'instructions' stamp: 'OliFlueckiger 1/6/2012 15:11'!
testBit: bit on: reg
	(reg combination = 1) ifTrue: [ self prefixFor: reg ].
	self secondOrderCode.
	self writeInstruction: 16rBA mask: 2r100 reg: reg.
	stream nextPut: bit! !

!P4X86_64 methodsFor: 'instructions' stamp: 'ToonVerwaest 5/8/2011 13:15'!
xor: firstReg with: secondReg
	self instructionIndex: 16r6 firstReg: firstReg secondReg: secondReg.! !

!P4X86_64 methodsFor: 'accessing' stamp: 'ToonVerwaest 5/4/2011 19:53'!
basePointer 
	^ rbp! !

!P4X86_64 methodsFor: 'accessing' stamp: 'ToonVerwaest 5/4/2011 19:46'!
callRegisters
	^ {rdi. rsi. rdx. rcx. r8. r9}! !

!P4X86_64 methodsFor: 'accessing' stamp: 'ToonVerwaest 5/19/2011 16:54'!
extraRegisters
	^ {rbx. rbp. r12. r13. r14. r15}! !

!P4X86_64 methodsFor: 'accessing' stamp: 'ToonVerwaest 5/9/2011 14:42'!
flags
	" Processor specific flag (used in BinPack) "
	^ 0! !

!P4X86_64 methodsFor: 'accessing' stamp: 'ToonVerwaest 5/6/2011 00:16'!
instructionPointer 
	^ rip! !

!P4X86_64 methodsFor: 'accessing' stamp: 'OliFlueckiger 8/29/2011 16:41'!
intermediateRegisters 
	^ {r10.r11.}! !

!P4X86_64 methodsFor: 'accessing' stamp: 'OliFlueckiger 5/12/2011 19:42'!
pointerSize
	^ 8! !

!P4X86_64 methodsFor: 'accessing' stamp: 'ToonVerwaest 5/7/2011 14:41'!
r10
	^ r10! !

!P4X86_64 methodsFor: 'accessing' stamp: 'ToonVerwaest 5/7/2011 14:41'!
r11
	^ r11! !

!P4X86_64 methodsFor: 'accessing' stamp: 'ToonVerwaest 5/7/2011 14:41'!
r12
	^ r12! !

!P4X86_64 methodsFor: 'accessing' stamp: 'ToonVerwaest 5/7/2011 14:41'!
r13
	^ r13! !

!P4X86_64 methodsFor: 'accessing' stamp: 'ToonVerwaest 5/7/2011 14:41'!
r14
	^ r14! !

!P4X86_64 methodsFor: 'accessing' stamp: 'ToonVerwaest 5/7/2011 14:41'!
r15
	^ r15! !

!P4X86_64 methodsFor: 'accessing' stamp: 'ToonVerwaest 5/7/2011 14:41'!
r8
	^ r8! !

!P4X86_64 methodsFor: 'accessing' stamp: 'ToonVerwaest 5/7/2011 14:41'!
r9
	^ r9! !

!P4X86_64 methodsFor: 'accessing' stamp: 'ToonVerwaest 5/7/2011 14:41'!
rax
	^ rax! !

!P4X86_64 methodsFor: 'accessing' stamp: 'ToonVerwaest 5/7/2011 14:41'!
rbp
	^ rbp! !

!P4X86_64 methodsFor: 'accessing' stamp: 'ToonVerwaest 5/7/2011 14:41'!
rbx
	^ rbx! !

!P4X86_64 methodsFor: 'accessing' stamp: 'ToonVerwaest 5/7/2011 14:41'!
rcx
	^ rcx! !

!P4X86_64 methodsFor: 'accessing' stamp: 'ToonVerwaest 5/7/2011 14:41'!
rdi
	^ rdi! !

!P4X86_64 methodsFor: 'accessing' stamp: 'ToonVerwaest 5/7/2011 14:41'!
rdx
	^ rdx! !

!P4X86_64 methodsFor: 'accessing' stamp: 'ToonVerwaest 5/4/2011 11:30'!
resultVariable 
	^ rax! !

!P4X86_64 methodsFor: 'accessing' stamp: 'ToonVerwaest 5/7/2011 14:41'!
rip
	^ rip! !

!P4X86_64 methodsFor: 'accessing' stamp: 'ToonVerwaest 5/7/2011 14:41'!
rsi
	^ rsi! !

!P4X86_64 methodsFor: 'accessing' stamp: 'ToonVerwaest 5/4/2011 11:30'!
stackPointer 
	^ rsp! !

!P4X86_64 methodsFor: 'accessing' stamp: 'OliFlueckiger 8/12/2011 17:49'!
volatileRegisters
	^ {rdx. rcx. rsi. rdi. r8. r9. }! !

!P4X86_64 methodsFor: 'accessing' stamp: 'ToonVerwaest 5/11/2011 17:06'!
wordSize
	^ 4! !

!P4X86_64 methodsFor: 'calling' stamp: 'OliFlueckiger 7/14/2011 19:02'!
directRelativeCall: functionName
	stream nextPut: 16rE8.
	self installFunctionReference: functionName.
	self prefillAddress.! !

!P4X86_64 methodsFor: 'calling' stamp: 'OliFlueckiger 8/9/2011 18:33'!
directRelativeCall: functionName offset: offset
	stream nextPut: 16rE8.
	self installFunctionReference: functionName.
	stream wordPut: offset.! !

!P4X86_64 methodsFor: 'calling' stamp: 'OliFlueckiger 6/22/2011 14:17'!
indirectCall: aRegister
	aRegister combination = 1 ifTrue: [ stream nextPut: 16r41 ].
	self writeInstruction: 16rFF mask: 2r010 reg: aRegister! !

!P4X86_64 methodsFor: 'calling' stamp: 'OliFlueckiger 6/22/2011 14:17'!
indirectJmp: aRegister
	aRegister combination = 1 ifTrue: [ stream nextPut: 16r41 ].
	self writeInstruction: 16rFF mask: 2r100 reg: aRegister! !

!P4X86_64 methodsFor: 'calling' stamp: 'OliFlueckiger 7/14/2011 19:02'!
installFunctionReference: functionName
	installer installFunction: functionName at: stream position! !

!P4X86_64 methodsFor: 'calling' stamp: 'OliFlueckiger 7/7/2011 18:24'!
installReference: functionName
	installer installReference: functionName at: stream position! !

!P4X86_64 methodsFor: 'calling' stamp: 'OliFlueckiger 6/22/2011 18:04'!
jmp: label
	| jumpInstruction |
	" TODO allow jumping to a register-stored address. "
	jumpInstruction := 16rE9.
	linker addressForLabel: label ifPresent: [ :address |
		^ self insertRelativeJump: address instructionIndex: jumpInstruction shortBase: 2 longBase: 0 longIsSecondOrder: false ].
	self insertDanglingRelativeJump: label instructionIndex: jumpInstruction shortBase: 2 longBase: 0 longIsSecondOrder: false.! !

!P4X86_64 methodsFor: 'elf' stamp: 'ToonVerwaest 5/8/2011 22:16'!
elfClass
	"
	0 None
	1 32 bit
	2 64 bit
	"
	^ 16r02! !

!P4X86_64 methodsFor: 'elf' stamp: 'ToonVerwaest 5/8/2011 22:04'!
elfHeaderSize
	^ 64! !

!P4X86_64 methodsFor: 'elf' stamp: 'KenD 8/24/2022 15:30:09'!
elfMachine
	^ 16r003E! !

!P4X86_64 methodsFor: 'initialize-release' stamp: 'OliFlueckiger 6/17/2011 17:27'!
initialize
	super initialize.
	
	rax := P4ASMRegister named: #rax.
	rcx := P4ASMRegister named: #rcx.
	rdx := P4ASMRegister named: #rdx.
	rbx := P4ASMRegister named: #rbx.
	rsp := P4ASMRegister named: #rsp.
	rbp := P4ASMRegister named: #rbp.
	rsi := P4ASMRegister named: #rsi.
	rdi := P4ASMRegister named: #rdi.
	
	self tagRegisters: {rax. rcx. rdx. rbx. rsp. rbp. rsi. rdi} combination: 0.
	
	r8 := P4ASMRegister named: #r8.
	r9 := P4ASMRegister named: #r9.
	r10 := P4ASMRegister named: #r10.
	r11 := P4ASMRegister named: #r11.
	r12 := P4ASMRegister named: #r12.
	r13 := P4ASMRegister named: #r13.
	r14 := P4ASMRegister named: #r14.
	r15 := P4ASMRegister named: #r15.
	
	self tagRegisters: {r8. r9. r10. r11. r12. r13. r14. r15} combination: 1.
	
	rip := P4ASMRegister named: #rip.
	rip index: rbp index.
	rip combination: rbp combination.
	
	forceShortJump := false.! !

!P4X86_64 methodsFor: 'initialize-release' stamp: 'ToonVerwaest 5/5/2011 18:46'!
tagRegisters: registers combination: aCombination
	registers withIndexDo: [ :reg :index |
		reg combination: aCombination.
		reg index: index - 1 ]! !

!P4X86_64 methodsFor: 'stack operations' stamp: 'OliFlueckiger 6/22/2011 14:17'!
int3
	stream nextPut: 16rCC! !

!P4X86_64 methodsFor: 'stack operations' stamp: 'OliFlueckiger 6/22/2011 14:17'!
pop: aRegister
	aRegister isAccess ifTrue: [ self error: 'Not yet supported '].
	aRegister combination = 1 ifTrue: [ stream nextPut: 16r41 ].
	stream nextPut: 16r58 + aRegister index! !

!P4X86_64 methodsFor: 'stack operations' stamp: 'OliFlueckiger 6/22/2011 14:17'!
push: aRegister
	aRegister isAccess ifTrue: [ self error: 'Not yet supported '].
	aRegister combination = 1 ifTrue: [ stream nextPut: 16r41 ].
	stream nextPut: 16r50 + aRegister index! !

!P4X86_64 methodsFor: 'conditional branching' stamp: 'ToonVerwaest 5/8/2011 12:32'!
ja: aLabel
	" Jump short if not below or equal/not above (CF=1 AND ZF=1) "
	self jumpIndex: 16r7 to: aLabel.! !

!P4X86_64 methodsFor: 'conditional branching' stamp: 'ToonVerwaest 5/8/2011 12:32'!
jc: aLabel
	" Jump short if below/not above or equal/carry (CF=1) "
	self jumpIndex: 16r2 to: aLabel.! !

!P4X86_64 methodsFor: 'conditional branching' stamp: 'ToonVerwaest 5/8/2011 12:32'!
je: aLabel
	" Jump short if zero/equal (ZF=0) "
	self jumpIndex: 16r4 to: aLabel.! !

!P4X86_64 methodsFor: 'conditional branching' stamp: 'ToonVerwaest 5/8/2011 12:32'!
jg: aLabel
	" Jump short if not less nor equal/greater ((ZF=0) AND (SF=OF)) "
	self jumpIndex: 16rF to: aLabel.! !

!P4X86_64 methodsFor: 'conditional branching' stamp: 'ToonVerwaest 5/8/2011 12:32'!
jge: aLabel
	" Jump short if not less/greater or equal (SF=OF) "
	self jumpIndex: 16rD to: aLabel.! !

!P4X86_64 methodsFor: 'conditional branching' stamp: 'ToonVerwaest 5/8/2011 12:32'!
jna: aLabel
	" Jump short if below or equal/not above (CF=1 AND ZF=1) "
	self jumpIndex: 16r6 to: aLabel.! !

!P4X86_64 methodsFor: 'conditional branching' stamp: 'ToonVerwaest 5/8/2011 12:32'!
jnc: aLabel
	" Jump short if not below/above or equal/not carry (CF=0) "
	self jumpIndex: 16r3 to: aLabel.! !

!P4X86_64 methodsFor: 'conditional branching' stamp: 'ToonVerwaest 5/8/2011 12:32'!
jne: aLabel
	" Jump short if not zero/not equal (ZF=1) "
	self jumpIndex: 16r5 to: aLabel.! !

!P4X86_64 methodsFor: 'conditional branching' stamp: 'ToonVerwaest 5/8/2011 12:32'!
jng: aLabel
	" Jump short if less or equal/not greater ((ZF=1) OR (SF!!=OF)) "
	self jumpIndex: 16rE to: aLabel.! !

!P4X86_64 methodsFor: 'conditional branching' stamp: 'ToonVerwaest 5/8/2011 12:32'!
jnge: aLabel
	" Jump short if less/not greater (SF!!=OF) "
	self jumpIndex: 16rC to: aLabel.! !

!P4X86_64 methodsFor: 'conditional branching' stamp: 'ToonVerwaest 5/8/2011 12:32'!
jno: aLabel
	" Jump if not overflow "
	self jumpIndex: 16r1 to: aLabel.! !

!P4X86_64 methodsFor: 'conditional branching' stamp: 'ToonVerwaest 5/8/2011 12:32'!
jns: aLabel
	" Jump short if not sign (SF=1) "
	self jumpIndex: 16r9 to: aLabel.! !

!P4X86_64 methodsFor: 'conditional branching' stamp: 'ToonVerwaest 5/8/2011 12:32'!
jo: aLabel
	" Jump if overflow "
	self jumpIndex: 16r0 to: aLabel.! !

!P4X86_64 methodsFor: 'conditional branching' stamp: 'ToonVerwaest 5/8/2011 12:32'!
jpe: aLabel
	" Jump short if parity/parity even (PF=1) "
	self jumpIndex: 16rA to: aLabel.! !

!P4X86_64 methodsFor: 'conditional branching' stamp: 'ToonVerwaest 5/8/2011 12:32'!
jpo: aLabel
	" Jump short if not parity/parity odd "
	self jumpIndex: 16rB to: aLabel.! !

!P4X86_64 methodsFor: 'conditional branching' stamp: 'ToonVerwaest 5/8/2011 12:32'!
js: aLabel
	" Jump short if sign (SF=1) "
	self jumpIndex: 16r8 to: aLabel.! !

!P4X86_64 methodsFor: 'returning' stamp: 'OliFlueckiger 6/22/2011 14:17'!
leave
	stream nextPut: 16rC9! !

!P4X86_64 methodsFor: 'returning' stamp: 'OliFlueckiger 6/22/2011 14:17'!
ret
	stream nextPut: 16rC3.! !

!P4X86_64 methodsFor: 'macho' stamp: 'CamilloBruni 7/25/2011 16:40'!
machOCPUSubType
	"
	CPU_SUBTYPE_X86_ALL     ((cpu_subtype_t)3)
	CPU_SUBTYPE_X86_64_ALL      ((cpu_subtype_t)3)
	"
	^ 16r3! !

!P4X86_64 methodsFor: 'macho' stamp: 'CamilloBruni 7/25/2011 16:41'!
machOCPUType
	"
	X86 -> 07
	64bit -> type | 01000000
	"
	^ 16r01000007! !

!P4X86_64 methodsFor: 'macho' stamp: 'CamilloBruni 7/25/2011 16:25'!
machOMagic
	"
	32bit -> FEEDFACE
	64bit -> FEEDFACF
	"
	^ 16rFEEDFACF! !

!P4Linker methodsFor: 'private' stamp: 'OliFlueckiger 6/23/2011 19:04'!
add: value to: dict at: index
	(dict
		at: index
		ifAbsentPut: [ OrderedCollection new ])
			add: value
	! !

!P4Linker methodsFor: 'constant pool' stamp: 'OliFlueckiger 6/22/2011 18:06'!
addressForLabel: label ifAbsent: aBlock
	^ labels at: label ifAbsent: aBlock! !

!P4Linker methodsFor: 'constant pool' stamp: 'OliFlueckiger 6/22/2011 18:06'!
addressForLabel: label ifPresent: aBlock
	^ labels at: label ifPresent: aBlock! !

!P4Linker methodsFor: 'constant pool' stamp: 'OliFlueckiger 6/23/2011 15:29'!
label: aLabel at: aStream
	| address |
	address := aStream position.
	labels at: aLabel put: address.
	(danglingReferences removeKey: aLabel ifAbsent: [ {} ])
		do: [ :aReference | 
			aStream position: aReference.
			self referTo: address at: aStream addend: 0-aStream wordSize ].
	aStream position: address! !

!P4Linker methodsFor: 'constant pool' stamp: 'OliFlueckiger 7/14/2011 18:39'!
putLabel: aLabel at: position
	labels at: aLabel put: position.
! !

!P4Linker methodsFor: 'constant pool' stamp: 'OliFlueckiger 6/23/2011 18:27'!
referTo: anAddress at: aStream addend: anAddend
	| relative |
	relative := anAddress - aStream position.
	(aStream next asInteger == 1) 
		ifTrue: [ aStream back; nextPut: relative - 1 ] 
		ifFalse: [ aStream back; wordPut: relative + anAddend ]
! !

!P4Linker methodsFor: 'relocating' stamp: 'OliFlueckiger 6/22/2011 16:48'!
dangling: function at: address
	function ifNil: [ self error: 'nil is not a valid target' ].
	self add: address to: danglingReferences at: function! !

!P4Linker methodsFor: 'accessing' stamp: 'ToonVerwaest 5/13/2011 14:03'!
danglingReferences
	^ danglingReferences! !

!P4Linker methodsFor: 'initialize-release' stamp: 'OliFlueckiger 6/23/2011 15:19'!
initialize
	danglingReferences := IdentityDictionary new.
	labels := IdentityDictionary new.! !

!P4SmalltalkConfiguration methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/21/2011 13:57'!
classIndex
	^ 0- self objectHeaderSize! !

!P4SmalltalkConfiguration methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/16/2011 16:49'!
objectHeaderSize
	^2! !

!P4SmalltalkConfiguration class methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/16/2011 16:56'!
doesNotUnderstand: aName  
	^ self instance perform: aName selector! !

!P4SmalltalkConfiguration class methodsFor: 'as yet unclassified' stamp: 'OliFlueckiger 6/16/2011 16:59'!
instance
	^ instance ifNil: [ instance := self new ]! !

!P4PharoBehavior methodsFor: 'accessing' stamp: 'OliFlueckiger 7/20/2011 17:32'!
asPClass
	^ self! !

!P4PharoBehavior methodsFor: 'accessing' stamp: 'ToonVerwaest 7/21/2011 17:56'!
dumpGlobalOn: bo
	^ self dumpOn: bo! !

!P4PharoBehavior methodsFor: 'accessing' stamp: 'OliFlueckiger 7/20/2011 18:13'!
dumpLocalOn: bo
	^ bo postpone: self! !

!P4PharoBehavior methodsFor: 'accessing' stamp: 'OliFlueckiger 7/28/2011 16:37'!
earlySelectorAddress: addr
	^ pharoInstance earlySelectorAddress: addr  ! !

!P4PharoBehavior methodsFor: 'accessing' stamp: 'ToonVerwaest 7/21/2011 17:19'!
inPharo
	<preventExport>
	^ pharoInstance ! !

!P4PharoBehavior methodsFor: 'accessing' stamp: 'ToonVerwaest 7/21/2011 17:19'!
inPharo: anObject
	<preventExport>
	pharoInstance := anObject.
	p4instance instanceHeader: anObject pInstanceHeader! !

!P4PharoBehavior methodsFor: 'accessing' stamp: 'OliFlueckiger 12/7/2011 16:55'!
inPinocchio
	<preventExport>
	^ p4instance ! !

!P4PharoBehavior methodsFor: 'accessing' stamp: 'ToonVerwaest 7/21/2011 17:17'!
installMethod: method
	<preventExport>
	p4instance installMethod: method! !

!P4PharoBehavior methodsFor: 'accessing' stamp: 'ToonVerwaest 7/21/2011 17:41'!
lookupSelector: selector
	<preventExport>
	^ pharoInstance lookupSelector: selector! !

!P4PharoBehavior methodsFor: 'accessing' stamp: 'ToonVerwaest 7/21/2011 17:17'!
pExportedName
	^ pharoInstance pExportedName ifNil: [ p4instance pExportedName ]
	! !

!P4PharoBehavior methodsFor: 'accessing' stamp: 'ToonVerwaest 7/21/2011 18:24'!
pHeader
	^ pharoInstance pHeader! !

!P4PharoBehavior methodsFor: 'accessing' stamp: 'ToonVerwaest 7/21/2011 18:19'!
pInstVarAt: i
	^ i <= P4Object class pInstSize
		ifTrue: [ p4instance pInstVarAt: i ]
		ifFalse: [ pharoInstance instVarAt: i - P4Object class pInstSize + Class instSize ]! !

!P4PharoBehavior methodsFor: 'accessing' stamp: 'OliFlueckiger 8/18/2011 13:47'!
pLookupSelector: addr
	^ pharoInstance pLookupSelector: addr  ! !

!P4PharoBehavior methodsFor: 'accessing' stamp: 'ToonVerwaest 7/21/2011 17:17'!
pVariableAt: i
	^ p4instance pVariableAt: i! !

!P4PharoBehavior methodsFor: 'accessing' stamp: 'ToonVerwaest 7/21/2011 17:17'!
pVariableSize
	^ p4instance pVariableSize! !

!P4PharoBehavior methodsFor: 'accessing' stamp: 'OliFlueckiger 7/22/2011 16:47'!
printOn: stream
	stream << p4instance name << ' (' << pharoInstance name << ')'! !

!P4PharoBehavior methodsFor: 'accessing' stamp: 'OliFlueckiger 7/26/2011 17:47'!
superclass
	^ p4instance superclass! !

!P4PharoBehavior methodsFor: 'accessing' stamp: 'OliFlueckiger 7/26/2011 17:47'!
superclass: anObject
	p4instance superclass: anObject! !

!P4PharoBehavior methodsFor: 'accessing' stamp: 'OliFlueckiger 12/7/2011 16:39'!
theBehavior
	^ p4instance theBehavior! !

!P4PharoClass methodsFor: 'accessing' stamp: 'ToonVerwaest 7/21/2011 17:20'!
inP4: aClass
	p4instance := aClass! !

!P4PharoClass methodsFor: 'accessing' stamp: 'OliFlueckiger 12/7/2011 22:53'!
initialize
	super initialize.
	p4instance := P4Class new.
	p4instance setBehavior: (P4SmalltalkBehavior for: self).  ! !

!P4PharoClass methodsFor: 'accessing' stamp: 'ToonVerwaest 7/21/2011 17:18'!
metaclass: anObject
	p4class := P4PharoMetaclass new instance: self		! !

!P4PharoClass methodsFor: 'accessing' stamp: 'ToonVerwaest 7/21/2011 17:17'!
name: aName
	<preventExport>
	p4instance name: aName! !

!P4PharoClass methodsFor: 'accessing' stamp: 'ToonVerwaest 7/19/2011 13:08'!
pByteAt: i 
	self error: 'Should not happen'! !

!P4PharoClass methodsFor: 'accessing' stamp: 'ToonVerwaest 7/19/2011 13:08'!
pByteName
	^ nil! !

!P4PharoClass methodsFor: 'accessing' stamp: 'ToonVerwaest 7/19/2011 13:08'!
pByteSize
	^ 0! !

!P4PharoClass methodsFor: 'accessing' stamp: 'ToonVerwaest 7/21/2011 17:17'!
pInstSize
	^ pharoInstance pInstSize! !

!P4PharoClass methodsFor: 'accessing' stamp: 'ToonVerwaest 7/21/2011 18:22'!
pIsBytes
	^ pharoInstance pIsBytes! !

!P4PharoClass methodsFor: 'accessing' stamp: 'ToonVerwaest 7/21/2011 17:17'!
pIsVariable 
	^ pharoInstance pIsVariable! !

!P4PharoClass methodsFor: 'accessing' stamp: 'ToonVerwaest 7/21/2011 17:17'!
pIsVariableOrBytes 
	^ pharoInstance pIsVariableOrBytes ! !

!P4PharoClass methodsFor: 'accessing' stamp: 'ToonVerwaest 7/21/2011 17:17'!
pVariableSizeHeader
	^ p4instance pVariableSizeHeader! !

!P4PharoClass methodsFor: 'accessing' stamp: 'ToonVerwaest 7/21/2011 17:17'!
package: package
	<preventExport>
	p4instance package: package! !

!P4PharoClass methodsFor: 'accessing' stamp: 'ToonVerwaest 7/21/2011 17:20'!
pclass
	^ p4class! !

!P4PharoClass methodsFor: 'accessing' stamp: 'OliFlueckiger 8/9/2011 18:39'!
typeCheckByteSize 
	^pharoInstance typeCheckByteSize! !

!P4PharoMetaclass methodsFor: 'accessing' stamp: 'OliFlueckiger 12/7/2011 22:54'!
instance: anObject
	p4instance := P4Metaclass new
					instance: anObject;
					setBehavior: (P4SmalltalkBehavior for: self);  
					superclass: (anObject superclass
									ifNil: [ P4Class asPClass ]
									ifNotNil: [ :s | s pclass ]).
	pharoInstance := anObject inPharo class.! !

!P4PharoMetaclass methodsFor: 'accessing' stamp: 'ToonVerwaest 7/21/2011 17:17'!
pInstSize
	^ pharoInstance pInstSize ! !

!P4PharoMetaclass methodsFor: 'accessing' stamp: 'OliFlueckiger 7/20/2011 17:31'!
pIsBytes
	^ false! !

!P4PharoMetaclass methodsFor: 'accessing' stamp: 'ToonVerwaest 7/21/2011 18:08'!
pIsVariable
	^ false! !

!P4PharoMetaclass methodsFor: 'accessing' stamp: 'ToonVerwaest 7/21/2011 18:08'!
pIsVariableOrBytes 
	^ false! !

!P4PharoMetaclass methodsFor: 'accessing' stamp: 'ToonVerwaest 7/21/2011 17:32'!
pclass
	^ P4Metaclass asPClass! !

!ProtoObject methodsFor: '*P4' stamp: 'KenD 8/24/2022 16:05:30'!
basicIdentityHash
	"Answer a SmallInteger whose value is related to the receiver's identity.
	This method must not be overridden, except by SmallInteger.
	Primitive. Fails if the receiver is a SmallInteger. Essential.
	See Object documentation whatIsAPrimitive.

	Do not override. Use #identityHash unless you really know what you're doing.'"

	<primitive: 75>
	self primitiveFailed: thisContext sender selector! !

!ProtoObject methodsFor: '*P4' stamp: 'KenD 8/23/2022 13:34:08'!
printString

	^ 'ProtoObject instance'! !

!Object methodsFor: '*P4' stamp: 'ToonVerwaest 7/28/2011 16:35'!
dump: var on: binaryOut for: aReference at: offset
	| instVarReference |
	(var isKindOf: SmallInteger) 
		ifTrue: [	binaryOut pointerPut: var asTaggedInteger at: aReference pointerOffset: offset-1 ]
		ifFalse: [instVarReference := binaryOut localDump: var.
				binaryOut pointerPut: instVarReference addend at: aReference pointerOffset: offset - 1.
			 	binaryOut referTo: instVarReference at: aReference pointerOffset: offset-1 ]
! !

!Object methodsFor: '*P4' stamp: 'OliFlueckiger 7/6/2011 16:13'!
dumpGlobalOn: binaryOut
	self error: 'not a global object'  ! !

!Object methodsFor: '*P4' stamp: 'OliFlueckiger 7/6/2011 18:39'!
dumpLocalOn: binaryOut
	^ self dumpOn: binaryOut! !

!Object methodsFor: '*P4' stamp: 'ToonVerwaest 7/19/2011 12:59'!
dumpOn: binaryOut
	| myRef var |
	myRef := binaryOut allocate: self.
	
	1 to: self pclass pInstSize do: [ :i |
		var := self pInstVarAt: i.
		self dump: var on: binaryOut for: myRef at: i ].
	
	1 to: self pVariableSize do: [ :i |
		var := self pVariableAt: i.
		self dump: var on: binaryOut for: myRef at: i+self pclass pInstSize ].
	
	^ myRef
! !

!Object methodsFor: '*P4' stamp: 'OliFlueckiger 7/8/2011 12:36'!
flush
! !

!Object methodsFor: '*P4' stamp: 'KenD 8/22/2022 12:16:53'!
haltIf: aBool
	aBool ifTrue: [self halt]! !

!Object methodsFor: '*P4' stamp: 'KenD 8/24/2022 16:39:22'!
ifNotNilDo: aBlock
	^ aBlock value: self! !

!Object methodsFor: '*P4' stamp: 'OliFlueckiger 7/14/2011 15:30'!
pByteAt: i
	^ self basicAt: i    ! !

!Object methodsFor: '*P4' stamp: 'OliFlueckiger 7/14/2011 16:47'!
pByteName
	^ nil! !

!Object methodsFor: '*P4' stamp: 'OliFlueckiger 7/14/2011 15:34'!
pByteSize 
	self class isBytes 
		ifTrue: [ ^ self basicSize ].
	^ 0! !

!Object methodsFor: '*P4' stamp: 'OliFlueckiger 7/15/2011 14:50'!
pExportedName 
	^ nil! !

!Object methodsFor: '*P4' stamp: 'OliFlueckiger 10/4/2011 15:49'!
pHash
	^ self hash! !

!Object methodsFor: '*P4' stamp: 'ToonVerwaest 7/23/2011 18:39'!
pHeader
	| base variable bytes hash |
	base := self pclass pInstSize.
	variable := self pclass pIsVariable ifTrue: [ 1 ] ifFalse: [ 0 ].
	bytes := self pclass pIsBytes ifTrue: [ 1 ] ifFalse: [ 0 ].
	hash := self identityHash.
	^ (hash bitShift: 12) + (bytes bitShift: 9) + (variable bitShift: 8) + base! !

!Object methodsFor: '*P4' stamp: 'OliFlueckiger 7/14/2011 15:23'!
pInstSize 
	^ self instSize ! !

!Object methodsFor: '*P4' stamp: 'OliFlueckiger 7/14/2011 15:35'!
pInstVarAt: i
	^ self instVarAt: i  ! !

!Object methodsFor: '*P4' stamp: 'ToonVerwaest 7/19/2011 18:26'!
pIsBytes
	^ self isBytes! !

!Object methodsFor: '*P4' stamp: 'ToonVerwaest 7/19/2011 18:32'!
pIsVariable
	^ self isBytes not and: [ self isVariable ]! !

!Object methodsFor: '*P4' stamp: 'ToonVerwaest 7/21/2011 18:04'!
pIsVariableOrBytes
	^ self isVariable! !

!Object methodsFor: '*P4' stamp: 'OliFlueckiger 7/14/2011 15:30'!
pVariableAt: i
	^ self basicAt: i    ! !

!Object methodsFor: '*P4' stamp: 'OliFlueckiger 7/14/2011 15:34'!
pVariableSize 
	self class isBytes 
		ifFalse: [ ^ self basicSize ].
	^ 0! !

!Object methodsFor: '*P4' stamp: 'OliFlueckiger 7/14/2011 15:19'!
pVariableSizeHeader 
	^ self basicSize ! !

!Object methodsFor: '*P4' stamp: 'ToonVerwaest 7/21/2011 17:33'!
pclass
	^ self class asPClass! !

!Object methodsFor: '*P4' stamp: 'OliFlueckiger 8/5/2011 18:40'!
printObj
	<preventExport>! !

!Object methodsFor: '*P4' stamp: 'KenD 8/24/2022 16:43:12'!
putOn: aStream

	^aStream nextPutAll: self! !

!Object class methodsFor: '*P4' stamp: 'KenD 8/24/2022 15:49:58'!
p4super

	(P4Object == self) ifTrue: [ ^nil ].
	^ self superclass! !

!Object class methodsFor: '*P4' stamp: 'KenD 8/24/2022 15:38:09'!
pname
	^self name! !

!Boolean methodsFor: '*P4' stamp: 'ToonVerwaest 7/18/2011 17:08'!
dumpGlobalOn: executableFormat
	^ self dumpOn: executableFormat.! !

!Boolean methodsFor: '*P4' stamp: 'OliFlueckiger 7/6/2011 16:59'!
dumpLocalOn: executableFormat
	^ executableFormat postpone: self! !

!Boolean methodsFor: '*P4' stamp: 'OliFlueckiger 7/15/2011 14:51'!
pExportedName 
	^ self name asSymbol! !

!UndefinedObject methodsFor: '*P4' stamp: 'ToonVerwaest 7/18/2011 17:09'!
dumpGlobalOn: executableFormat
	^ self dumpOn: executableFormat.! !

!UndefinedObject methodsFor: '*P4' stamp: 'ToonVerwaest 7/19/2011 00:20'!
dumpLocalOn: executableFormat
	^ executableFormat postpone: self! !

!UndefinedObject methodsFor: '*P4' stamp: 'KenD 8/24/2022 16:39:46'!
ifNotNilDo: aBlock

	"just ignore"! !

!UndefinedObject methodsFor: '*P4' stamp: 'OliFlueckiger 7/15/2011 14:47'!
pExportedName 
	^ #nil! !

!Behavior methodsFor: '*P4' stamp: 'KenD 8/24/2022 13:14:44'!
mapToPclass
	^ {
	
	Object 				-> P4Object. 
	Behavior 				-> P4Behavior.
	Metaclass	 			-> P4Metaclass.
	Class 				-> P4Class.
	IdentityDictionary 	-> P4IdentityDictionary.
	Dictionary 				-> P4Dictionary.
	Array 				-> P4Array.
	Symbol		 		-> P4Symbol.
	String 				-> P4String.
	UndefinedObject 	-> P4UndefinedObject.
	True 				-> P4True.
	False 				-> P4False.
	SmallInteger		 		-> P4SmallInteger.
	
	} asDictionary at: self ifAbsent: [ self error: 'Trying to export invalid class' ]
		
  ! !

!Behavior methodsFor: '*P4' stamp: 'OliFlueckiger 8/18/2011 13:46'!
pLookupSelector: aSelector
	| method |
	method := self lookupSelector: aSelector.
	^ (method methodClass mapToPclass methodDict) 	at: aSelector! !

!Class methodsFor: '*P4' stamp: 'ToonVerwaest 7/21/2011 17:23'!
asPClass
	^ P4Package loadClass: self mapToPclass		
		
		
  ! !

!Class methodsFor: '*P4' stamp: 'OliFlueckiger 7/6/2011 16:34'!
dumpGlobalOn: binaryOut
	^ self dumpOn: binaryOut! !

!Class methodsFor: '*P4' stamp: 'OliFlueckiger 7/6/2011 16:34'!
dumpLocalOn: binaryOut
	^ binaryOut postpone: self  ! !

!Class methodsFor: '*P4' stamp: 'KenD 8/24/2022 15:46:11'!
pname

	^ name! !

!Class class methodsFor: '*P4' stamp: 'KenD 8/24/2022 15:45:33'!
pname

	^name! !

!Metaclass methodsFor: '*P4' stamp: 'ToonVerwaest 7/21/2011 17:34'!
asPClass
	^ thisClass asPClass pclass! !

!Metaclass methodsFor: '*P4' stamp: 'OliFlueckiger 8/18/2011 13:39'!
earlySelectorAddress: aSelector
	| method |
	method := self pLookupSelector: aSelector.
	^ method earlySelectorAddress.! !

!Metaclass methodsFor: '*P4' stamp: 'ToonVerwaest 7/21/2011 17:23'!
mapToPclass
	^ thisClass mapToPclass class! !

!Metaclass methodsFor: '*P4' stamp: 'KenD 8/24/2022 15:51:21'!
p4super
	(self == P4Object class) ifTrue: [ ^ P4Class ].
	^ self super! !

!Metaclass methodsFor: '*P4' stamp: 'ToonVerwaest 7/21/2011 18:25'!
pInstSize
	^ self instSize - P4Object class instSize + P4Class instSize! !

!Magnitude methodsFor: '*P4' stamp: 'KenD 8/24/2022 13:26:45'!
putOn: aStream

	(aStream isBinary ifTrue: [ self asByteArray ] ifFalse: [ self asString]) putOn: aStream
	! !

!SmallInteger methodsFor: '*P4' stamp: 'OliFlueckiger 7/6/2011 18:20'!
asTaggedInteger 
	^ 1+(self bitShift: 1)! !

!SmallInteger methodsFor: '*P4' stamp: 'KenD 8/24/2022 16:06:15'!
basicIdentityHash

	^self! !

!SmallInteger methodsFor: '*P4' stamp: 'OliFlueckiger 10/4/2011 15:58'!
pHash 
	^ self! !

!Character methodsFor: '*P4' stamp: 'KenD 8/21/2022 14:16:06'!
split: aString

	^ aString findTokens: self asString! !

!CharacterSequence methodsFor: '*P4' stamp: 'KenD 8/21/2022 14:17:23'!
split: aString
	"I am a string of delimiters"
	^ aString findTokens: self! !

!Symbol methodsFor: '*P4' stamp: 'ToonVerwaest 7/23/2011 18:57'!
pHash
	| hash maxInt |
	self flag: 'Not a super fast implementation; but it matches what we have in C...'.
	maxInt := (1 bitShift: 64) - 1.
	hash := 5381.
	1 to: self size do: [ :i |
		hash := (hash + ((hash bitShift: 5) bitAnd: maxInt) + (self at: i) asInteger) bitAnd: maxInt ].
	((hash bitShift: -63) bitAnd: 1) = 1 ifTrue: [ hash := hash bitShift: -1].
	^ hash! !

!Stream methodsFor: '*P4' stamp: 'KenD 8/23/2022 13:05:58'!
<< anObject

	anObject putOn: self! !

!Stream methodsFor: '*P4' stamp: 'KenD 8/23/2022 13:06:47'!
putOn: aStream

	aStream nextPutAll: self contents! !

!WriteStream methodsFor: '*P4' stamp: 'KenD 8/23/2022 13:07:49'!
<< anObject
	"Write anObject to the receiver, dispatching using #putOn:
	This is a shortcut for both nextPut: and nextPutAll: since anObject can be both
	the element type of the receiver as well as a collection of those elements.
	No further conversions of anObject are applied.
	This is an optimisation.
	Return self to accomodate chaining."

 	anObject class == collection class
		ifTrue: [ self nextPutAll: anObject ]
		ifFalse: [ anObject putOn: self ]! !
