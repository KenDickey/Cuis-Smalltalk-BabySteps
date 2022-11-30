'From Cuis 6.0 [latest update: #5552] on 14 November 2022 at 12:33:42 pm'!
'Description Original + Bee RiscV64G code generation back end.'!
!provides: 'Powerlang' 1 60!
!requires: 'BeeCompatibility' 1 25 nil!
!requires: 'RISC5-Instructions' 1 28 nil!
!requires: 'BeePParser' 1 19 nil!
SystemOrganization addCategory: 'Powerlang-Core'!
SystemOrganization addCategory: 'Powerlang-Core-Assembler-Intel'!
SystemOrganization addCategory: 'Powerlang-Core-Assembly'!
SystemOrganization addCategory: 'Powerlang-Core-Assembly-RISCV'!
SystemOrganization addCategory: 'Powerlang-Core-Building'!
SystemOrganization addCategory: 'Powerlang-Core-Execution'!
SystemOrganization addCategory: 'Powerlang-Core-Execution-LMR'!
SystemOrganization addCategory: 'Powerlang-Core-Metaphysics'!
SystemOrganization addCategory: 'Powerlang-Core-Mirrors'!
SystemOrganization addCategory: 'Powerlang-Core-Nativization'!
SystemOrganization addCategory: 'Powerlang-Core-SCompiler'!
SystemOrganization addCategory: 'Powerlang-Core-SCompiler-Bindings'!
SystemOrganization addCategory: 'Powerlang-Core-SCompiler-Smalltalk'!
SystemOrganization addCategory: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SystemOrganization addCategory: 'Powerlang-Core-SExpressions'!
SystemOrganization addCategory: 'Powerlang-Core-Emulation'!
SystemOrganization addCategory: 'Powerlang-Compatibility-Pharo'!
SystemOrganization addCategory: 'Powerlang-Tests-SCompiler'!


!classDefinition: #CharacterConstants category: 'Powerlang-Core'!
SharedPool subclass: #CharacterConstants
	instanceVariableNames: ''
	classVariableNames: 'Cr Lf Newline Space Tab'
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'CharacterConstants class' category: 'Powerlang-Core'!
CharacterConstants class
	instanceVariableNames: ''!

!classDefinition: #OperandTypeFlags category: 'Powerlang-Core-Assembler-Intel'!
SharedPool subclass: #OperandTypeFlags
	instanceVariableNames: ''
	classVariableNames: 'ConstantType ImmediateType MemoryType RegisterGP RegisterGroupMask RegisterSIMD RegisterSegment RegisterSpecific RegisterType'
	poolDictionaries: ''
	category: 'Powerlang-Core-Assembler-Intel'!
!classDefinition: 'OperandTypeFlags class' category: 'Powerlang-Core-Assembler-Intel'!
OperandTypeFlags class
	instanceVariableNames: ''!

!classDefinition: #RegistersRISCV category: 'Powerlang-Core-Assembly-RISCV'!
SharedPool subclass: #RegistersRISCV
	instanceVariableNames: ''
	classVariableNames: 'RegA RegE RegFP RegFalse RegFlags RegG RegLink RegM RegNil RegR RegS RegSP RegT RegTmp0 RegTmp1 RegTrue RegV RegX0 RegX1 RegZero'
	poolDictionaries: 'RISC5Regs'
	category: 'Powerlang-Core-Assembly-RISCV'!
!classDefinition: 'RegistersRISCV class' category: 'Powerlang-Core-Assembly-RISCV'!
RegistersRISCV class
	instanceVariableNames: ''!

!classDefinition: #ObjectHeaderMasks category: 'Powerlang-Core-Metaphysics'!
SharedPool subclass: #ObjectHeaderMasks
	instanceVariableNames: ''
	classVariableNames: 'IsArrayed IsBytes IsNamed IsSmall'
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'ObjectHeaderMasks class' category: 'Powerlang-Core-Metaphysics'!
ObjectHeaderMasks class
	instanceVariableNames: ''!

!classDefinition: #ObjectHeaderOffsets category: 'Powerlang-Core-Metaphysics'!
SharedPool subclass: #ObjectHeaderOffsets
	instanceVariableNames: ''
	classVariableNames: 'BehaviorOffset FlagsOffset HashOffset LargeSizeOffset SizeOffset'
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'ObjectHeaderOffsets class' category: 'Powerlang-Core-Metaphysics'!
ObjectHeaderOffsets class
	instanceVariableNames: ''!

!classDefinition: #CompiledBlockFormatMasks category: 'Powerlang-Core-Mirrors'!
SharedPool subclass: #CompiledBlockFormatMasks
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Mirrors'!
!classDefinition: 'CompiledBlockFormatMasks class' category: 'Powerlang-Core-Mirrors'!
CompiledBlockFormatMasks class
	instanceVariableNames: ''!

!classDefinition: #CompiledMethodFormatMasks category: 'Powerlang-Core-Mirrors'!
SharedPool subclass: #CompiledMethodFormatMasks
	instanceVariableNames: ''
	classVariableNames: 'ArgCount BlockCount TempCount'
	poolDictionaries: ''
	category: 'Powerlang-Core-Mirrors'!
!classDefinition: 'CompiledMethodFormatMasks class' category: 'Powerlang-Core-Mirrors'!
CompiledMethodFormatMasks class
	instanceVariableNames: ''!

!classDefinition: #FrameOffsets category: 'Powerlang-Core-Mirrors'!
SharedPool subclass: #FrameOffsets
	instanceVariableNames: ''
	classVariableNames: 'CallerIndex LastArgumentIndex MethodIndex ReceiverIndex ReturnAddressIndex'
	poolDictionaries: ''
	category: 'Powerlang-Core-Mirrors'!
!classDefinition: 'FrameOffsets class' category: 'Powerlang-Core-Mirrors'!
FrameOffsets class
	instanceVariableNames: 'CallerIndex LastArgumentIndex MethodIndex ReceiverIndex ReturnAddressIndex'!

!classDefinition: #SpeciesFormatMasks category: 'Powerlang-Core-Mirrors'!
SharedPool subclass: #SpeciesFormatMasks
	instanceVariableNames: ''
	classVariableNames: 'InstSize IsPointers'
	poolDictionaries: ''
	category: 'Powerlang-Core-Mirrors'!
!classDefinition: 'SpeciesFormatMasks class' category: 'Powerlang-Core-Mirrors'!
SpeciesFormatMasks class
	instanceVariableNames: 'InstSize IsPointers'!

!classDefinition: #InlineMessageLinkerFlags category: 'Powerlang-Core-Nativization'!
SharedPool subclass: #InlineMessageLinkerFlags
	instanceVariableNames: ''
	classVariableNames: '_ExtendedSize _Flags _Hash _Reserved _SmallSize'
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'InlineMessageLinkerFlags class' category: 'Powerlang-Core-Nativization'!
InlineMessageLinkerFlags class
	instanceVariableNames: '_ExtendedSize _Flags _Hash _Reserved _SmallSize'!

!classDefinition: #SendSiteFlags category: 'Powerlang-Core-Nativization'!
SharedPool subclass: #SendSiteFlags
	instanceVariableNames: ''
	classVariableNames: 'HasBeenReset IsPolymorphic IsStaticSend IsSuperSend'
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'SendSiteFlags class' category: 'Powerlang-Core-Nativization'!
SendSiteFlags class
	instanceVariableNames: 'HasBeenReset IsPolymorphic IsStaticSend IsSuperSend'!

!classDefinition: #SCompiledBlockFlags category: 'Powerlang-Core-SCompiler'!
SharedPool subclass: #SCompiledBlockFlags
	instanceVariableNames: ''
	classVariableNames: 'BlockArgCount BlockCapturesHome BlockCapturesSelf BlockEnvCount BlockId BlockTempCount'
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'SCompiledBlockFlags class' category: 'Powerlang-Core-SCompiler'!
SCompiledBlockFlags class
	instanceVariableNames: 'BlockArgCount BlockCapturesHome BlockCapturesSelf BlockEnvCount BlockId BlockTempCount'!

!classDefinition: #SCompiledMethodFlags category: 'Powerlang-Core-SCompiler'!
SharedPool subclass: #SCompiledMethodFlags
	instanceVariableNames: ''
	classVariableNames: 'ArgCount BlockCount CapturesSelf Debuggable EnvCount HasEnvironment HasFrame TempCount'
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'SCompiledMethodFlags class' category: 'Powerlang-Core-SCompiler'!
SCompiledMethodFlags class
	instanceVariableNames: 'ArgCount BlockCount CapturesSelf Debuggable EnvCount HasEnvironment HasFrame TempCount'!

!classDefinition: #AstBindingTypes category: 'Powerlang-Core-SExpressions'!
SharedPool subclass: #AstBindingTypes
	instanceVariableNames: ''
	classVariableNames: 'ArgumentId DynamicVarId FalseId NestedDynamicVarId NilId PopRid PushRid SelfId SuperId TemporaryId TrueId'
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'AstBindingTypes class' category: 'Powerlang-Core-SExpressions'!
AstBindingTypes class
	instanceVariableNames: 'ArgumentId DynamicVarId FalseId NestedDynamicVarId NilId PopRid PushRid SelfId SuperId TemporaryId TrueId'!

!classDefinition: #AstNodeTypes category: 'Powerlang-Core-SExpressions'!
SharedPool subclass: #AstNodeTypes
	instanceVariableNames: ''
	classVariableNames: 'AssignmentId BlockId BraceId CascadeId IdentifierId LiteralId MessageId MethodId PragmaId ReturnId'
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'AstNodeTypes class' category: 'Powerlang-Core-SExpressions'!
AstNodeTypes class
	instanceVariableNames: 'AssignmentId BlockId BraceId CascadeId IdentifierId LiteralId MessageId MethodId PragmaId ReturnId'!

!classDefinition: #ClosureElementTypes category: 'Powerlang-Core-SExpressions'!
SharedPool subclass: #ClosureElementTypes
	instanceVariableNames: ''
	classVariableNames: 'Environment EnvironmentValue LocalArgument Self'
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'ClosureElementTypes class' category: 'Powerlang-Core-SExpressions'!
ClosureElementTypes class
	instanceVariableNames: ''!

!classDefinition: #SExpressionTypes category: 'Powerlang-Core-SExpressions'!
SharedPool subclass: #SExpressionTypes
	instanceVariableNames: ''
	classVariableNames: 'AssignmentId BlockId BraceId CascadeId IdentifierId LiteralId MessageId MethodId PragmaId ReturnId'
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SExpressionTypes class' category: 'Powerlang-Core-SExpressions'!
SExpressionTypes class
	instanceVariableNames: ''!

!classDefinition: #SClosure category: 'Powerlang-Core-Metaphysics'!
Array variableSubclass: #SClosure
	instanceVariableNames: 'block home'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'SClosure class' category: 'Powerlang-Core-Metaphysics'!
SClosure class
	instanceVariableNames: ''!

!classDefinition: #NativeCode category: 'Powerlang-Core-Nativization'!
Array variableSubclass: #NativeCode
	instanceVariableNames: 'machineCode compiledCode'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'NativeCode class' category: 'Powerlang-Core-Nativization'!
NativeCode class
	instanceVariableNames: ''!

!classDefinition: #SCompiledMethod category: 'Powerlang-Core-SCompiler'!
Array variableSubclass: #SCompiledMethod
	instanceVariableNames: 'format optimizedCode astcodes class selector source'
	classVariableNames: ''
	poolDictionaries: 'SCompiledMethodFlags'
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'SCompiledMethod class' category: 'Powerlang-Core-SCompiler'!
SCompiledMethod class
	instanceVariableNames: ''!

!classDefinition: #SCallbackMethod category: 'Powerlang-Core-SCompiler'!
SCompiledMethod variableSubclass: #SCallbackMethod
	instanceVariableNames: 'receiver descriptor'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'SCallbackMethod class' category: 'Powerlang-Core-SCompiler'!
SCallbackMethod class
	instanceVariableNames: ''!

!classDefinition: #SCalloutMethod category: 'Powerlang-Core-SCompiler'!
SCompiledMethod variableSubclass: #SCalloutMethod
	instanceVariableNames: 'descriptor symbol address'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'SCalloutMethod class' category: 'Powerlang-Core-SCompiler'!
SCalloutMethod class
	instanceVariableNames: ''!

!classDefinition: #SFFIDescriptor category: 'Powerlang-Core-SCompiler'!
ByteArray variableByteSubclass: #SFFIDescriptor
	instanceVariableNames: ''
	classVariableNames: 'FFICallingConventions FFITypes'
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'SFFIDescriptor class' category: 'Powerlang-Core-SCompiler'!
SFFIDescriptor class
	instanceVariableNames: 'FFICallingConventions FFITypes'!

!classDefinition: #PoolDictionary category: 'Powerlang-Compatibility-Pharo'!
Dictionary subclass: #PoolDictionary
	instanceVariableNames: 'constant'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Compatibility-Pharo'!
!classDefinition: 'PoolDictionary class' category: 'Powerlang-Compatibility-Pharo'!
PoolDictionary class
	instanceVariableNames: ''!

!classDefinition: #SCompilationError category: 'Powerlang-Core-SCompiler'!
Error subclass: #SCompilationError
	instanceVariableNames: 'compiler resumable retryable stretch'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'SCompilationError class' category: 'Powerlang-Core-SCompiler'!
SCompilationError class
	instanceVariableNames: ''!

!classDefinition: #SInvalidPragmaError category: 'Powerlang-Core-SCompiler'!
SCompilationError subclass: #SInvalidPragmaError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'SInvalidPragmaError class' category: 'Powerlang-Core-SCompiler'!
SInvalidPragmaError class
	instanceVariableNames: ''!

!classDefinition: #SUndeclaredIdentifierError category: 'Powerlang-Core-SCompiler'!
SCompilationError subclass: #SUndeclaredIdentifierError
	instanceVariableNames: 'identifier assigned'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'SUndeclaredIdentifierError class' category: 'Powerlang-Core-SCompiler'!
SUndeclaredIdentifierError class
	instanceVariableNames: ''!

!classDefinition: #PowerLangPackage category: 'Powerlang-Core'!
CodePackage subclass: #PowerLangPackage
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'PowerLangPackage class' category: 'Powerlang-Core'!
PowerLangPackage class
	instanceVariableNames: ''!

!classDefinition: #ScriptScopeTest category: 'Powerlang-Tests-SCompiler'!
TestCase subclass: #ScriptScopeTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Tests-SCompiler'!
!classDefinition: 'ScriptScopeTest class' category: 'Powerlang-Tests-SCompiler'!
ScriptScopeTest class
	instanceVariableNames: ''!

!classDefinition: #NumberParser2 category: 'Powerlang-Core'!
Object subclass: #NumberParser2
	instanceVariableNames: 'stream error return'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'NumberParser2 class' category: 'Powerlang-Core'!
NumberParser2 class
	instanceVariableNames: ''!

!classDefinition: #OperandEncoding category: 'Powerlang-Core-Assembler-Intel'!
Object subclass: #OperandEncoding
	instanceVariableNames: 'name selectors descriptions immediate modrm'
	classVariableNames: 'Encodings'
	poolDictionaries: 'Registers'
	category: 'Powerlang-Core-Assembler-Intel'!
!classDefinition: 'OperandEncoding class' category: 'Powerlang-Core-Assembler-Intel'!
OperandEncoding class
	instanceVariableNames: ''!

!classDefinition: #ABI category: 'Powerlang-Core-Assembly'!
Object subclass: #ABI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Assembly'!
!classDefinition: 'ABI class' category: 'Powerlang-Core-Assembly'!
ABI class
	instanceVariableNames: ''!

!classDefinition: #RV64GABI category: 'Powerlang-Core-Assembly-RISCV'!
ABI subclass: #RV64GABI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'RegistersRISCV'
	category: 'Powerlang-Core-Assembly-RISCV'!
!classDefinition: 'RV64GABI class' category: 'Powerlang-Core-Assembly-RISCV'!
RV64GABI class
	instanceVariableNames: ''!

!classDefinition: #Assembler category: 'Powerlang-Core-Assembly'!
Object subclass: #Assembler
	instanceVariableNames: 'codegen labels literals'
	classVariableNames: 'IndexedLabels'
	poolDictionaries: ''
	category: 'Powerlang-Core-Assembly'!
!classDefinition: 'Assembler class' category: 'Powerlang-Core-Assembly'!
Assembler class
	instanceVariableNames: 'IndexedLabels'!

!classDefinition: #CodeGenerator category: 'Powerlang-Core-Assembly'!
Object subclass: #CodeGenerator
	instanceVariableNames: 'abi wordSize memory'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Assembly'!
!classDefinition: 'CodeGenerator class' category: 'Powerlang-Core-Assembly'!
CodeGenerator class
	instanceVariableNames: ''!

!classDefinition: #RISCCodeGenerator category: 'Powerlang-Core-Assembly'!
CodeGenerator subclass: #RISCCodeGenerator
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'RegistersRISCV'
	category: 'Powerlang-Core-Assembly'!
!classDefinition: 'RISCCodeGenerator class' category: 'Powerlang-Core-Assembly'!
RISCCodeGenerator class
	instanceVariableNames: ''!

!classDefinition: #RV64GCodeGenerator category: 'Powerlang-Core-Assembly-RISCV'!
RISCCodeGenerator subclass: #RV64GCodeGenerator
	instanceVariableNames: 'zeroReg flagsReg tmp0Reg tmp1Reg linkReg'
	classVariableNames: ''
	poolDictionaries: 'RegistersRISCV'
	category: 'Powerlang-Core-Assembly-RISCV'!
!classDefinition: 'RV64GCodeGenerator class' category: 'Powerlang-Core-Assembly-RISCV'!
RV64GCodeGenerator class
	instanceVariableNames: ''!

!classDefinition: #NativeCodeReference category: 'Powerlang-Core-Assembly'!
Object subclass: #NativeCodeReference
	instanceVariableNames: 'source sourceOffset target absolute'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Assembly'!
!classDefinition: 'NativeCodeReference class' category: 'Powerlang-Core-Assembly'!
NativeCodeReference class
	instanceVariableNames: ''!

!classDefinition: #RelocatableBuffer category: 'Powerlang-Core-Assembly'!
Object subclass: #RelocatableBuffer
	instanceVariableNames: 'stream address fixups'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Assembly'!
!classDefinition: 'RelocatableBuffer class' category: 'Powerlang-Core-Assembly'!
RelocatableBuffer class
	instanceVariableNames: ''!

!classDefinition: #RelocationFixup category: 'Powerlang-Core-Assembly'!
Object subclass: #RelocationFixup
	instanceVariableNames: 'source target relative size'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Assembly'!
!classDefinition: 'RelocationFixup class' category: 'Powerlang-Core-Assembly'!
RelocationFixup class
	instanceVariableNames: ''!

!classDefinition: #RVMemoryReference category: 'Powerlang-Core-Assembly-RISCV'!
Object subclass: #RVMemoryReference
	instanceVariableNames: 'widthInBits baseRegister indexRegister offset'
	classVariableNames: ''
	poolDictionaries: 'Registers'
	category: 'Powerlang-Core-Assembly-RISCV'!
!classDefinition: 'RVMemoryReference class' category: 'Powerlang-Core-Assembly-RISCV'!
RVMemoryReference class
	instanceVariableNames: ''!

!classDefinition: #LookupNativizer category: 'Powerlang-Core-Building'!
Object subclass: #LookupNativizer
	instanceVariableNames: 'bootstrapper methods'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Building'!
!classDefinition: 'LookupNativizer class' category: 'Powerlang-Core-Building'!
LookupNativizer class
	instanceVariableNames: ''!

!classDefinition: #ObjectMap category: 'Powerlang-Core-Building'!
Object subclass: #ObjectMap
	instanceVariableNames: 'behavior spec'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Building'!
!classDefinition: 'ObjectMap class' category: 'Powerlang-Core-Building'!
ObjectMap class
	instanceVariableNames: ''!

!classDefinition: #SmalltalkBootstrapper category: 'Powerlang-Core-Building'!
Object subclass: #SmalltalkBootstrapper
	instanceVariableNames: 'builder'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Building'!
!classDefinition: 'SmalltalkBootstrapper class' category: 'Powerlang-Core-Building'!
SmalltalkBootstrapper class
	instanceVariableNames: ''!

!classDefinition: #DMRBootstrapper category: 'Powerlang-Core-Building'!
SmalltalkBootstrapper subclass: #DMRBootstrapper
	instanceVariableNames: 'nativizer image'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Building'!
!classDefinition: 'DMRBootstrapper class' category: 'Powerlang-Core-Building'!
DMRBootstrapper class
	instanceVariableNames: ''!

!classDefinition: #EvaluationContext category: 'Powerlang-Core-Execution'!
Object subclass: #EvaluationContext
	instanceVariableNames: 'system'
	classVariableNames: ''
	poolDictionaries: 'ClosureElementTypes'
	category: 'Powerlang-Core-Execution'!
!classDefinition: 'EvaluationContext class' category: 'Powerlang-Core-Execution'!
EvaluationContext class
	instanceVariableNames: ''!

!classDefinition: #LinkedEvaluationContext category: 'Powerlang-Core-Execution'!
EvaluationContext subclass: #LinkedEvaluationContext
	instanceVariableNames: 'parent method arguments temporaries environment isBlock _self'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution'!
!classDefinition: 'LinkedEvaluationContext class' category: 'Powerlang-Core-Execution'!
LinkedEvaluationContext class
	instanceVariableNames: ''!

!classDefinition: #IterativeLinkedEvaluationContext category: 'Powerlang-Core-Execution'!
LinkedEvaluationContext subclass: #IterativeLinkedEvaluationContext
	instanceVariableNames: 'operands work'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution'!
!classDefinition: 'IterativeLinkedEvaluationContext class' category: 'Powerlang-Core-Execution'!
IterativeLinkedEvaluationContext class
	instanceVariableNames: ''!

!classDefinition: #RecursiveLinkedEvaluationContext category: 'Powerlang-Core-Execution'!
LinkedEvaluationContext subclass: #RecursiveLinkedEvaluationContext
	instanceVariableNames: 'nonLocalReturn'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution'!
!classDefinition: 'RecursiveLinkedEvaluationContext class' category: 'Powerlang-Core-Execution'!
RecursiveLinkedEvaluationContext class
	instanceVariableNames: ''!

!classDefinition: #StackedEvaluationContext category: 'Powerlang-Core-Execution'!
EvaluationContext subclass: #StackedEvaluationContext
	instanceVariableNames: 'stack regSP regBP regM regS regE pc'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution'!
!classDefinition: 'StackedEvaluationContext class' category: 'Powerlang-Core-Execution'!
StackedEvaluationContext class
	instanceVariableNames: ''!

!classDefinition: #PowertalkEvaluator category: 'Powerlang-Core-Execution'!
Object subclass: #PowertalkEvaluator
	instanceVariableNames: 'runtime falseObj trueObj nilObj context undermessages primitives messageCount'
	classVariableNames: ''
	poolDictionaries: 'ClosureElementTypes'
	category: 'Powerlang-Core-Execution'!
!classDefinition: 'PowertalkEvaluator class' category: 'Powerlang-Core-Execution'!
PowertalkEvaluator class
	instanceVariableNames: ''!

!classDefinition: #PowertalkIterativeInterpreter category: 'Powerlang-Core-Execution'!
PowertalkEvaluator subclass: #PowertalkIterativeInterpreter
	instanceVariableNames: 'regR'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution'!
!classDefinition: 'PowertalkIterativeInterpreter class' category: 'Powerlang-Core-Execution'!
PowertalkIterativeInterpreter class
	instanceVariableNames: ''!

!classDefinition: #PowertalkIterativeLinkedInterpreter category: 'Powerlang-Core-Execution'!
PowertalkIterativeInterpreter subclass: #PowertalkIterativeLinkedInterpreter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution'!
!classDefinition: 'PowertalkIterativeLinkedInterpreter class' category: 'Powerlang-Core-Execution'!
PowertalkIterativeLinkedInterpreter class
	instanceVariableNames: ''!

!classDefinition: #PowertalkLinkedLinearInterpreter category: 'Powerlang-Core-Execution'!
PowertalkIterativeLinkedInterpreter subclass: #PowertalkLinkedLinearInterpreter
	instanceVariableNames: 'linearizer'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution'!
!classDefinition: 'PowertalkLinkedLinearInterpreter class' category: 'Powerlang-Core-Execution'!
PowertalkLinkedLinearInterpreter class
	instanceVariableNames: ''!

!classDefinition: #PowertalkLinkedTreeInterpreter category: 'Powerlang-Core-Execution'!
PowertalkIterativeLinkedInterpreter subclass: #PowertalkLinkedTreeInterpreter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution'!
!classDefinition: 'PowertalkLinkedTreeInterpreter class' category: 'Powerlang-Core-Execution'!
PowertalkLinkedTreeInterpreter class
	instanceVariableNames: ''!

!classDefinition: #PowertalkIterativeStackedInterpreter category: 'Powerlang-Core-Execution'!
PowertalkIterativeInterpreter subclass: #PowertalkIterativeStackedInterpreter
	instanceVariableNames: 'linearizer work'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution'!
!classDefinition: 'PowertalkIterativeStackedInterpreter class' category: 'Powerlang-Core-Execution'!
PowertalkIterativeStackedInterpreter class
	instanceVariableNames: ''!

!classDefinition: #PowertalkRecursiveInterpreter category: 'Powerlang-Core-Execution'!
PowertalkEvaluator subclass: #PowertalkRecursiveInterpreter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution'!
!classDefinition: 'PowertalkRecursiveInterpreter class' category: 'Powerlang-Core-Execution'!
PowertalkRecursiveInterpreter class
	instanceVariableNames: ''!

!classDefinition: #PowertalkRuntime category: 'Powerlang-Core-Execution'!
Object subclass: #PowertalkRuntime
	instanceVariableNames: 'methodCache falseObj trueObj nilObj interpreter overrides symbolCache'
	classVariableNames: ''
	poolDictionaries: 'ClosureElementTypes'
	category: 'Powerlang-Core-Execution'!
!classDefinition: 'PowertalkRuntime class' category: 'Powerlang-Core-Execution'!
PowertalkRuntime class
	instanceVariableNames: ''!

!classDefinition: #PowertalkLMR category: 'Powerlang-Core-Execution-LMR'!
PowertalkRuntime subclass: #PowertalkLMR
	instanceVariableNames: 'kernel wordSize bootstrapper behaviorNextIndex behaviorMethodDictionaryIndex behaviorClassIndex classNameIndex methodFlagsIndex symbolTable maxSMI minSMI knownSymbols arrayClass metaclassClass speciesInstanceBehaviorIndex speciesFormatIndex methodOptimizedCodeIndex methodAstcodesIndex methodInstSize methodClassBindingIndex speciesSuperclassIndex methodClass smallIntegerClass blockClass speciesIvarsIndex dictionaryTableIndex metaclassInstanceClassIndex classModuleIndex moduleNamespaceIndex byteArrayClass stringClass closureBlockIndex closureClass lastHash blockMethodIndex behaviorClass classNamespacesIndex largePositiveIntegerClass largeNegativeIntegerClass'
	classVariableNames: ''
	poolDictionaries: 'SCompiledBlockFlags SCompiledMethodFlags'
	category: 'Powerlang-Core-Execution-LMR'!
!classDefinition: 'PowertalkLMR class' category: 'Powerlang-Core-Execution-LMR'!
PowertalkLMR class
	instanceVariableNames: ''!

!classDefinition: #SExpressionLinearizer category: 'Powerlang-Core-Execution'!
Object subclass: #SExpressionLinearizer
	instanceVariableNames: 'operations primitives inBlock runtime greaterThan one plus stackTop dropsArguments not equalsEquals ifTrue ifFalse ifTrueIfFalse ifFalseIfTrue ifNil ifNotNil ifNilIfNotNil ifNotNilIfNil whileTrue whileFalse whileTrue_ whileFalse_ toDo toByDo repeat timesRepeat andNot orNot'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution'!
!classDefinition: 'SExpressionLinearizer class' category: 'Powerlang-Core-Execution'!
SExpressionLinearizer class
	instanceVariableNames: ''!

!classDefinition: #LMRObject category: 'Powerlang-Core-Execution-LMR'!
Object subclass: #LMRObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution-LMR'!
!classDefinition: 'LMRObject class' category: 'Powerlang-Core-Execution-LMR'!
LMRObject class
	instanceVariableNames: ''!

!classDefinition: #LMRHeapObject category: 'Powerlang-Core-Execution-LMR'!
LMRObject subclass: #LMRHeapObject
	instanceVariableNames: 'header'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution-LMR'!
!classDefinition: 'LMRHeapObject class' category: 'Powerlang-Core-Execution-LMR'!
LMRHeapObject class
	instanceVariableNames: ''!

!classDefinition: #LMRByteObject category: 'Powerlang-Core-Execution-LMR'!
LMRHeapObject subclass: #LMRByteObject
	instanceVariableNames: 'bytes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution-LMR'!
!classDefinition: 'LMRByteObject class' category: 'Powerlang-Core-Execution-LMR'!
LMRByteObject class
	instanceVariableNames: ''!

!classDefinition: #LMRExecutableCode category: 'Powerlang-Core-Execution-LMR'!
LMRHeapObject subclass: #LMRExecutableCode
	instanceVariableNames: 'code'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution-LMR'!
!classDefinition: 'LMRExecutableCode class' category: 'Powerlang-Core-Execution-LMR'!
LMRExecutableCode class
	instanceVariableNames: ''!

!classDefinition: #LMRSlotObject category: 'Powerlang-Core-Execution-LMR'!
LMRHeapObject subclass: #LMRSlotObject
	instanceVariableNames: 'slots'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution-LMR'!
!classDefinition: 'LMRSlotObject class' category: 'Powerlang-Core-Execution-LMR'!
LMRSlotObject class
	instanceVariableNames: ''!

!classDefinition: #LMRBehaviorObject category: 'Powerlang-Core-Execution-LMR'!
LMRSlotObject subclass: #LMRBehaviorObject
	instanceVariableNames: 'runtime'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution-LMR'!
!classDefinition: 'LMRBehaviorObject class' category: 'Powerlang-Core-Execution-LMR'!
LMRBehaviorObject class
	instanceVariableNames: ''!

!classDefinition: #LMRSmallInteger category: 'Powerlang-Core-Execution-LMR'!
LMRObject subclass: #LMRSmallInteger
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution-LMR'!
!classDefinition: 'LMRSmallInteger class' category: 'Powerlang-Core-Execution-LMR'!
LMRSmallInteger class
	instanceVariableNames: ''!

!classDefinition: #LMRObjectHeader category: 'Powerlang-Core-Execution-LMR'!
Object subclass: #LMRObjectHeader
	instanceVariableNames: 'behavior flags size hash'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Execution-LMR'!
!classDefinition: 'LMRObjectHeader class' category: 'Powerlang-Core-Execution-LMR'!
LMRObjectHeader class
	instanceVariableNames: ''!

!classDefinition: #ObjectFormat category: 'Powerlang-Core-Metaphysics'!
Object subclass: #ObjectFormat
	instanceVariableNames: 'runtime storage'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'ObjectFormat class' category: 'Powerlang-Core-Metaphysics'!
ObjectFormat class
	instanceVariableNames: ''!

!classDefinition: #DmrObjectFormat category: 'Powerlang-Core-Metaphysics'!
ObjectFormat subclass: #DmrObjectFormat
	instanceVariableNames: 'wordSize'
	classVariableNames: ''
	poolDictionaries: 'ObjectHeaderMasks ObjectHeaderOffsets'
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'DmrObjectFormat class' category: 'Powerlang-Core-Metaphysics'!
DmrObjectFormat class
	instanceVariableNames: ''!

!classDefinition: #ObjectShape category: 'Powerlang-Core-Metaphysics'!
Object subclass: #ObjectShape
	instanceVariableNames: 'name fields'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'ObjectShape class' category: 'Powerlang-Core-Metaphysics'!
ObjectShape class
	instanceVariableNames: ''!

!classDefinition: #SExpressionInterpreter category: 'Powerlang-Core-Metaphysics'!
Object subclass: #SExpressionInterpreter
	instanceVariableNames: 'receiver arguments temporaries returned returnValue method parent gateBuilder blockAstcodes environment'
	classVariableNames: ''
	poolDictionaries: 'private'
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'SExpressionInterpreter class' category: 'Powerlang-Core-Metaphysics'!
SExpressionInterpreter class
	instanceVariableNames: ''!

!classDefinition: #SmalltalkInterpreter category: 'Powerlang-Core-Metaphysics'!
SExpressionInterpreter subclass: #SmalltalkInterpreter
	instanceVariableNames: 'localRuntime'
	classVariableNames: 'Underprimitives'
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'SmalltalkInterpreter class' category: 'Powerlang-Core-Metaphysics'!
SmalltalkInterpreter class
	instanceVariableNames: 'underprimitives'!

!classDefinition: #ShapeMap category: 'Powerlang-Core-Metaphysics'!
Object subclass: #ShapeMap
	instanceVariableNames: 'shapes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'ShapeMap class' category: 'Powerlang-Core-Metaphysics'!
ShapeMap class
	instanceVariableNames: ''!

!classDefinition: #Storage category: 'Powerlang-Core-Metaphysics'!
Object subclass: #Storage
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'Storage class' category: 'Powerlang-Core-Metaphysics'!
Storage class
	instanceVariableNames: ''!

!classDefinition: #StorageReadError category: 'Powerlang-Core-Metaphysics'!
Object subclass: #StorageReadError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'StorageReadError class' category: 'Powerlang-Core-Metaphysics'!
StorageReadError class
	instanceVariableNames: ''!

!classDefinition: #BinaryMessageNativizer category: 'Powerlang-Core-Nativization'!
Object subclass: #BinaryMessageNativizer
	instanceVariableNames: 'message assembler nativizer done failed'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'BinaryMessageNativizer class' category: 'Powerlang-Core-Nativization'!
BinaryMessageNativizer class
	instanceVariableNames: ''!

!classDefinition: #InlinedMessageNativizer category: 'Powerlang-Core-Nativization'!
Object subclass: #InlinedMessageNativizer
	instanceVariableNames: 'message assembler nativizer start end'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'InlinedMessageNativizer class' category: 'Powerlang-Core-Nativization'!
InlinedMessageNativizer class
	instanceVariableNames: ''!

!classDefinition: #MessageLinker category: 'Powerlang-Core-Nativization'!
Object subclass: #MessageLinker
	instanceVariableNames: 'filter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'MessageLinker class' category: 'Powerlang-Core-Nativization'!
MessageLinker class
	instanceVariableNames: ''!

!classDefinition: #CompositeMessageLinker category: 'Powerlang-Core-Nativization'!
MessageLinker subclass: #CompositeMessageLinker
	instanceVariableNames: 'candidates'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'CompositeMessageLinker class' category: 'Powerlang-Core-Nativization'!
CompositeMessageLinker class
	instanceVariableNames: ''!

!classDefinition: #HaltingSend category: 'Powerlang-Core-Nativization'!
MessageLinker subclass: #HaltingSend
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'HaltingSend class' category: 'Powerlang-Core-Nativization'!
HaltingSend class
	instanceVariableNames: ''!

!classDefinition: #InlineMessageLinker category: 'Powerlang-Core-Nativization'!
MessageLinker subclass: #InlineMessageLinker
	instanceVariableNames: 'assembler map'
	classVariableNames: ''
	poolDictionaries: 'InlineMessageLinkerFlags Registers'
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'InlineMessageLinker class' category: 'Powerlang-Core-Nativization'!
InlineMessageLinker class
	instanceVariableNames: ''!

!classDefinition: #InvokeLinker category: 'Powerlang-Core-Nativization'!
MessageLinker subclass: #InvokeLinker
	instanceVariableNames: 'invoker sends'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'InvokeLinker class' category: 'Powerlang-Core-Nativization'!
InvokeLinker class
	instanceVariableNames: ''!

!classDefinition: #LookupLinker category: 'Powerlang-Core-Nativization'!
MessageLinker subclass: #LookupLinker
	instanceVariableNames: 'lookup lookupSuper'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'LookupLinker class' category: 'Powerlang-Core-Nativization'!
LookupLinker class
	instanceVariableNames: ''!

!classDefinition: #LazyLinker category: 'Powerlang-Core-Nativization'!
LookupLinker subclass: #LazyLinker
	instanceVariableNames: 'sends'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'LazyLinker class' category: 'Powerlang-Core-Nativization'!
LazyLinker class
	instanceVariableNames: ''!

!classDefinition: #NativizationEnvironment category: 'Powerlang-Core-Nativization'!
Object subclass: #NativizationEnvironment
	instanceVariableNames: 'platform optimizedMethods invokedMethods inlinedMethods messageLinker globals writeBarrier safepointCheck cachedNativizer busy'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'NativizationEnvironment class' category: 'Powerlang-Core-Nativization'!
NativizationEnvironment class
	instanceVariableNames: ''!

!classDefinition: #NativizationPlatform category: 'Powerlang-Core-Nativization'!
Object subclass: #NativizationPlatform
	instanceVariableNames: 'name wordSize abi codeGeneratorClass'
	classVariableNames: 'Default'
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'NativizationPlatform class' category: 'Powerlang-Core-Nativization'!
NativizationPlatform class
	instanceVariableNames: 'Default'!

!classDefinition: #Opcode category: 'Powerlang-Core-Nativization'!
Object subclass: #Opcode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'Opcode class' category: 'Powerlang-Core-Nativization'!
Opcode class
	instanceVariableNames: ''!

!classDefinition: #EnsureSmallIntegerOpcode category: 'Powerlang-Core-Nativization'!
Opcode subclass: #EnsureSmallIntegerOpcode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'EnsureSmallIntegerOpcode class' category: 'Powerlang-Core-Nativization'!
EnsureSmallIntegerOpcode class
	instanceVariableNames: ''!

!classDefinition: #EnsureASmallInteger category: 'Powerlang-Core-Nativization'!
EnsureSmallIntegerOpcode subclass: #EnsureASmallInteger
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'EnsureASmallInteger class' category: 'Powerlang-Core-Nativization'!
EnsureASmallInteger class
	instanceVariableNames: ''!

!classDefinition: #EnsureRSmallInteger category: 'Powerlang-Core-Nativization'!
EnsureSmallIntegerOpcode subclass: #EnsureRSmallInteger
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'EnsureRSmallInteger class' category: 'Powerlang-Core-Nativization'!
EnsureRSmallInteger class
	instanceVariableNames: ''!

!classDefinition: #SExpressionNativizer category: 'Powerlang-Core-Nativization'!
Object subclass: #SExpressionNativizer
	instanceVariableNames: 'environment method remainingBlocks safepointCheck mainCode stackCount fallbacks activeScript ir'
	classVariableNames: ''
	poolDictionaries: 'private'
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'SExpressionNativizer class' category: 'Powerlang-Core-Nativization'!
SExpressionNativizer class
	instanceVariableNames: ''!

!classDefinition: #SendSite category: 'Powerlang-Core-Nativization'!
Object subclass: #SendSite
	instanceVariableNames: 'instructions selector cache tally format'
	classVariableNames: ''
	poolDictionaries: 'SendSiteFlags'
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'SendSite class' category: 'Powerlang-Core-Nativization'!
SendSite class
	instanceVariableNames: ''!

!classDefinition: #StackFrameCursor category: 'Powerlang-Core-Nativization'!
Object subclass: #StackFrameCursor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'StackFrameCursor class' category: 'Powerlang-Core-Nativization'!
StackFrameCursor class
	instanceVariableNames: ''!

!classDefinition: #IdentifierBinder category: 'Powerlang-Core-SCompiler'!
Object subclass: #IdentifierBinder
	instanceVariableNames: 'contents'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'IdentifierBinder class' category: 'Powerlang-Core-SCompiler'!
IdentifierBinder class
	instanceVariableNames: ''!

!classDefinition: #DynamicBinder category: 'Powerlang-Core-SCompiler'!
IdentifierBinder subclass: #DynamicBinder
	instanceVariableNames: 'type'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'DynamicBinder class' category: 'Powerlang-Core-SCompiler'!
DynamicBinder class
	instanceVariableNames: ''!

!classDefinition: #StaticBinder category: 'Powerlang-Core-SCompiler'!
IdentifierBinder subclass: #StaticBinder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'StaticBinder class' category: 'Powerlang-Core-SCompiler'!
StaticBinder class
	instanceVariableNames: ''!

!classDefinition: #LocalEnvironment category: 'Powerlang-Core-SCompiler'!
Object subclass: #LocalEnvironment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'ClosureElementTypes'
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'LocalEnvironment class' category: 'Powerlang-Core-SCompiler'!
LocalEnvironment class
	instanceVariableNames: ''!

!classDefinition: #ArrayEnvironment category: 'Powerlang-Core-SCompiler'!
LocalEnvironment subclass: #ArrayEnvironment
	instanceVariableNames: 'index'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'ArrayEnvironment class' category: 'Powerlang-Core-SCompiler'!
ArrayEnvironment class
	instanceVariableNames: ''!

!classDefinition: #StackEnvironment category: 'Powerlang-Core-SCompiler'!
LocalEnvironment subclass: #StackEnvironment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'StackEnvironment class' category: 'Powerlang-Core-SCompiler'!
StackEnvironment class
	instanceVariableNames: ''!

!classDefinition: #ArgumentEnvironment category: 'Powerlang-Core-SCompiler'!
StackEnvironment subclass: #ArgumentEnvironment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'ArgumentEnvironment class' category: 'Powerlang-Core-SCompiler'!
ArgumentEnvironment class
	instanceVariableNames: ''!

!classDefinition: #InlinedArgEnvironment category: 'Powerlang-Core-SCompiler'!
StackEnvironment subclass: #InlinedArgEnvironment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'InlinedArgEnvironment class' category: 'Powerlang-Core-SCompiler'!
InlinedArgEnvironment class
	instanceVariableNames: ''!

!classDefinition: #MessageInliner category: 'Powerlang-Core-SCompiler'!
Object subclass: #MessageInliner
	instanceVariableNames: 'message'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'MessageInliner class' category: 'Powerlang-Core-SCompiler'!
MessageInliner class
	instanceVariableNames: ''!

!classDefinition: #SCompilationResult category: 'Powerlang-Core-SCompiler'!
Object subclass: #SCompilationResult
	instanceVariableNames: 'compiler error ast method'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'SCompilationResult class' category: 'Powerlang-Core-SCompiler'!
SCompilationResult class
	instanceVariableNames: ''!

!classDefinition: #SCompiledBlock category: 'Powerlang-Core-SCompiler'!
Object subclass: #SCompiledBlock
	instanceVariableNames: 'format optimizedCode method'
	classVariableNames: ''
	poolDictionaries: 'SCompiledBlockFlags'
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'SCompiledBlock class' category: 'Powerlang-Core-SCompiler'!
SCompiledBlock class
	instanceVariableNames: ''!

!classDefinition: #SCompiler category: 'Powerlang-Core-SCompiler'!
Object subclass: #SCompiler
	instanceVariableNames: 'errorHandler result class'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'SCompiler class' category: 'Powerlang-Core-SCompiler'!
SCompiler class
	instanceVariableNames: ''!

!classDefinition: #SParseTreeVisitor category: 'Powerlang-Core-SCompiler'!
Object subclass: #SParseTreeVisitor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'SParseTreeVisitor class' category: 'Powerlang-Core-SCompiler'!
SParseTreeVisitor class
	instanceVariableNames: ''!

!classDefinition: #SSemanticVisitor category: 'Powerlang-Core-SCompiler'!
SParseTreeVisitor subclass: #SSemanticVisitor
	instanceVariableNames: 'inliner'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'SSemanticVisitor class' category: 'Powerlang-Core-SCompiler'!
SSemanticVisitor class
	instanceVariableNames: ''!

!classDefinition: #AstcodeEncoder category: 'Powerlang-Core-SExpressions'!
SParseTreeVisitor subclass: #AstcodeEncoder
	instanceVariableNames: 'method stream script'
	classVariableNames: ''
	poolDictionaries: 'AstBindingTypes AstNodeTypes ClosureElementTypes'
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'AstcodeEncoder class' category: 'Powerlang-Core-SExpressions'!
AstcodeEncoder class
	instanceVariableNames: ''!

!classDefinition: #ScriptScope category: 'Powerlang-Core-SCompiler'!
Object subclass: #ScriptScope
	instanceVariableNames: 'script arguments temporaries stackSize envSize captureSelf'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'ScriptScope class' category: 'Powerlang-Core-SCompiler'!
ScriptScope class
	instanceVariableNames: ''!

!classDefinition: #BlockScope category: 'Powerlang-Core-SCompiler'!
ScriptScope subclass: #BlockScope
	instanceVariableNames: 'environments captured'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'BlockScope class' category: 'Powerlang-Core-SCompiler'!
BlockScope class
	instanceVariableNames: ''!

!classDefinition: #MethodScope category: 'Powerlang-Core-SCompiler'!
ScriptScope subclass: #MethodScope
	instanceVariableNames: 'species pseudo ivars cvars pools globals'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'MethodScope class' category: 'Powerlang-Core-SCompiler'!
MethodScope class
	instanceVariableNames: ''!

!classDefinition: #Binding category: 'Powerlang-Core-SCompiler-Bindings'!
Object subclass: #Binding
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Bindings'!
!classDefinition: 'Binding class' category: 'Powerlang-Core-SCompiler-Bindings'!
Binding class
	instanceVariableNames: ''!

!classDefinition: #AssociationBinding category: 'Powerlang-Core-SCompiler-Bindings'!
Binding subclass: #AssociationBinding
	instanceVariableNames: 'association'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Bindings'!
!classDefinition: 'AssociationBinding class' category: 'Powerlang-Core-SCompiler-Bindings'!
AssociationBinding class
	instanceVariableNames: ''!

!classDefinition: #GlobalBinding category: 'Powerlang-Core-SCompiler-Bindings'!
AssociationBinding subclass: #GlobalBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Bindings'!
!classDefinition: 'GlobalBinding class' category: 'Powerlang-Core-SCompiler-Bindings'!
GlobalBinding class
	instanceVariableNames: ''!

!classDefinition: #PoolVarBinding category: 'Powerlang-Core-SCompiler-Bindings'!
AssociationBinding subclass: #PoolVarBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Bindings'!
!classDefinition: 'PoolVarBinding class' category: 'Powerlang-Core-SCompiler-Bindings'!
PoolVarBinding class
	instanceVariableNames: ''!

!classDefinition: #DynamicBinding category: 'Powerlang-Core-SCompiler-Bindings'!
Binding subclass: #DynamicBinding
	instanceVariableNames: ''
	classVariableNames: 'Default'
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Bindings'!
!classDefinition: 'DynamicBinding class' category: 'Powerlang-Core-SCompiler-Bindings'!
DynamicBinding class
	instanceVariableNames: 'Default'!

!classDefinition: #NestedDynamicBinding category: 'Powerlang-Core-SCompiler-Bindings'!
DynamicBinding subclass: #NestedDynamicBinding
	instanceVariableNames: 'parent'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Bindings'!
!classDefinition: 'NestedDynamicBinding class' category: 'Powerlang-Core-SCompiler-Bindings'!
NestedDynamicBinding class
	instanceVariableNames: ''!

!classDefinition: #LiteralBinding category: 'Powerlang-Core-SCompiler-Bindings'!
Binding subclass: #LiteralBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Bindings'!
!classDefinition: 'LiteralBinding class' category: 'Powerlang-Core-SCompiler-Bindings'!
LiteralBinding class
	instanceVariableNames: ''!

!classDefinition: #FalseBinding category: 'Powerlang-Core-SCompiler-Bindings'!
LiteralBinding subclass: #FalseBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Bindings'!
!classDefinition: 'FalseBinding class' category: 'Powerlang-Core-SCompiler-Bindings'!
FalseBinding class
	instanceVariableNames: ''!

!classDefinition: #NilBinding category: 'Powerlang-Core-SCompiler-Bindings'!
LiteralBinding subclass: #NilBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Bindings'!
!classDefinition: 'NilBinding class' category: 'Powerlang-Core-SCompiler-Bindings'!
NilBinding class
	instanceVariableNames: ''!

!classDefinition: #TrueBinding category: 'Powerlang-Core-SCompiler-Bindings'!
LiteralBinding subclass: #TrueBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Bindings'!
!classDefinition: 'TrueBinding class' category: 'Powerlang-Core-SCompiler-Bindings'!
TrueBinding class
	instanceVariableNames: ''!

!classDefinition: #LocalBinding category: 'Powerlang-Core-SCompiler-Bindings'!
Binding subclass: #LocalBinding
	instanceVariableNames: 'index environment declaration'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Bindings'!
!classDefinition: 'LocalBinding class' category: 'Powerlang-Core-SCompiler-Bindings'!
LocalBinding class
	instanceVariableNames: ''!

!classDefinition: #ArgumentBinding category: 'Powerlang-Core-SCompiler-Bindings'!
LocalBinding subclass: #ArgumentBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Bindings'!
!classDefinition: 'ArgumentBinding class' category: 'Powerlang-Core-SCompiler-Bindings'!
ArgumentBinding class
	instanceVariableNames: ''!

!classDefinition: #TemporaryBinding category: 'Powerlang-Core-SCompiler-Bindings'!
LocalBinding subclass: #TemporaryBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Bindings'!
!classDefinition: 'TemporaryBinding class' category: 'Powerlang-Core-SCompiler-Bindings'!
TemporaryBinding class
	instanceVariableNames: ''!

!classDefinition: #SelfBinding category: 'Powerlang-Core-SCompiler-Bindings'!
Binding subclass: #SelfBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Bindings'!
!classDefinition: 'SelfBinding class' category: 'Powerlang-Core-SCompiler-Bindings'!
SelfBinding class
	instanceVariableNames: ''!

!classDefinition: #SuperBinding category: 'Powerlang-Core-SCompiler-Bindings'!
SelfBinding subclass: #SuperBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Bindings'!
!classDefinition: 'SuperBinding class' category: 'Powerlang-Core-SCompiler-Bindings'!
SuperBinding class
	instanceVariableNames: ''!

!classDefinition: #SSmalltalkCompiler category: 'Powerlang-Core-SCompiler-Smalltalk'!
Object subclass: #SSmalltalkCompiler
	instanceVariableNames: 'frontend source ast result headless blocks leaf activeScript'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Smalltalk'!
!classDefinition: 'SSmalltalkCompiler class' category: 'Powerlang-Core-SCompiler-Smalltalk'!
SSmalltalkCompiler class
	instanceVariableNames: ''!

!classDefinition: #SSmalltalkParser category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
Object subclass: #SSmalltalkParser
	instanceVariableNames: 'compiler scanner token next'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SSmalltalkParser class' category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SSmalltalkParser class
	instanceVariableNames: ''!

!classDefinition: #SSmalltalkScanner category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
Object subclass: #SSmalltalkScanner
	instanceVariableNames: 'compiler stream'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SSmalltalkScanner class' category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SSmalltalkScanner class
	instanceVariableNames: ''!

!classDefinition: #SToken category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
Object subclass: #SToken
	instanceVariableNames: 'compiler stretch comments'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SToken class' category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SToken class
	instanceVariableNames: ''!

!classDefinition: #SEndToken category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SToken subclass: #SEndToken
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SEndToken class' category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SEndToken class
	instanceVariableNames: ''!

!classDefinition: #SParseNode category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SToken subclass: #SParseNode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SParseNode class' category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SParseNode class
	instanceVariableNames: ''!

!classDefinition: #SAssignmentNode category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SParseNode subclass: #SAssignmentNode
	instanceVariableNames: 'assignees expression operators'
	classVariableNames: 'Token'
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SAssignmentNode class' category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SAssignmentNode class
	instanceVariableNames: 'Token'!

!classDefinition: #SBraceNode category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SParseNode subclass: #SBraceNode
	instanceVariableNames: 'elements message'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SBraceNode class' category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SBraceNode class
	instanceVariableNames: ''!

!classDefinition: #SCascadeNode category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SParseNode subclass: #SCascadeNode
	instanceVariableNames: 'receiver messages optimized'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SCascadeNode class' category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SCascadeNode class
	instanceVariableNames: ''!

!classDefinition: #SCommentNode category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SParseNode subclass: #SCommentNode
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SCommentNode class' category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SCommentNode class
	instanceVariableNames: ''!

!classDefinition: #SIdentifierNode category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SParseNode subclass: #SIdentifierNode
	instanceVariableNames: 'name binding'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SIdentifierNode class' category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SIdentifierNode class
	instanceVariableNames: ''!

!classDefinition: #SLiteralNode category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SParseNode subclass: #SLiteralNode
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SLiteralNode class' category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SLiteralNode class
	instanceVariableNames: ''!

!classDefinition: #SNumberNode category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SLiteralNode subclass: #SNumberNode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SNumberNode class' category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SNumberNode class
	instanceVariableNames: ''!

!classDefinition: #SStringNode category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SLiteralNode subclass: #SStringNode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SStringNode class' category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SStringNode class
	instanceVariableNames: ''!

!classDefinition: #SMessageNode category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SParseNode subclass: #SMessageNode
	instanceVariableNames: 'selector receiver arguments inlined'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SMessageNode class' category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SMessageNode class
	instanceVariableNames: ''!

!classDefinition: #SCascadeMessageNode category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SMessageNode subclass: #SCascadeMessageNode
	instanceVariableNames: 'cascade'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SCascadeMessageNode class' category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SCascadeMessageNode class
	instanceVariableNames: ''!

!classDefinition: #SReturnNode category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SParseNode subclass: #SReturnNode
	instanceVariableNames: 'expression return'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SReturnNode class' category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SReturnNode class
	instanceVariableNames: ''!

!classDefinition: #SScriptNode category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SParseNode subclass: #SScriptNode
	instanceVariableNames: 'statements arguments temporaries children scope'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SScriptNode class' category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SScriptNode class
	instanceVariableNames: ''!

!classDefinition: #SBlockNode category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SScriptNode subclass: #SBlockNode
	instanceVariableNames: 'inlined index parent'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SBlockNode class' category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SBlockNode class
	instanceVariableNames: ''!

!classDefinition: #SMethodNode category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SScriptNode subclass: #SMethodNode
	instanceVariableNames: 'selector pragma'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SMethodNode class' category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SMethodNode class
	instanceVariableNames: ''!

!classDefinition: #SSelectorNode category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SParseNode subclass: #SSelectorNode
	instanceVariableNames: 'symbol keywords'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SSelectorNode class' category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SSelectorNode class
	instanceVariableNames: ''!

!classDefinition: #SPragmaNode category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SToken subclass: #SPragmaNode
	instanceVariableNames: 'type name info'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SPragmaNode class' category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SPragmaNode class
	instanceVariableNames: ''!

!classDefinition: #SSymbolicToken category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SToken subclass: #SSymbolicToken
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SSymbolicToken class' category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SSymbolicToken class
	instanceVariableNames: ''!

!classDefinition: #SDelimiterToken category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SSymbolicToken subclass: #SDelimiterToken
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SDelimiterToken class' category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SDelimiterToken class
	instanceVariableNames: ''!

!classDefinition: #SStringToken category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SSymbolicToken subclass: #SStringToken
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
!classDefinition: 'SStringToken class' category: 'Powerlang-Core-SCompiler-Smalltalk-Parser'!
SStringToken class
	instanceVariableNames: ''!

!classDefinition: #AstcodeDecoder category: 'Powerlang-Core-SExpressions'!
Object subclass: #AstcodeDecoder
	instanceVariableNames: 'method stream builder'
	classVariableNames: 'BindingTypes NodeTypes'
	poolDictionaries: 'AstBindingTypes AstNodeTypes'
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'AstcodeDecoder class' category: 'Powerlang-Core-SExpressions'!
AstcodeDecoder class
	instanceVariableNames: 'BindingTypes NodeTypes'!

!classDefinition: #SBinding category: 'Powerlang-Core-SExpressions'!
Object subclass: #SBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SBinding class' category: 'Powerlang-Core-SExpressions'!
SBinding class
	instanceVariableNames: ''!

!classDefinition: #SAssociationBinding category: 'Powerlang-Core-SExpressions'!
SBinding subclass: #SAssociationBinding
	instanceVariableNames: 'index association'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SAssociationBinding class' category: 'Powerlang-Core-SExpressions'!
SAssociationBinding class
	instanceVariableNames: ''!

!classDefinition: #SDynamicBinding category: 'Powerlang-Core-SExpressions'!
SBinding subclass: #SDynamicBinding
	instanceVariableNames: 'name cache'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SDynamicBinding class' category: 'Powerlang-Core-SExpressions'!
SDynamicBinding class
	instanceVariableNames: ''!

!classDefinition: #SNestedDynamicBinding category: 'Powerlang-Core-SExpressions'!
SDynamicBinding subclass: #SNestedDynamicBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SNestedDynamicBinding class' category: 'Powerlang-Core-SExpressions'!
SNestedDynamicBinding class
	instanceVariableNames: ''!

!classDefinition: #SInstVarBinding category: 'Powerlang-Core-SExpressions'!
SBinding subclass: #SInstVarBinding
	instanceVariableNames: 'index'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SInstVarBinding class' category: 'Powerlang-Core-SExpressions'!
SInstVarBinding class
	instanceVariableNames: ''!

!classDefinition: #SLiteralBinding category: 'Powerlang-Core-SExpressions'!
SBinding subclass: #SLiteralBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SLiteralBinding class' category: 'Powerlang-Core-SExpressions'!
SLiteralBinding class
	instanceVariableNames: ''!

!classDefinition: #SFalseBinding category: 'Powerlang-Core-SExpressions'!
SLiteralBinding subclass: #SFalseBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SFalseBinding class' category: 'Powerlang-Core-SExpressions'!
SFalseBinding class
	instanceVariableNames: ''!

!classDefinition: #SNilBinding category: 'Powerlang-Core-SExpressions'!
SLiteralBinding subclass: #SNilBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SNilBinding class' category: 'Powerlang-Core-SExpressions'!
SNilBinding class
	instanceVariableNames: ''!

!classDefinition: #STrueBinding category: 'Powerlang-Core-SExpressions'!
SLiteralBinding subclass: #STrueBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'STrueBinding class' category: 'Powerlang-Core-SExpressions'!
STrueBinding class
	instanceVariableNames: ''!

!classDefinition: #SLocalBinding category: 'Powerlang-Core-SExpressions'!
SBinding subclass: #SLocalBinding
	instanceVariableNames: 'position environment'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SLocalBinding class' category: 'Powerlang-Core-SExpressions'!
SLocalBinding class
	instanceVariableNames: ''!

!classDefinition: #SArgumentBinding category: 'Powerlang-Core-SExpressions'!
SLocalBinding subclass: #SArgumentBinding
	instanceVariableNames: 'inlined'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SArgumentBinding class' category: 'Powerlang-Core-SExpressions'!
SArgumentBinding class
	instanceVariableNames: ''!

!classDefinition: #STemporaryBinding category: 'Powerlang-Core-SExpressions'!
SLocalBinding subclass: #STemporaryBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'STemporaryBinding class' category: 'Powerlang-Core-SExpressions'!
STemporaryBinding class
	instanceVariableNames: ''!

!classDefinition: #SSelfBinding category: 'Powerlang-Core-SExpressions'!
SBinding subclass: #SSelfBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SSelfBinding class' category: 'Powerlang-Core-SExpressions'!
SSelfBinding class
	instanceVariableNames: ''!

!classDefinition: #SSuperBinding category: 'Powerlang-Core-SExpressions'!
SSelfBinding subclass: #SSuperBinding
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SSuperBinding class' category: 'Powerlang-Core-SExpressions'!
SSuperBinding class
	instanceVariableNames: ''!

!classDefinition: #SExpression category: 'Powerlang-Core-SExpressions'!
Object subclass: #SExpression
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SExpression class' category: 'Powerlang-Core-SExpressions'!
SExpression class
	instanceVariableNames: ''!

!classDefinition: #SAssignment category: 'Powerlang-Core-SExpressions'!
SExpression subclass: #SAssignment
	instanceVariableNames: 'assignees expression'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SAssignment class' category: 'Powerlang-Core-SExpressions'!
SAssignment class
	instanceVariableNames: ''!

!classDefinition: #SCascade category: 'Powerlang-Core-SExpressions'!
SExpression subclass: #SCascade
	instanceVariableNames: 'receiver messages'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SCascade class' category: 'Powerlang-Core-SExpressions'!
SCascade class
	instanceVariableNames: ''!

!classDefinition: #SCascadeMessage category: 'Powerlang-Core-SExpressions'!
SExpression subclass: #SCascadeMessage
	instanceVariableNames: 'selector arguments cascade cache'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SCascadeMessage class' category: 'Powerlang-Core-SExpressions'!
SCascadeMessage class
	instanceVariableNames: ''!

!classDefinition: #SIdentifier category: 'Powerlang-Core-SExpressions'!
SExpression subclass: #SIdentifier
	instanceVariableNames: 'binding'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SIdentifier class' category: 'Powerlang-Core-SExpressions'!
SIdentifier class
	instanceVariableNames: ''!

!classDefinition: #SLiteralVar category: 'Powerlang-Core-SExpressions'!
SExpression subclass: #SLiteralVar
	instanceVariableNames: 'index'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SLiteralVar class' category: 'Powerlang-Core-SExpressions'!
SLiteralVar class
	instanceVariableNames: ''!

!classDefinition: #SLiteral category: 'Powerlang-Core-SExpressions'!
SLiteralVar subclass: #SLiteral
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SLiteral class' category: 'Powerlang-Core-SExpressions'!
SLiteral class
	instanceVariableNames: ''!

!classDefinition: #SMessage category: 'Powerlang-Core-SExpressions'!
SExpression subclass: #SMessage
	instanceVariableNames: 'selector receiver arguments cache inlined'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SMessage class' category: 'Powerlang-Core-SExpressions'!
SMessage class
	instanceVariableNames: ''!

!classDefinition: #SOperation category: 'Powerlang-Core-SExpressions'!
SExpression subclass: #SOperation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SOperation class' category: 'Powerlang-Core-SExpressions'!
SOperation class
	instanceVariableNames: ''!

!classDefinition: #SInlinerOperation category: 'Powerlang-Core-SExpressions'!
SOperation subclass: #SInlinerOperation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SInlinerOperation class' category: 'Powerlang-Core-SExpressions'!
SInlinerOperation class
	instanceVariableNames: ''!

!classDefinition: #SOpJump category: 'Powerlang-Core-SExpressions'!
SInlinerOperation subclass: #SOpJump
	instanceVariableNames: 'target'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SOpJump class' category: 'Powerlang-Core-SExpressions'!
SOpJump class
	instanceVariableNames: ''!

!classDefinition: #SOpJumpFalse category: 'Powerlang-Core-SExpressions'!
SOpJump subclass: #SOpJumpFalse
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SOpJumpFalse class' category: 'Powerlang-Core-SExpressions'!
SOpJumpFalse class
	instanceVariableNames: ''!

!classDefinition: #SOpJumpTrue category: 'Powerlang-Core-SExpressions'!
SOpJump subclass: #SOpJumpTrue
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SOpJumpTrue class' category: 'Powerlang-Core-SExpressions'!
SOpJumpTrue class
	instanceVariableNames: ''!

!classDefinition: #SOpLoadRfromFrame category: 'Powerlang-Core-SExpressions'!
SInlinerOperation subclass: #SOpLoadRfromFrame
	instanceVariableNames: 'index'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SOpLoadRfromFrame class' category: 'Powerlang-Core-SExpressions'!
SOpLoadRfromFrame class
	instanceVariableNames: ''!

!classDefinition: #SOpPopR category: 'Powerlang-Core-SExpressions'!
SInlinerOperation subclass: #SOpPopR
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SOpPopR class' category: 'Powerlang-Core-SExpressions'!
SOpPopR class
	instanceVariableNames: ''!

!classDefinition: #SOpStoreRintoFrame category: 'Powerlang-Core-SExpressions'!
SInlinerOperation subclass: #SOpStoreRintoFrame
	instanceVariableNames: 'index'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SOpStoreRintoFrame class' category: 'Powerlang-Core-SExpressions'!
SOpStoreRintoFrame class
	instanceVariableNames: ''!

!classDefinition: #SOpAssign category: 'Powerlang-Core-SExpressions'!
SOperation subclass: #SOpAssign
	instanceVariableNames: 'assignees'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SOpAssign class' category: 'Powerlang-Core-SExpressions'!
SOpAssign class
	instanceVariableNames: ''!

!classDefinition: #SOpDispatchMessage category: 'Powerlang-Core-SExpressions'!
SOperation subclass: #SOpDispatchMessage
	instanceVariableNames: 'message'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SOpDispatchMessage class' category: 'Powerlang-Core-SExpressions'!
SOpDispatchMessage class
	instanceVariableNames: ''!

!classDefinition: #SOpDropToS category: 'Powerlang-Core-SExpressions'!
SOperation subclass: #SOpDropToS
	instanceVariableNames: 'count'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SOpDropToS class' category: 'Powerlang-Core-SExpressions'!
SOpDropToS class
	instanceVariableNames: ''!

!classDefinition: #SOpLoadRfromStack category: 'Powerlang-Core-SExpressions'!
SOperation subclass: #SOpLoadRfromStack
	instanceVariableNames: 'index'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SOpLoadRfromStack class' category: 'Powerlang-Core-SExpressions'!
SOpLoadRfromStack class
	instanceVariableNames: ''!

!classDefinition: #SOpLoadRwithNil category: 'Powerlang-Core-SExpressions'!
SOperation subclass: #SOpLoadRwithNil
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SOpLoadRwithNil class' category: 'Powerlang-Core-SExpressions'!
SOpLoadRwithNil class
	instanceVariableNames: ''!

!classDefinition: #SOpLoadRwithSelf category: 'Powerlang-Core-SExpressions'!
SOperation subclass: #SOpLoadRwithSelf
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SOpLoadRwithSelf class' category: 'Powerlang-Core-SExpressions'!
SOpLoadRwithSelf class
	instanceVariableNames: ''!

!classDefinition: #SOpPrimitive category: 'Powerlang-Core-SExpressions'!
SOperation subclass: #SOpPrimitive
	instanceVariableNames: 'block'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SOpPrimitive class' category: 'Powerlang-Core-SExpressions'!
SOpPrimitive class
	instanceVariableNames: ''!

!classDefinition: #SOpPushR category: 'Powerlang-Core-SExpressions'!
SOperation subclass: #SOpPushR
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SOpPushR class' category: 'Powerlang-Core-SExpressions'!
SOpPushR class
	instanceVariableNames: ''!

!classDefinition: #SOpRestart category: 'Powerlang-Core-SExpressions'!
SOperation subclass: #SOpRestart
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SOpRestart class' category: 'Powerlang-Core-SExpressions'!
SOpRestart class
	instanceVariableNames: ''!

!classDefinition: #SOpReturn category: 'Powerlang-Core-SExpressions'!
SOperation subclass: #SOpReturn
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SOpReturn class' category: 'Powerlang-Core-SExpressions'!
SOpReturn class
	instanceVariableNames: ''!

!classDefinition: #SOpNonLocalReturn category: 'Powerlang-Core-SExpressions'!
SOpReturn subclass: #SOpNonLocalReturn
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SOpNonLocalReturn class' category: 'Powerlang-Core-SExpressions'!
SOpNonLocalReturn class
	instanceVariableNames: ''!

!classDefinition: #SPragma category: 'Powerlang-Core-SExpressions'!
SExpression subclass: #SPragma
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SPragma class' category: 'Powerlang-Core-SExpressions'!
SPragma class
	instanceVariableNames: ''!

!classDefinition: #SReturn category: 'Powerlang-Core-SExpressions'!
SExpression subclass: #SReturn
	instanceVariableNames: 'local expression'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SReturn class' category: 'Powerlang-Core-SExpressions'!
SReturn class
	instanceVariableNames: ''!

!classDefinition: #SScript category: 'Powerlang-Core-SExpressions'!
SExpression subclass: #SScript
	instanceVariableNames: 'statements compiledCode'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SScript class' category: 'Powerlang-Core-SExpressions'!
SScript class
	instanceVariableNames: ''!

!classDefinition: #SBlock category: 'Powerlang-Core-SExpressions'!
SScript subclass: #SBlock
	instanceVariableNames: 'index capturedVariables inlinedArgs'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SBlock class' category: 'Powerlang-Core-SExpressions'!
SBlock class
	instanceVariableNames: ''!

!classDefinition: #SMethod category: 'Powerlang-Core-SExpressions'!
SScript subclass: #SMethod
	instanceVariableNames: 'pragma'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SMethod class' category: 'Powerlang-Core-SExpressions'!
SMethod class
	instanceVariableNames: ''!

!classDefinition: #MethodEvaluator category: 'Powerlang-Core-Emulation'!
Object subclass: #MethodEvaluator
	instanceVariableNames: 'parent method receiver arguments temporaries environment returnValue closures blockAstcodes system returning isBlock'
	classVariableNames: 'Undermessages'
	poolDictionaries: 'ClosureElementTypes'
	category: 'Powerlang-Core-Emulation'!
!classDefinition: 'MethodEvaluator class' category: 'Powerlang-Core-Emulation'!
MethodEvaluator class
	instanceVariableNames: ''!


!OperandTypeFlags commentStamp: '<historical>' prior: 0!
WARNING: x86 specific!

!RegistersRISCV commentStamp: '<historical>' prior: 0!
For now, pretend to be a register starved Intel x86-64 CPU.
Just symbolic register indexes. See self class>>#initialize!

!ABI commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
	See (MIT) license in root directory.

`ABI` seems to serve two different purposes:

 i) provide support for calling (native) function with system
	calling convention for given architecture and OS combination

ii) provide fixed mapping from 'IR' registers (such as A, R, M and so on)
	to real machine registers

!

!Assembler commentStamp: '<historical>' prior: 0!
I am the JIT assembler frontend. 
I provide a high-level assembler interface (if that really exists)
and delegate writing of the actual bytes to my backends.
!

!RV64GCodeGenerator commentStamp: '<historical>' prior: 0!
RISC-V RV64G
See specs at:
  https://riscv.org/technical/specifications/

Linux System Call Convention (RV64G)
    syscall number is passed in a7
    syscall arguments are passed in a0 to a5
    unused arguments are set to 0
    return value is returned in a0
!

!RelocatableBuffer commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
	See (MIT) license in root directory.
!

!RelocationFixup commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
	See (MIT) license in root directory.
!

!RVMemoryReference commentStamp: '<historical>' prior: 0!
I am an abstract description of a location in memory which is `widthInBits` wide.

The `offset` part of a memory address can be specified directly as a static value 
or through an address computation made up of one or more of the following components:

      offset - An 8, 16, or 32-bit value.
      baseRegister - contains the base address.
      indexRegister - contains an index off of the base.
Note:
      scale - A value of 1, 2, 4, or 8 that is multiplied by the value in the indexRegister
		This is simply the number of bytes per index, i.e. (widthInBits / bitsPerByte).

    The offset which results from adding these components is called an `effective address`. 
    Each of these components can have either a positive or negative (2s complement) value, 
    with the exception of the scaling factor.

   Symbolically:
        EffectiveAddress := Base + (Index*Scale) + Offset

   For OOPS (Object Pointers):

                 header
   Base---> slot1
                 slot2
                 slot3

   With zero based index, 8 byte addresses,
      slot3 is at address: (Base + (index=2 * scale=8) + offset=0)

  Note Calculations in:
	 #CodeGenerator>>memRef:indexImm:
	 #RV64GCodeGenerator>>lea:withMem: 
!

!DmrObjectFormat commentStamp: '<historical>' prior: 0!
I represent the format of objects in the DMR. Ask me questions about
the header of an object.
!

!ShapeMap commentStamp: '<historical>' prior: 0!
I represent the shape of objects as used by mirrors. Mirrors
access instance variables by name, asking the runtime the for
the offsets of the instVars.
!

!SExpression commentStamp: '<historical>' prior: 0!
I am a Smalltalk expression, the minimal unit of Smalltalk semantics, expressed as a tree.
!

!CharacterConstants class methodsFor: 'class initialization' stamp: 'KenD 5/31/2021 15:35:17'!
initialize 
"
	self initialize.
"
	Cr        := Character cr.
	Lf        := Character lf.
	Tab     := Character tab.
	Space := Character space.
	Newline := Character newLineCharacter.! !

!OperandTypeFlags class methodsFor: 'class initialization' stamp: 'KenD 5/30/2021 13:03:53'!
initialize
"
	self initialize.
"
	MemoryType _ 4.
	RegisterGroupMask _ 3840.
	ConstantType _ 2.
	RegisterSIMD _ 256.
	ImmediateType _ 1.
	RegisterGP _ 0.
	RegisterType _ 8.
	RegisterSegment _ 512.
	RegisterSpecific _ 768.! !

!RegistersRISCV class methodsFor: 'class initialization' stamp: 'KenD 10/14/2022 13:18:08'!
initialize

	RegR        := Tmp0. "X5 Receiver/Result"
	RegA        := Tmp1. "X6 Arg"
	RegT        := Tmp2. "X7 Temp"
	RegV        := Tmp3. "X28"
	RegTmp0 := Tmp4. "X29"
	RegFlags := Tmp5.  "X30 Condition Flags"
	RegTmp1 := Tmp6. "X31"

	RegM       := Sav1.   "X9"
	RegS        := Sav2.  "X18 Selector"
	RegE        := Sav3.  "X19 Environment"
	RegNil      := Sav4. "X20"
	RegTrue  := Sav5. "X21"
	RegFalse := Sav6. "X22"
	RegG       := Sav7. "X23 Globals"
	
	RegZero := Zero.          "X0"
	RegLink := ReturnAddr. "X1"
	RegSP   := StackPtr.      "X2"
	RegFP   := FramePtr.     "X8"

	RegX0 := FTmp0. "F0"
	RegX1 := FTmp1. "F1"
	
! !

!ObjectHeaderMasks class methodsFor: 'class initialization' stamp: 'KenD 2/27/2021 09:22:14'!
initialize 
	"Bit Flags"
	IsBytes      := 16r01.
	IsArrayed := 16r02.
	IsNamed   := 16r04.
	IsSmall     := 16r80! !

!ObjectHeaderOffsets methodsFor: 'accessing' stamp: 'KenD 2/27/2021 09:18:28'!
behaviorOffset

	^BehaviorOffset! !

!ObjectHeaderOffsets methodsFor: 'accessing' stamp: 'KenD 2/27/2021 09:18:43'!
flagsOffset

	^FlagsOffset! !

!ObjectHeaderOffsets methodsFor: 'accessing' stamp: 'KenD 2/27/2021 09:19:02'!
hashOffset

	^HashOffset! !

!ObjectHeaderOffsets methodsFor: 'accessing' stamp: 'KenD 2/27/2021 09:19:13'!
largeSizeOffset

	^LargeSizeOffset! !

!ObjectHeaderOffsets methodsFor: 'accessing' stamp: 'KenD 2/27/2021 09:19:29'!
sizeOffset

	^SizeOffset! !

!ObjectHeaderOffsets class methodsFor: 'class initialization' stamp: 'KenD 2/27/2021 09:17:52'!
initialize 
	"Offsets in Bytes"
	BehaviorOffset := -4.
	FlagsOffset := -5.
	SizeOffset := -6.
	HashOffset := -8.
	LargeSizeOffset := -16! !

!InlineMessageLinkerFlags class methodsFor: 'class initialization' stamp: 'KenD 11/8/2022 14:58:09'!
initialize
"
	InlineMessageLinker  initialize.
"
	_Flags := -5.
	_SmallSize := -6.
	_Hash := -8.
	_Reserved := -2.
	_ExtendedSize := -3.
	self at: #_Flags put: _Flags.
	self at: #_SmallSize put: _SmallSize.
	self at: #_Hash put: _Hash.
	self at: #_Reserved put: _Reserved.
	self at: #_ExtendedSize put: _ExtendedSize.

! !

!SendSiteFlags class methodsFor: 'class initialization' stamp: 'KenD 9/26/2022 12:27:40'!
initialize
		IsStaticSend := 16r1.
		IsSuperSend := 16r2.
		IsPolymorphic := 16r4.
		HasBeenReset := 16r8
	
! !

!SCompiledBlockFlags class methodsFor: 'class initialization' stamp: 'KenD 10/2/2022 15:49:33'!
initialize
"
	self initialize.
"
	BlockArgCount := 1 thru: 6.
	BlockTempCount := 7 thru: 14.
	BlockId := 15 thru: 22.
	BlockCapturesSelf := 1 bitShift: 23 - 1.
	BlockCapturesHome := 1 bitShift: 24 - 1.
	BlockEnvCount := 25 thru: 31.
	
	self classPool at: #BlockArgCount put: (1 thru: 6).
	self classPool at: #BlockTempCount put: (7 thru: 14).
	self classPool at: #BlockId put: (15 thru: 22).
	self classPool at: #BlockCapturesSelf put: (1 bitShift: 23 - 1).
	self classPool at: #BlockCapturesHome put: (1 bitShift: 24 - 1).
	self classPool at: #BlockEnvCount put: (25 thru: 31).	
! !

!SCompiledMethodFlags class methodsFor: 'class initialization' stamp: 'KenD 10/2/2022 08:53:26'!
initialize
"
	SCompiledMethodFlags initialize.
"
	ArgCount := 1 thru: 6.
	BlockCount := 7 thru: 13.
	TempCount := 14 thru: 21.
	CapturesSelf := 1 bitShift: 22 - 1.
	HasEnvironment := 1 bitShift: 23 - 1.
	HasFrame := 1 bitShift: 24 - 1.
	Debuggable := 1 bitShift: 25 - 1.
	EnvCount := 26 thru: 31.
	
	self flag: #FixME.
	self classPool at: #ArgCount put: (1 thru: 6).
	self classPool at: #BlockCount put: (7 thru: 13).
	self classPool at: #TempCount put: (14 thru: 21).
	self classPool at: #CapturesSelf put: (1 bitShift: 22 - 1).
	self classPool at: #HasEnvironment put: (1 bitShift: 23 - 1).
	self classPool at: #HasFrame put: (1 bitShift: 24 - 1).
	self classPool at: #Debuggable put: (1 bitShift: 25 - 1).
	self classPool at: #EnvCount put: (26 thru: 31)
! !

!AstBindingTypes class methodsFor: 'class initialization' stamp: 'KenD 10/2/2022 13:56:34'!
initialize
"
	self initialize.
"
	NilId := 1.
	TrueId := 2.
	FalseId := 3.
	ArgumentId := 4.
	TemporaryId := 5.
	SelfId := 6.
	SuperId := 7.
	DynamicVarId := 14.
	NestedDynamicVarId := 15.
	PushRid := 50.
	PopRid := 51.
	
	self flag: #FixME.
	self classPool at: #NilId put: 1.
	self classPool at: #TrueId put: 2.
	self classPool at: #FalseId put: 3.
	self classPool at: #ArgumentId put: 4.
	self classPool at: #TemporaryId put: 5.
	self classPool at: #SelfId put: 6.
	self classPool at: #SuperId put: 7.
	self classPool at: #DynamicVarId put: 14.
	self classPool at: #NestedDynamicVarId put: 15.
	self classPool at: #PushRid put: 50.
	self classPool at: #PopRid put: 51.
	! !

!AstNodeTypes class methodsFor: 'class initialization' stamp: 'KenD 10/2/2022 08:45:01'!
initialize
	MethodId := 101.
	BlockId := 102.
	IdentifierId := 103.
	LiteralId := 104.
	MessageId := 105.
	CascadeId := 106.
	BraceId := 107.
	AssignmentId := 108.
	ReturnId := 109.
	PragmaId := 110.
	
	self flag: #FixME.
	self classPool at: #MethodId put: 101.
	self classPool at: #BlockId put: 102.
	self classPool at: #IdentifierId put: 103.
	self classPool at: #LiteralId put: 104.
	self classPool at: #MessageId put: 105.
	self classPool at: #CascadeId put: 106.
	self classPool at: #BraceId put: 107.
	self classPool at: #AssignmentId put: 108.
	self classPool at: #ReturnId put: 109.
	self classPool at: #PragmaId put: 110
! !

!ClosureElementTypes class methodsFor: 'class initialization' stamp: 'KenD 2/23/2021 15:07:20'!
initialize 

	Self := 0.
	LocalArgument := 1.
	Environment := 2.
	EnvironmentValue := 3! !

!SExpressionTypes class methodsFor: 'class initialization' stamp: 'KenD 2/23/2021 15:04:29'!
initialize 

	MethodId := 1.
	BlockId := 2.
	IdentifierId := 3.
	LiteralId := 4.
	MessageId :=5.
	CascadeId := 6.
	BraceId := 7.
	AssignmentId := 8.
	ReturnId := 9! !

!SClosure methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:06:22'!
block
	^block
! !

!SClosure methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:06:22'!
block: aPCompiledMethod
	block := aPCompiledMethod
! !

!SClosure methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:06:22'!
evaluateWith: anObject
	^self value: anObject
	
! !

!SClosure methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:06:22'!
evaluateWith: anObject with: anotherObject
	block argumentCount = 2
		ifFalse: [^super evaluateWith: anObject with: anotherObject].
	^self value: anObject value: anotherObject
	
! !

!SClosure methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:06:22'!
home: anObject
	home := anObject
! !

!SClosure methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:06:22'!
isSelfEvaluating
	^false
! !

!SClosure methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:06:22'!
value
	^ home evaluateClosure: self
! !

!SClosure methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:06:22'!
value: anObject
	^home evaluateClosure: self with: anObject
! !

!SClosure methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:06:22'!
value: anObject1 value: anObject2
	^ home evaluateClosure: self with: anObject1 with: anObject2
! !

!SClosure methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:06:22'!
value: anObject1 value: anObject2 with: anObject3
	^ home evaluateBlock: self with: anObject1 with: anObject2 with: anObject3
! !

!SClosure methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:06:22'!
whileFalse: aBlockSubject
	| result |
	[ result := home evaluateClosure: self.
	result _gate handle asLocalBoolean ] 
		whileFalse: [ home evaluateClosure: aBlockSubject _gate handle oid ]
! !

!SClosure methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:06:22'!
whileTrue: aBlockSubject
	| result |
	[ result := home evaluateClosure: self.
	result _gate handle asLocalBoolean ]
		whileTrue: [ home evaluateClosure: aBlockSubject _gate handle oid ]
! !

!NativeCode methodsFor: 'as yet unclassified' stamp: 'KenD 9/26/2022 12:35:02'!
code
	^machineCode
! !

!NativeCode methodsFor: 'as yet unclassified' stamp: 'KenD 9/26/2022 12:35:02'!
code: bytes
	machineCode := bytes.

! !

!NativeCode methodsFor: 'as yet unclassified' stamp: 'KenD 9/26/2022 12:35:02'!
compiledCode: anObject
	compiledCode := anObject

! !

!NativeCode methodsFor: 'as yet unclassified' stamp: 'KenD 9/26/2022 12:35:02'!
disassembledAmd64
	^machineCode disassembledAmd64
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:04:32'!
argumentCount
	^format bitsAt: ArgCount
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:04:32'!
argumentCount: anInteger
	format := format bitsAt: ArgCount put: anInteger
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:04:32'!
astcodes
	^astcodes
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:04:32'!
astcodes: aCollection
	astcodes := aCollection
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:04:32'!
beDebugabble
	format := format bitOr: Debuggable
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:04:32'!
blockCount
	^format bitsAt: BlockCount
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:04:32'!
blockCount: anInteger
	format := format bitsAt: BlockCount put: anInteger
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:04:32'!
blocks
	self hasBlocks ifFalse: [^#()].
	^self select: [:literal | literal isBlock]
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:04:32'!
capturesSelf
	^ format anyMask: CapturesSelf
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:04:32'!
capturesSelf: aBoolean
	format := aBoolean
				  ifTrue: [ format bitOr: CapturesSelf ]
				  ifFalse: [ format bitClear: CapturesSelf ]
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:04:32'!
classBinding
	^class
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:04:32'!
classBinding: aClass
	class := aClass
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:04:32'!
copyWithLiterals: aCollection
	| result |
	result := self species withAll: aCollection.
	^ result
		astcodes: astcodes;
		classBinding: class;
		format: format;
		optimizedCode: optimizedCode;
		selector: selector;
		source: source;
		yourself
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:04:32'!
dynamicVariableNamed: aSymbol
	^class dynamicVariableNamed: aSymbol
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:04:32'!
environmentCount
	^format bitsAt: EnvCount
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:04:32'!
environmentCount: anInteger
	format := format bitsAt: EnvCount put: anInteger
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:04:32'!
hasBlocks
	^self blockCount > 0
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:04:32'!
hasEnvironment
	^ format anyMask: HasEnvironment
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:04:32'!
hasEnvironment: aBoolean
	format := aBoolean
				  ifTrue: [ format bitOr: HasEnvironment ]
				  ifFalse: [ format bitClear: HasEnvironment ]
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:04:32'!
hasFrame
	^ format anyMask: HasFrame
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:04:32'!
hasFrame: aBoolean
	format := aBoolean
				  ifTrue: [ format bitOr: HasFrame ]
				  ifFalse: [ format bitClear: HasFrame ]
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:04:32'!
initialize
	super initialize.
	format := 0
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:04:32'!
isCallback
	^false
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:04:32'!
isCalloutMethod
	^ false
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:04:32'!
isDebuggable
	^ format anyMask: Debuggable
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:04:32'!
isFrameless
	^ self hasFrame not
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:04:32'!
literals
	^Array withAll: self
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:04:32'!
pragma: aPragmaNode

! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:04:32'!
selector
	^selector
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:04:32'!
selector: aSymbol
	selector := aSymbol
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:04:32'!
sexpressions
	| decoder |
	decoder := AstcodeDecoder new
		stream: astcodes readStream;
		method: self.
	^decoder decodeMethod
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:04:32'!
signature
	^class-> selector
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:04:32'!
source
	^source
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:04:32'!
source: aString
	source := aString
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:04:32'!
tempCount
	^format bitsAt: TempCount
! !

!SCompiledMethod methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:04:32'!
tempCount: anInteger
	format := format bitsAt: TempCount put: anInteger
! !

!SCompiledMethod methodsFor: 'printing' stamp: 'KenD 11/1/2022 11:31:17'!
gtDisplayOn: stream

	stream
		nextPutAll: self classBinding name;
		nextPutAll: '>>';
		print: selector
! !

!SCompiledMethod methodsFor: 'printing' stamp: 'KenD 11/10/2022 08:26:59'!
printNameOn: aStream
	aStream
		print: self classBinding;
		nextPutAll: '>>';
		print: selector;
		newLine.! !

!SCompiledMethod methodsFor: 'printing' stamp: 'KenD 11/10/2022 08:28:13'!
printOn: aStream

	self printNameOn: aStream.
	self printSourceOn: aStream
	
! !

!SCompiledMethod methodsFor: 'printing' stamp: 'KenD 11/10/2022 08:27:22'!
printSourceOn: aStream
	source
		ifNotNil: [ aStream
				newLine;
				nextPutAll: source ]
! !

!SCompiledMethod methodsFor: 'printing' stamp: 'KenD 11/10/2022 08:39:52'!
shortPrintString

	^ String streamContents: [ :stream | self printNameOn: stream ]
	
! !

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 10/1/2022 15:04:32'!
format
	^format
! !

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 10/1/2022 15:04:32'!
format: anInteger
	format := anInteger
! !

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 10/1/2022 15:04:32'!
optimizedCode
	^optimizedCode
! !

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 10/1/2022 15:04:32'!
optimizedCode: anObject
	optimizedCode := anObject
! !

!SCompiledMethod methodsFor: 'accessing' stamp: 'KenD 10/1/2022 15:04:32'!
prepareForExecution
	optimizedCode ifNil: [ optimizedCode := self sexpressions ].
	^ optimizedCode
! !

!SCompiledMethod class methodsFor: 'instance creation' stamp: 'KenD 10/1/2022 15:04:32'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!SCompiledMethod class methodsFor: 'instance creation' stamp: 'KenD 10/1/2022 15:04:32'!
new: anInteger
	^ (self basicNew: anInteger) initialize
! !

!SCallbackMethod methodsFor: 'accessing' stamp: 'KenD 10/1/2022 15:03:43'!
descriptor
	^descriptor
! !

!SCallbackMethod methodsFor: 'accessing' stamp: 'KenD 10/1/2022 15:03:43'!
descriptor: anFFIDescriptor
	descriptor := anFFIDescriptor 
! !

!SCallbackMethod methodsFor: 'accessing' stamp: 'KenD 10/1/2022 15:03:43'!
isCallback
	^true
! !

!SCallbackMethod methodsFor: 'accessing' stamp: 'KenD 10/1/2022 15:03:43'!
pragma: anSPragmaNode
	descriptor := anSPragmaNode info
! !

!SCallbackMethod class methodsFor: 'as yet unclassified' stamp: 'KenD 10/1/2022 15:03:43'!
behaviorNativeCodeSlot
	"callback methods have a special machine code. Its bytes are of
	class ByteArray, but the behavior of this ByteArray is special:
	it has an extra slot that allows to find the native code object
	corresponding to this callback"
	^4
! !

!SCalloutMethod methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:03:28'!
pragma: anSPragmaNode
	descriptor := anSPragmaNode info.
	symbol := anSPragmaNode name
! !

!SFFIDescriptor methodsFor: 'calls' stamp: 'KenD 9/29/2022 13:52:43'!
arguments: aCollection
	self replaceFrom: 3 to: 3 + aCollection size -1 with: aCollection
! !

!SFFIDescriptor methodsFor: 'calls' stamp: 'KenD 9/29/2022 13:52:43'!
callingConvention: anInteger
	self at: 1 put: anInteger
! !

!SFFIDescriptor methodsFor: 'calls' stamp: 'KenD 9/29/2022 13:52:43'!
return: anInteger
	self at: 2 put: anInteger
! !

!SFFIDescriptor class methodsFor: 'class initialization' stamp: 'KenD 9/29/2022 13:52:43'!
initialize
	self initializeFFITypes; initializeCallingConventions
! !

!SFFIDescriptor class methodsFor: 'class initialization' stamp: 'KenD 9/29/2022 13:52:43'!
initializeCallingConventions
	FFICallingConventions := Dictionary new.
	FFICallingConventions
		at: 'cdecl' put: 20;
		at: 'com' put: 21;
		at: 'callback' put: 22
! !

!SFFIDescriptor class methodsFor: 'class initialization' stamp: 'KenD 9/29/2022 13:52:43'!
initializeFFITypes
	FFITypes := Dictionary new.
	FFITypes
		at: 'char' put: 1;
		at: 'uchar' put: 2;
		at: 'short' put: 3;
		at: 'ushort' put: 4;
		at: 'long' put: 5;
		at: 'ulong' put: 6;
		at: 'large' put: 7;
		at: 'ularge' put: 8;
		at: 'intptr' put: 9;
		at: 'uintptr' put: 10;
		at: 'pointer' put: 11;
		at: 'struct' put: 12;
		at: 'float' put: 13;
		at: 'double' put: 14
! !

!SFFIDescriptor class methodsFor: 'as yet unclassified' stamp: 'KenD 9/29/2022 13:52:43'!
ret: aString args: aCollection cc: ccName
	| args return cc result |
	args := aCollection
		collect: [ :argname | 
			FFITypes
				at: argname asString
				ifAbsent: [ self error: 'undefined argument type ' , argname ] ].
	return := FFITypes
		at: aString
		ifAbsent: [ self error: 'undefined result type ' , aString ].
	cc := FFICallingConventions
		at: ccName
		ifAbsent: [ self error: 'unsupported calling convention ' , ccName ].
	result := self new: args size + 2.
	^ result
		callingConvention: cc;
		return: return;
		arguments: args
! !

!PoolDictionary methodsFor: 'testing' stamp: 'KenD 6/2/2021 16:37:39'!
includesKey: key 

	^super includesKey: key asString reduced! !

!PoolDictionary methodsFor: 'testing' stamp: 'KenD 6/2/2021 16:39:13'!
isConstant 

	^constant! !

!PoolDictionary methodsFor: 'accessing' stamp: 'KenD 6/2/2021 16:36:35'!
at: key 

	^super at: key asString reduced! !

!PoolDictionary methodsFor: 'accessing' stamp: 'KenD 6/2/2021 16:36:46'!
at: key ifAbsent: aBlock 

	^super at: key asString reduced ifAbsent: aBlock! !

!PoolDictionary methodsFor: 'accessing' stamp: 'KenD 6/2/2021 16:36:59'!
at: key ifPresent: aBlock 

	^super at: key asString reduced ifPresent: aBlock! !

!PoolDictionary methodsFor: 'accessing' stamp: 'KenD 6/2/2021 16:37:10'!
at: key put: value 

	^super at: key asString put: value! !

!PoolDictionary methodsFor: 'accessing' stamp: 'KenD 6/2/2021 16:37:20'!
beConstant: aBoolean 

	constant := aBoolean! !

!PoolDictionary methodsFor: 'accessing' stamp: 'KenD 6/2/2021 16:37:30'!
beConstantPool 

	constant := true! !

!PoolDictionary methodsFor: 'removing' stamp: 'KenD 6/2/2021 16:39:48'!
removeKey: key ifAbsent: aBlock 

	super removeKey: key asString reduced ifAbsent: aBlock.
	^key! !

!PoolDictionary methodsFor: 'adding' stamp: 'KenD 6/2/2021 16:36:13'!
add: anAssociation 

	anAssociation key isString
		ifFalse: [self error: 'Pools are keyed with Strings'].
	^super add: anAssociation! !

!PoolDictionary methodsFor: 'initialization' stamp: 'KenD 6/2/2021 16:38:54'!
initialize: anInteger 

	super initialize: anInteger.
	constant := false! !

!PoolDictionary class methodsFor: 'instance creation' stamp: 'KenD 6/2/2021 16:35:41'!
newConstantPool 

	^self new beConstantPool! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:09:46'!
beFatal
	resumable := retryable := false
! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:09:46'!
beResumable
	resumable := true
! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:09:46'!
beWarning
	resumable := true
! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:09:46'!
compiler
	^compiler
! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:09:46'!
compiler: aCompiler
	compiler := aCompiler.
	compiler result error: self
! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:09:46'!
description: aString
	messageText := aString
! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:09:46'!
isResumable
	^resumable

! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:09:46'!
proceed
	retryable := false.
	compiler result beSuccessful.
	self isResumable ifTrue: [ self resume ] ifFalse: [ self return ]
! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:09:46'!
source
	^compiler sourceCode copyFrom: stretch start to: stretch end
! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:09:46'!
stretch
	^stretch
! !

!SCompilationError methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:09:46'!
stretch: aStretch
	stretch := aStretch
! !

!SCompilationError methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:09:46'!
isUndeclaredAccess
	^false
! !

!SCompilationError methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:09:46'!
isUndeclaredAssignment
	^ false
! !

!SUndeclaredIdentifierError methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:21:58'!
identifier
	^ identifier
! !

!SUndeclaredIdentifierError methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:21:58'!
isUndeclaredAccess
	^assigned not
! !

!SUndeclaredIdentifierError methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:21:58'!
isUndeclaredAssignment
	^assigned
! !

!SUndeclaredIdentifierError methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:21:58'!
stretch: aStretch
	super stretch: aStretch.
	identifier := self source
! !

!SUndeclaredIdentifierError methodsFor: 'accessing-token' stamp: 'KenD 9/29/2022 14:21:58'!
assignment: aBoolean
	assigned := aBoolean
! !

!PowerLangPackage class methodsFor: 'installing' stamp: 'KenD 6/7/2021 14:10:45'!
postPackageInstall

	self inform: 'PowerLang is PRE-alpha. Expect breakage'! !

!PowerLangPackage class methodsFor: 'installing' stamp: 'KenD 6/7/2021 14:34:38'!
prePackageInstall

	"We override SystemDictionary>>globals.
	Let the user OK or bring up debugger.."
	
	self assert: (PopUpMenu confirm:
				 'PowerLang overrides SystemDictionary>>globals; Yes->OK | No->Debug').
				
	"We may have been loaded before.  If not, capture COPY of
	Smalltalk SystemDictionary initial bindings."
	(Smalltalk includesKey: #globals)
		ifFalse: [ Smalltalk at: #globals put: Smalltalk copy ].
	"Might have nil globals; just in case.."
	(Smalltalk at: #globals)
		ifNil: [ Smalltalk at: #globals put: Smalltalk copy ].
! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:16:41'!
test010resolveClass 
	| binding |
	binding := SCompiler new smalltalkCompiler methodNode scope resolve: 'Point'.
	self
		assert: binding isGlobal;
		assert: binding isClassBinding;
		assert: binding name = #Point;
		assert: binding association == (Smalltalk globals associationAt: #Point)! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:18:12'!
test010resolveClassVariables 
	| scope |
	scope := self scopeFor: Symbol.
	self checkClassVarsOf: Symbol in: scope! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:18:24'!
test010resolveGlobal 
	| binding |
	binding := SCompiler new smalltalkCompiler methodNode scope resolve: 'Smalltalk'.
	self
		assert: binding isGlobal;
		deny: binding isClassBinding;
		assert: binding name = #Smalltalk;
		assert: binding association == (Smalltalk globals associationAt: #Smalltalk)! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:18:35'!
test010resolveInstanceVariables 
	| scope |
	scope := self scopeFor: Point.
	self checkInstVarsOf: Point in: scope! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:18:46'!
test010resolveSelf 
	| scope receiver sup |
	scope := self scopeFor: Object.
	receiver := scope resolve: 'self'.
	sup := scope resolve: 'super'.
	self
		assert: receiver isSelf;
		assert: receiver name = 'self';
		assert: sup isSuper;
		assert: sup name = 'super'! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:18:57'!
test011resolveUnknownGlobal 
	| binding point |
	self precondition: (Smalltalk includesKey: 'Foo678' existingSymbol) not.
	binding := MethodScope new resolve: 'Foo678'.
	self assert: binding isUnresolved.
	point := self scopeFor: Point.
	binding := point resolve: 'Foo678'.
	self assert: binding isUnresolved! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:19:11'!
test020resolveMethodArguments 
	| scope |
	scope := self scopeFor: Point.
	scope
		defineArgument: 'arg1';
		defineArgument: 'arg2';
		positionDefinedLocals.
	self
		checkArgs: #('arg1' 'arg2') in: scope;
		checkInstVarsOf: Point in: scope! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:19:21'!
test021resolveMethodTemporaries 
	| scope |
	scope := self scopeFor: Point.
	scope defineTemporary: 't1'; defineTemporary: 't2'; positionDefinedLocals.
	self
		checkTemps: #('t1' 't2') in: scope;
		checkInstVarsOf: Point in: scope! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:19:32'!
test030resolveNestedTemporaryConflictingWithIvar 
	| ast b3 x |
	ast := self compile: 'foo  [ | x | [[x]] ]' in: Point.
	b3 := ast children first children first children first.
	x := b3 statements first binding.
	self
		assert: x
		isEnvTemp: 'x'
		at: 1
		index: 1! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:19:46'!
test040declareMethodArguments 
	| ast scope |
	ast := self compile: 'foo: anArg bar: anotherArg' in: Point.
	scope := ast scope.
	self
		checkArgs: #('anArg' 'anotherArg') in: scope;
		checkInstVarsOf: Point in: scope! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:20:24'!
test041declareMethodTemporaries 
	| ast scope |
	ast := self compile: 'foo | t1 t2 | ' in: Point.
	scope := ast scope.
	self
		checkTemps: #('t1' 't2') in: scope;
		checkInstVarsOf: Point in: scope! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:20:39'!
test042declareMethodTempsWithArgs 
	| ast scope |
	ast := self compile: 'foo: arg1 bar: arg2 | t1 t2 | ' in: Point.
	scope := ast scope.
	self
		checkArgs: #('arg1' 'arg2') in: scope;
		checkTemps: #('t1' 't2') in: scope;
		checkInstVarsOf: Point in: scope! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:21:05'!
test050useMethodTemps 
	| ast scope t1 t2 |
	ast := self compile: 'foo | t1 t2 | t1. t2' in: Point.
	scope := ast scope.
	t1 := ast statements first binding.
	t2 := ast statements second binding.
	self
		checkTemps: #('t1' 't2') in: scope;
		checkInstVarsOf: Point in: scope;
		assert: t1 isTemporary;
		assert: t1 isInStack;
		assert: t1 name = 't1';
		assert: t1 index = 1;
		assert: t2 isTemporary;
		assert: t2 isInStack;
		assert: t2 name = 't2';
		assert: t2 index = 2! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:21:16'!
test051useMethodArgs 
	| ast scope a1 a2 |
	ast := self compile: 'foo: a1 bar: a2 a1. a2' in: Point.
	scope := ast scope.
	a1 := ast statements first binding.
	a2 := ast statements second binding.
	self
		checkArgs: #('a1' 'a2') in: scope;
		checkInstVarsOf: Point in: scope;
		assert: a1 isArgument;
		assert: a1 isInStack;
		assert: a1 name = 'a1';
		assert: a1 index = 1;
		assert: a2 isArgument;
		assert: a2 isInStack;
		assert: a2 name = 'a2';
		assert: a2 index = 2! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:21:33'!
test052useMethodTempsAndArgs 
	| ast scope a1 a2 t1 t2 |
	ast := self compile: 'foo: a1 bar: a2 | t1 t2 | t1. t2. a1. a2' in: Point.
	scope := ast scope.
	t1 := ast statements first binding.
	t2 := ast statements second binding.
	a1 := ast statements third binding.
	a2 := ast statements fourth binding.
	self
		checkArgs: #('a1' 'a2') in: scope;
		checkTemps: #('t1' 't2') in: scope;
		checkInstVarsOf: Point in: scope;
		assert: t1 isTemporary;
		assert: t1 isInStack;
		assert: t1 name = 't1';
		assert: t1 index = 1;
		assert: t2 isTemporary;
		assert: t2 isInStack;
		assert: t2 name = 't2';
		assert: t2 index = 2;
		assert: a1 isArgument;
		assert: a1 isInStack;
		assert: a1 name = 'a1';
		assert: a1 index = 1;
		assert: a2 isArgument;
		assert: a2 isInStack;
		assert: a2 name = 'a2';
		assert: a2 index = 2! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:21:49'!
test053useBlockArgs 
	| ast block scope a1 a2 |
	ast := self compile: 'foo [:a1 :a2 | a1. a2]' in: Point.
	block := ast children first.
	scope := block scope.
	a1 := block statements first binding.
	a2 := block statements second binding.
	self
		checkArgs: #('a1' 'a2') in: scope;
		assert: a1 isStackArg: 'a1' at: 1;
		assert: a2 isStackArg: 'a2' at: 2! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:21:59'!
test053useSiblingBlockArgs 
	| ast block1 block2 a1 a2 |
	ast := self compile: 'foo [:a1 | a1]. [:a2 | a2]' in: Point.
	block1 := ast children first.
	block2 := ast children second.
	a1 := block1 statements first binding.
	a2 := block2 statements first binding.
	self
		checkArgs: #('a1') in: block1 scope;
		checkArgs: #('a2') in: block2 scope;
		assert: a1 isStackArg: 'a1' at: 1;
		assert: a2 isStackArg: 'a2' at: 1! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:22:10'!
test054useBlockTemps 
	| ast block scope t1 t2 |
	ast := self compile: 'foo [| t1 t2 | t1. t2]' in: Point.
	block := ast children first.
	scope := block scope.
	t1 := block statements first binding.
	t2 := block statements second binding.
	self
		checkTemps: #('t1' 't2') in: scope;
		assert: t1 isStackTemp: 't1' at: 1;
		assert: t2 isStackTemp: 't2' at: 2! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:22:24'!
test055methodUseGlobal 
	| ast global |
	ast := self compile: 'foo Collection' in: Point.
	global := ast statements first binding.
	self
		assert: global isClassBinding;
		assert: global name = #Collection;
		assert: global association = (Smalltalk globals associationAt: #Collection)! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:22:36'!
test060useNestedMethodArgs 
	| ast block ma1 ma2 ba1 ba2 |
	ast := self compile: 'foo: a1 bar: a2  a1. a2. [a1. a2]' in: Object.
	block := ast children first.
	ma1 := ast statements first binding.
	ma2 := ast statements second binding.
	ba1 := block statements first binding.
	ba2 := block statements second binding.
	self
		checkArgs: #('a1' 'a2') in: ast scope;
		assert: ma1 isStackArg: 'a1' at: 1;
		assert: ma2 isStackArg: 'a2' at: 2;
		assert: ba1 isEnvArg: 'a1' at: 1;
		assert: ba2 isEnvArg: 'a2' at: 2! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:22:48'!
test061useNestedMethodSiblingBlockTemps 
	| ast block1 block2 b1t1 b2t2 |
	ast := self compile: 'foo | t1 t2 | [t1]. [t2]' in: Object.
	block1 := ast children first.
	block2 := ast children second.
	b1t1 := block1 statements first binding.
	b2t2 := block2 statements first binding.
	self
		checkEnvTemps: #('t1' 't2') in: ast scope at: nil;
		assert: b1t1
			isEnvTemp: 't1'
			at: 1
			index: 1;
		assert: b2t2
			isEnvTemp: 't2'
			at: 1
			index: 2! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:23:14'!
test061useNestedMethodTemps 
	| ast block bt1 bt2 |
	ast := self compile: 'foo | t1 t2 | [t1. t2]' in: Object.
	block := ast children first.
	bt1 := block statements first binding.
	bt2 := block statements second binding.
	self
		checkEnvTemps: #('t1' 't2') in: ast scope at: nil;
		assert: bt1
			isEnvTemp: 't1'
			at: 1
			index: 1;
		assert: bt2
			isEnvTemp: 't2'
			at: 1
			index: 2! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:23:26'!
test062useNestedBlockArgs 
	| ast block1 block2 b1a1 b1a2 b2a1 b2a2 |
	ast := self compile: 'foo [:a1 :a2 | [a1. a2] ]' in: Object.
	block1 := ast children first.
	block2 := block1 children first.
	b1a1 := block1 scope resolve: 'a1'.
	b1a2 := block1 scope resolve: 'a2'.
	b2a1 := block2 statements first binding.
	b2a2 := block2 statements second binding.
	self
		checkArgs: #('a1' 'a2') in: block1 scope;
		assert: b1a1 isStackArg: 'a1' at: 1;
		assert: b1a2 isStackArg: 'a2' at: 2;
		assert: b2a1 isEnvArg: 'a1' at: 1;
		assert: b2a2 isEnvArg: 'a2' at: 2! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:23:38'!
test063useNestedBlockTemps 
	| ast block1 block2 b2t1 b2t2 |
	ast := self compile: 'foo [| t1 t2 | [t1. t2]]' in: Object.
	block1 := ast children first.
	block2 := block1 children first.
	b2t1 := block2 statements first binding.
	b2t2 := block2 statements second binding.
	self
		checkClosureEnvTemps: #('t1' 't2') in: block1 scope at: nil;
		assert: b2t1
			isEnvTemp: 't1'
			at: 1
			index: 1;
		assert: b2t2
			isEnvTemp: 't2'
			at: 1
			index: 2! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:23:49'!
test064useSiblingBlocksNestedTemps 
	| ast block1 block2 block3 b2t1 b3t2 |
	ast := self compile: 'foo [| t1 t2 | [t1]. [t2]]' in: Object.
	block1 := ast children first.
	block2 := block1 children first.
	block3 := block1 children second.
	b2t1 := block2 statements first binding.
	b3t2 := block3 statements first binding.
	self
		checkClosureEnvTemps: #('t1' 't2') in: block1 scope at: nil;
		assert: b2t1
			isEnvTemp: 't1'
			at: 1
			index: 1;
		assert: b3t2
			isEnvTemp: 't2'
			at: 1
			index: 2! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:24:01'!
test065useNestedBlockAndMethodTemps 
	| ast block1 block2 b2t1 b2t2 |
	ast := self compile: 'foo | t1 | [| t2 | [t1. t2]]' in: Object.
	block1 := ast children first.
	block2 := block1 children first.
	b2t1 := block2 statements first binding.
	b2t2 := block2 statements second binding.
	self
		checkEnvTemps: #('t1') in: ast scope at: nil;
		checkClosureEnvTemps: #('t2') in: block1 scope at: nil;
		assert: b2t1
			isEnvTemp: 't1'
			at: 1
			index: 1;
		assert: b2t2
			isEnvTemp: 't2'
			at: 2
			index: 2! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:35:36'!
test070useDoublyNestedMethodArgs 
	| ast block1 block2 b1a1 b1a2 b2a1 b2a2 |
	ast := self compile: 'foo: a1 bar: a2  [[a1. a2]]' in: Object.
	block1 := ast children first.
	block2 := block1 children first.
	b1a1 := block1 scope resolve: 'a1'.
	b1a2 := block1 scope resolve: 'a2'.
	b2a1 := block2 statements first binding.
	b2a2 := block2 statements second binding.
	self
		checkArgs: #('a1' 'a2') in: ast scope;
		assert: b1a1 isEnvArg: 'a1' at: 1;
		assert: b1a2 isEnvArg: 'a2' at: 2;
		assert: b2a1 isEnvArg: 'a1' at: 1;
		assert: b2a2 isEnvArg: 'a2' at: 2! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:35:49'!
test071useDoublyNestedMethodTemps 
	| ast block1 block2 b1t1 b1t2 b2t1 b2t2 |
	ast := self compile: 'foo | t1 t2 | [[t1. t2]]' in: Object.
	block1 := ast children first.
	block2 := block1 children first.
	b1t1 := block1 scope resolve: 't1'.
	b1t2 := block1 scope resolve: 't2'.
	b2t1 := block2 statements first binding.
	b2t2 := block2 statements second binding.
	self
		checkEnvTemps: #('t1' 't2') in: ast scope at: nil;
		assert: b1t1
			isEnvTemp: 't1'
			at: 1
			index: 1;
		assert: b1t2
			isEnvTemp: 't2'
			at: 1
			index: 2;
		assert: b2t1
			isEnvTemp: 't1'
			at: 1
			index: 1;
		assert: b2t2
			isEnvTemp: 't2'
			at: 1
			index: 2! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:36:03'!
test075useDoublyNestedMethodArgsWithTemps 
	| ast block1 block2 b1a1 b1a2 b1t1 b1t2 b2a1 b2a2 b2t1 b2t2 |
	ast := self
		compile: 'foo: a1 bar: a2 | t1 | [| t2 | [a1. a2. t1. t2]]'
		in: Object.
	block1 := ast children first.
	block2 := block1 children first.
	b1a1 := block1 scope resolve: 'a1'.
	b1a2 := block1 scope resolve: 'a2'.
	b1t1 := block1 scope resolve: 't1'.
	b1t2 := block1 scope resolve: 't2'.
	b2a1 := block2 statements first binding.
	b2a2 := block2 statements second binding.
	b2t1 := block2 statements third binding.
	b2t2 := block2 statements fourth binding.
	self
		checkArgs: #('a1' 'a2') in: ast scope;
		assert: b1a1 isEnvArg: 'a1' at: 2;
		assert: b1a2 isEnvArg: 'a2' at: 3;
		assert: b1t2
			isEnvTemp: 't2'
			at: nil
			index: 4;
		assert: b1t1
			isEnvTemp: 't1'
			at: 1
			index: 1;
		assert: b2t1
			isEnvTemp: 't1'
			at: 1
			index: 1;
		assert: b2t2
			isEnvTemp: 't2'
			at: 2
			index: 4;
		assert: b2a1 isEnvArg: 'a1' at: 3;
		assert: b2a2 isEnvArg: 'a2' at: 4! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:36:16'!
test080captureSelf 
	| ast block receiver |
	ast := self compile: 'foo [self]' in: Object.
	block := ast children first.
	receiver := block statements first binding.
	self
		assert: receiver isSelf;
		assert: ast environmentSize = 0;
		assert: block scope capturesSelf;
		assert: block environmentSize equals: 1;
		assert: block scope home == nil! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:36:28'!
test090useNonLocalReturn 
	| ast block |
	ast := self compile: 'foo [^1]' in: Object.
	block := ast children first.
	self
		assert: ast environmentSize = 0;
		assert: ast needsEnvironment;
		assert: block environmentSize = 1;
		assert: block scope home == ast! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:36:39'!
test091nonLocalReturnSelf 
	| ast block |
	ast := self compile: 'foo [^self]' in: Object.
	block := ast children first.
	self
		assert: ast environmentSize = 0;
		assert: ast needsEnvironment;
		assert: block environmentSize = 2;
		assert: block scope home == ast! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:36:52'!
test100inlineUseMethodArgs 
	| ast block a1 a2 |
	ast := self compile: 'foo: a1 bar: a2  1 ifTrue: [a1. a2]' in: Point.
	block := ast children first.
	a1 := block statements first binding.
	a2 := block statements second binding.
	self
		checkArgs: #('a1' 'a2') in: ast scope;
		assert: a1 isStackArg: 'a1' at: 1;
		assert: a2 isStackArg: 'a2' at: 2! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:37:05'!
test101inlineUseMethodTemps 
	| ast t1 t2 block |
	ast := self compile: 'foo | t1 t2 | 1 ifTrue: [t1. t2]' in: Point.
	block := ast children first.
	t1 := block statements first binding.
	t2 := block statements second binding.
	self
		checkTemps: #('t1' 't2') in: ast scope;
		assert: t1 isStackTemp: 't1' at: 1;
		assert: t2 isStackTemp: 't2' at: 2! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:37:19'!
test102inlineUseMethodArgsAndTemps 
	| ast block a1 a2 t1 t2 |
	ast := self
		compile: 'foo: a1 bar: a2  | t1 t2 | 1 ifTrue: [a1. a2. t1. t2]'
		in: Point.
	block := ast children first.
	a1 := block statements first binding.
	a2 := block statements second binding.
	t1 := block statements third binding.
	t2 := block statements fourth binding.
	self
		checkArgs: #('a1' 'a2') in: ast scope;
		assert: a1 isStackArg: 'a1' at: 1;
		assert: a2 isStackArg: 'a2' at: 2;
		assert: t1 isStackTemp: 't1' at: 1;
		assert: t2 isStackTemp: 't2' at: 2! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:37:29'!
test110inlineUseMixedMethodTemps 
	| ast t1 t2 block |
	ast := self compile: 'foo | t1 | 1 ifTrue: [ | t2 | t1. t2]' in: Point.
	block := ast children first.
	t1 := block statements first binding.
	t2 := block statements second binding.
	self
		checkTemps: #('t1') in: ast scope;
		assert: t1 isStackTemp: 't1' at: 1;
		assert: t2 isStackTemp: 't2' at: 2! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:37:42'!
test120inlineEnvironmentTemp 
	| ast block1 block2 mt1 mt2 b1t1 b1t2 b2t2 |
	ast := self
		compile: 'foo | t1 | 1 ifTrue: [ | t2 | t1. [t2]]'
		in: Point.
	block1 := ast children first.
	block2 := block1 children first.
	mt1 := ast scope resolve: 't1'.
	mt2 := ast scope resolve: 't2'.
	b1t1 := block1 statements first binding.
	b1t2 := block1 scope resolve: 't2'.
	b2t2 := block2 scope resolve: 't2'.
	self
		checkTemps: #('t1') in: ast scope;
		assert: mt2 isUnresolved;
		assert: mt1 isStackTemp: 't1' at: 1;
		assert: b1t1 isStackTemp: 't1' at: 1;
		assert: b1t2
			isEnvTemp: 't2'
			at: nil
			index: 1;
		assert: b2t2
			isEnvTemp: 't2'
			at: 1
			index: 1;
		assert: ast scope environmentSize = 1! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:37:54'!
test130inlineBlockArg 
	| ast block a1 |
	ast := self compile: 'foo  1 ifNotNil: [:a1 | 1 ]' in: Point.
	block := ast children first.
	a1 := block scope resolve: 'a1'.
	self assert: a1 isStackInlineArg: 'a1' at: 1! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:38:04'!
test131inlineBlockArgWithTemp 
	| ast block t1 a1 |
	ast := self compile: 'foo | t1 | 1 ifNotNil: [:a1 | 1 ]' in: Point.
	block := ast children first.
	t1 := ast scope resolve: 't1'.
	a1 := block scope resolve: 'a1'.
	self
		assert: t1 isStackTemp: 't1' at: 1;
		assert: a1 isStackInlineArg: 'a1' at: 2! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:38:15'!
test132inlineBlockArgWithTemps 
	| ast block t1 a1 t2 |
	ast := self compile: 'foo | t1 | 1 ifNotNil: [:a1 | | t2 | 1 ]' in: Point.
	block := ast children first.
	t1 := ast scope resolve: 't1'.
	a1 := block scope resolve: 'a1'.
	t2 := block scope resolve: 't2'.
	self
		assert: t1 isStackTemp: 't1' at: 1;
		assert: t2 isStackTemp: 't2' at: 2;
		assert: a1 isStackInlineArg: 'a1' at: 3! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:38:25'!
test133inlineBlockArgWithEnvTemps 
	| ast block1 mt1 b1a1 b1t2 |
	ast := self
		compile: 'foo | t1 | 1 ifNotNil: [:a1 | | t2 | 1. [t2] ]'
		in: Point.
	block1 := ast children first.
	mt1 := ast scope resolve: 't1'.
	b1a1 := block1 scope resolve: 'a1'.
	b1t2 := block1 scope resolve: 't2'.
	self
		assert: mt1 isStackTemp: 't1' at: 1;
		assert: b1t2 isEnvTemp: 't2' at: nil index: 1;
		assert: b1a1 isStackInlineArg: 'a1' at: 2! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:38:36'!
test134inlineBlockArgNestedAccess 
	| ast block1 block2 b1a1 b2a1 |
	ast := self compile: 'foo  1 ifNotNil: [:a1 | [a1] ]' in: Point.
	block1 := ast children first.
	block2 := block1 children first.
	b1a1 := block1 scope resolve: 'a1'.
	b2a1 := block2 scope resolve: 'a1'.
	self
		assert: b1a1 isEnvArg: 'a1' at: 1;
		assert: b2a1 isEnvArg: 'a1' at: 1! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:38:46'!
test135inlineBlockWithArgInRealBlockCaptured 
	| ast block1 block2 block3 b2a1 b3a1 |
	"Args of inlined blocks can go to the stack of the real block, unless captured. Because the
	 capture bytecode doesn't have a slot type for 'copy from stack temps' (it has capture from
	 stack in 	 args zone, capture the current env, and capture a value in the current env)"
	ast := self compile: 'foo  [1 ifNotNil: [:a1 | [a1] ]]' in: Point.
	block1 := ast children first.
	block2 := block1 children first.
	block3 := block2 children first.
	b2a1 := block2 scope resolve: 'a1'.
	b3a1 := block3 scope resolve: 'a1'.
	self
		assert: b2a1 isEnvArg: 'a1' at: 1;
		assert: b3a1 isEnvArg: 'a1' at: 1! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:38:56'!
test136inlineBlockWithArgCapturedByInlinedBlock 
	| ast block1 block2 b1a1 b2a1 |
	ast := self compile: 'foo 1 ifNotNil: [:a1 | a1. 2 ifTrue: [a1]]' in: Point.
	block1 := ast children first.
	block2 := block1 children first.
	b1a1 := block1 scope resolve: 'a1'.
	b2a1 := block2 scope resolve: 'a1'.
	self
		assert: b1a1 isStackInlineArg: 'a1' at: 1;
		assert: b2a1 isStackInlineArg: 'a1' at: 1! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:39:10'!
test137inlineBlockWithArgCapturedByInlinedBlockInRealBlock 
	| ast block1 block2 block3 b1a1 b3a1 |
	ast := self
		compile: 'foo 1 ifNotNil: [:a1 | [2 ifTrue: [a1]]]'
		in: Point.
	block1 := ast children first.
	block2 := block1 children first.
	block3 := block2 children first.
	b1a1 := block1 scope resolve: 'a1'.
	b3a1 := block3 scope resolve: 'a1'.
	self
		assert: b1a1 isEnvArg: 'a1' at: 1;
		assert: b3a1 isEnvArg: 'a1' at: 1! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:39:23'!
test138blockWithInlinedBlockWithTempCaptured 
	| ast block1 block2 block3 b2t1 b3t1 block |
	ast := self compile: 'foo [true ifTrue: [| t1 | [t1]]]' in: Point.
	block1 := ast children first.
	block2 := block1 children first.
	block3 := block2 children first.
	b2t1 := block2 scope resolve: 't1'.
	b3t1 := block3 scope resolve: 't1'.
	self
		assert: b2t1
			isEnvTemp: 't1'
			at: nil
			index: 1;
		assert: b3t1
			isEnvTemp: 't1'
			at: 1
			index: 1! !

!ScriptScopeTest methodsFor: 'testing' stamp: 'KenD 6/5/2021 07:39:54'!
test140blockWithInlinedBlockHasEnv 
	| ast |
	ast := self compile: 'foo [true ifTrue: [^self]]'.
	self assert: ast needsEnvironment! !

!ScriptScopeTest methodsFor: 'assertions' stamp: 'KenD 6/5/2021 07:13:12'!
assert: binding isEnvArg: name at: index 

	self
		assert: binding isArgument;
		assert: binding name = name;
		assert: binding index = index;
		assert: binding isInArray;
		assert: binding environmentIndex = nil! !

!ScriptScopeTest methodsFor: 'assertions' stamp: 'KenD 6/5/2021 07:13:28'!
assert: binding
isEnvTemp: name
at: environment
index: index 

	self
		assert: binding isTemporary;
		assert: binding isInArray;
		assert: binding name = name;
		assert: binding index = index;
		assert: binding environment = environment! !

!ScriptScopeTest methodsFor: 'assertions' stamp: 'KenD 6/5/2021 07:13:40'!
assert: binding isStackArg: name at: index 

	self
		assert: binding isArgument;
		assert: binding isInStack;
		assert: binding name = name;
		assert: binding index = index! !

!ScriptScopeTest methodsFor: 'assertions' stamp: 'KenD 6/5/2021 07:13:55'!
assert: binding isStackInlineArg: name at: index 

	self
		assert: binding isArgument;
		assert: binding isInStack;
		assert: binding name = name;
		assert: binding index = index;
		assert: binding environmentObject class = InlinedArgEnvironment! !

!ScriptScopeTest methodsFor: 'assertions' stamp: 'KenD 6/5/2021 07:14:08'!
assert: binding isStackTemp: name at: index 

	self
		assert: binding isTemporary;
		assert: binding isInStack;
		assert: binding name = name;
		assert: binding index = index! !

!ScriptScopeTest methodsFor: 'checking' stamp: 'KenD 6/5/2021 07:14:19'!
checkArgs: names in: scope 

	names withIndexDo: [:name :index | | binding |
		binding := scope resolve: name.
		self
			assert: binding isArgument;
			assert: binding name = name;
			assert: binding index = index]! !

!ScriptScopeTest methodsFor: 'checking' stamp: 'KenD 6/5/2021 07:14:30'!
checkClassVarsOf: aSpecies in: scope 

	aSpecies withAllSuperclasses do: [:c | 
		c classPool associationsDo: [:assoc | | name binding |
			name := assoc key.
			binding := scope resolve: name.
			self
				assert: binding isClassVariable;
				assert: binding name = name;
				assert: binding association == assoc]]! !

!ScriptScopeTest methodsFor: 'checking' stamp: 'KenD 6/5/2021 07:14:42'!
checkClosureEnvTemps: names in: scope at: environment 
	| offset |
	offset := scope environmentSizeUpToCapturedArguments.
	names withIndexDo: [:name :index | | binding |
		binding := scope resolve: name.
		self
			assert: binding isTemporary;
			assert: binding isInArray;
			assert: binding name = name;
			assert: binding index = (index + offset);
			assert: binding environment = environment]! !

!ScriptScopeTest methodsFor: 'checking' stamp: 'KenD 6/5/2021 07:14:54'!
checkEnvTemps: names in: scope at: environment 

	names withIndexDo: [:name :index | | binding |
		binding := scope resolve: name.
		self
			assert: binding isTemporary;
			assert: binding isInArray;
			assert: binding name = name;
			assert: binding index = index;
			assert: binding environment = environment]! !

!ScriptScopeTest methodsFor: 'checking' stamp: 'KenD 6/5/2021 07:15:07'!
checkInstVarsOf: aSpecies in: scope 

	aSpecies allInstVarNames withIndexDo: [:name :i | | binding |
		binding := scope resolve: name.
		self
			assert: binding isInstVar;
			assert: binding name = name;
			assert: binding index = i]! !

!ScriptScopeTest methodsFor: 'checking' stamp: 'KenD 6/5/2021 07:15:18'!
checkTemps: names in: scope 

	names withIndexDo: [:name :index | | binding |
		binding := scope resolve: name.
		self assert: binding isStackTemp: name at: index]! !

!ScriptScopeTest methodsFor: 'compiling' stamp: 'KenD 6/5/2021 07:15:31'!
compile: aString 

	^self compile: aString in: UndefinedObject! !

!ScriptScopeTest methodsFor: 'compiling' stamp: 'KenD 6/5/2021 07:15:44'!
compile: aString in: aClass 

	^SCompiler parse: aString in: aClass! !

!ScriptScopeTest methodsFor: 'as yet unclassified' stamp: 'KenD 6/5/2021 07:15:57'!
precondition: aBoolean 

	self assert: aBoolean description: 'Precondition for this test is not met'! !

!ScriptScopeTest methodsFor: 'as yet unclassified' stamp: 'KenD 6/5/2021 07:16:08'!
scopeFor: aSpecies 

	^MethodScope new species: aSpecies! !

!NumberParser2 methodsFor: 'accessing' stamp: 'KenD 6/3/2021 07:14:24'!
error

	^error! !

!NumberParser2 methodsFor: 'accessing' stamp: 'KenD 6/3/2021 07:07:38'!
error: aString at: position 

	error := aString -> position.
	return value: nil! !

!NumberParser2 methodsFor: 'accessing' stamp: 'KenD 6/3/2021 07:11:02'!
on: aString 
	stream := aString readStream.
	return := nil! !

!NumberParser2 methodsFor: 'accessing' stamp: 'KenD 6/3/2021 07:15:06'!
return

	^return! !

!NumberParser2 methodsFor: 'parsing' stamp: 'KenD 6/3/2021 07:08:28'!
next 
	| char |
	return isNil ifTrue: [return := [:value | ^value]].
	char := self nextChar.
	char isNil ifTrue: [^self endToken].
	char = $- ifTrue: [^self negativeNumber].
	char = $+ ifTrue: [^self positiveNumber].
	char isDigit ifTrue: [^self nextNumber: char].
	^nil! !

!NumberParser2 methodsFor: 'parsing' stamp: 'KenD 6/3/2021 07:08:42'!
nextChar 

	^stream skipSeparators atEnd ifFalse: [stream next]! !

!NumberParser2 methodsFor: 'parsing' stamp: 'KenD 6/3/2021 07:08:54'!
nextDigit: radix 
	| char digit |
	stream atEnd ifTrue: [^nil].
	char := stream next.
	digit := self digitFromChar: char base: radix.
	digit isNil ifTrue: [
		stream skip: -1.
		^nil].
	radix <= digit
		ifTrue: [self error: 'digit greater than radix' at: stream position].
	^digit! !

!NumberParser2 methodsFor: 'parsing' stamp: 'KenD 6/3/2021 07:09:08'!
nextExponent 
	| negated exp |
	negated := false.
	(stream peekFor: $+) ifFalse: [negated := stream peekFor: $-].
	exp := self nextIntegerRadix: 10.
	negated ifTrue: [exp := exp negated].
	^exp! !

!NumberParser2 methodsFor: 'parsing' stamp: 'KenD 6/3/2021 07:09:44'!
nextFloat: aNumber 
	| base digit e exp |
	digit := self nextDigit: 10.
	digit isNil ifTrue: [
		stream skip: -1.
		^aNumber].
	e := 1.
	base := aNumber * 10 + digit.
	[
		digit := self nextDigit: 10.
		digit isNil]
		whileFalse: [
			base := base * 10 + digit.
			e := e + 1].
	((stream peekFor: $E) or: [stream peekFor: $e]) ifTrue: [
		exp := self nextExponent.
		^(base * (10 raisedToInteger: exp - e)) asFloat].
	(stream peekFor: $s) ifTrue: [^self nextScaledFrom: base fractionDigits: e].
	^(base * (10 raisedToInteger: e negated)) asFloat! !

!NumberParser2 methodsFor: 'parsing' stamp: 'KenD 6/3/2021 07:09:59'!
nextIntegerRadix: radix 
	| value valid digit |
	value := 0.
	valid := false.
	[
		digit := self nextDigit: radix.
		digit isNil]
		whileFalse: [
			valid := true.
			value := value * radix + digit].
	valid ifFalse: [self error: 'digit missing' at: stream position + 1].
	^value! !

!NumberParser2 methodsFor: 'parsing' stamp: 'KenD 6/3/2021 07:10:12'!
nextNumber: aCharacter 
	| start number digit |
	start := stream position.
	number := aCharacter digitValue.
	[
		digit := self nextDigit: 10.
		digit isNil]
		whileFalse: [number := number * 10 + digit].
	number := self completeNumber: number at: start.
	^number -> (start thru: stream position)! !

!NumberParser2 methodsFor: 'parsing' stamp: 'KenD 6/3/2021 07:10:27'!
nextScaledFrom: aNumber fractionDigits: digits 
	| scale denominator sd |
	scale := (stream atEnd not and: [stream peek isDigit])
		ifTrue: [self nextIntegerRadix: 10].
	denominator := 10 raisedToInteger: digits.
	sd := ScaledDecimal
		numerator: aNumber
		denominator: denominator
		scale: scale.
	^sd reduced! !

!NumberParser2 methodsFor: 'parsing' stamp: 'KenD 6/3/2021 07:10:48'!
nextValue 

	^self next ifNil: [0] ifNotNil: [:assoc | assoc key]! !

!NumberParser2 methodsFor: 'processing' stamp: 'KenD 6/3/2021 07:05:37'!
checkNumberEnd: position 
	| char |
	stream atEnd ifTrue: [^self].
	char := stream peek.
	char = $. ifFalse: [^self].
	stream skip: 1.
	stream atEnd
		ifFalse: [stream peek isDigit
			ifTrue: [self error: 'invalid number' at: position]].
	stream skip: -1! !

!NumberParser2 methodsFor: 'processing' stamp: 'KenD 6/3/2021 07:05:54'!
completeFloat: anInteger 
	| tenth |
	tenth := 10 raisedToInteger: self nextExponent.
	^(anInteger * tenth) asFloat! !

!NumberParser2 methodsFor: 'processing' stamp: 'KenD 6/3/2021 07:06:11'!
completeNumber: anInteger after: aCharacter 
	aCharacter = $. ifTrue: [
		^(stream peekFor: $s)
			ifTrue: [self nextScaledFrom: anInteger fractionDigits: 0]
			ifFalse: [self nextFloat: anInteger]].
	(aCharacter = $e or: [aCharacter = $E])
		ifTrue: [^self completeFloat: anInteger].
	aCharacter = $r ifTrue: [^self nextIntegerRadix: anInteger].
	aCharacter = $s ifTrue: [^self nextScaledFrom: anInteger fractionDigits: 0].
	(anInteger = 0 and: [aCharacter = $x or: [aCharacter = $X]])
		ifTrue: [^self nextIntegerRadix: 16].
	stream skip: -1.
	^anInteger! !

!NumberParser2 methodsFor: 'processing' stamp: 'KenD 6/3/2021 07:06:28'!
completeNumber: anInteger at: start 
	| number |
	stream atEnd ifTrue: [^anInteger].
	number := anInteger.
	number := self completeNumber: anInteger after: stream next.
	self checkNumberEnd: start.
	^number! !

!NumberParser2 methodsFor: 'processing' stamp: 'KenD 6/3/2021 07:06:41'!
digitFromChar: char base: radix 
	| c |
	char isDigit ifTrue: [^char digitValue].
	char = $r ifTrue: [^nil].
	char = $x ifTrue: [^nil].
	char = $X ifTrue: [^nil].
	c := char asUppercase.
	(c asInteger between: $A asInteger and: $Z asInteger) ifFalse: [^nil].
	(c !!= $E and: [radix <= c digitValue]) ifTrue: [^nil].
	(c = $E and: [radix = 10]) ifTrue: [^nil].
	^c digitValue! !

!NumberParser2 methodsFor: 'processing' stamp: 'KenD 6/3/2021 07:06:55'!
endToken 

	self error: 'end of stream' at: stream position! !

!NumberParser2 methodsFor: 'processing' stamp: 'KenD 6/3/2021 07:07:59'!
negativeNumber 
	| position |
	stream atEnd ifTrue: [^nil].
	stream peek isDigit ifFalse: [^nil].
	position := stream position.
	^self next key negated -> position! !

!NumberParser2 methodsFor: 'processing' stamp: 'KenD 6/3/2021 07:11:51'!
positiveNumber 
	| position |
	stream peek isDigit ifFalse: [^nil].
	position := stream position.
	^self next key -> position! !

!NumberParser2 methodsFor: 'processing' stamp: 'KenD 6/3/2021 07:12:05'!
reset 
	stream reset.
	return := nil! !

!OperandEncoding methodsFor: 'testing' stamp: 'KenD 4/25/2021 11:33:46'!
isImmediate1Operand: index 

	^(self isImmediateOperand: index)
		and: [(1 to: index - 1) noneSatisfy: [:i | self isImmediateOperand: i]]! !

!OperandEncoding methodsFor: 'testing' stamp: 'KenD 4/25/2021 11:33:59'!
isImmediate2Operand: index 

	^(self isImmediateOperand: index)
		and: [(1 to: index - 1) anySatisfy: [:i | self isImmediateOperand: i]]! !

!OperandEncoding methodsFor: 'testing' stamp: 'KenD 4/25/2021 11:34:25'!
isImmediateOperand: index 

	| d |
	d := descriptions at: index.
	^(d includesString: 'IMM') or: [d includesString: 'OFFS'] or: [d = 'IW']! !

!OperandEncoding methodsFor: 'testing' stamp: 'KenD 4/25/2021 11:34:41'!
isVvvvOperand: index 

	^(descriptions at: index) includesString: 'VVVV'! !

!OperandEncoding methodsFor: 'testing' stamp: 'KenD 4/25/2021 11:36:36'!
usesImmediate 

	^immediate! !

!OperandEncoding methodsFor: 'testing' stamp: 'KenD 4/25/2021 11:36:45'!
usesImmediate2 

	^immediate and: [selectors anySatisfy: [:s | s includesString: 'II']]! !

!OperandEncoding methodsFor: 'testing' stamp: 'KenD 4/25/2021 11:36:59'!
usesModRM 

	^modrm! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:12:55'!
encodeAOperand1: operand 
"
	imm8
"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:13:08'!
encodeDOperand1: instruction 
	"
	offset
	"
	| op bytes |
	op := instruction spec operands at: 1.
	bytes := self bytesFor: instruction operand1 value length: op length // 8.
	instruction immediate: bytes! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:13:38'!
encodeFDOperand1: instruction 
	"
	AL/AX/EAX/RAX
	Moffs
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:13:48'!
encodeFDOperand2: operand 
	"
	AL/AX/EAX/RAX
	Moffs
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:13:57'!
encodeFVOperand1: instruction 
	"
	ModRM:reg (w)
	EVEX.vvvv
	ModRM:r/m (r)
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:14:06'!
encodeFVOperand2: instruction 
	"
	ModRM:reg (w)
	EVEX.vvvv
	ModRM:r/m (r)
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:14:16'!
encodeFVOperand3: instruction 
	"
	ModRM:reg (w)
	EVEX.vvvv
	ModRM:r/m (r)
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:14:24'!
encodeFVRVMOperand1: instruction 
	"
	ModRM:reg (w)
	EVEX.vvvv
	ModRM:r/m (r)
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:14:34'!
encodeFVRVMOperand2: instruction 
	"
	ModRM:reg (w)
	EVEX.vvvv
	ModRM:r/m (r)
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:14:43'!
encodeFVRVMOperand3: instruction 
	"
	ModRM:reg (w)
	EVEX.vvvv
	ModRM:r/m (r)
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:14:52'!
encodeIIOperand1: instruction 
	"
	iw
	imm8
	"
	| op bytes |
	op := instruction spec operands at: 1.
	bytes := self bytesFor: instruction operand1 value length: op length // 8.
	instruction immediate: bytes! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:15:04'!
encodeIIOperand2: instruction 
	"
	iw
	imm8
	"
	| op bytes |
	op := instruction spec operands at: 2.
	bytes := self bytesFor: instruction operand2 value length: op length // 8.
	instruction immediate2: bytes
! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:15:16'!
encodeIOperand1: instruction 
	"
	AL/AX/EAX/RAX
	imm8
	"
	"
	do nothing
	"
	instruction arity = 1 ifTrue: [| op bytes |
		op := instruction spec operands at: 1.
		bytes := self bytesFor: instruction operand1 value length: op length // 8.
		instruction immediate: bytes]! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:15:29'!
encodeIOperand2: instruction 
	"
	AL/AX/EAX/RAX
	imm8
	"
	| op bytes |
	op := instruction spec operands at: 2.
	bytes := self bytesFor: instruction operand2 value length: op length // 8.
	instruction immediate: bytes
! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:15:40'!
encodeM1Operand1: instruction 
	"
	ModRM:r/m (w)
	1
	"
	instruction rm: instruction operand1 rm! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:15:50'!
encodeM1Operand2: instruction 
	"
	ModRM:r/m (w)
	1
	"
	"
	do nothing
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:16:17'!
encodeMCOperand1: instruction 
	"
	ModRM:r/m (w)
	CL
	"
	instruction rm: instruction operand1 rm! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:20:10'!
encodeMCOperand2: operand 
	"
	ModRM:r/m (w)
	CL
	"
	"
	do nothing
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:21:24'!
encodeMIOperand1: instruction 
	"
	ModRM:r/m (r, w)
	imm8
	"
	instruction rm: instruction operand1 rm! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:21:39'!
encodeMIOperand2: instruction 
	"
	ModRM:r/m (r, w)
	imm8
	"
	| op bytes |
	op := instruction spec operands at: 2.
	bytes := self bytesFor: instruction operand2 value length: op length // 8.
	instruction immediate: bytes
! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:21:50'!
encodeMOperand1: instruction 

	"
	ModRM:r/m (r)
	"
	instruction rm: instruction operand1 rm! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:22:03'!
encodeMRCOperand1: instruction 
	"
	ModRM:r/m (w)
	ModRM:reg (r)
	CL
	"
	instruction rm: instruction operand1 rm! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:22:14'!
encodeMRCOperand2: instruction 
	"
	ModRM:r/m (w)
	ModRM:reg (r)
	CL
	"
	instruction reg: instruction operand2! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:22:24'!
encodeMRCOperand3: instruction 
	"
	ModRM:r/m (w)
	ModRM:reg (r)
	CL
	"
	"
	do nothing
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:22:35'!
encodeMRIOperand1: instruction 
	"
	ModRM:r/m (w)
	ModRM:reg (r)
	imm8
	"
	instruction rm: instruction operand1 rm! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:22:45'!
encodeMRIOperand2: instruction 
	"
	ModRM:r/m (w)
	ModRM:reg (r)
	imm8
	"
	instruction reg: instruction operand2! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:22:58'!
encodeMRIOperand3: instruction 
	"
	ModRM:r/m (w)
	ModRM:reg (r)
	imm8
	"
	| op bytes |
	op := instruction spec operands at: 3.
	bytes := self bytesFor: instruction operand3 value length: op length // 8.
	instruction immediate: bytes! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:23:09'!
encodeMROperand1: instruction 
	"
	ModRM:r/m (r, w)
	ModRM:reg (r)
	"
	instruction rm: instruction operand1 rm
! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:23:18'!
encodeMROperand2: instruction 
	"
	ModRM:r/m (r, w)
	ModRM:reg (r)
	"
	instruction reg: instruction operand2! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:23:27'!
encodeMVROperand1: instruction 
	"
	ModRM:r/m (w)
	VEX.vvvv (r)
	ModRM:reg (r)
	"
	instruction vrm: instruction operand1 rm! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:23:36'!
encodeMVROperand2: instruction 
	"
	ModRM:r/m (w)
	VEX.vvvv (r)
	ModRM:reg (r)
	"
	instruction vvvv: instruction operand2 index! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:23:45'!
encodeMVROperand3: instruction 
	"
	ModRM:r/m (w)
	VEX.vvvv (r)
	ModRM:reg (r)
	"
	instruction vreg: instruction operand3! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:23:54'!
encodeNPOperand1: instruction 
	"
	ModRM:r/m (w)
	ModRM:reg (r)
	"
	self assert: instruction operand1 isImmediate! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:24:07'!
encodeNPOperand2: operand 
	"
	ModRM:r/m (w)
	ModRM:reg (r)
	"
	self assert: false! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:24:19'!
encodeOIOperand1: instruction 
	"
	opcode + rd (w)
	imm8/16/32/64
	"
	self encodeOOperand1: instruction! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:24:32'!
encodeOIOperand2: instruction 
	"
	opcode + rd (w)
	imm8/16/32/64
	"
	instruction operand2 length: instruction operand1 length.
	instruction immediate: instruction operand2 bytes! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:24:40'!
encodeOOperand1: instruction 
	"
	opcode + rd (r, w)
	"
	| index i opcode |
	index := instruction operand1 index.
	i := index bitAnd: 2r111.
	opcode := instruction spec primaryOpcode copy.
	opcode at: opcode size put: opcode last + i.
	index > 7
		ifTrue: [instruction rexB: true opcode: opcode]
		ifFalse: [instruction opcode: opcode]! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:26:10'!
encodeRM0Operand1: instruction 
	"
	ModRM:reg (r, w)
	ModRM:r/m (r)
	"
	instruction vreg: instruction operand1! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:26:21'!
encodeRM0Operand2: instruction 
	"
	ModRM:reg (r, w)
	ModRM:r/m (r)
	"
	instruction vrm: instruction operand2 rm! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:26:58'!
encodeRMIOperand1: instruction 
	"
	ModRM:reg (w)
	ModRM:r/m (r)
	imm8
	"
	instruction reg: instruction operand1! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:27:10'!
encodeRMIOperand2: instruction 
	"
	ModRM:reg (w)
	ModRM:r/m (r)
	imm8
	"
	instruction rm: instruction operand2 rm! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:27:22'!
encodeRMIOperand3: instruction 
	"
	ModRM:reg (w)
	ModRM:r/m (r)
	imm8
	"
	| op bytes |
	op := instruction spec operands at: 3.
	bytes := self bytesFor: instruction operand3 value length: op length // 8.
	instruction immediate: bytes
! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:27:30'!
encodeRMOperand1: instruction 
	"
	ModRM:reg (r, w)
	ModRM:r/m (r)
	"
	instruction reg: instruction operand1! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:27:39'!
encodeRMOperand2: instruction 
	"
	ModRM:reg (r, w)
	ModRM:r/m (r)
	"
	instruction rm: instruction operand2 rm! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:27:49'!
encodeRMVOperand1: instruction 
	"
	ModRM:reg (w)
	ModRM:r/m (r)
	VEX.vvvv (r)
	"
	instruction vreg: instruction operand1! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:28:00'!
encodeRMVOperand2: instruction 
	"
	ModRM:reg (w)
	ModRM:r/m (r)
	VEX.vvvv (r)
	"
	instruction vrm: instruction operand2 rm! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:28:12'!
encodeRMVOperand3: instruction 
	"
	ModRM:reg (w)
	ModRM:r/m (r)
	VEX.vvvv (r)
	"
	instruction vvvv: instruction operand3 index! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:28:22'!
encodeRVMIOperand1: instruction 
	"
	ModRM:reg (w)
	VEX.vvvv (r)
	ModRM:r/m (r)
	imm8[3:0]
	"
	instruction vreg: instruction operand1! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:28:30'!
encodeRVMIOperand2: instruction 
	"
	ModRM:reg (w)
	VEX.vvvv (r)
	ModRM:r/m (r)
	imm8[3:0]
	"
	instruction vvvv: instruction operand2 index! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:28:41'!
encodeRVMIOperand3: instruction 
	"
	ModRM:reg (w)
	VEX.vvvv (r)
	ModRM:r/m (r)
	imm8[3:0]
	"
	instruction vrm: instruction operand3 rm! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:28:58'!
encodeRVMIOperand4: instruction 
	"
	ModRM:reg (w)
	VEX.vvvv (r)
	ModRM:r/m (r)
	imm8[3:0]
	"
	| op bytes |
	op := instruction spec operands at: 4.
	bytes := self bytesFor: instruction operand4 value length: op length // 8.
	instruction immediate: bytes
! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:29:09'!
encodeRVMOperand1: instruction 
	"
	ModRM:reg (w)
	VEX.vvvv
	ModRM:r/m (r)
	"
	instruction vreg: instruction operand1! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:29:19'!
encodeRVMOperand2: instruction 
	"
	ModRM:reg (w)
	VEX.vvvv
	ModRM:r/m (r)
	"
	instruction vvvv: instruction operand2 index! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:29:34'!
encodeRVMOperand3: instruction 
	"
	ModRM:reg (w)
	VEX.vvvv
	ModRM:r/m (r)
	"
	instruction vrm: instruction operand3 rm! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:29:43'!
encodeRVMROperand1: instruction 
	"
	ModRM:reg (w)
	VEX.vvvv (r)
	ModRM:r/m (r)
	imm8[7:4]
	"
	instruction vreg: instruction operand1! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:29:51'!
encodeRVMROperand2: instruction 
	"
	ModRM:reg (w)
	VEX.vvvv (r)
	ModRM:r/m (r)
	imm8[7:4]
	"
	instruction vvvv: instruction operand2 index! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:30:01'!
encodeRVMROperand3: instruction 
	"
	ModRM:reg (w)
	VEX.vvvv (r)
	ModRM:r/m (r)
	imm8[7:4]
	"
	instruction vrm: instruction operand3 rm! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:30:10'!
encodeRVMROperand4: instruction 
	"
	ModRM:reg (w)
	VEX.vvvv (r)
	ModRM:r/m (r)
	imm8[7:4]
	"
	| imm |
	imm := instruction operand4 index bitShift: 4.
	instruction immediate: imm! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:30:18'!
encodeT1SOperand1: instruction 
	"
	ModRM:reg (w)
	EVEX.vvvv
	ModRM:r/m (r)
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:30:27'!
encodeT1SOperand2: instruction 
	"
	ModRM:reg (w)
	EVEX.vvvv
	ModRM:r/m (r)
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:30:37'!
encodeT1SOperand3: instruction 
	"
	ModRM:reg (w)
	EVEX.vvvv
	ModRM:r/m (r)
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:30:48'!
encodeT1SRVMOperand1: instruction 
	"
	ModRM:reg (w)
	EVEX.vvvv
	ModRM:r/m (r)
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:30:57'!
encodeT1SRVMOperand2: instruction 
	"
	ModRM:reg (w)
	EVEX.vvvv
	ModRM:r/m (r)
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:31:05'!
encodeT1SRVMOperand3: instruction 
	"
	ModRM:reg (w)
	EVEX.vvvv
	ModRM:r/m (r)
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:31:17'!
encodeTDOperand1: operand 
	"
	Moffs (w)
	AL/AX/EAX/RAX
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:31:27'!
encodeTDOperand2: operand 
	"
	Moffs (w)
	AL/AX/EAX/RAX
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:31:38'!
encodeTOOperand1: operand ! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:31:46'!
encodeTOOperand2: operand ! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:31:58'!
encodeVMIOperand1: instruction 
	"
	VEX.vvvv (w)
	ModRM:r/m (r)
	imm8
	"
	instruction vvvv: instruction operand1 index! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:32:07'!
encodeVMIOperand2: instruction 
	"
	VEX.vvvv (w)
	ModRM:r/m (r)
	imm8
	"
	instruction vrm: instruction operand2 rm! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:32:16'!
encodeVMIOperand3: instruction 
	"
	VEX.vvvv (w)
	ModRM:r/m (r)
	imm8
	"
	| op bytes |
	op := instruction spec operands at: 3.
	bytes := self bytesFor: instruction operand3 value length: op length // 8.
	instruction immediate: bytes! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:32:28'!
encodeVMOperand1: operand 
	"
	VEX.vvvv (w)
	ModRM:r/m (r)
	"
	! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:32:37'!
encodeVMOperand2: operand 
	"
	VEX.vvvv (w)
	ModRM:r/m (r)
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:32:45'!
encodeXMOperand1: operand 
	"
	ModRM:reg (w)
	ModRM:r/m (r)
	"! !

!OperandEncoding methodsFor: 'private' stamp: 'KenD 4/25/2021 11:32:59'!
encodeXMOperand2: operand 
	"
	ModRM:reg (w)
	ModRM:r/m (r)
	"! !

!OperandEncoding methodsFor: 'services' stamp: 'KenD 4/25/2021 11:11:50'!
bytesFor: integer length: n 
	| bytes v |
	bytes := ByteArray new: n.
	v := integer.
	v < 0 ifTrue: [v := v + (1 bitShift: n * 8)].
	1 to: n do: [:i | | b |
		b := v bitAnd: 16rFF.
		bytes at: i put: b.
		v := v bitShift: -8].
	^bytes! !

!OperandEncoding methodsFor: 'services' stamp: 'KenD 4/25/2021 11:25:43'!
encodeOperand: i of: instruction 
	| selector |
	selector := selectors at: i.
	self perform: selector with: instruction
! !

!OperandEncoding methodsFor: 'services' stamp: 'KenD 4/25/2021 11:25:56'!
encodeOperands: instruction 

	1 to: instruction arity do: [:i | self encodeOperand: i of: instruction]! !

!OperandEncoding methodsFor: 'services' stamp: 'KenD 4/25/2021 11:33:26'!
immediateOperand 

	^descriptions findFirst: [:d | d includesString: 'IMM']! !

!OperandEncoding methodsFor: 'services' stamp: 'KenD 4/25/2021 11:35:17'!
operand: index of: instruction 
	| d |
	d := descriptions at: index.
	(d includesString: 'reg') ifTrue: [^instruction regOperand: index].
	(d includesString: 'r/m') ifTrue: [^instruction rmOperand: index].
	(d includesString: 'vvvv') ifTrue: [^instruction vvvvOperand: index].
	(self isImmediate1Operand: index) ifTrue: [^instruction immediateOperand].
	(self isImmediate2Operand: index) ifTrue: [^instruction immediateOperand2].
	(instruction spec operands at: index) isImmediate
		ifTrue: [^instruction immediateOperand].
	((d beginsWith: 'opcode') and: [index = 1])
		ifTrue: [^instruction opcodeOperand].
	self assert: false! !

!OperandEncoding methodsFor: 'accessing' stamp: 'KenD 4/25/2021 11:12:13'!
descriptions 

	^descriptions! !

!OperandEncoding methodsFor: 'accessing' stamp: 'KenD 4/25/2021 11:12:25'!
descriptions: aCollection 

	descriptions := aCollection.
	modrm := immediate := false.
	(selectors conform: [:s | s beginsWith: 'encodeNP']) ifTrue: [^self].
	descriptions do: [:d | 
		(d includesString: 'ModRM') ifTrue: [modrm := true].
		(d includesString: 'offs') ifTrue: [immediate := true].
		(d includesString: 'imm') ifTrue: [immediate := true]]! !

!OperandEncoding methodsFor: 'accessing' stamp: 'KenD 4/25/2021 11:34:55'!
name 

	^name! !

!OperandEncoding methodsFor: 'accessing' stamp: 'KenD 4/25/2021 11:35:04'!
name: aString 

	name := aString! !

!OperandEncoding methodsFor: 'accessing' stamp: 'KenD 4/25/2021 11:36:17'!
selectors 

	^selectors! !

!OperandEncoding methodsFor: 'accessing' stamp: 'KenD 4/25/2021 11:36:25'!
selectors: aCollection 

	selectors := aCollection! !

!OperandEncoding methodsFor: 'printing' stamp: 'KenD 4/25/2021 11:36:00'!
printOn: aStream 

	name isNil ifTrue: [^super printOn: aStream].
	aStream nextPutAll: name! !

!OperandEncoding class methodsFor: 'class initialization' stamp: 'KenD 4/25/2021 11:09:22'!
commentEncodingMethods 
"
	StChangesetBrowser new
		label: 'OperandEncoding comments';
		setModel: (ChangesetBrowserModel on: OperandEncoding commentEncodingMethods);
		openInWindow
"
	| changes |
	changes := OrderedCollection new.
	Encodings collect: [:oe | | comment |
		comment := String streamContents: [:strm | 
			strm crtab; nextPut: $"; crtab.
			oe descriptions do: [:d | strm nextPutAll: d; crtab].
			strm nextPut: $"; cr].
		oe selectors do: [:s | | cm reader source change |
			cm := self >> s.
			reader := cm sourceCode readStream.
			source := String streamContents: [:strm | 
				strm
					nextPutAll: reader nextLine;
					nextPutAll: comment;
					nextPutAll: reader upToEnd].
			change := self project changes
				methodDefinitionClass: self
				sourceCode: source.
			changes add: change]].
	^changes
! !

!OperandEncoding class methodsFor: 'class initialization' stamp: 'KenD 4/25/2021 11:09:53'!
defs 
	^#(
		#('A' 'imm8')
		#('D' 'offset')
		#('FD' 'AL/AX/EAX/RAX' 'Moffs')
		#('FV' 'ModRM:reg (w)' 'EVEX.vvvv' 'ModRM:r/m (r)')
		#('FV-RVM' 'ModRM:reg (w)' 'EVEX.vvvv' 'ModRM:r/m (r)')
		#('I' 'AL/AX/EAX/RAX' 'imm8')
		#('II' 'iw' 'imm8')
		#('M' 'ModRM:r/m (r)')
		#('M1' 'ModRM:r/m (w)' '1')
		#('MC' 'ModRM:r/m (w)' 'CL')
		#('MI' 'ModRM:r/m (r, w)' 'imm8')
		#('MR' 'ModRM:r/m (r, w)' 'ModRM:reg (r)')
		#('MRC' 'ModRM:r/m (w)' 'ModRM:reg (r)' 'CL')
		#('MRI' 'ModRM:r/m (w)' 'ModRM:reg (r)' 'imm8')
		#('MVR' 'ModRM:r/m (w)' 'VEX.vvvv (r)' 'ModRM:reg (r)')
		#('NP' 'ModRM:r/m (w)' 'ModRM:reg (r)')
		#('O' 'opcode + rd (r, w)')
		#('OI' 'opcode + rd (w)' 'imm8/16/32/64')
		#('RM' 'ModRM:reg (r, w)' 'ModRM:r/m (r)')
		#('RM0' 'ModRM:reg (r, w)' 'ModRM:r/m (r)')
		#('RMI' 'ModRM:reg (w)' 'ModRM:r/m (r)' 'imm8')
		#('RMV' 'ModRM:reg (w)' 'ModRM:r/m (r)' 'VEX.vvvv (r)')
		#('RVM' 'ModRM:reg (w)' 'VEX.vvvv' 'ModRM:r/m (r)')
		#('RVMI' 'ModRM:reg (w)' 'VEX.vvvv (r)' 'ModRM:r/m (r)' 'imm8[3:0]')
		#('RVMR' 'ModRM:reg (w)' 'VEX.vvvv (r)' 'ModRM:r/m (r)' 'imm8[7:4]')
		#('T1S' 'ModRM:reg (w)' 'EVEX.vvvv' 'ModRM:r/m (r)')
		#('T1S-RVM' 'ModRM:reg (w)' 'EVEX.vvvv' 'ModRM:r/m (r)')
		#('TD' 'Moffs (w)' 'AL/AX/EAX/RAX')
		#('VM' 'VEX.vvvv (w)' 'ModRM:r/m (r)')
		#('VMI' 'VEX.vvvv (w)' 'ModRM:r/m (r)' 'imm8')
		#('XM' 'ModRM:reg (w)' 'ModRM:r/m (r)'))! !

!OperandEncoding class methodsFor: 'class initialization' stamp: 'KenD 4/25/2021 11:10:16'!
initializeEncodings 
	Encodings := OrderedCollection new.
	self defs
		do: [ :def | 
			| oe n selectors |
			n := def first replaceAllSubstrings: '-' with: ''.
			oe := self new.
			selectors := (2 to: def size)
				collect: [ :i | ('encode' , n , 'Operand' , (i - 1) asString , ':') asSymbol ].
			oe
				name: n;
				selectors: selectors;
				descriptions: def allButFirst.
			selectors
				reject: [ :s | self includesSelector: s ]
				thenDo: [ :s | self compile: s , ' instruction' ].
			Encodings add: oe ].
	Encodings := Encodings asArray! !

!OperandEncoding class methodsFor: 'instance creation' stamp: 'KenD 4/25/2021 11:11:15'!
named: aString 

	^Encodings
		detect: [:e | e name = aString asUppercase ]
		ifNone: [(aString includes: $-) ifTrue: [self halt]]! !

!ABI methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:37:49'!
regA
	^self subclassResponsibility
! !

!ABI methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:37:49'!
regE
	^self subclassResponsibility
! !

!ABI methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:37:49'!
regFP
	^ self subclassResponsibility
! !

!ABI methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:37:49'!
regFalse
	^self subclassResponsibility
! !

!ABI methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:37:49'!
regG
	^ self subclassResponsibility
! !

!ABI methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:37:49'!
regIP
	^self subclassResponsibility
! !

!ABI methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:37:49'!
regM
	^self subclassResponsibility
! !

!ABI methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:37:49'!
regNil
	^self subclassResponsibility
! !

!ABI methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:37:49'!
regR
	^self subclassResponsibility
! !

!ABI methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:37:49'!
regS
	^self subclassResponsibility
! !

!ABI methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:37:49'!
regSP
	^self subclassResponsibility
! !

!ABI methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:37:49'!
regT
	^self subclassResponsibility
! !

!ABI methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:37:49'!
regTrue
	^self subclassResponsibility
! !

!ABI methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:37:49'!
regV
	^self subclassResponsibility
! !

!ABI methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:37:49'!
regX0
	^ self subclassResponsibility
! !

!ABI methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:37:49'!
regX1
	^ self subclassResponsibility
! !

!ABI methodsFor: 'unclassified' stamp: 'KenD 10/23/2022 15:53:47'!
is32bits
	^self widthInBits = 32
! !

!ABI methodsFor: 'unclassified' stamp: 'KenD 10/23/2022 15:53:37'!
is64bits
	^self widthInBits = 64
! !

!RV64GABI methodsFor: 'registers - IR' stamp: 'KenD 9/27/2022 10:44:26'!
regA

	^RegA! !

!RV64GABI methodsFor: 'registers - IR' stamp: 'KenD 9/27/2022 10:44:41'!
regE

	^RegE! !

!RV64GABI methodsFor: 'registers - IR' stamp: 'KenD 9/27/2022 10:44:51'!
regFP

	^RegFP! !

!RV64GABI methodsFor: 'registers - IR' stamp: 'KenD 9/27/2022 10:45:04'!
regFalse

	^RegFalse! !

!RV64GABI methodsFor: 'registers - IR' stamp: 'KenD 9/27/2022 10:45:23'!
regG

	^RegG! !

!RV64GABI methodsFor: 'registers - IR' stamp: 'KenD 10/4/2022 10:44:26'!
regIP

	^ self error: 'RISC-V: PC is not a visible register. Use auipc instruction!!' ! !

!RV64GABI methodsFor: 'registers - IR' stamp: 'KenD 9/27/2022 10:46:09'!
regM

	^RegM! !

!RV64GABI methodsFor: 'registers - IR' stamp: 'KenD 9/27/2022 10:46:22'!
regNil

	^RegNil! !

!RV64GABI methodsFor: 'registers - IR' stamp: 'KenD 9/27/2022 10:46:34'!
regR

	^RegR! !

!RV64GABI methodsFor: 'registers - IR' stamp: 'KenD 9/27/2022 10:46:54'!
regS

	^RegS! !

!RV64GABI methodsFor: 'registers - IR' stamp: 'KenD 9/27/2022 10:47:09'!
regSP

	^RegSP! !

!RV64GABI methodsFor: 'registers - IR' stamp: 'KenD 9/27/2022 10:47:25'!
regT

	^RegT! !

!RV64GABI methodsFor: 'registers - IR' stamp: 'KenD 9/27/2022 13:07:47'!
regTrue

	^RegTrue! !

!RV64GABI methodsFor: 'registers - IR' stamp: 'KenD 9/27/2022 13:07:59'!
regV

	^RegV! !

!RV64GABI methodsFor: 'registers - IR' stamp: 'KenD 9/27/2022 13:08:17'!
regX0

	^RegX0! !

!RV64GABI methodsFor: 'registers - IR' stamp: 'KenD 9/27/2022 13:08:27'!
regX1

	^RegX1! !

!RV64GABI methodsFor: 'registers - internal use only' stamp: 'KenD 10/4/2022 10:47:37'!
regFlags

	^ RegFlags! !

!RV64GABI methodsFor: 'registers - internal use only' stamp: 'KenD 10/4/2022 10:45:20'!
regLink

	^ RegLink! !

!RV64GABI methodsFor: 'registers - internal use only' stamp: 'KenD 10/14/2022 13:22:28'!
regTmp0

	^ RegTmp0! !

!RV64GABI methodsFor: 'registers - internal use only' stamp: 'KenD 10/4/2022 10:45:28'!
regTmp1

	^ RegTmp1! !

!RV64GABI methodsFor: 'registers - internal use only' stamp: 'KenD 10/4/2022 10:46:06'!
regZero

	^RegZero! !

!RV64GABI methodsFor: 'accessing' stamp: 'KenD 10/23/2022 15:52:00'!
bits
	"Pointers are 8 bytes with 8 bits per byte"
	^ 64 "8 * 8"! !

!RV64GABI methodsFor: 'accessing' stamp: 'KenD 10/23/2022 15:53:19'!
widthInBits
	"Pointers are 8 bytes with 8 bits per byte"
	^ 64 "8 * 8"! !

!RV64GABI methodsFor: 'accessing' stamp: 'KenD 9/26/2022 16:42:07'!
wordSize
	"Pointers are 8 bytes"
	^ 8! !

!RV64GABI methodsFor: 'accessing' stamp: 'KenD 9/26/2022 16:42:51'!
wordSizeShift

	^ 3
! !

!RV64GABI class methodsFor: 'accessing' stamp: 'KenD 10/23/2022 15:54:13'!
widthInBits

	^ 64 "8 bytes per pointer"! !

!RV64GABI class methodsFor: 'accessing' stamp: 'KenD 10/23/2022 15:50:37'!
wordSize

	^ 8 "bytes per pointer"! !

!RV64GABI class methodsFor: 'accessing' stamp: 'KenD 10/23/2022 15:50:16'!
wordSizeShift
	
	^ 3! !

!Assembler methodsFor: 'jumps' stamp: 'KenD 9/26/2022 12:38:17'!
jumpIfEqualTo: label
	codegen jumpIfEqualTo: label
! !

!Assembler methodsFor: 'jumps' stamp: 'KenD 9/26/2022 12:38:17'!
jumpIfGreaterOrEqualSignedTo: label
	codegen jumpIfGreaterOrEqualSignedTo: label
! !

!Assembler methodsFor: 'jumps' stamp: 'KenD 9/26/2022 12:38:17'!
jumpIfGreaterSignedTo: label
	codegen jumpIfGreaterSignedTo: label
! !

!Assembler methodsFor: 'jumps' stamp: 'KenD 9/26/2022 12:38:17'!
jumpIfLessOrEqualSignedTo: label
	codegen jumpIfLessOrEqualSignedTo: label
! !

!Assembler methodsFor: 'jumps' stamp: 'KenD 9/26/2022 12:38:17'!
jumpIfLessSignedTo: label
	codegen jumpIfLessSignedTo: label
! !

!Assembler methodsFor: 'jumps' stamp: 'KenD 9/26/2022 12:38:17'!
jumpIfNotEqualTo: label
	codegen jumpIfNotEqualTo: label
! !

!Assembler methodsFor: 'jumps' stamp: 'KenD 9/26/2022 12:38:17'!
jumpIfNotZeroTo: label
	codegen jumpIfNotZeroTo: label
! !

!Assembler methodsFor: 'jumps' stamp: 'KenD 9/26/2022 12:38:17'!
jumpIfOverflowTo: label
	codegen jumpIfOverflowTo: label
! !

!Assembler methodsFor: 'jumps' stamp: 'KenD 9/26/2022 12:38:17'!
jumpIfSignTo: label
	codegen jumpIfSignTo: label
! !

!Assembler methodsFor: 'jumps' stamp: 'KenD 9/26/2022 12:38:17'!
jumpIfZeroTo: label
	codegen jumpIfZeroTo: label
! !

!Assembler methodsFor: 'jumps' stamp: 'KenD 9/26/2022 12:38:17'!
loadZeroExtendByte: reg1 from: reg2 atOffset: offset
	codegen loadZeroExtendByte: reg1 from: reg2 atOffset: offset
! !

!Assembler methodsFor: 'jumps' stamp: 'KenD 9/26/2022 12:38:17'!
loop: aBlock times: anInteger
	| loop |
	loop := self newLabel.
	self loadTwithImmediate: anInteger; @ loop.
	aBlock value.
	self dec: codegen regT; shortJumpIfNotZeroTo: loop
! !

!Assembler methodsFor: 'jumps' stamp: 'KenD 9/26/2022 12:38:17'!
loopTtimes: aBlock
	| loop end |
	loop := self newLabel.
	end := self newLabel.
	self
		compareTwithImmediate: 0;
		@ loop;
		shortJumpIfEqualTo: end.
	aBlock value.
	self
		dec: codegen regT;
		shortJumpTo: loop;
		@ end
! !

!Assembler methodsFor: 'jumps' stamp: 'KenD 9/26/2022 12:38:17'!
renameByteRegisterIfNeeded: register preserving: preserved during: aBlock
	codegen renameByteRegisterIfNeeded: register preserving: preserved during: aBlock
! !

!Assembler methodsFor: 'jumps' stamp: 'KenD 9/26/2022 12:38:17'!
return
	codegen return
! !

!Assembler methodsFor: 'jumps' stamp: 'KenD 9/26/2022 12:38:17'!
shortJumpIfCarryTo: label
	codegen shortJumpIfCarryTo: label
! !

!Assembler methodsFor: 'jumps' stamp: 'KenD 9/26/2022 12:38:17'!
shortJumpIfEqualTo: label
	codegen shortJumpIfEqualTo: label
! !

!Assembler methodsFor: 'jumps' stamp: 'KenD 9/26/2022 12:38:17'!
shortJumpIfNotCarryTo: label
	codegen shortJumpIfNotCarryTo: label
! !

!Assembler methodsFor: 'jumps' stamp: 'KenD 9/26/2022 12:38:17'!
shortJumpIfNotEqualTo: label
	codegen shortJumpIfNotEqualTo: label
! !

!Assembler methodsFor: 'jumps' stamp: 'KenD 9/26/2022 12:38:17'!
shortJumpIfNotZeroTo: label
	self shortJumpIfNotEqualTo: label
! !

!Assembler methodsFor: 'jumps' stamp: 'KenD 9/26/2022 12:38:17'!
shortJumpIfSignTo: label
	codegen shortJumpIfSignTo: label
! !

!Assembler methodsFor: 'jumps' stamp: 'KenD 9/26/2022 12:38:17'!
shortJumpIfZeroTo: label
	self shortJumpIfEqualTo: label
! !

!Assembler methodsFor: 'jumps' stamp: 'KenD 9/26/2022 12:38:17'!
shortJumpTo: label
	codegen shortJumpTo: label
! !

!Assembler methodsFor: 'operations - arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
add: source1 to: source2andDest
	codegen add: source1 to: source2andDest
! !

!Assembler methodsFor: 'operations - arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
addImm: imm to: dest
	codegen addImm: imm to: dest
! !

!Assembler methodsFor: 'operations - arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
alignTo: anInteger
	codegen alignTo: anInteger
! !

!Assembler methodsFor: 'operations - arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
breakpoint
	codegen breakpoint
! !

!Assembler methodsFor: 'operations - arithmetic' stamp: 'KenD 11/8/2022 14:46:57'!
callIndirectA
	"Looks like this shoule be indirect through a `SendSite`"
	| memref |
	self flag: 	#ExpectSendSite.
	memref := codegen memRef: codegen regA indexImm: 1.
	codegen callIndirect: memref
! !

!Assembler methodsFor: 'operations - arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
callIndirectM
	| memref |
	memref := codegen memRef: codegen regM indexImm: 1.
	codegen callIndirect: memref
! !

!Assembler methodsFor: 'operations - arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
callR
	codegen call: codegen regR
! !

!Assembler methodsFor: 'operations - arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
clearIntegerBit: srcAndDstReg
	self clearSafeIntegerBit: srcAndDstReg

! !

!Assembler methodsFor: 'operations - arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
clearRintegerBit
	self dec: codegen regR
! !

!Assembler methodsFor: 'operations - arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
clearSafeIntegerBit: srcAndDstReg
	self and: srcAndDstReg withImm: -2
! !

!Assembler methodsFor: 'operations - arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
clearSafeRintegerBit
	self clearSafeIntegerBit: codegen regR

! !

!Assembler methodsFor: 'operations - arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
compare: reg1 with: reg2
	codegen compare: reg1 with: reg2
! !

!Assembler methodsFor: 'operations - arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
compare: register withLiteral: anObject
	| index memref |
	index := self addLiteral: anObject.
	memref := codegen memRef: codegen regM indexImm: index.
	codegen compare: register withMem: memref
! !

!Assembler methodsFor: 'operations - arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
compareAwithFalse
	codegen compare: codegen regA with: codegen regFalse
! !

!Assembler methodsFor: 'operations - arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
compareAwithTrue
	codegen compare: codegen regA with: codegen regTrue
! !

!Assembler methodsFor: 'operations - arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
compareRwithA
	codegen compare: codegen regR with: codegen regA
! !

!Assembler methodsFor: 'operations - arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
compareRwithFalse
	codegen compare: codegen regR with: codegen regFalse
! !

!Assembler methodsFor: 'operations - arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
compareRwithImmediate: imm
	codegen compare: codegen regR withImm: imm
! !

!Assembler methodsFor: 'operations - arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
compareRwithNil
	codegen compare: codegen regR with: codegen regNil
! !

!Assembler methodsFor: 'operations - arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
compareRwithTrue
	codegen compare: codegen regR with: codegen regTrue
! !

!Assembler methodsFor: 'operations - arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
compareSwithTindex: index
	| memref |
	memref := codegen memRef: codegen regT indexImm: index.
	codegen compare: codegen regS withMem: memref
! !

!Assembler methodsFor: 'operations - arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
compareTwithA
	codegen compare: codegen regT with: codegen regA
! !

!Assembler methodsFor: 'operations - arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
compareTwithImmediate: imm
	codegen compare: codegen regT withImm: imm
! !

!Assembler methodsFor: 'operations - arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
compareWithFalse: register
	codegen compare: register with: codegen regFalse
! !

!Assembler methodsFor: 'operations - arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
compareWithNil: register
	codegen compare: register with: codegen regNil
! !

!Assembler methodsFor: 'operations - arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
compareWithTrue: register
	codegen compare: register with: codegen regTrue
! !

!Assembler methodsFor: 'operations - arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
popSPindirect
	| memref |
	memref := codegen memRef: codegen regSP indexImm: 1.
	codegen popIntoMem: memref
! !

!Assembler methodsFor: 'operations - arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
sub: src2 from: src1AndDst
	codegen sub: src2  from: src1AndDst

! !

!Assembler methodsFor: 'operations - arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
subImm: imm from: srcAndDst
	codegen subImm: imm from: srcAndDst

! !

!Assembler methodsFor: 'operations - logical' stamp: 'KenD 9/26/2022 12:38:17'!
and: source1andDest with: source2
	codegen and: source1andDest with: source2
! !

!Assembler methodsFor: 'operations - logical' stamp: 'KenD 9/26/2022 12:38:17'!
and: source1andDest withImm: imm
	codegen and: source1andDest withImm: imm
! !

!Assembler methodsFor: 'operations - logical' stamp: 'KenD 9/26/2022 12:38:17'!
or: src1AndDst with: src2
	^ codegen or: src1AndDst with: src2
! !

!Assembler methodsFor: 'operations - logical' stamp: 'KenD 9/26/2022 12:38:17'!
or: source1andDest withImm: imm
	codegen or: source1andDest withImm: imm
! !

!Assembler methodsFor: 'operations - logical' stamp: 'KenD 9/26/2022 12:38:17'!
shiftLeft: srcAndDst by: countReg
	self subclassResponsibility
! !

!Assembler methodsFor: 'operations - logical' stamp: 'KenD 9/26/2022 12:38:17'!
shiftLeft: srcAndDst byImm: count
	codegen shiftLeft: srcAndDst byImm: count
! !

!Assembler methodsFor: 'operations - logical' stamp: 'KenD 9/26/2022 12:38:17'!
shiftRight: srcAndDst by: countReg
	self subclassResponsibility
! !

!Assembler methodsFor: 'operations - logical' stamp: 'KenD 9/26/2022 12:38:17'!
shiftRight: srcAndDst byImm: count
	self subclassResponsibility
! !

!Assembler methodsFor: 'operations - logical' stamp: 'KenD 9/26/2022 12:38:17'!
shiftRightArithmetic: srcAndDst by: countReg
	codegen shiftRightArithmetic: srcAndDst by: countReg
! !

!Assembler methodsFor: 'operations - logical' stamp: 'KenD 9/26/2022 12:38:17'!
shiftRightArithmetic: srcAndDst byImm: count
	codegen shiftRightArithmetic: srcAndDst byImm: count

! !

!Assembler methodsFor: 'operations - logical' stamp: 'KenD 9/26/2022 12:38:17'!
xor: src1AndDst with: src2
	^ self subclassResponsibility

! !

!Assembler methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:17'!
clearRhigh32
	codegen clearHigh32: codegen regR

! !

!Assembler methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:17'!
dec: srcAndDstReg
	codegen dec: srcAndDstReg

! !

!Assembler methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:17'!
dropTos: count
	codegen addImm: (count * codegen addressSize) to: codegen regSP

! !

!Assembler methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:17'!
inc: srcAndDstReg
	codegen inc: srcAndDstReg

! !

!Assembler methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:17'!
initializeS
	codegen move: codegen regR to: codegen regS
! !

!Assembler methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:17'!
loadEwithAddressOfRatA
	| memref |
	memref := codegen
		memRef: codegen regR
		index: codegen regA
		offsetImm: codegen wordSize negated.
	codegen lea: codegen regE withMem: memref
! !

!Assembler methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:17'!
loadLargeX0withRindirect
	| memref |
	memref := codegen memRef64: codegen regR indexImm: 1.
	codegen loadDouble: codegen regX0 fromMem: memref
! !

!Assembler methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:17'!
loadLargeX1withAindirect
	| memref |
	memref := codegen memRef64: codegen regA indexImm: 1.
	codegen loadDouble: codegen regX1 fromMem: memref
! !

!Assembler methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:17'!
loadLongRwithRatOffsetA
	| memref |
	memref := codegen
		memRef32: codegen regR
		offset: codegen regA.
	codegen load: codegen regR fromMem: memref

! !

!Assembler methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:17'!
loadLongSwithRindex: index
	| memref |
	memref := codegen memRef32: codegen regR indexImm: index.
	codegen load: codegen regS fromMem: memref

! !

!Assembler methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:17'!
loadMwithA
	codegen move: codegen regA to: codegen regM
! !

!Assembler methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:17'!
loadRconvertingDoublePointedByR
	| memref |
	memref := codegen memRef64: codegen regR indexImm: 1.
	codegen load: codegen regR convertingDoubleToIntegerFromMem: memref
! !

!Assembler methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:17'!
loadRwithArgPointer
	| memref |
	memref := codegen memRef: codegen regFP indexImm: 3.
	codegen lea: codegen regR withMem: memref
! !

!Assembler methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:17'!
loadSwithAddressOfSatA
	| memref |
	memref := codegen
		memRef: codegen regS
		index: codegen regA
		offsetImm: codegen wordSize negated.
	codegen lea: codegen regS withMem: memref
! !

!Assembler methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:17'!
loadX0withRasDouble
	codegen convert: codegen regR toDouble: codegen regX0
! !

!Assembler methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:17'!
popA
	codegen pop: codegen regA
! !

!Assembler methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:17'!
popE
	codegen pop: codegen regE
! !

!Assembler methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:17'!
popFP
	codegen pop: codegen regFP
! !

!Assembler methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:17'!
popFalse
	codegen pop: codegen regFalse
! !

!Assembler methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:17'!
popG
	codegen pop: codegen regG
! !

!Assembler methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:17'!
popM
	codegen pop: codegen regM
! !

!Assembler methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:17'!
popNil
	codegen pop: codegen regNil
! !

!Assembler methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:17'!
popR
	codegen pop: codegen regR
! !

!Assembler methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:17'!
popS
	codegen pop: codegen regS
! !

!Assembler methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:17'!
popT
	codegen pop: codegen regT
! !

!Assembler methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:17'!
popTrue
	codegen pop: codegen regTrue
! !

!Assembler methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:17'!
pushA
	codegen push: codegen regA
! !

!Assembler methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:17'!
pushE
	codegen push: codegen regE
! !

!Assembler methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:17'!
pushFP
	codegen push: codegen regFP
! !

!Assembler methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:17'!
pushFalse
	codegen push: codegen regFalse
! !

!Assembler methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:17'!
pushG
	codegen push: codegen regG
! !

!Assembler methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:17'!
pushM
	codegen push: codegen regM
! !

!Assembler methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:17'!
pushNil
	codegen push: codegen regNil
! !

!Assembler methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:17'!
pushR
	codegen push: codegen regR
! !

!Assembler methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:17'!
pushS
	codegen push: codegen regS
! !

!Assembler methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:17'!
pushT
	codegen push: codegen regT
! !

!Assembler methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:17'!
pushTrue
	codegen push: codegen regTrue
! !

!Assembler methodsFor: 'integers' stamp: 'KenD 9/26/2022 12:38:17'!
labeledIntegerBitTestOf: aRegister
	| label |
	self testIntegerBitOf: aRegister.
	label := self newLabel.
	self shortJumpIfZeroTo: label.
	^label
! !

!Assembler methodsFor: 'integers' stamp: 'KenD 9/26/2022 12:38:17'!
labeledIntegerBitTestOfR
	^self labeledIntegerBitTestOf: codegen regR

! !

!Assembler methodsFor: 'integers' stamp: 'KenD 9/26/2022 12:38:17'!
labeledIntegerBitTestOfT
	^self labeledIntegerBitTestOf: codegen regT byte
! !

!Assembler methodsFor: 'integers' stamp: 'KenD 9/26/2022 12:38:17'!
labeledIntegerNativizationOf: aRegister
	| label |
	self convertToNativeInteger: aRegister.
	label := self newLabel.
	self shortJumpIfNotCarryTo: label.
	^label
! !

!Assembler methodsFor: 'integers' stamp: 'KenD 9/26/2022 12:38:17'!
labeledIntegerNativizationOfA
	^self labeledIntegerNativizationOf: codegen regA
! !

!Assembler methodsFor: 'integers' stamp: 'KenD 9/26/2022 12:38:17'!
labeledIntegerNativizationOfR
	^self labeledIntegerNativizationOf: codegen regR
! !

!Assembler methodsFor: 'integers' stamp: 'KenD 9/26/2022 12:38:17'!
labeledIntegerNativizationOfT
	^self labeledIntegerNativizationOf: codegen regT
! !

!Assembler methodsFor: 'integers' stamp: 'KenD 9/26/2022 12:38:17'!
labeledNonIntegerBitTestOf: aRegister
	| label |
	self testIntegerBitOf: aRegister.
	label := self newLabel.
	self shortJumpIfNotZeroTo: label.
	^label
! !

!Assembler methodsFor: 'integers' stamp: 'KenD 9/26/2022 12:38:17'!
labeledNonIntegerBitTestOfR
	^self labeledNonIntegerBitTestOf: codegen regR

! !

!Assembler methodsFor: 'integers' stamp: 'KenD 9/26/2022 12:38:17'!
loadAwithImmediate: imm
	self load: codegen regA withImmediate: imm
! !

!Assembler methodsFor: 'integers' stamp: 'KenD 9/26/2022 12:38:17'!
loadAwithSmallInteger: anInteger
	| smi |
	smi := (anInteger bitShift: 1) + 1.
	self loadAwithImmediate: smi
! !

!Assembler methodsFor: 'integers' stamp: 'KenD 9/26/2022 12:38:17'!
loadRwithImmediate: imm
	self load: codegen regR withImmediate: imm
! !

!Assembler methodsFor: 'integers' stamp: 'KenD 9/26/2022 12:38:17'!
loadRwithRatA
	| memref |
	memref := codegen memRef: codegen regR index: codegen regA.
	self
		load: codegen regR
		fromMem: memref
! !

!Assembler methodsFor: 'integers' stamp: 'KenD 9/26/2022 12:38:17'!
loadRwithSmallInteger: anInteger
	| smi |
	smi := self smallInteger: anInteger.
	self loadRwithImmediate: smi
! !

!Assembler methodsFor: 'integers' stamp: 'KenD 9/26/2022 12:38:17'!
loadTwithImmediate: imm
	self load: codegen regT withImmediate: imm
! !

!Assembler methodsFor: 'integers' stamp: 'KenD 9/26/2022 12:38:17'!
loadZeroExtendByteRwithRatA
	self loadZeroExtendByte: codegen regR from: codegen regR atIndexAt: codegen regA
! !

!Assembler methodsFor: 'integers' stamp: 'KenD 9/26/2022 12:38:17'!
loadZeroExtendByteRwithRindex: index
	#dontOptimize.
	self loadZeroExtendByte: codegen regR from: codegen regR atIndexImm: index
! !

!Assembler methodsFor: 'integers' stamp: 'KenD 9/26/2022 12:38:17'!
loadZeroExtendByteRwithSPatA
	self loadZeroExtendByte: codegen regR from: codegen regSP atIndexAt: codegen regA
! !

!Assembler methodsFor: 'integers' stamp: 'KenD 9/26/2022 12:38:17'!
loadZeroExtendByteTwithAindex: index
	#dontOptimize.
	self loadZeroExtendByte: codegen regT from: codegen regA atIndexImm: index
! !

!Assembler methodsFor: 'integers' stamp: 'KenD 9/26/2022 12:38:17'!
loadZeroExtendLongRwithRatA
	| memref |
	memref := codegen memRef32: codegen regR index: codegen regA.
	codegen
		load: codegen regR
		fromMem: memref
! !

!Assembler methodsFor: 'integers' stamp: 'KenD 9/26/2022 12:38:17'!
loadZeroExtendLongRwithRindex: index
	| memref |
	#dontOptimize.
	memref := codegen memRef32: codegen regR indexImm: index.
	codegen
		load: codegen regR e
		fromMem: memref
! !

!Assembler methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:38:17'!
regA
	^codegen regA

! !

!Assembler methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:38:17'!
regA8
	^ codegen regA byte

! !

!Assembler methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:38:17'!
regE
	^ codegen regE
! !

!Assembler methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:38:17'!
regFP
	^ codegen regFP

! !

!Assembler methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:38:17'!
regFalse
	^ codegen regFalse

! !

!Assembler methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:38:17'!
regG
	^ codegen regG

! !

!Assembler methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:38:17'!
regIP
	^ codegen regIP

! !

!Assembler methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:38:17'!
regM
	^ codegen regM

! !

!Assembler methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:38:17'!
regNil
	^ codegen regNil

! !

!Assembler methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:38:17'!
regR
	^ codegen regR

! !

!Assembler methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:38:17'!
regR8
	^ codegen regR byte

! !

!Assembler methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:38:17'!
regS
	^ codegen regS
! !

!Assembler methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:38:17'!
regSP
	^ codegen regSP

! !

!Assembler methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:38:17'!
regT
	^ codegen regT
! !

!Assembler methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:38:17'!
regT8
	^ codegen reg byte
! !

!Assembler methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:38:17'!
regTrue
	^ codegen regTrue

! !

!Assembler methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:38:17'!
regV
	^ codegen regV

! !

!Assembler methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:38:17'!
regX0
	"IEEE 754 double register"
	^ codegen regX0

! !

!Assembler methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:38:17'!
regX1
	"IEEE 754 double register"
	^ codegen regX1
! !

!Assembler methodsFor: 'arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
addAtoR
	codegen add: codegen regA to: codegen regR
! !

!Assembler methodsFor: 'arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
addDoubleX1toX0
	codegen addDouble: codegen regX1 to: codegen regX0

! !

!Assembler methodsFor: 'arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
addRwithImmediate: imm
	codegen addImm: imm to: codegen regR 
! !

!Assembler methodsFor: 'arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
addTtoR
	codegen add: codegen regT to: codegen regR
! !

!Assembler methodsFor: 'arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
andRwithImmediate: imm
	codegen and: codegen regR withImm: imm
! !

!Assembler methodsFor: 'arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
convertAtoNativeInteger
	self convertToNativeInteger: codegen regA
	
! !

!Assembler methodsFor: 'arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
convertRtoNativeInteger
	self convertToNativeInteger: codegen regR
	
! !

!Assembler methodsFor: 'arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
convertRtoSmallInteger
	self convertToSmallInteger: codegen regR
! !

!Assembler methodsFor: 'arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
convertToNativeInteger: srcAndDstReg
	codegen shiftRightArithmetic: srcAndDstReg byImm: 1
! !

!Assembler methodsFor: 'arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
convertToSmallInteger: srcAndDstReg
	self shiftLeft: srcAndDstReg byImm: 1; inc: srcAndDstReg
! !

!Assembler methodsFor: 'arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
convertTtoNativeInteger
	self convertToNativeInteger: codegen regT
	
! !

!Assembler methodsFor: 'arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
exchangeRindirectWithT
	| memref |
	memref := codegen memRef: codegen regR indexImm: 1.
	codegen exchange: codegen regT withMem: memref
! !

!Assembler methodsFor: 'arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
loadAwithKnown: anObject
	codegen breakpoint
! !

!Assembler methodsFor: 'arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
nativeCode
	^(NativeCode withAll: literals) code: codegen memory bytes
! !

!Assembler methodsFor: 'arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
pushSmallInteger: integer
	| smi |
	smi := self smallInteger: integer.
	self pushImm: smi
! !

!Assembler methodsFor: 'arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
setIntegerBit: srcAndDstReg
	self setSafeIntegerBit: srcAndDstReg
! !

!Assembler methodsFor: 'arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
setRintegerBit
	self setIntegerBit: codegen regR

! !

!Assembler methodsFor: 'arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
setSafeIntegerBit: srcAndDstReg
	self or: srcAndDstReg withImm: 1
! !

!Assembler methodsFor: 'arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
setSafeRintegerBit
	self setSafeIntegerBit: codegen regR

! !

!Assembler methodsFor: 'arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
shiftLeftRwithT
	codegen shiftLeft: codegen regR by: codegen regT

! !

!Assembler methodsFor: 'arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
shiftLogicalRright: count
	codegen shiftRight: codegen regR byImm: count

! !

!Assembler methodsFor: 'arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
shiftRightRwithT
	codegen shiftRightArithmetic: codegen regR by: codegen regT

! !

!Assembler methodsFor: 'arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
shiftRleft: count
	 codegen shiftLeft: codegen regR byImm: count

! !

!Assembler methodsFor: 'arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
shiftRright: count
	codegen shiftRightArithmetic: codegen regR byImm: count

! !

!Assembler methodsFor: 'arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
shiftTright: count
	codegen shiftRightArithmetic: codegen regT byImm: count

! !

!Assembler methodsFor: 'arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
subAfromR
	codegen sub: codegen regA from: codegen regR

! !

!Assembler methodsFor: 'arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
subAfromT
	codegen sub: codegen regA from: codegen regT    

! !

!Assembler methodsFor: 'arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
subFromRconstant: imm
	codegen subImm: imm from: codegen regR

! !

!Assembler methodsFor: 'initialization' stamp: 'KenD 9/26/2022 12:38:17'!
platform: aNativizationPlatform
	codegen := aNativizationPlatform newCodeGenerator.
	self reset
! !

!Assembler methodsFor: 'initialization' stamp: 'KenD 9/26/2022 12:38:17'!
reset
	labels := Dictionary new: 100.
	literals := OrderedCollection new.
	codegen reset
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
addLiteral: anObject
	| index |
	index := literals
		identityIndexOf: anObject
		ifAbsent: [ literals
				add: anObject;
				size ].
	^ index + 2
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
load:dstReg withImmediate: imm
	codegen moveImm: imm to: dstReg

! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
load: register withLiteral: anObject
	| index memref |
	index := self addLiteral: anObject.
	memref := codegen memRef: codegen regM indexImm: index.
	codegen
		load: register
		fromMem: memref
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadAwithAindex: index
	| memref |
	memref := codegen memRef: codegen regA indexImm: index.
	codegen
		load: codegen regA
		fromMem: memref
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadAwithEindex: index
	| memref |
	memref := codegen memRef: codegen regE indexImm: index.
	codegen
		load: codegen regA
		fromMem: memref
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadAwithFPindex: index
	| memref |
	memref := codegen memRef: codegen regFP indexImm: index.
	codegen
		load: codegen regA
		fromMem: memref
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadAwithFalse
	codegen move: codegen regFalse to: codegen regA
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadAwithGlobal: aSymbol
	| index |
	index := NativizationEnvironment indexOfGlobal: aSymbol.
	self loadAwithGindex: index
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadAwithLiteral: anObject
	| index |
	index := self addLiteral: anObject.
	self loadAwithMindex: index
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadAwithMindex: index
	| memref |
	memref := codegen memRef: codegen regM indexImm: index.
	codegen
		load: codegen regA
		fromMem: memref
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadAwithNil
	codegen move: codegen regNil to: codegen regA
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadAwithR
	codegen move: codegen regR to: codegen regA
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 11/2/2022 13:16:49'!
loadAwithRoffsetAtA
	| memref |
	memref := codegen memRef
				base: codegen regR;
				index: codegen regA.
	codegen
		load: codegen regA
		fromMem: memref
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadAwithS
	codegen move: codegen regS to: codegen regA
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadAwithSindex: index
	| memref |
	memref := codegen memRef: codegen regS indexImm: index.
	codegen
		load: codegen regA
		fromMem: memref
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadAwithTrue
	codegen move: codegen regTrue to: codegen regA
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadEwithFPindex: index
	| memref |
	memref := codegen memRef: codegen regFP indexImm: index.
	codegen
		load: codegen regE
		fromMem: memref
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadEwithNil
	codegen move: codegen regNil to: codegen regE
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadEwithR
	codegen move: codegen regR to: codegen regE
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadFPwithR
	codegen move: codegen regR to: codegen regFP
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadFPwithSP
	codegen move: codegen regSP to: codegen regFP
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadFalseWithLiteral: anObject
	| index |
	index := self addLiteral: anObject.
	self loadFalseWithMindex: index
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadFalseWithMindex: index
	| memref |
	memref := codegen memRef: codegen regM indexImm: index.
	codegen
		load: codegen regFalse
		fromMem: memref
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadGwithLiteral: anObject
	| index |
	index := self addLiteral: anObject.
	self loadGwithMindex: index
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadGwithMindex: index
	| memref |
	memref := codegen memRef: codegen regM indexImm: index.
	codegen
		load: codegen regG
		fromMem: memref
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadMwithFPindex: index
	| memref |
	memref := codegen memRef: codegen regFP indexImm: index.
	codegen
		load: codegen regM
		fromMem: memref
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadMwithGlobal: aSymbol
	| index |
	index := NativizationEnvironment indexOfGlobal: aSymbol.
	self loadMwithGindex: index
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadMwithMindex: index
	| memref |
	memref := codegen memRef: codegen regM indexImm: index.
	codegen
		load: codegen regM
		fromMem: memref
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadMwithRindex: index
	| memref |
	memref := codegen memRef: codegen regR indexImm: index.
	codegen
		load: codegen regM
		fromMem: memref
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadMwithTindex: index
	| memref |
	memref := codegen memRef: codegen regT indexImm: index.
	codegen
		load: codegen regM
		fromMem: memref
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadNilWithLiteral: anObject
	| index |
	index := self addLiteral: anObject.
	self loadNilWithMindex: index
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadNilWithMindex: index
	| memref |
	memref := codegen memRef: codegen regM indexImm: index.
	codegen
		load: codegen regNil
		fromMem: memref
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadRwithA
	codegen move: codegen regA to: codegen regR
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadRwithE
	codegen move: codegen regE to: codegen regR
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadRwithEindex: index
	| memref |
	memref := codegen memRef: codegen regE indexImm: index.
	codegen
		load: codegen regR
		fromMem: memref
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadRwithFP
	codegen move: codegen regFP to: codegen regR
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadRwithFPindex: index
	| memref |
	memref := codegen memRef: codegen regFP indexImm: index.
	codegen
		load: codegen regR
		fromMem: memref
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadRwithFalse
	codegen move: codegen regFalse to: codegen regR
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadRwithLiteral: anObject
	| index |
	index := self addLiteral: anObject.
	self loadRwithMindex: index
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadRwithM
	codegen move: codegen regM to: codegen regR
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadRwithMindex: index
	| memref |
	memref := codegen memRef: codegen regM indexImm: index.
	codegen
		load: codegen regR
		fromMem: memref
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadRwithNil
	codegen move: codegen regNil to: codegen regR
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 11/2/2022 13:17:00'!
loadRwithRatOffsetA
	| memref |
	memref := codegen memRef
				base: codegen regR;
				index: codegen regA.
	codegen
		load: codegen regR
		fromMem:
			memref
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadRwithRindex: index
	| memref |
	memref := codegen memRef: codegen regR indexImm: index.
	codegen
		load: codegen regR
		fromMem: memref
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadRwithS
	codegen move: codegen regS to: codegen regR
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadRwithSPindex: index
	| memref |
	memref := codegen memRef: codegen regSP indexImm: index.
	codegen
		load: codegen regR
		fromMem: memref
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadRwithSindex: index
	| memref |
	memref := codegen memRef: codegen regS indexImm: index.
	codegen
		load: codegen regR
		fromMem: memref
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadRwithT
	codegen move: codegen regT to: codegen regR
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadRwithTrue
	codegen move: codegen regTrue to: codegen regR
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadSPwithFP
	codegen move: codegen regFP to: codegen regSP
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadSwithFPindex: index
	| memref |
	memref := codegen memRef: codegen regFP indexImm: index.
	codegen
		load: codegen regS
		fromMem: memref
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadSwithGlobal: aSymbol
	| index |
	index := NativizationEnvironment indexOfGlobal: aSymbol.
	self loadSwithGindex: index
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadSwithNil
	codegen move: codegen regNil to: codegen regS
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadSwithRindex: index
	| memref |
	memref := codegen memRef: codegen regR indexImm: index.
	codegen
		load: codegen regS
		fromMem: memref
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadTrueWithLiteral: anObject
	| index |
	index := self addLiteral: anObject.
	self loadTrueWithMindex: index
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadTrueWithMindex: index
	| memref |
	memref := codegen memRef: codegen regM indexImm: index.
	codegen
		load: codegen regTrue
		fromMem: memref
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadTwithA
	codegen move: codegen regA to: codegen regT
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadTwithAindex: index
	| memref |
	memref := codegen memRef: codegen regA indexImm: index.
	codegen
		load: codegen regT
		fromMem: memref
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadTwithEindex: index
	| memref |
	memref := codegen memRef: codegen regE indexImm: index.
	codegen
		load: codegen regT
		fromMem: memref
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadTwithFPindex: index
	| memref |
	memref := codegen memRef: codegen regFP indexImm: index.
	codegen
		load: codegen regT
		fromMem: memref
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadTwithLiteral: anObject
	| index |
	index := self addLiteral: anObject.
	self loadTwithMindex: index
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadTwithMindex: index
	| memref |
	memref := codegen memRef: codegen regM indexImm: index.
	codegen
		load: codegen regT
		fromMem: memref
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadTwithR
	codegen move: codegen regR to: codegen regT
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadTwithTindex: index
	| memref |
	memref := codegen memRef: codegen regT indexImm: index.
	codegen load: codegen regT fromMem: memref
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadWithFalse: register
	codegen move: codegen regFalse to: register
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadWithNil: register
	codegen move: codegen regNil to: register
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadWithTrue: register
	codegen move: codegen regTrue to: register
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
reserveStackSlots: amount
	codegen subImm: amount * codegen addressSize from: codegen regSP
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
saveCallerFrame
	self pushFP; loadFPwithSP
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
testIntegerBit: aRegister
	codegen testIntegerBit: aRegister
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
testIntegerBitOf: aRegister
	codegen test: aRegister byte withImm: 1
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
testRintegerBit
	codegen test: codegen regR byte withImm: 1
! !

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
testRwithR
	codegen test: codegen regR with: codegen regR
! !

!Assembler methodsFor: 'floting point' stamp: 'KenD 9/26/2022 12:38:17'!
divideDoubleX0byX1
	codegen divDouble: codegen regX0 by: codegen regX1
! !

!Assembler methodsFor: 'floting point' stamp: 'KenD 9/26/2022 12:38:17'!
loadRwithTIBatR
	codegen load: codegen regR withTIBat: codegen regR
! !

!Assembler methodsFor: 'floting point' stamp: 'KenD 9/26/2022 12:38:17'!
loadRwithThreadVariableAtR
	codegen load: codegen regR withThreadVariableAt: codegen regR
! !

!Assembler methodsFor: 'floting point' stamp: 'KenD 9/26/2022 12:38:17'!
moveX0toR
	codegen moveDouble: codegen regX0 into: codegen regR
! !

!Assembler methodsFor: 'floting point' stamp: 'KenD 9/26/2022 12:38:17'!
multiplyDoubleX0byX1
	codegen mulDouble: codegen regX0 by: codegen regX1
! !

!Assembler methodsFor: 'floting point' stamp: 'KenD 9/26/2022 12:38:17'!
pushAatToffset: offset
	| memref |
	memref := codegen memRef: codegen regA index: codegen regT.
	memref displacement: offset.
	codegen pushMem: memref
! !

!Assembler methodsFor: 'floting point' stamp: 'KenD 9/26/2022 12:38:17'!
renameByteRegisterIfNeeded: register preserving: preserved1 preserving: preserved2 during: aBlock
	codegen renameByteRegisterIfNeeded: register preserving: preserved1 preserving: preserved2 during: aBlock
! !

!Assembler methodsFor: 'floting point' stamp: 'KenD 9/26/2022 12:38:17'!
roundDoubleX0intoX1
	codegen roundDouble: codegen regX0 into: codegen regX1
! !

!Assembler methodsFor: 'floting point' stamp: 'KenD 9/26/2022 12:38:17'!
sqrtDoubleX0
	codegen sqrtDouble: codegen regX0 into: codegen regX0
! !

!Assembler methodsFor: 'floting point' stamp: 'KenD 9/26/2022 12:38:17'!
storeAinThreadVariableAtIndexR
	codegen store: codegen regA intoThreadVariableAt: codegen regR
! !

!Assembler methodsFor: 'floting point' stamp: 'KenD 9/26/2022 12:38:17'!
storeDoubleResultInRindirect
	| memref |
	memref := codegen memRef: codegen regR indexImm: 1.
	codegen storeDoubleResultIntoMem:  memref
! !

!Assembler methodsFor: 'floting point' stamp: 'KenD 9/26/2022 12:38:17'!
storeTIBatRwithA
	codegen store: codegen regA intoTIBat: codegen regR
! !

!Assembler methodsFor: 'floting point' stamp: 'KenD 9/26/2022 12:38:17'!
subDoubleX1fromX0
	codegen subDouble: codegen regX1 from: codegen regX0
! !

!Assembler methodsFor: 'epilogue' stamp: 'KenD 9/26/2022 12:38:17'!
restoreCallerEnvironment
	self loadEwithFPindex: -2
! !

!Assembler methodsFor: 'epilogue' stamp: 'KenD 9/26/2022 12:38:17'!
restoreCallerFrame
	codegen
		move: codegen regFP to: codegen regSP;
		pop: codegen regFP
! !

!Assembler methodsFor: 'epilogue' stamp: 'KenD 9/26/2022 12:38:17'!
restoreCallerM
	self loadMwithFPindex: -1
! !

!Assembler methodsFor: 'epilogue' stamp: 'KenD 9/26/2022 12:38:17'!
restoreCallerSelf
	self loadSwithFPindex: 0
! !

!Assembler methodsFor: 'to-cleanup' stamp: 'KenD 9/26/2022 12:38:17'!
clearFPUFlags
	codegen clearFPUFlags
! !

!Assembler methodsFor: 'to-cleanup' stamp: 'KenD 9/26/2022 12:38:17'!
compareEqualDoubleX0withAindirect
	codegen compareEqualDoubleX0withAindirect
! !

!Assembler methodsFor: 'to-cleanup' stamp: 'KenD 9/26/2022 12:38:17'!
compareLessThanDoubleX0withAindirect
	codegen compareLessThanDoubleX0withAindirect
! !

!Assembler methodsFor: 'to-cleanup' stamp: 'KenD 9/26/2022 12:38:17'!
dropTopOfFPU
	codegen dropTopOfFPU
! !

!Assembler methodsFor: 'to-cleanup' stamp: 'KenD 9/26/2022 12:38:17'!
leadingRzeroCount
	codegen leadingRzeroCount
! !

!Assembler methodsFor: 'to-cleanup' stamp: 'KenD 9/26/2022 12:38:17'!
loadLongMwithIPoffset: anInteger
	codegen loadLongMwithIPoffset: anInteger
! !

!Assembler methodsFor: 'to-cleanup' stamp: 'KenD 9/26/2022 12:38:17'!
loadMXCSRfromA
	codegen loadMXCSRfromA
! !

!Assembler methodsFor: 'to-cleanup' stamp: 'KenD 9/26/2022 12:38:17'!
loadZeroExtendByte: dstReg from: srcBaseReg atIndexAt: srcIndexReg
	codegen loadZeroExtendByte: dstReg from: srcBaseReg atIndexAt: srcIndexReg

! !

!Assembler methodsFor: 'to-cleanup' stamp: 'KenD 9/26/2022 12:38:17'!
loadZeroExtendByte: dstReg from: srcBaseReg atIndexImm: indexImm

	codegen
		loadZeroExtendByte: dstReg
		from: srcBaseReg
		atIndexImm: indexImm
! !

!Assembler methodsFor: 'to-cleanup' stamp: 'KenD 9/26/2022 12:38:17'!
loadZeroExtendShortRwithRoffset: offset
	codegen
		loadZeroExtendShortRwithRoffset: offset
! !

!Assembler methodsFor: 'to-cleanup' stamp: 'KenD 9/26/2022 12:38:17'!
lock
	codegen lock
! !

!Assembler methodsFor: 'to-cleanup' stamp: 'KenD 9/26/2022 12:38:17'!
moveTslots
	codegen moveTslots
! !

!Assembler methodsFor: 'to-cleanup' stamp: 'KenD 9/26/2022 12:38:17'!
readFPUStatusOnA
	codegen readFPUStatusOnA
! !

!Assembler methodsFor: 'to-cleanup' stamp: 'KenD 9/26/2022 12:38:17'!
scaleFloatOnRWithA
	codegen scaleFloatOnRWithA
! !

!Assembler methodsFor: 'to-cleanup' stamp: 'KenD 9/26/2022 12:38:17'!
storeMXCSRintoA
	codegen storeMXCSRintoA

! !

!Assembler methodsFor: 'to-cleanup' stamp: 'KenD 9/26/2022 12:38:17'!
subTslotsToSP
	codegen subTslotsToSP
! !

!Assembler methodsFor: 'to-cleanup' stamp: 'KenD 9/26/2022 12:38:17'!
writeTslots
	codegen writeTslots
! !

!Assembler methodsFor: 'services' stamp: 'KenD 9/26/2022 12:38:17'!
currentAddress
	^ codegen currentAddress
! !

!Assembler methodsFor: 'services' stamp: 'KenD 9/26/2022 12:38:17'!
move: srcReg to: dstReg
	^ codegen move: srcReg to: dstReg

! !

!Assembler methodsFor: 'services' stamp: 'KenD 9/26/2022 12:38:17'!
moveImm: imm to: dstReg
	codegen moveImm: imm to: dstReg

! !

!Assembler methodsFor: 'services' stamp: 'KenD 9/26/2022 12:38:17'!
wordSize
	^codegen wordSize
! !

!Assembler methodsFor: 'private' stamp: 'KenD 9/26/2022 12:38:17'!
buildFrame
	self
		push: codegen regFP;
		move: codegen regSP to: codegen regFP
! !

!Assembler methodsFor: 'private' stamp: 'KenD 9/26/2022 12:38:17'!
bytes
	^codegen bytes
! !

!Assembler methodsFor: 'private' stamp: 'KenD 9/26/2022 12:38:17'!
decRindirect
	| memref |
	memref := codegen memRef: codegen regR indexImm: 1.
	codegen decMem: memref
! !

!Assembler methodsFor: 'private' stamp: 'KenD 9/26/2022 12:38:17'!
discardArguments: anInteger
	anInteger = 0 ifTrue: [^self].
	codegen addImm: anInteger * codegen wordSize to: codegen regSP
! !

!Assembler methodsFor: 'private' stamp: 'KenD 9/26/2022 12:38:17'!
loadAwithGindex: index
	| memref |
	memref := codegen memRef: codegen regG indexImm: index.
	codegen
		load: codegen regA
		fromMem: memref
! !

!Assembler methodsFor: 'private' stamp: 'KenD 9/26/2022 12:38:17'!
loadMwithGindex: index
	| memref |
	memref := codegen memRef: codegen regG indexImm: index.
	codegen
		load: codegen regM
		fromMem: memref
! !

!Assembler methodsFor: 'private' stamp: 'KenD 9/26/2022 12:38:17'!
loadSwithGindex: index
	| memref |
	memref := codegen memRef: codegen regG indexImm: index.
	codegen
		load: codegen regS
		fromMem: memref
! !

!Assembler methodsFor: 'private' stamp: 'KenD 9/26/2022 12:38:17'!
pop: dstReg
	codegen pop: dstReg
! !

!Assembler methodsFor: 'private' stamp: 'KenD 9/26/2022 12:38:17'!
push: srcReg
	codegen push: srcReg

! !

!Assembler methodsFor: 'private' stamp: 'KenD 9/26/2022 12:38:17'!
pushImm: imm
	codegen pushImm: imm

! !

!Assembler methodsFor: 'private' stamp: 'KenD 9/26/2022 12:38:17'!
pushIndirectR
	| memref |
	memref := codegen memRef: codegen regR indexImm: 1.
	codegen pushMem: memref
! !

!Assembler methodsFor: 'comparing' stamp: 'KenD 9/26/2022 12:38:17'!
compare: register withBoolean: aBoolean
	aBoolean
		ifTrue: [ self compareWithTrue: register ]
		ifFalse: [ self compareWithFalse: register ]
! !

!Assembler methodsFor: 'comparing' stamp: 'KenD 9/26/2022 12:38:17'!
compareAwithBoolean: aBoolean
	aBoolean
		ifTrue: [ self compareAwithTrue ]
		ifFalse: [ self compareAwithFalse ]
! !

!Assembler methodsFor: 'comparing' stamp: 'KenD 9/26/2022 12:38:17'!
compareRwithBoolean: aBoolean
	aBoolean
		ifTrue: [ self compareRwithTrue ]
		ifFalse: [ self compareRwithFalse ]
! !

!Assembler methodsFor: 'comparing' stamp: 'KenD 9/26/2022 12:38:17'!
compareRwithSmallInteger: anInteger
	| smi |
	smi := self smallInteger: anInteger.
	self compareRwithImmediate: smi
! !

!Assembler methodsFor: 'comparing' stamp: 'KenD 9/26/2022 12:38:17'!
smallInteger: anInteger
	^(anInteger bitShift: 1) + 1
! !

!Assembler methodsFor: 'memory' stamp: 'KenD 9/26/2022 12:38:17'!
memRef
	"Return clean instance of pointer-sized memory reference"

	^ codegen memRef

! !

!Assembler methodsFor: 'memory' stamp: 'KenD 9/26/2022 12:38:17'!
memRef32: baseReg indexImm: indexImm
	^ codegen memRef32: baseReg indexImm: indexImm
! !

!Assembler methodsFor: 'memory' stamp: 'KenD 9/26/2022 12:38:17'!
memRef8
	"Return clean instance of byte-sized memory reference"

	^ codegen memRef8
! !

!Assembler methodsFor: 'memory' stamp: 'KenD 9/26/2022 12:38:17'!
memRef8: baseReg index: indexReg
	^ codegen memRef8: baseReg index: indexReg
! !

!Assembler methodsFor: 'memory' stamp: 'KenD 9/26/2022 12:38:17'!
memRef: baseReg index: indexReg
	^ codegen memRef: baseReg index: indexReg
! !

!Assembler methodsFor: 'memory' stamp: 'KenD 9/26/2022 12:38:17'!
memRef: baseReg indexImm: indexImm
	^ codegen memRef: baseReg indexImm: indexImm
! !

!Assembler methodsFor: 'storing' stamp: 'KenD 9/26/2022 12:38:17'!
extendRtoAandDividebyT
	codegen divide: codegen regR extendingTo: codegen regA by: codegen regT
! !

!Assembler methodsFor: 'storing' stamp: 'KenD 9/26/2022 12:38:17'!
multiplyRbyAwideningToA
	codegen
		multiply: codegen regR
		by: codegen regA
		wideningTo: codegen regA
! !

!Assembler methodsFor: 'storing' stamp: 'KenD 9/26/2022 12:38:17'!
storeAinTindex: index
	| memref |
	memref := codegen memRef: codegen regT indexImm: index.
	codegen
		store: codegen regA
		intoMem: memref
! !

!Assembler methodsFor: 'storing' stamp: 'KenD 9/26/2022 12:38:17'!
storeByteAinRindex: index
	| memref |
	memref := codegen memRef8: codegen regR indexImm: index.
	codegen store: codegen regA byte intoMem: memref
! !

!Assembler methodsFor: 'storing' stamp: 'KenD 9/26/2022 12:38:17'!
storeByteTinRatA
	| memref |
	memref := codegen memRef8: codegen regR index: codegen regA.
	codegen store: codegen regT byte intoMem: memref
! !

!Assembler methodsFor: 'storing' stamp: 'KenD 9/26/2022 12:38:17'!
storeEinRindex: index
	| memref |
	memref := codegen memRef: codegen regR indexImm: index.
	codegen
		store: codegen regE
		intoMem: memref
! !

!Assembler methodsFor: 'storing' stamp: 'KenD 9/26/2022 12:38:17'!
storeLargeX0inA
	| memref |
	memref := codegen memRef64: codegen regA indexImm: 1.
	codegen storeDouble: codegen regX0 intoMem: memref
		

! !

!Assembler methodsFor: 'storing' stamp: 'KenD 9/26/2022 12:38:17'!
storeLargeX0inT
	| memref |
	memref := codegen memRef64: codegen regT indexImm: 1.
	codegen storeDouble: codegen regX0 intoMem: memref
		

! !

!Assembler methodsFor: 'storing' stamp: 'KenD 9/26/2022 12:38:17'!
storeLongTinRatA
	| memref |
	memref := codegen memRef32: codegen regR index: codegen regA.
	codegen
		store: codegen regT
		intoMem: memref
! !

!Assembler methodsFor: 'storing' stamp: 'KenD 9/26/2022 12:38:17'!
storeLongTinRatOffsetA
	| memref |
	memref := codegen memRef32: codegen regR offset: codegen regA.
	codegen store: codegen regT long intoMem: memref
! !

!Assembler methodsFor: 'storing' stamp: 'KenD 9/26/2022 12:38:17'!
storeRinAindex: index
	| memref |
	memref := codegen memRef: codegen regA indexImm: index.
	codegen
		store: codegen regR
		intoMem: memref
! !

!Assembler methodsFor: 'storing' stamp: 'KenD 9/26/2022 12:38:17'!
storeRinEindex: index
	| memref |
	memref := codegen memRef: codegen regE indexImm: index.
	codegen
		store: codegen regR
		intoMem: memref
! !

!Assembler methodsFor: 'storing' stamp: 'KenD 9/26/2022 12:38:17'!
storeRinFPindex: index
	| memref |
	memref := codegen memRef: codegen regFP indexImm: index.
	codegen
		store: codegen regR
		intoMem: memref
! !

!Assembler methodsFor: 'storing' stamp: 'KenD 9/26/2022 12:38:17'!
storeRinSindex: index
	| memref |
	memref := codegen memRef: codegen regS indexImm: index.
	codegen
		store: codegen regR
		intoMem: memref
! !

!Assembler methodsFor: 'storing' stamp: 'KenD 9/26/2022 12:38:17'!
storeRinTindex: index
	| memref |
	memref := codegen memRef: codegen regT indexImm: index.
	codegen
		store: codegen regR
		intoMem: memref
! !

!Assembler methodsFor: 'storing' stamp: 'KenD 9/26/2022 12:38:17'!
storeShortAinRoffset: offset
	|  memref |
	memref := codegen memRef16: codegen regR offsetImm: offset.
	codegen store: codegen regA short intoMem: memref
! !

!Assembler methodsFor: 'storing' stamp: 'KenD 9/26/2022 12:38:17'!
storeShortTinRatOffsetA
	| memref |
	memref := codegen memRef16: codegen regR offset: codegen regA.
	codegen store: codegen regT short intoMem: memref
! !

!Assembler methodsFor: 'storing' stamp: 'KenD 9/26/2022 12:38:17'!
storeSinRindex: index
	| memref |
	memref := codegen memRef: codegen regR indexImm: index.
	codegen
		store: codegen regS
		intoMem: memref
! !

!Assembler methodsFor: 'storing' stamp: 'KenD 9/26/2022 12:38:17'!
storeTinRatA
	| memref |
	memref := codegen memRef: codegen regR index: codegen regA.
	codegen
		store: codegen regT
		intoMem: memref
! !

!Assembler methodsFor: 'storing' stamp: 'KenD 9/26/2022 12:38:17'!
storeTinRatOffsetA
	| memref |
	memref := codegen memRef: codegen regR offset: codegen regA.
	codegen store: codegen regT intoMem: memref
! !

!Assembler methodsFor: 'storing' stamp: 'KenD 9/26/2022 12:38:17'!
storeTinRindex: index
	| memref |
	memref := codegen memRef: codegen regR indexImm: index.
	codegen
		store: codegen regT
		intoMem: memref
! !

!Assembler methodsFor: 'logic' stamp: 'KenD 9/26/2022 12:38:17'!
addSPwithImmediate: imm
	codegen addImm: imm to: codegen regSP
! !

!Assembler methodsFor: 'logic' stamp: 'KenD 9/26/2022 12:38:17'!
addTwithImmediate: imm
	codegen addImm: imm to: codegen regT
! !

!Assembler methodsFor: 'logic' stamp: 'KenD 9/26/2022 12:38:17'!
andRwithA
	codegen and: codegen regR with: codegen regA
! !

!Assembler methodsFor: 'logic' stamp: 'KenD 9/26/2022 12:38:17'!
orRwithA
	codegen or: codegen regR with: codegen regA

! !

!Assembler methodsFor: 'logic' stamp: 'KenD 9/26/2022 12:38:17'!
xorAwithR
	codegen xor: codegen regA with: codegen regR

! !

!Assembler methodsFor: 'logic' stamp: 'KenD 9/26/2022 12:38:17'!
xorFPwithFP
	codegen xor: codegen regFP with: codegen regFP

! !

!Assembler methodsFor: 'logic' stamp: 'KenD 9/26/2022 12:38:17'!
xorRwithA
	codegen xor: codegen regR with: codegen regA

! !

!Assembler methodsFor: 'labels' stamp: 'KenD 9/26/2022 12:38:17'!
@ label
	self addLabel: label
! !

!Assembler methodsFor: 'labels' stamp: 'KenD 9/26/2022 12:38:17'!
addLabel: aString
	self addLabel: aString to: self currentAddress
! !

!Assembler methodsFor: 'labels' stamp: 'KenD 9/26/2022 12:38:17'!
addLabel: label to: location
	labels at: label put: location
! !

!Assembler methodsFor: 'labels' stamp: 'KenD 9/26/2022 12:38:17'!
newLabel
	| label next |
	next := labels size + 1.
	IndexedLabels size < next ifTrue: [self class growIndexedLabelsTo: next].
	label := IndexedLabels at: next.
	self addLabel: label to: nil.
	^label
! !

!Assembler methodsFor: 'labels' stamp: 'KenD 9/26/2022 12:38:17'!
resolveLabel: aString
	^labels at: aString
! !

!Assembler methodsFor: 'memory - load / store' stamp: 'KenD 9/26/2022 12:38:17'!
load: dstReg fromMem: srcMemRef
	^codegen load: dstReg fromMem: srcMemRef

! !

!Assembler methodsFor: 'memory - load / store' stamp: 'KenD 9/26/2022 12:38:17'!
store: srcReg intoMem: dstMemRef
	^ codegen store: srcReg intoMem: dstMemRef
! !

!Assembler methodsFor: 'memory - load / store' stamp: 'KenD 9/26/2022 12:38:17'!
storeImm: imm intoMem: dstMemRef
	"Store constant into memory location `dstMemRef`. 

	 The size of data loaded is specified in `dstMemRef`"

	self
		moveImm: imm to: self regV;
		store: self regV intoMem: dstMemRef
! !

!Assembler methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:38:17'!
jumpOver: aBlock
	| label |
	label := self newLabel.
	self jumpTo: label.
	aBlock value.
	self @ label
! !

!Assembler methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:38:17'!
jumpTo: label
	codegen jumpTo: label
! !

!Assembler methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:38:17'!
jumpToMindex: index
	| memref |
	memref := codegen memRef: codegen regM indexImm: index.
	codegen jumpToMem: memref
! !

!Assembler methodsFor: 'relocation' stamp: 'KenD 9/26/2022 12:38:17'!
applyFixups
	codegen memory applyFixupsWith: self
! !

!Assembler class methodsFor: 'initialization' stamp: 'KenD 9/26/2022 12:38:17'!
growIndexedLabelsTo: anInteger
	| new |
	new := (IndexedLabels size + 1 to: anInteger)
		collect: [:i | ('@' , i asString) asSymbol].
	IndexedLabels := IndexedLabels , new
! !

!Assembler class methodsFor: 'initialization' stamp: 'KenD 9/26/2022 12:38:17'!
initialize
	self initializeIndexedLabels
	
! !

!Assembler class methodsFor: 'initialization' stamp: 'KenD 9/26/2022 12:38:17'!
initializeIndexedLabels
	IndexedLabels := #().
	self growIndexedLabelsTo: 100
! !

!CodeGenerator methodsFor: 'basic' stamp: 'KenD 9/26/2022 12:38:32'!
add: source1 to: source2andDest
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'basic' stamp: 'KenD 9/26/2022 12:38:32'!
addImm: imm to: dest
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'basic' stamp: 'KenD 9/26/2022 12:38:32'!
and: source1andDest with: source2
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'basic' stamp: 'KenD 9/26/2022 12:38:32'!
and: source1andDest withImm: imm
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'basic' stamp: 'KenD 9/26/2022 12:38:32'!
breakpoint
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'basic' stamp: 'KenD 9/26/2022 12:38:32'!
call: srcReg
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'basic' stamp: 'KenD 9/26/2022 12:38:32'!
clearHigh32: srcAndDstReg
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'basic' stamp: 'KenD 9/26/2022 12:38:32'!
compare: reg1 with: reg2
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'basic' stamp: 'KenD 9/26/2022 12:38:32'!
compare: reg1 withImm: imm
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'basic' stamp: 'KenD 9/26/2022 12:38:32'!
compare: reg1 withMem: aMemRef
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'basic' stamp: 'KenD 9/26/2022 12:38:32'!
convert: src toDouble: dst
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'basic' stamp: 'KenD 9/26/2022 12:38:32'!
dec: srcAndDstReg
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'basic' stamp: 'KenD 9/26/2022 12:38:32'!
decMem: aMemRef
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'basic' stamp: 'KenD 9/26/2022 12:38:32'!
divDouble: src1andDstReg by: src2reg
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'basic' stamp: 'KenD 9/26/2022 12:38:32'!
divide: srcAndDstReg extendingTo: extReg by: divisorReg
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'basic' stamp: 'KenD 9/26/2022 12:38:32'!
exchange: srcAndDstReg withMem: aMemRef
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'basic' stamp: 'KenD 9/26/2022 12:38:32'!
inc: srcAndDstReg
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'basic' stamp: 'KenD 9/26/2022 12:38:32'!
jumpTo: label
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'basic' stamp: 'KenD 9/26/2022 12:38:32'!
jumpToMem: aMemRef
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'basic' stamp: 'KenD 9/26/2022 12:38:32'!
load: dstReg convertingDoubleToIntegerFromMem: srcMemRef
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'basic' stamp: 'KenD 9/26/2022 12:38:32'!
load: dstReg withTIBat: indexReg
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'basic' stamp: 'KenD 9/26/2022 12:38:32'!
load: dstReg withThreadVariableAt: indexReg
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'basic' stamp: 'KenD 9/26/2022 12:38:32'!
moveDouble: srcReg into: dstReg
	"move from X-type register srcReg into general purpose dstReg"
	
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'basic' stamp: 'KenD 9/26/2022 12:38:32'!
moveImm: imm to: dstReg
	"Load constant to register `dstImm`"

	self subclassResponsibility

! !

!CodeGenerator methodsFor: 'basic' stamp: 'KenD 9/26/2022 12:38:32'!
mulDouble: src1andDstReg by: src2reg
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'basic' stamp: 'KenD 9/26/2022 12:38:32'!
multiply: src1AndDstLoReg by: src2reg wideningTo: dstHiReg
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'basic' stamp: 'KenD 9/26/2022 12:38:32'!
or: src1andDest withImm: imm
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'basic' stamp: 'KenD 9/26/2022 12:38:32'!
reset
	memory reset
! !

!CodeGenerator methodsFor: 'basic' stamp: 'KenD 9/26/2022 12:38:32'!
shiftLeft: srcAndDst byImm: count
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'basic' stamp: 'KenD 9/26/2022 12:38:32'!
shiftRight: srcAndDst byImm: count
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'basic' stamp: 'KenD 9/26/2022 12:38:32'!
shiftRightArithmetic: srcAndDst by: countReg
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'basic' stamp: 'KenD 9/26/2022 12:38:32'!
shiftRightArithmetic: srcAndDst byImm: count
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'basic' stamp: 'KenD 9/26/2022 12:38:32'!
sqrtDouble: srcReg into: dstReg
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'basic' stamp: 'KenD 9/26/2022 12:38:32'!
sub: src1 from: src2AndDst
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'basic' stamp: 'KenD 9/26/2022 12:38:32'!
subDouble: src1 from: src2AndDst
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'basic' stamp: 'KenD 9/26/2022 12:38:32'!
subImm: imm from: srcAndDst
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'basic' stamp: 'KenD 9/26/2022 12:38:32'!
test: src1Reg with: src2Reg
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'basic' stamp: 'KenD 9/26/2022 12:38:32'!
test: srcReg withImm: imm
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'accessing' stamp: 'KenD 10/23/2022 16:02:56'!
addressBitSize
	"# bytes * 8 bits per byte"
	^self addressSize * 8

! !

!CodeGenerator methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:38:32'!
addressLength
	^wordSize * 8
! !

!CodeGenerator methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:38:32'!
addressSize
	"Return the size of address in bytes, e.g, 4 for 32bit archs
	 and 8 for 64bit archs"

	^wordSize
! !

!CodeGenerator methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:38:32'!
bytes
	^memory bytes
! !

!CodeGenerator methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:38:32'!
callIndirect: aMemRef
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:38:32'!
codeSize
	^memory codeSize
! !

!CodeGenerator methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:38:32'!
memory
	^memory
! !

!CodeGenerator methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:38:32'!
nativeCode
	^ NativeCode new code: memory bytes
! !

!CodeGenerator methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:38:32'!
wordSize
	^wordSize
! !

!CodeGenerator methodsFor: 'accessing' stamp: 'KenD 11/8/2022 14:49:42'!
wordSize: anInteger
	self assert: anInteger == 8.
	wordSize := anInteger.
! !

!CodeGenerator methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:38:32'!
wordSizeShift
	^wordSize = 8 ifTrue: [3] ifFalse: [2]
! !

!CodeGenerator methodsFor: 'initialization' stamp: 'KenD 9/26/2022 12:38:32'!
initialize
	memory := RelocatableBuffer new.
! !

!CodeGenerator methodsFor: 'initialization' stamp: 'KenD 9/26/2022 12:38:32'!
platform: aNativizationPlatform
	abi := aNativizationPlatform abi.
	wordSize := aNativizationPlatform wordSize.
! !

!CodeGenerator methodsFor: 'initialization' stamp: 'KenD 9/26/2022 12:38:32'!
stream
	^memory stream
! !

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 9/26/2022 12:38:32'!
lea: dstReg withMem: srcMemRef
	^self subclassResponsibility
! !

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 9/26/2022 12:38:32'!
load: dstReg fromMem: srcMemRef
	"Load `dstReg` from memory location `srcMemRef`.
	 The size of data loaded is specified in `srcMemRef`.

	 When loading 32bits into 64bit register, high 32bits must be
	 cleared (in other words, 32bit value is *zero* extended to
	 64bits and stored in `dstReg`.

	 However, when loading 16bits or 8bits, high 48 or 56 bits
	 are *left intact*.

	 This somewhat weird behavior is heritage of x86.
	"

	^ self subclassResponsibility

! !

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 9/26/2022 12:38:32'!
loadDouble: dstReg fromMem: srcMemRef
	"Load 64-bit floating point `dstReg` from memory location `srcMemRef`"
	
	^ self subclassResponsibility
! !

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 9/26/2022 12:38:32'!
memRef
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 11/2/2022 13:17:07'!
memRef16
	"Return clean instance of memory reference."

	^ self memRef widthInBits: 16; yourself

! !

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 11/2/2022 13:00:34'!
memRef16: baseReg offset: offsetReg
	^ self memRef16
		base: baseReg;
		index: offsetReg;
		yourself
! !

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 9/26/2022 12:38:32'!
memRef16: baseReg offsetImm: offsetImm
	^ self memRef16
		base: baseReg;
		displacement: offsetImm;
		yourself
! !

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 11/2/2022 13:17:12'!
memRef32
	"Return clean instance of memory reference."

	^ self memRef widthInBits: 32; yourself

! !

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 11/2/2022 13:01:18'!
memRef32: baseReg index: indexReg
	^ self memRef32 
		base: baseReg; 
		displacement: -4;
		index: indexReg;
		yourself

! !

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 9/26/2022 12:38:32'!
memRef32: baseReg indexImm: indexImm
	^ self memRef32 
		base: baseReg; 
		displacement: (indexImm - 1) * 4;
		yourself

! !

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 11/2/2022 13:01:32'!
memRef32: baseReg offset: offsetReg
	^ self memRef32
		base: baseReg;
		index: offsetReg;
		yourself
! !

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 11/2/2022 13:05:11'!
memRef64
	"Return clean instance of memory reference."

	^ self memRef "defaults OK"

! !

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 9/26/2022 12:38:32'!
memRef64: baseReg indexImm: indexImm
	^ self memRef64
		base: baseReg;
		displacement: (indexImm - 1) * 8;
		yourself
! !

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 11/2/2022 13:17:18'!
memRef8
	"Answer reference to a single byte"

	^ self memRef widthInBits: 8; yourself

! !

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 11/2/2022 13:06:44'!
memRef8: baseReg index: indexReg
	^ self memRef8 
		base: baseReg; 
		displacement: -1;
		index: indexReg;
		yourself

! !

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 9/26/2022 12:38:32'!
memRef8: baseReg indexImm: indexImm
	^ self memRef8
		base: baseReg; 
		displacement: (indexImm - 1);
		yourself

! !

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 11/2/2022 13:12:02'!
memRef: baseReg index: indexRef
	"Nota Bene: Zero based slot indexing"
	^ self memRef 
		base: baseReg; 
		displacement: (self addressSize negated);
		index: indexRef;
		yourself

! !

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 11/2/2022 13:07:27'!
memRef: baseReg index: indexRef offsetImm: anInteger
	^ self memRef 
		base: baseReg; 
		displacement: anInteger;
		index: indexRef;
		yourself

! !

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 11/2/2022 13:09:56'!
memRef: baseReg indexImm: indexImm
	"Nota Bene: Zero based slot indexing"
	^ self memRef 
		base: baseReg; 
		displacement: (indexImm - 1) * self addressSize;
		yourself

! !

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 11/2/2022 13:08:33'!
memRef: baseReg offset: indexReg
	^ self memRef
		base: baseReg;
		index: indexReg;
		yourself
! !

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 9/26/2022 12:38:32'!
memRefAatT
^self memRef: self regA index: self regT
! !

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 9/26/2022 12:38:32'!
memRefSPatT
	^ self memRef: self regSP index: self regT
! !

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 9/26/2022 12:38:32'!
roundDouble: srcReg into: dstReg
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 9/26/2022 12:38:32'!
store: srcReg intoMem: dstMemRef
	"Store `srcReg` into memory location `dstMemRef`. 

	 The size of data loaded is specified in `dstMemRef`"
	^self subclassResponsibility
! !

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 9/26/2022 12:38:32'!
storeDouble: srcReg intoMem: dstMemRef
	^ self subclassResponsibility
! !

!CodeGenerator methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:38:32'!
regA
	^abi regA
! !

!CodeGenerator methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:38:32'!
regE
	^abi regE
! !

!CodeGenerator methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:38:32'!
regFP
	^abi regFP
! !

!CodeGenerator methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:38:32'!
regFalse
	^abi regFalse
! !

!CodeGenerator methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:38:32'!
regG
	^ abi regG
! !

!CodeGenerator methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:38:32'!
regIP
	^abi regIP
! !

!CodeGenerator methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:38:32'!
regM
	^abi regM
! !

!CodeGenerator methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:38:32'!
regNil
	^abi regNil
! !

!CodeGenerator methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:38:32'!
regR
	^abi regR
! !

!CodeGenerator methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:38:32'!
regS
	^abi regS
! !

!CodeGenerator methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:38:32'!
regSP
	^abi regSP
! !

!CodeGenerator methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:38:32'!
regT
	^abi regT
! !

!CodeGenerator methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:38:32'!
regTrue
	^abi regTrue
! !

!CodeGenerator methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:38:32'!
regV
	^abi regV
! !

!CodeGenerator methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:38:32'!
regX0
	^ abi regX0
! !

!CodeGenerator methodsFor: 'registers - IR' stamp: 'KenD 9/26/2022 12:38:32'!
regX1
	^ abi regX1
! !

!CodeGenerator methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:32'!
pop: dstReg
	^ self subclassResponsibility

! !

!CodeGenerator methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:32'!
popIntoMem: dstMemRef
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:32'!
push: srcReg
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:32'!
pushAOnFPUStack
	^ self subclassResponsibility

! !

!CodeGenerator methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:32'!
pushImm: imm
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:32'!
pushMem: aMemRef
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'push/pop' stamp: 'KenD 9/26/2022 12:38:32'!
pushROnFPUStack
	^ self subclassResponsibility

! !

!CodeGenerator methodsFor: 'operations - arithmetic' stamp: 'KenD 9/26/2022 12:38:32'!
addDouble: source1 to: source2andDest
	self subclassResponsibility
! !

!CodeGenerator methodsFor: 'labels' stamp: 'KenD 9/26/2022 12:38:32'!
currentAddress
	^memory currentAddress
! !

!CodeGenerator methodsFor: 'private' stamp: 'KenD 9/26/2022 12:38:32'!
bitLengthOf: anInteger
	(anInteger between: -16r80 and: 16r7F) ifTrue: [^8].
	(anInteger between: -16r8000 and: 16r7FFF) ifTrue: [^16].
	(anInteger between: -16r80000000 and: 16r7FFFFFFF) ifTrue: [^32].
	(anInteger between: -16r8000000000000000 and: 16r7FFFFFFFFFFFFFFF)
		ifTrue: [^64].
	(anInteger
		between: -16r80000000000000000000000000000000
		and: 16r7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)
		ifTrue: [^128].
	^nil
! !

!CodeGenerator methodsFor: 'alignment' stamp: 'KenD 9/26/2022 12:38:32'!
alignTo: aNumber
	| current count |
	current := memory position.
	count := (current alignedTo: aNumber) - current.
	self nop: count
! !

!CodeGenerator methodsFor: 'relocation' stamp: 'KenD 9/26/2022 12:38:32'!
baseAddress
	^memory baseAddress
! !

!CodeGenerator methodsFor: 'services' stamp: 'KenD 9/26/2022 12:38:32'!
move: srcReg to: dstReg
	^ self subclassResponsibility

! !

!RISCCodeGenerator methodsFor: 'jumps' stamp: 'KenD 9/26/2022 12:39:12'!
clearHigh32: srcAndDstReg
	self
		shiftLeft: srcAndDstReg byImm: 32;
		shiftRight: srcAndDstReg byImm: 32
! !

!RISCCodeGenerator methodsFor: 'jumps' stamp: 'KenD 9/26/2022 12:39:12'!
dec: srcAndDstReg
	self addImm: -1 to: srcAndDstReg

! !

!RISCCodeGenerator methodsFor: 'jumps' stamp: 'KenD 9/26/2022 12:39:12'!
decMem: aMemRef
	self addImm: -1 toMem: aMemRef

! !

!RISCCodeGenerator methodsFor: 'jumps' stamp: 'KenD 9/26/2022 12:39:12'!
inc: srcAndDstReg
	self addImm: 1 to: srcAndDstReg

! !

!RISCCodeGenerator methodsFor: 'jumps' stamp: 'KenD 9/26/2022 12:39:12'!
pop: srcReg
	| memref |
	memref := self memRef base: self regSP.
	self
		load: srcReg fromMem: memref;
		addImm: wordSize to: self regSP 
! !

!RISCCodeGenerator methodsFor: 'jumps' stamp: 'KenD 10/31/2022 13:48:27'!
push: srcReg
	"Stack is 16 byte aligned, so pushing sometimes adds a pad"
	| memref |
	memref := self memRef base: self regSP; displacement: -8. "Stack grows down"
	self
		store: srcReg intoMem: memref;
		subImm: wordSize from: self regSP 
! !

!RISCCodeGenerator methodsFor: 'jumps' stamp: 'KenD 10/4/2022 13:09:41'!
pushImm: imm
	| memref |
	memref := self memRef base: self regSP; displacement: -8. "Stack grows down"
	self moveImm: imm to: self regV;
		store: self regV intoMem: memref;
		subImm: wordSize from: self regSP 
! !

!RISCCodeGenerator methodsFor: 'jumps' stamp: 'KenD 9/26/2022 12:39:12'!
subImm: anInteger from: srcAndDstReg
	self addImm: anInteger negated to: srcAndDstReg

! !

!RV64GCodeGenerator methodsFor: 'alignment' stamp: 'KenD 10/16/2022 08:52:02'!
noOp
	"Add 32 bits of space to the instruction stream.
	This is required in some cases to keep 64 bit (8 byte) memory address alignment."
	memory nextInstructionPut: 
		(RV64ADDI regDest: RegZero regSource: RegZero imm12: 0).! !

!RV64GCodeGenerator methodsFor: 'alignment' stamp: 'KenD 10/16/2022 08:50:05'!
noOp: count

	"assemble `count` noOps
	 With some CPUs, need NoOps at end of code sequence 
	 to avoid prefetch signalling an illegal instruction (which would never be executed)"
	1 to count do: [
		memory nextInstructionPut: 
			(RV64ADDI regDest: RegZero regSource: RegZero imm12: 0)
	]! !

!RV64GCodeGenerator methodsFor: 'floating point' stamp: 'KenD 10/9/2022 10:53:32'!
addDouble: floatSource1 to: source2andDest

	memory nextInstructionPut: 
		(RV64FADD regDest: source2andDest regA: floatSource1 regB: source2andDest 
					roundingMode: self class defaultRoundingMode).! !

!RV64GCodeGenerator methodsFor: 'floating point' stamp: 'KenD 10/9/2022 11:00:27'!
convert: intReg toDouble: floatReg
	"Convert signed integer from int register intReg into DoubleFLoat floatReg"
	"NB: does do coercion; NOT a bit copy"
	memory nextInstructionPut: 
		(RV64FCVTI2D regDest: floatReg regA: intReg roundingMode: self class defaultRoundingMode).! !

!RV64GCodeGenerator methodsFor: 'floating point' stamp: 'KenD 10/9/2022 11:04:01'!
divDouble: src1andDstReg by: src2reg

	memory nextInstructionPut: 
		(RV64FDIV regDest: src1andDstReg regA: src1andDstReg regB: src2reg 
					roundingMode: self class defaultRoundingMode).! !

!RV64GCodeGenerator methodsFor: 'floating point' stamp: 'KenD 10/9/2022 10:56:21'!
moveDouble: floatRegSrc to: intRegDest
	"move from float register floatRegSrc into general purpose intRegDest"
	"NB: no coercion; just copy the bits"
	memory nextInstructionPut: 
		(RV64FMVD2IR regDest: intRegDest regA: floatRegSrc).
! !

!RV64GCodeGenerator methodsFor: 'initialization' stamp: 'KenD 10/14/2022 13:23:03'!
initialize

	super initialize. "sets memory, a RelocatableBuffer"
	self platform: NativizationPlatform default. "sets abi & wordsize"
	zeroReg  := abi regZero.
	flagsReg := abi regFlags.
	tmp0Reg := abi regTmp0.
	tmp1Reg := abi regTmp1.
	linkReg    := abi regLink.
	
	
	! !

!RV64GCodeGenerator methodsFor: 'initialization' stamp: 'KenD 10/4/2022 11:00:12'!
target: aNativizationTarget
	super target: aNativizationTarget.
	zeroReg := abi regZero.
	flagsReg := abi regFlags.
	tmp1Reg := abi regTmp1.
	linkReg := abi regLink.
! !

!RV64GCodeGenerator methodsFor: 'jumps' stamp: 'KenD 10/5/2022 15:38:44'!
call: srcReg
	"Goto address #srcReg, placing return address in #linkReg"
	memory nextInstructionPut: 
		(RV64JALR destReg: linkReg baseReg: srcReg immedOffset: 0).
! !

!RV64GCodeGenerator methodsFor: 'jumps' stamp: 'KenD 10/5/2022 15:35:26'!
call: srcReg withOffset: imm

	memory nextInstructionPut: 
		(RV64JALR destReg: linkReg baseReg: srcReg immedOffset: imm).
! !

!RV64GCodeGenerator methodsFor: 'jumps' stamp: 'KenD 11/8/2022 15:08:50'!
jumpTo: label
	| offset |
	offset := 0. "assembler labels at: label."
	self halt. "@@FIXME@@"
	self moveImm: offset to: tmp1Reg.
	self add: RegM to: tmp1Reg. "label is offset from Method code"
	self call: RegTmp1.! !

!RV64GCodeGenerator methodsFor: 'jumps' stamp: 'KenD 10/23/2022 14:28:30'!
jumpToMem: memRef

	self lea: RegTmp1 withMem: memRef.
	self call: RegTmp1.! !

!RV64GCodeGenerator methodsFor: 'jumps' stamp: 'KenD 10/5/2022 15:39:50'!
return
	"Return from subroutine"
	"Goto address in #linkReg, remembering nothing"
	memory nextInstructionPut: 
		(RV64JALR regDest: zeroReg regBase: linkReg offset: 0).
! !

!RV64GCodeGenerator methodsFor: 'jumps' stamp: 'KenD 10/13/2022 07:48:59'!
return: imm12offset
	"Return from subroutine"
	"Goto address in #linkReg + offset, remembering nothing"
	
	"Nota Bene: unshifted imm12offset is sign extended and the lowest bit set to zero"
	memory nextInstructionPut: 
		(RV64JALR regDest: zeroReg regBase: linkReg offset: imm12offset).
! !

!RV64GCodeGenerator methodsFor: 'memory' stamp: 'KenD 11/2/2022 13:17:31'!
memRef
	"Default for RV64G is size for 64 bit references."

	^ RVMemoryReference new
		widthInBits: self wordSize * 8;
		yourself
! !

!RV64GCodeGenerator methodsFor: 'memory - load/store' stamp: 'KenD 11/2/2022 08:00:39'!
lea: addressReg withMem: memRef

	"Answer baseRegister + (indexRegister*scale) + offset.
	`indexRegister` may be RegZero (0).
	`scale` may be 1. 2, 4, or 8
	`addressReg` may be tmp1, NEVER tmp0 !!"
	(memRef baseRegister = addressReg)
		ifFalse: [ self move: memRef baseRegister to: addressReg ].
	(memRef offset isZero)
		ifFalse: [ self addImm: memRef offset to: addressReg ].
	(memRef indexRegister isZero)
	ifFalse: [
		(memRef scale = 1)
		ifTrue: [ self add: memRef index to: addressReg 		] 
		ifFalse: [
			memory nextInstructionPut:  "(index * scale) is just a shift"
				(RV64SLLI 		regDest: RegTmp0 regSource: memRef indexRegister imm12: memRef scale).
			memory nextInstructionPut: 
				(RV64ADD regDest: addressReg regA: addressReg regB: RegTmp0).
		]
	]
 	
	! !

!RV64GCodeGenerator methodsFor: 'memory - load/store' stamp: 'KenD 10/22/2022 16:01:46'!
load: dstReg convertingDoubleToIntegerFromMem: srcMemRef
	"Assume signed integer target"
	self loadDouble: FTmp0 fromMem: srcMemRef.
	memory nextInstructionPut: 
			(RV64FCVTD2I 
				regDest: dstReg 
				regA: FTmp0 
				roundingMode: RoundNearestToEven).! !

!RV64GCodeGenerator methodsFor: 'memory - load/store' stamp: 'KenD 11/2/2022 12:51:11'!
load: dstReg fromMem: srcMemRef

	"Load `dstReg` from memory location `srcMemRef`.
	 The size of data loaded is specified in `srcMemRef`.
	
	Nota Bene: Uses BOTH tmp0 and tmp1, 
			 so `dstReg` cannot be either !!
	 
	 When loading 32bits into 64bit register, high 32bits must be
	 cleared (in other words, 32bit value is *zero* extended to
	 64bits and stored in `dstReg`.
	 
	 However, when loading 16bits or 8bits, high 48 or 56 bits
	 are *left intact*.
	 
	 This somewhat weird behavior is heritage of x86."
	
	| bitWidth |
	self lea: RegTmp1 withMem: srcMemRef.
	bitWidth := srcMemRef widthInBits.
	bitWidth isNil ifTrue: [ self error: 'Unknown memory bitWidth' ].
	(bitWidth = 64)
	ifTrue: [ "load 64 bit Double-wide Integer"
		memory nextInstructionPut: 
			(RV64LD regDest: dstReg regBase: RegTmp1 immediateOffset: 0)
	]
	ifFalse: [
		(bitWidth = 32)
		ifTrue: [
			memory nextInstructionPut: 
				(RV64LWU "zero extended Load Word Unsigned"
					regDest: dstReg regBase: RegTmp1 immediateOffset: 0)
		] 
		ifFalse: [
			(bitWidth = 16)
			ifTrue: [
				memory nextInstructionPut: "load 16 bit HalfWord"
					(RV64LHU regDest: tmp0Reg regBase: RegTmp1 immediateOffset: 0).
				memory nextInstructionPut: "shift out lower 16 bits"
					(RV64SRLI destReg: dstReg  regSource: dstReg imm12: 16).
				memory nextInstructionPut: "upper bits back where they started"
					(RV64SLLI destReg: dstReg  regSource: dstReg imm12: 16).
				memory nextInstructionPut: "glue the pieces together"
					(RV64AND regDest: dstReg regA: dstReg regB: tmp0Reg)
			] 
			ifFalse: [
				self assert: (bitWidth = 8).
				memory nextInstructionPut: "load 8 bit Byte"
					(RV64LB regDest: tmp0Reg regBase: RegTmp1 immediateOffset: 0).
				memory nextInstructionPut: "shift out lower 8 bits"
					(RV64SRLI  destReg: dstReg  regSource: dstReg imm12: 8).
				memory nextInstructionPut: "upper bits back where they started"
					(RV64SLLI  destReg: dstReg  regSource: dstReg imm12: 8).
				memory nextInstructionPut: "glue the pieces together"
					(RV64AND regDest: dstReg regA: dstReg regB: tmp0Reg)
			] 
		]
	]
		! !

!RV64GCodeGenerator methodsFor: 'memory - load/store' stamp: 'KenD 10/23/2022 15:32:51'!
loadDouble: dstReg fromMem: srcMemRef
	"Load 64-bit floating point `dstReg` from memory location spec: `srcMemRef`"
	self lea: RegTmp1 withMem: srcMemRef.
	memory nextInstructionPut: 
		(RV64FLD destReg: dstReg baseReg: RegTmp1 immedOffset: 0)! !

!RV64GCodeGenerator methodsFor: 'memory - load/store' stamp: 'KenD 10/23/2022 08:36:53'!
loadReg: destReg withBase: baseReg offset: imm

	(self fitsIn12bits: imm) 
	ifTrue: [
		memory nextInstructionPut: 
			(RV64LD destReg: destReg baseReg: baseReg immedOffset: imm)
	]
	ifFalse: [
		self moveImm: imm to: tmp0Reg.
		memory nextInstructionPut: 
			(RV64ADD regDest: tmp0Reg regA: baseReg regB: tmp0Reg).
		memory nextInstructionPut: 
			(RV64LD destReg: destReg baseReg: tmp0Reg immedOffset: 0)
	]! !

!RV64GCodeGenerator methodsFor: 'memory - load/store' stamp: 'KenD 11/2/2022 07:46:40'!
store: srcReg intoMem: dstMemRef

	"Store `srcReg` value into memory location `dstMemRef`.
	 The bitSize of value is specified in `dstMemRef`.
	
	Nota Bene: Uses BOTH tmp0 and tmp1, 
			 so `srcReg` cannot be either !!"
	
	| bitWidth |
	self lea: RegTmp1 withMem: dstMemRef.
	bitWidth := dstMemRef widthInBits.
	bitWidth isNil ifTrue: [ self error: 'Unknown memory bitWidth' ].
	(bitWidth = 64)
	ifTrue: [ 
		memory nextInstructionPut:  "store 64 bit DoubleWord"
			(RV64SD regSource: srcReg regBase: RegTmp1 immediateOffset: 0)
	]
	ifFalse: [
		(bitWidth = 32)
		ifTrue: [
			memory nextInstructionPut: "store 32 bit Word"
				(RV64SW regSource: srcReg regBase: RegTmp1 immediateOffset: 0)
		] 
		ifFalse: [
			(bitWidth = 16)
			ifTrue: [
				memory nextInstructionPut: "store 16 bit HalfWord"
					(RV64SH regSource: srcReg regBase: RegTmp1 immediateOffset: 0)
			] 
			ifFalse: [
				self assert: (bitWidth = 8).
				memory nextInstructionPut: "store 8 bit Byte"
					(RV64SB regSource: srcReg regBase: RegTmp1 immediateOffset: 0)
			] 
		]
	]
		! !

!RV64GCodeGenerator methodsFor: 'operations - arithmetic' stamp: 'KenD 11/2/2022 07:59:07'!
add: src1Reg to: src2andDstReg
	"Signed Addition with flagsReg nonZero on overflow

	Note overflow check notes in 
	-- https://riscv-programming.org/book/riskbook.html 6.9: Detecting Overflow
	-- RISCV-SPEC section 2.4: Integer Computational Instructions
	"

	 "tmp1Reg to 1 if (regB < 0)"
	memory nextInstructionPut: 
		(RV64SLTI regDest: tmp1Reg regSource: src2andDstReg imm12: 0).
		
	 "Do the addition that may overflow"
	memory nextInstructionPut: 
		(RV64ADD regDest: src2andDstReg regA: src1Reg regB: src2andDstReg).
		
	"set flagsReg to 1 if (regA+regB < regA)"
	memory nextInstructionPut: 
		(RV64SLT regDest: flagsReg regA: src2andDstReg regB: src1Reg).
"
	tmp1   flags   overflow? condition
	 0           0             0         NO-overflow
	 1           1             0         NO-overflow
	 0           1           -1         (regA+regB < regA)
	 1            0            1        (regB < 0)
	
	If (tmp1=flags), flagsReg gets zero, else non-zero 
	(1 or -1, but who cares? Can test if salient. Avoid test+jump to flag Overflow)"
	memory nextInstructionPut: 
		(RV64SUB regDest: flagsReg regA: tmp1Reg regB: flagsReg).

! !

!RV64GCodeGenerator methodsFor: 'operations - arithmetic' stamp: 'KenD 10/14/2022 13:30:39'!
addImm: imm to: srcAndDst
	"Signed Addition with flagsReg nonZero on overflow"
	"Place immediate value into a register and use #add:to:"
	self moveImm: imm to: tmp1Reg. "NB: uses `tmp0Reg` internally, so `tmp1Reg` OK"
	self add: tmp1Reg to: srcAndDst.
! !

!RV64GCodeGenerator methodsFor: 'operations - arithmetic' stamp: 'KenD 10/9/2022 11:09:47'!
dec: srcAndDstReg
	"Decriment register value"
	memory nextInstructionPut: 
		(RV64ADDI regDest: srcAndDstReg regSource: srcAndDstReg imm12: -1).
	! !

!RV64GCodeGenerator methodsFor: 'operations - arithmetic' stamp: 'KenD 10/9/2022 11:09:59'!
inc: srcAndDstReg
	"Incriment register value"
	memory nextInstructionPut: 
		(RV64ADDI regDest: srcAndDstReg regSource: srcAndDstReg imm12: 1).
	! !

!RV64GCodeGenerator methodsFor: 'operations - arithmetic' stamp: 'KenD 10/15/2022 17:01:11'!
sub: src1 from: src2AndDest

	"NB:  destReg := regA - regB"
	self flag: #UnderflowUntested.
	memory nextInstructionPut: 
		(RV64SUB regDest: src2AndDest regA: src2AndDest regB: src1).
! !

!RV64GCodeGenerator methodsFor: 'operations - arithmetic' stamp: 'KenD 10/16/2022 14:08:17'!
subDouble: src1 from: src2AndDest
	"Assume RV64G DoubleFloat registers "
	memory nextInstructionPut: 
		(RV64FSUB regDest: src2AndDest regA: src2AndDest regB: src1). 
! !

!RV64GCodeGenerator methodsFor: 'operations - logical' stamp: 'KenD 10/5/2022 12:43:06'!
and: srcAndDstReg with: source2

	memory nextInstructionPut: 
		(RV64AND regDest: srcAndDstReg regA: srcAndDstReg regB: source2).
! !

!RV64GCodeGenerator methodsFor: 'operations - logical' stamp: 'KenD 10/16/2022 13:51:46'!
and: srcAndDstReg withImm: imm

	(self fitsIn12bits: imm)
	ifTrue: [
		memory nextInstructionPut: 
			(RV64ANDI destReg: srcAndDstReg regSource: srcAndDstReg imm12: imm).
	]
	ifFalse: [
		self moveImm: imm to: tmp0Reg.
		memory nextInstructionPut: 
				(RV64AND regDest: srcAndDstReg regA: srcAndDstReg regB: tmp0Reg).
	].
! !

!RV64GCodeGenerator methodsFor: 'operations - logical' stamp: 'KenD 10/6/2022 16:40:03'!
compare: regA with: regB
	self flag: #CheckSemantics.
	memory nextInstructionPut: 
		(RV64SUB regDest: flagsReg regA: regA regB: regB).
! !

!RV64GCodeGenerator methodsFor: 'operations - logical' stamp: 'KenD 10/16/2022 14:04:39'!
compare: reg1 withImm: imm
	"Just use a register" 
	self moveImm: imm to: tmp0Reg.
	self compare: reg1 with: tmp0Reg 
! !

!RV64GCodeGenerator methodsFor: 'operations - logical' stamp: 'KenD 10/16/2022 13:52:49'!
or: srcAndDstReg withImm: imm

	(self fitsIn12bits: imm)
	ifTrue: [
		memory nextInstructionPut: 
			(RV64ORI destReg: srcAndDstReg regSource: srcAndDstReg imm12: imm).
	]
	ifFalse: [
		self moveImm: imm to: tmp0Reg.
		memory nextInstructionPut: 
				(RV64OR regDest: srcAndDstReg regA: srcAndDstReg regB: tmp0Reg).
	].
! !

!RV64GCodeGenerator methodsFor: 'operations - logical' stamp: 'KenD 10/5/2022 12:30:08'!
shiftLeft: srcAndDstReg by: countReg

	"logical shiift left"
	memory nextInstructionPut: 
		(RV64SLL regDest: srcAndDstReg regA: srcAndDstReg  regB: countReg).
! !

!RV64GCodeGenerator methodsFor: 'operations - logical' stamp: 'KenD 10/16/2022 13:56:25'!
shiftLeft: srcAndDstReg byImm: imm

	"logical shiift left"
	(self fitsIn12bits: imm)
	ifTrue: [
		memory nextInstructionPut: 
			(RV64SLLI regDest: srcAndDstReg regSource: srcAndDstReg  imm12: imm).
	]
	ifFalse: [
		self moveImm: imm to: tmp0Reg.
		memory nextInstructionPut: 
				(RV64SLL regDest: srcAndDstReg regA: srcAndDstReg regB: tmp0Reg).		
	]
! !

!RV64GCodeGenerator methodsFor: 'operations - logical' stamp: 'KenD 10/5/2022 12:34:44'!
shiftRight: srcAndDstReg by: countReg

	"logical shiift right"
	memory nextInstructionPut: 
		(RV64SRL regDest: srcAndDstReg regA: srcAndDstReg regB: countReg ).
! !

!RV64GCodeGenerator methodsFor: 'operations - logical' stamp: 'KenD 10/16/2022 13:58:38'!
shiftRight: srcAndDstReg byImm: imm

	"logical shiift right"
	(self fitsIn12bits: imm)
	ifTrue: [
		memory nextInstructionPut: 
			(RV64SRLI regDest: srcAndDstReg regSource: srcAndDstReg  imm12: imm).
	]
	ifFalse: [
		self moveImm: imm to: tmp0Reg.
		memory nextInstructionPut: 
				(RV64SRL regDest: srcAndDstReg regA: srcAndDstReg regB: tmp0Reg).
	].
! !

!RV64GCodeGenerator methodsFor: 'operations - logical' stamp: 'KenD 10/5/2022 12:32:59'!
shiftRightArithmetic: srcAndDstReg by: countReg

	"arithmetic shiift right; most significant bit duplicated"
	memory nextInstructionPut: 
		(RV64SRA regDest: srcAndDstReg regA: srcAndDstReg  regB: countReg ).
! !

!RV64GCodeGenerator methodsFor: 'operations - logical' stamp: 'KenD 10/16/2022 13:59:18'!
shiftRightArithmetic: srcAndDstReg byImm: imm

	"arithmetic shiift right"
	(self fitsIn12bits: imm)
	ifTrue: [
		memory nextInstructionPut: 
			(RV64SRAI regDest: srcAndDstReg regSource: srcAndDstReg  imm12: imm).
	]
	ifFalse: [
		self moveImm: imm to: tmp0Reg.
		memory nextInstructionPut: 
				(RV64SRA regDest: srcAndDstReg regA: srcAndDstReg regB: tmp0Reg).
	].
! !

!RV64GCodeGenerator methodsFor: 'operations - register' stamp: 'KenD 10/16/2022 13:03:38'!
clearReg: reg

	memory nextInstructionPut: 
		(RV64ADDI regDest: reg regSource: zeroReg imm12: 0).
	! !

!RV64GCodeGenerator methodsFor: 'operations - register' stamp: 'KenD 10/22/2022 16:25:58'!
loadEwithAddressOfRatA

	self flag: #revisit.
	memory nextInstructionPut: 
			(RV64ADD destReg: RegTmp0 regA: RegR regB: RegA).
	memory nextInstructionPut: 
			(RV64ADDI destReg: RegE regSource: RegTmp0 imm12: wordSize negated)! !

!RV64GCodeGenerator methodsFor: 'operations - register' stamp: 'KenD 10/22/2022 16:25:32'!
loadLongMwithIPoffset: anInteger

	self flag: #revisit.
	(self fitsIn12bits: anInteger) 
	ifTrue:  [
		memory nextInstructionPut: 
			(RV64AUIPC regDest: RegM immediate: anInteger)
	]
	ifFalse: [
		memory nextInstructionPut: 
			(RV64AUIPC regDest: RegM immediate: 0).
		self moveImm: anInteger to: tmp1Reg. "NB: uses `tmp0Reg` internally, but `tmp1Reg` OK"
		self add: tmp1Reg to: RegM.
	]! !

!RV64GCodeGenerator methodsFor: 'operations - register' stamp: 'KenD 10/21/2022 10:08:52'!
loadMXCSRfromA

	self move: RegA to: flagsReg ! !

!RV64GCodeGenerator methodsFor: 'operations - register' stamp: 'KenD 10/22/2022 16:24:55'!
loadRwithArgPointer

	self flag: #revisit.
	memory nextInstructionPut: 
			(RV64ADDI destReg: RegR regSource: RegFP imm12: (2 * self addressSize))! !

!RV64GCodeGenerator methodsFor: 'operations - register' stamp: 'KenD 10/22/2022 16:25:15'!
loadSwithAddressOfSatA

	self flag: #revisit.
	memory nextInstructionPut: 
			(RV64ADD destReg: RegTmp0 regA: RegS regB: RegA).
	memory nextInstructionPut: 
			(RV64ADDI destReg: RegS regSource: RegTmp0 imm12: wordSize negated)! !

!RV64GCodeGenerator methodsFor: 'operations - register' stamp: 'KenD 10/5/2022 13:04:50'!
move: srcReg to: dstReg

	memory nextInstructionPut:
		(RV64ADDI regDest: dstReg regSource: srcReg imm12: 0).
! !

!RV64GCodeGenerator methodsFor: 'operations - register' stamp: 'KenD 10/16/2022 07:59:06'!
moveImm: imm to: dstReg
	"Load Integer constant to register `dstReg`"

	"Nota Bene: `dstReg` may be `tmp1Reg` so use `tmp0Reg`"
	
	(self fitsIn12bits: imm)
	ifTrue: [ 
		memory nextInstructionPut: 
			(RV64ORI regDest: dstReg regSource: zeroReg imm12: imm).
	]
	ifFalse: [ | bitWidth |
		bitWidth := self bitLengthOf: imm.
		(bitWidth isNil) ifTrue: [self error: 'immediate value does not fit in a register'].
		(bitWidth <= 32) "Fits in 32 bits"
		ifTrue: [
			memory nextInstructionPut: "Upper 20 bits"
				(RV64LUI regDest: dstReg immediate: imm >> 12).
			memory nextInstructionPut: "Lower 12 bits"
				(RV64ORI regDest: dstReg regSource: zeroReg imm12: (imm bitAnd: 16rFFF)).
		]
		ifFalse: [ 	"Fits in 64 bits"
			self assert: (bitWidth <= 64).
			" Upper 32 bits into `tmp0Reg`.
			We know by construction that immediate fits in 32 bits, 
			so following recursive call never tries to use `tmp0Reg` recursively."
			self moveImm: ((imm bitAnd: 16rFFFF0000) >> 32) to: tmp0Reg.
			memory nextInstructionPut:  "shift back into top"
				(RV64SLLI regDest: tmp0Reg regSource: tmp0Reg imm12: 32).
			"Lower 32 bits to `dstReg`"
			self moveImm: (imm bitAnd: 16r0000FFFF) to: dstReg.
			"Or upper and lower bits back together into `dstReg`"
			memory nextInstructionPut: 
				(RV64OR regDest: dstReg regA: dstReg regB: tmp0Reg).
		]
	]
! !

!RV64GCodeGenerator methodsFor: 'registers - internal use only' stamp: 'KenD 10/4/2022 11:00:12'!
regFlags
	^ flagsReg
! !

!RV64GCodeGenerator methodsFor: 'services' stamp: 'KenD 10/16/2022 15:24:13'!
alignTo: aNumber
	| current |
	current := memory position. "Should always be modulo 32"
	self assert: ((current alignedTo: aNumber) = current).
! !

!RV64GCodeGenerator methodsFor: 'system calls' stamp: 'KenD 10/5/2022 13:52:32'!
breakpoint
	"System Breakpoint - transfer control to debugger (e.g. gdb)"
	memory nextInstructionPut: (RV64EBREAK new).
! !

!RV64GCodeGenerator methodsFor: 'system calls' stamp: 'KenD 10/5/2022 13:54:41'!
syscall: callNumber 
	"Low level Linux Syscall.  Args in a0..a5; call# in a7; result in a0"
	self clearReg: 10. "arg0"
	self clearReg: 11.
	self clearReg: 12.
	self clearReg: 13. "zero unused regs"
	self clearReg: 14.
	self clearReg: 15.
	memory nextInstructionPut: 
		(RV64ADDI regDest: 17 regSource: RegZero imm12: callNumber).
	memory nextInstructionPut: (RV64ECALL new).
	self move: 10 to: RegR.  "Result from A0 into RegR"
	 ! !

!RV64GCodeGenerator methodsFor: 'system calls' stamp: 'KenD 10/5/2022 13:54:16'!
syscall: callNumber arg: reg0 
	"Low level Linux Syscall.  Args in a0..a5; call# in a7; result in a0"
	self move: reg0 to: 10. "arg0"
	self clearReg: 11.
	self clearReg: 12.
	self clearReg: 13. "zero unused regs"
	self clearReg: 14.
	self clearReg: 15.
	memory nextInstructionPut: 
		(RV64ADDI regDest: 17 regSource: RegZero imm12: callNumber).
	memory nextInstructionPut: (RV64ECALL new).
	self move: 10 to: RegR.  "Result from A0 into RegR"
	 ! !

!RV64GCodeGenerator methodsFor: 'system calls' stamp: 'KenD 10/5/2022 13:54:01'!
syscall: callNumber arg: reg0 arg: reg1 
	"Low level Linux Syscall.  Args in a0..a5; call# in a7; result in a0"
	self move: reg0 to: 10. "arg0"
	self move: reg1 to: 11.
	self clearReg: 12.
	self clearReg: 13. "zero unused regs"
	self clearReg: 14.
	self clearReg: 15.
	memory nextInstructionPut: 
		(RV64ADDI regDest: 17 regSource: RegZero imm12: callNumber).
	memory nextInstructionPut: (RV64ECALL new).
	self move: 10 to: RegR.  "Result from A0 into RegR"
	 ! !

!RV64GCodeGenerator methodsFor: 'system calls' stamp: 'KenD 10/5/2022 13:53:30'!
syscall: callNumber arg: reg0 arg: reg1 arg: reg2
	"Low level Linux Syscall.  Args in a0..a5; call# in a7; result in a0"
	self move: reg0 to: 10. "arg0"
	self move: reg1 to: 11.
	self move: reg2 to: 12.
	self clearReg: 13. "zero unused regs"
	self clearReg: 14.
	self clearReg: 15.
	memory nextInstructionPut: 
		(RV64ADDI regDest: 17 regSource: RegZero imm12: callNumber).
	memory nextInstructionPut: (RV64ECALL new).
	self move: 10 to: RegR.  "Result from A0 into RegR"
	 ! !

!RV64GCodeGenerator methodsFor: 'system calls' stamp: 'KenD 10/5/2022 13:55:33'!
syscall: callNumber arg: reg0 arg: reg1 arg: reg2 arg: reg3
	"Low level Linux Syscall.  Args in a0..a5; call# in a7; result in a0"
	self move: reg0 to: 10. "arg0"
	self move: reg1 to: 11.
	self move: reg2 to: 12.
	self move: reg3 to: 13.
	self clearReg: 14.
	self clearReg: 15.
	memory nextInstructionPut: 
		(RV64ADDI regDest: 17 regSource: RegZero imm12: callNumber).
	memory nextInstructionPut: (RV64ECALL new).
	self move: 10 to: RegR.  "Result from A0 into RegR"
	 ! !

!RV64GCodeGenerator methodsFor: 'system calls' stamp: 'KenD 10/5/2022 13:56:00'!
syscall: callNumber arg: reg0 arg: reg1 arg: reg2 arg: reg3 arg: reg4
	"Low level Linux Syscall.  Args in a0..a5; call# in a7; result in a0"
	self move: reg0 to: 10. "arg0"
	self move: reg1 to: 11.
	self move: reg2 to: 12.
	self move: reg3 to: 13.
	self move: reg4 to: 14.
	self clearReg: 15.
	memory nextInstructionPut: 
		(RV64ADDI regDest: 17 regSource: RegZero imm12: callNumber).
	memory nextInstructionPut: (RV64ECALL new).
	self move: 10 to: RegR.  "Result from A0 into RegR"
	 ! !

!RV64GCodeGenerator methodsFor: 'system calls' stamp: 'KenD 10/5/2022 13:56:25'!
syscall: callNumber arg: reg0 arg: reg1 arg: reg2 arg: reg3 arg: reg4 arg: reg5
	"Low level Linux Syscall.  Args in a0..a5; call# in a7; result in a0"
	self move: reg0 to: 10. "arg0"
	self move: reg1 to: 11.
	self move: reg2 to: 12.
	self move: reg3 to: 13.
	self move: reg4 to: 14.
	self move: reg5 to: 15.
	memory nextInstructionPut: 
		(RV64ADDI regDest: 17 regSource: RegZero imm12: callNumber).
	memory nextInstructionPut: (RV64ECALL new).
	self move: 10 to: RegR.  "Result from A0 into RegR"
	 ! !

!RV64GCodeGenerator methodsFor: 'testing' stamp: 'KenD 10/16/2022 08:06:45'!
fitsIn12bits: anInteger
	"Signed integer `anInteger` fits in immediate12 ?"
	^ (anInteger between: -16r800 and: 16r7FF) ! !

!RV64GCodeGenerator methodsFor: 'testing' stamp: 'KenD 10/16/2022 08:44:02'!
is8byteAligned: integerAddress

	"Does address have lower 3 bits all zero ?"
	^ (integerAddress bitAnd: 02r0111) isZero! !

!RV64GCodeGenerator class methodsFor: 'instance creation' stamp: 'KenD 9/27/2022 13:46:16'!
new
	^ self basicNew initialize.

! !

!NativeCodeReference methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:38:58'!
beAbsolute
	absolute := true
! !

!NativeCodeReference methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:38:58'!
classBinding
	^source classBinding
! !

!NativeCodeReference methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:38:58'!
for: anObject
	self target: anObject
! !

!NativeCodeReference methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:38:58'!
initialize
	absolute := false
! !

!NativeCodeReference methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:38:58'!
isAbsolute
	^absolute
! !

!NativeCodeReference methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:38:58'!
printOn: aStream
	aStream nextPutAll: 'Ref to '; print: target
! !

!NativeCodeReference methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:38:58'!
source: sourceObject
	source := sourceObject
! !

!NativeCodeReference methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:38:58'!
sourceOffset
	^sourceOffset
! !

!NativeCodeReference methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:38:58'!
sourceOffset: aNumber
	sourceOffset := aNumber
! !

!NativeCodeReference methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:38:58'!
target
	^target
! !

!NativeCodeReference methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:38:58'!
target: anObject
	target := anObject
! !

!NativeCodeReference class methodsFor: 'as yet unclassified' stamp: 'KenD 9/26/2022 12:38:58'!
absoluteFor: anObject
	^(self new for: anObject) beAbsolute
! !

!NativeCodeReference class methodsFor: 'instance creation' stamp: 'KenD 9/26/2022 12:38:58'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!RelocatableBuffer methodsFor: 'writing' stamp: 'KenD 9/26/2022 12:39:25'!
nextBytePut: byte
	| value |
	value := byte < 0 ifTrue: [ byte + 256 ] ifFalse: byte.
	stream nextBytePut: value
! !

!RelocatableBuffer methodsFor: 'writing' stamp: 'KenD 9/26/2022 12:39:25'!
nextBytesPut: aByteArray
	stream nextBytesPut: aByteArray
! !

!RelocatableBuffer methodsFor: 'writing' stamp: 'KenD 10/4/2022 16:13:08'!
nextDoublePut: large
	stream nextDoublePut: large

! !

!RelocatableBuffer methodsFor: 'writing' stamp: 'KenD 11/2/2022 07:54:35'!
nextInstructionPut: rv64gInstruction
	"Assemble instruction into 4 byte unsigned integer and add to stream"
	stream nextULongPut: rv64gInstruction instruction
! !

!RelocatableBuffer methodsFor: 'writing' stamp: 'KenD 10/4/2022 16:14:02'!
nextLongPut: long
	"Place 4 byte signed integer into stream"
	stream nextLongPut: long

! !

!RelocatableBuffer methodsFor: 'writing' stamp: 'KenD 9/26/2022 12:39:25'!
nextPut: byte
	stream nextPut: byte
! !

!RelocatableBuffer methodsFor: 'writing' stamp: 'KenD 9/26/2022 12:39:25'!
nextPutAll: aByteArray
	stream nextPutAll: aByteArray
! !

!RelocatableBuffer methodsFor: 'writing' stamp: 'KenD 10/4/2022 16:21:08'!
nextUDoublePut: udouble
	"Place 8 byte unsigned integer into stream"
	stream nextUDoublePut: udouble

! !

!RelocatableBuffer methodsFor: 'writing' stamp: 'KenD 10/4/2022 16:20:53'!
nextULongPut: ulong
	"Place 4 byte unsigned integer into stream"
	stream nextULongPut: ulong
! !

!RelocatableBuffer methodsFor: 'writing' stamp: 'KenD 9/26/2022 12:39:25'!
stream
	^stream
! !

!RelocatableBuffer methodsFor: 'writing' stamp: 'KenD 9/26/2022 12:39:25'!
writeByte: byte at: location
	| previous value |
	previous := stream position.
	value := byte < 0 ifTrue: [ byte + 256 ] ifFalse: [ byte ].
	stream
		position: location - address;
		nextBytePut: value;
		position: previous
! !

!RelocatableBuffer methodsFor: 'writing' stamp: 'KenD 9/26/2022 12:39:25'!
writeLong: long at: location
	| previous |
	previous := stream position.
	stream
		position: location - address;
		nextLongPut: long;
		position: previous
! !

!RelocatableBuffer methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:39:25'!
baseAddress
	^address
! !

!RelocatableBuffer methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:39:25'!
bytes
	^stream contents
! !

!RelocatableBuffer methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:39:25'!
codeSize
	^stream size
! !

!RelocatableBuffer methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:39:25'!
currentAddress
	^address + stream position
! !

!RelocatableBuffer methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:39:25'!
peek
	^stream peek
! !

!RelocatableBuffer methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:39:25'!
peek: n
	^stream peek: n
! !

!RelocatableBuffer methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:39:25'!
position
	^stream position
! !

!RelocatableBuffer methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:39:25'!
position: anInteger
	stream position: anInteger
! !

!RelocatableBuffer methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:39:25'!
size
	^stream size
! !

!RelocatableBuffer methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:39:25'!
skip: anInteger
	stream skip: anInteger
! !

!RelocatableBuffer methodsFor: 'fixups' stamp: 'KenD 9/26/2022 12:39:25'!
addAbsoluteFixup: label
	| fixup |
	fixup := RelocationFixup absoluteFrom: self currentAddress to: label.
	fixups add: fixup
! !

!RelocatableBuffer methodsFor: 'fixups' stamp: 'KenD 9/26/2022 12:39:25'!
addRelativeFixup: label size: n
	| fixup |
	fixup := RelocationFixup relativeFrom: self currentAddress to: label.
	fixup size: n.
	fixups add: fixup
! !

!RelocatableBuffer methodsFor: 'fixups' stamp: 'KenD 9/26/2022 12:39:25'!
applyFixupsWith: solver
	fixups do: [:fixup | fixup patch: self with: solver]
! !

!RelocatableBuffer methodsFor: 'relocation' stamp: 'KenD 9/26/2022 12:39:25'!
relocateTo: location with: solver
	| delta |
	delta := location - address.
	address := location.
	fixups do: [:fixup | fixup relocateBy: delta].
	self applyFixupsWith: solver
! !

!RelocatableBuffer methodsFor: 'initialization' stamp: 'KenD 9/26/2022 12:39:25'!
initialize
	super initialize.
	fixups := OrderedCollection new.
	address := 0.
	stream := ReadWriteStream on: #[]

! !

!RelocatableBuffer methodsFor: 'initialization' stamp: 'KenD 9/26/2022 12:39:25'!
reset
	fixups := OrderedCollection new.
	stream reset
! !

!RelocatableBuffer methodsFor: 'private' stamp: 'KenD 9/26/2022 12:39:25'!
stream: aStream
	stream := aStream
! !

!RelocatableBuffer class methodsFor: 'instance creation' stamp: 'KenD 9/26/2022 12:39:25'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!RelocationFixup methodsFor: 'accessing' stamp: 'KenD 10/23/2022 15:48:28'!
addressSize
	"RV64G is 8 bytes, but original code had 4 ??
	Perhaps used for instruction size, rather than address size??"
	self flag: #revisit.  
	^ RV64GABI wordSize
! !

!RelocationFixup methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:39:39'!
beAbsolute
	relative := false.
	size := self addressSize
! !

!RelocationFixup methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:39:39'!
beRelative
	relative := true
! !

!RelocationFixup methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:39:39'!
from: address1 to: address2
	source := address1.
	target := address2
! !

!RelocationFixup methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:39:39'!
size: anInteger
	size := anInteger
! !

!RelocationFixup methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:39:39'!
target
	^target
! !

!RelocationFixup methodsFor: 'services' stamp: 'KenD 10/17/2022 11:38:54'!
patch: buffer with: solver
	| delta address |
	address := solver resolveLabel: target.
	self assert: address notNil.
	relative
		ifTrue: [
			delta := address - source - size.
			size = 1
				ifTrue: [buffer writeByte: delta at: source]
				ifFalse: [buffer writeLong: delta at: source]]
		ifFalse: [buffer writeLong: address at: source]
! !

!RelocationFixup methodsFor: 'services' stamp: 'KenD 9/26/2022 12:39:39'!
relocateBy: delta
	source := source + delta
! !

!RelocationFixup methodsFor: 'testing' stamp: 'KenD 9/26/2022 12:39:39'!
isRelative
	^relative
! !

!RelocationFixup methodsFor: 'printing' stamp: 'KenD 9/26/2022 12:39:39'!
printOn: aStream
	aStream
		nextPutAll: self class name;
		nextPut: $:;
		space;
		nextPutAll: target printString
! !

!RelocationFixup class methodsFor: 'instance creation' stamp: 'KenD 9/26/2022 12:39:39'!
absoluteFrom: source to: target
	^self new beAbsolute; from: source to: target
! !

!RelocationFixup class methodsFor: 'instance creation' stamp: 'KenD 9/26/2022 12:39:39'!
relativeFrom: source to: target
	^self new beRelative; from: source to: target
! !

!RVMemoryReference methodsFor: 'accessing' stamp: 'KenD 10/24/2022 10:31:48'!
base: register

	self baseRegister: register.
! !

!RVMemoryReference methodsFor: 'accessing' stamp: 'KenD 10/23/2022 15:15:50'!
baseRegister
	^ baseRegister
! !

!RVMemoryReference methodsFor: 'accessing' stamp: 'KenD 10/23/2022 15:15:27'!
baseRegister: register

	baseRegister := register.
! !

!RVMemoryReference methodsFor: 'accessing' stamp: 'KenD 10/24/2022 10:32:22'!
displacement: addressDelta

	self offset: addressDelta
! !

!RVMemoryReference methodsFor: 'accessing' stamp: 'KenD 10/24/2022 10:31:32'!
index: register

	self indexRegister: register.
! !

!RVMemoryReference methodsFor: 'accessing' stamp: 'KenD 10/23/2022 15:16:16'!
indexRegister
	^ indexRegister
! !

!RVMemoryReference methodsFor: 'accessing' stamp: 'KenD 10/24/2022 10:30:36'!
indexRegister: register

	indexRegister := register.
! !

!RVMemoryReference methodsFor: 'accessing' stamp: 'KenD 10/24/2022 10:33:24'!
length:  anInteger

	self widthInBits: anInteger.
! !

!RVMemoryReference methodsFor: 'accessing' stamp: 'KenD 10/24/2022 10:18:56'!
offset

	^ offset
! !

!RVMemoryReference methodsFor: 'accessing' stamp: 'KenD 10/24/2022 10:19:38'!
offset: addressDelta

	offset := addressDelta
! !

!RVMemoryReference methodsFor: 'accessing' stamp: 'KenD 11/2/2022 13:15:25'!
scale
	"Answer bytes per index"
	^ widthInBits / 8
! !

!RVMemoryReference methodsFor: 'accessing' stamp: 'KenD 10/23/2022 15:18:58'!
widthInBits
	^ widthInBits
! !

!RVMemoryReference methodsFor: 'accessing' stamp: 'KenD 10/23/2022 15:18:58'!
widthInBits:anInteger

	widthInBits := anInteger.
! !

!RVMemoryReference methodsFor: 'initialization' stamp: 'KenD 11/2/2022 12:57:46'!
initialize
	"Invoked when a new instance is created."

	super initialize.
	self widthInBits: 64. "default is pointer size (8 bytes)"
	indexRegister := 0.
	scale := 8.
	offset := 0.
! !

!RVMemoryReference methodsFor: 'printing & storing' stamp: 'KenD 10/4/2022 11:04:49'!
printOn:aStream
! !

!RVMemoryReference class methodsFor: 'instance creation' stamp: 'KenD 10/4/2022 11:04:49'!
new
	"return an initialized instance"

	^ self basicNew initialize.
! !

!LookupNativizer methodsFor: 'as yet unclassified' stamp: 'KenD 9/26/2022 12:34:38'!
>> aSymbol
	^bootstrapper spec at: aSymbol
! !

!LookupNativizer methodsFor: 'as yet unclassified' stamp: 'KenD 9/26/2022 12:34:38'!
closureMethods
	^ self selectorLookupMethods , self globalLookupMethods
		, self otherLookupMethods , bootstrapper undermethods
		, self sendSiteMethods
! !

!LookupNativizer methodsFor: 'as yet unclassified' stamp: 'KenD 9/26/2022 12:34:38'!
globalLookupMethods
	| result out global |
	result := OrderedCollection new.
	result
		add: (self >> #ProtoObject) >> #_cachedLookup:;
		add: (self >> #ProtoObject) >> #_cachedLookup:in:;
		add: (self >> #Thread) metaclass >> #currentGlobalLookup;
		add: (self >> #GlobalDispatchCache) metaclass >> #current.
	out := #(initialize flushAll: #flush:forSpecies: #flush:for: #flush:for:startingAt:).
	global := (self >> #GlobalDispatchCache) methods
		reject: [ :m | out includes: m selector ].
	^ result
		addAll: global;
		yourself
! !

!LookupNativizer methodsFor: 'as yet unclassified' stamp: 'KenD 9/26/2022 12:34:38'!
otherLookupMethods
	^ OrderedCollection new
		add: self >> #ProtoObject >> #objectAtValid:put:;
		add: self >> #ProtoObject >> #behavior;
		add: self >> #CompiledMethod >> #prepareForExecution;
		add: self >> #CompiledMethod >> #isNativized;
		add: self >> #CompiledMethod >> #validNativeCodeAddress;
		add: self >> #CompiledMethod >> #nativeCode;
		add: self >> #CompiledMethod >> #selector;
		add: self >> #NativeCode >> #code;
		add: self >> #NativeCode >> #compiledCode;
		add: self >> #Species >> #instanceBehavior;
		add: self >> #Process >> #wantsToStepInto;
		yourself
! !

!LookupNativizer methodsFor: 'as yet unclassified' stamp: 'KenD 9/26/2022 12:34:38'!
selectorLookupMethods
	^ OrderedCollection new
		add: (self >> #ProtoObject) >> #_lookup:;
		add: (self >> #ProtoObject) >> #_lookup:in:;
		add: (self >> #ProtoObject) >> #_lookup:inDictionary:;
		yourself
! !

!LookupNativizer methodsFor: 'as yet unclassified' stamp: 'KenD 9/26/2022 12:34:38'!
sendSiteMethods
	| sendsite |
	sendsite := self >> #SendSite.
	^ #(_dispatchOn: _dispatchOn:startingAt: _dispatchDebuggableOn: _dispatchDebuggableOn:startingAt: sentSelector when:use: beInvoke:using: bePolymorphic isStaticSend monomorphicMap:to: polymorphicMap:to: maxSize reset takeNextFreeMIC takeNextFreePIC)
		collect: [ :s | sendsite >> s ]
! !

!LookupNativizer methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:34:38'!
bootstrapper: aSmalltalkBootstrapper
	bootstrapper := aSmalltalkBootstrapper
! !

!LookupNativizer methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:34:38'!
methodFor: selector
	^methods detect: [:m | m selector == selector].

! !

!LookupNativizer methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:34:38'!
methods
	^methods
! !

!LookupNativizer methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:34:38'!
nativizeMethods
	| environment | 
	methods := self closureMethods collect: [:m | bootstrapper compile: m ].
	environment := self newNativizationEnvironment.
	methods do: [:m | environment nativize: m]
! !

!LookupNativizer methodsFor: 'instance creation' stamp: 'KenD 9/26/2022 12:34:38'!
newNativizationEnvironment
	| environment ignored lookup invoke |
	environment := NativizationEnvironment new 
		platform: bootstrapper platform;
		globals: bootstrapper nativizer globals;
		optimizedMethods: bootstrapper nativizer optimizedMethods.
	ignored := HaltingSend new
		filter: #(< <= = > + - * // bitAnd: bitOr: bitXor:).
	lookup := LookupLinker new initializeFrom: environment.
	lookup
		filter:
			#(debuggableCopy acquireReferences nativize refreshBlocks doesNotUnderstandSelector: mustBeBoolean class allocateMoreCaches).
	invoke := InvokeLinker new
		invoker: environment invokeStub;
		addMethods: methods.
	^ environment
		addLinker: invoke;
		addLinker: ignored;
		addLinker: lookup;
		completeInitialization
! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:28:54'!
arrayedSize 

	^self size! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:29:11'!
at: index 

	"Return indexed value at given index, starting with 1. This CANNOT be 
	 used for accessing named slots (aka, instance variables), to access 
	 them use #instVarAt:"
	
	self subclassResponsibility  ! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:29:24'!
at: index put: value 

	"Set indexed value at given `index` to `value`. This CANNOT be used for 
	 setting named slots (aka, instance variables), to access them use 
	 #instVarAt:put:"
	
	self subclassResponsibility  ! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:29:36'!
behavior 

	^behavior! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:29:49'!
behavior: anObjectMap 

	behavior := anObjectMap! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:30:03'!
bodySizeInBytes 

	"Return the size of object body(s) in bytes,
	 padded if a byte object"
	^ self subclassResponsibility ! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:30:14'!
classname 

	^spec name! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:30:30'!
headerSizeInBytes 
	"
		Return the size of object header in bytes, 
		including both small and large part (if any).
	"
	
	^ self isSmall ifTrue: [ 8 ] ifFalse: [ 16 ]! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:31:00'!
headerSmallSize 

	"Return value of 'size' field of small header"
	 | size |	
 	size := self size.
  	^ size < 256 ifTrue: [ size ] ifFalse: [ 0 ]! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:33:29'!
size 

	"Return the size if this object, that this, the value of
	 size field in object header. 
	
	 For slot (pointer) objects, this is a number of slots. 
	 For byte objects, this is a number of bytes. "
	
	self subclassResponsibility ! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:33:43'!
sizeInBytes 

	"Return the size of object in bytes without padding"
	^ self subclassResponsibility ! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:34:03'!
slotAt: index 

	"Get named slot at given `index`, starting with 1. This CANNOT be used 
	 for accessing indexed slots  (i.e., variable part of array-like objects), 
   to set them use #at:"
	
	self subclassResponsibility  ! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:34:26'!
slotAt: index put: value 

	"Set named slot at given `index` to `value`. This CANNOT be used 
	 for setting indexed slots  (i.e., variable part of array-like objects), 
   to set them use #at:put:"
	
	self subclassResponsibility! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:34:47'!
slotNamed: name 

	"Get a named slot with given `name`"

	| index |
	index := self allInstVarNames indexOf: name.
	index == 0
		ifTrue: [ ^ self error: 'No slot named "' , name , '"' ].
	^ self slotAt: index! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:35:02'!
slotNamed: name put: value 

	"Set a named slot with given `name` to `value`"

	| index |
	index := self allInstVarNames indexOf: name.
	index == 0
		ifTrue: [ ^ self error: 'No slot named "' , name , '"' ].
	^ self slotAt: index put: value! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:37:35'!
spec 

	^ spec! !

!ObjectMap methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:37:51'!
wordSize 

	"Return the size in bytes of the word (i.e, a reference to an object)"
	
	^ 8 "For now, 64bit only!!"! !

!ObjectMap methodsFor: 'initialization' stamp: 'KenD 2/22/2021 13:31:21'!
initializeAs: anRGBehavior sized: size 

	self subclassResponsibility! !

!ObjectMap methodsFor: 'initialization' stamp: 'KenD 2/22/2021 13:32:33'!
nilAll: nilObject! !

!ObjectMap methodsFor: 'initialization' stamp: 'KenD 2/22/2021 13:32:41'!
nilWith: nilObject ! !

!ObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:31:45'!
isBytes 

	^ false! !

!ObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:31:52'!
isImmediate 

	^ false! !

!ObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:32:00'!
isPointers 

	^ false! !

!ObjectMap methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:32:14'!
isSmall 

	^self size < 256! !

!ObjectMap methodsFor: 'iterating' stamp: 'KenD 2/22/2021 13:35:51'!
slotsDo: aBlock

	self notYetImplemented ! !

!ObjectMap methodsFor: 'validation' stamp: 'KenD 2/22/2021 13:38:23'!
validate 
	
	self assert: behavior notNil! !

!ObjectMap class methodsFor: 'instance creation' stamp: 'KenD 2/22/2021 13:26:08'!
classFor: anRGBehavior 

	anRGBehavior name == #SmallInteger ifTrue: [^SmallintObjectMap].
	^anRGBehavior isBytes
		ifTrue: [ ByteObjectMap ]
		ifFalse: [ SlotObjectMap ]! !

!ObjectMap class methodsFor: 'instance creation' stamp: 'KenD 2/22/2021 13:28:00'!
new: anRGBehavior 
	
	^self new: anRGBehavior size: 0! !

!ObjectMap class methodsFor: 'instance creation' stamp: 'KenD 2/22/2021 13:28:19'!
new: anRGBehavior size: size 

	| class |
	self assert: (anRGBehavior isVariable or: [ size == 0 ]).
	class := self classFor: anRGBehavior.
	^ class new initializeAs: anRGBehavior sized: size! !

!SmalltalkBootstrapper methodsFor: 'accessing' stamp: 'KenD 3/2/2021 13:02:37'!
builder: anImageSegmentBuilder 

	builder := anImageSegmentBuilder! !

!SmalltalkBootstrapper methodsFor: 'accessing' stamp: 'KenD 3/2/2021 13:03:13'!
spec 

	^builder image kernel! !

!SmalltalkBootstrapper methodsFor: 'services' stamp: 'KenD 3/2/2021 13:03:02'!
compile: anRGMethod 

	^builder compile: anRGMethod! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:04:44'!
initializeInlinedMethods 
	| compiled |
	compiled := self inlinedMethods
		collect: [ :method | builder methods at: method ].
	nativizer inlinedMethods: compiled! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:05:08'!
initializeInvokedMethods 
	| compiled |
	compiled := self invokedMethods
		collect: [ :method | builder methods at: method ].
	nativizer invokedMethods: compiled! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:05:26'!
initializeKernelModule 
	| runtime smethod transferred array module |
	module := builder module.
	runtime := {(image => #Kernel >> #entry:argv:)}
		collect: [ :def | 
			smethod := builder methods at: def.
			transferred := image surrogateFor: smethod.
			transferred nativeCode machineCode ].
	array := image newArray: builder classes values.
	module
		name: (image newString: 'Kernel');
		version: (image newString: '0.1.0');
		exports: array;
		hash: image nil;
		loadAction: builder createLoadAction;
		runtime: (image newArray: runtime)! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:06:32'!
initializeNativizer 

	nativizer := NativizationEnvironment new.
	self
		initializeNativizerGlobals;
		initializeInlinedMethods;
		initializeInvokedMethods;
		initializeOptimizedMethods;
		nativizeInvoke;
		nativizeWriteBarrier;
		nativizeLookup;
		transferNativizerGlobals;
		setupMessageLinkers! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:06:55'!
initializeNativizerGlobals 
	| smi items |
	smi := image classNamed: #SmallInteger.
	nativizer globalNamed: #SmallIntegerBehavior put: smi behavior.
	items := {(#Lookup -> (NativeCode new code: 'Lookup Placeholder')).
	(#LookupSuper -> (NativeCode new code: 'LookupSuper Placeholder')).
	(#DebuggableLookup
		-> (NativeCode new code: 'DebuggableLookup placeholder')).
	(#DebuggableLookupSuper
		-> (NativeCode new code: 'DebuggableLookupSuper placeholder')).
	(#Invoke -> (NativeCode new code: 'Invoke placeholder')).
	(#Safepoint -> (NativeCode new code: 'SafepointCheck placeholder')).
	(#WriteBarrier -> (NativeCode new code: 'Write Barrier placeholder'))}
		asDictionary.
	items
		keysAndValuesDo: [ :key :placeholder | nativizer globalNamed: key put: placeholder ]! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:07:33'!
initializeOptimizedMethods 
	| compiled |
	compiled := self optimizedMethods
		collect: [ :method | builder methods at: method ].
	nativizer optimizedMethods: compiled! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:08:08'!
initializeSendSite 

	self 
		initializeSendSiteMIC: nativizer monomorphicCache
		PIC: nativizer polymorphicCache! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:08:33'!
initializeSendSiteMIC: micStub PIC: picStub 
	| class lkup invk mic pic |
	class := image classNamed: #SendSite.
	lkup := nativizer globalNamed: #Lookup.
	lkup := image surrogateFor: lkup.
	invk := nativizer globalNamed: #Invoke.
	invk := image surrogateFor: invk.
	mic := image newBytesFrom: micStub.
	pic := image newBytesFrom: picStub.
	builder runtime
		send: #allocateInitialCachesUsing: to: class with: {lkup};
		send: #initializeInvoke: to: class with: {invk};
		send: #monomorphicCache: to: class with: {mic};
		send: #polymorphicCache: to: class with: {pic}! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:11:14'!
inlinedMethods 
	| map |
	map := 
	{(#ProtoObject
		->
		#(#objectAtValid: #objectAtValid:put: #behavior #class   
		  #primitiveAt: #_cachedLookup: #_cachedLookup:in:)).
	(#Object
		-> 
		#(#byteAtValid: #byteAtValid:put: #basicObjectIndexOf: #at:put:)).
	(#Species
		->
		#(#instSize #_instancesAreArrayed #_instancesHavePointers 
		    #memory #instanceBehavior #primitiveNew #primitiveNew:)).
	(#CompiledMethod
		->
		#(#prepareForExecution #isNativized #nativeCode 
		   #blockCount #literalIndexFrom:)).
	(#CompiledBlock 
	 	-> 
		#(#argumentCount #blockNumber #blockCode #method)).
	(#NativeCode -> #(#code)).
	(#GCSpace -> #(#commitedLimit #nextFree #nextFree:)).
	(#CharacterArray -> #(#characterAtValid:))}.

	^ builder undermethods , (builder methodSubset: map)
	! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:22:21'!
invokedMethods 
	| map |
	map := 
	{(#ProtoObject
		-> #(behavior class primitiveAt: #initializeExtended:contentSize:)).
	(#Object 
		-> #(#_replaceFrom:to:with:)).
	(#Species
		->
		#(#allocate:size: instanceBehavior _instancesAreArrayed 
		_instancesHavePointers #nil:slotsOf: memory primitiveNewBytes: 
		primitiveNewPointers: #zero:bytesOf:))}.

	^ builder undermethods , (builder methodSubset: map)! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:22:37'!
mapNativizerGlobal: name to: transferred 
	| placeholder |
	placeholder := nativizer globalNamed: name.
	image
		map: placeholder to: transferred;
		map: placeholder code to: transferred machineCode.
	builder export: transferred as: name! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:22:51'!
nativize 

	self
		initializeNativizer;
		initializeSendSite;
		nativizeRemainingMethods! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:23:05'!
nativizeInvoke 
	| invoke |
	invoke := builder compile: builder => #SendSite >> #_invokeOn:.
	nativizer nativizeOptimizing: invoke.
	self transfer: invoke in: #ProtoObject asNativizerGlobal: #Invoke! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:23:20'!
nativizeLookup 
	| n transferred species lookup lookupSuper |
	n := LookupNativizer new
		bootstrapper: self;
		nativizeMethods.
	lookup := n methodFor: #_dispatchOn:.
	lookupSuper := n methodFor: #_dispatchOn:startingAt:.
	n methods
		do: [ :m | 
			species := image speciesFor: image => m classBinding name.
			transferred := builder transferMethod: m in: species.
			image map: m to: transferred ];
		do: [ :m | 
			transferred := image surrogateFor: m.
			self transferNativeCode: m nativeCode of: transferred ].
	transferred := (image surrogateFor: lookup) nativeCode.
	self mapNativizerGlobal: #Lookup to: transferred.
	transferred := (image surrogateFor: lookupSuper) nativeCode.
	self mapNativizerGlobal: #LookupSuper to: transferred! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:24:59'!
nativizeRemainingMethods 

	builder classSpecs
		do: [ :def | 
			self
				trace: 'nativizing ' , def name , '...';
				nativizeRemainingMethodsIn: def;
				nativizeRemainingMethodsIn: def metaclass ]! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:25:17'!
nativizeRemainingMethodsIn: species 

	builder methods
		do: [ :smethod | 
			smethod nativeCode
				ifNil: [ "self haltIf: smethod selector == #foo."
					nativizer nativize: smethod.
					self transferNativeCodeOfMethod: smethod ] ]! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:25:37'!
nativizeWriteBarrier 
	| map inlined dispatcher barrier |
	map := {('Memory class' -> #(current)).
	(#Memory -> #(isYoung: isYoungSafe: remember:)).
	(#CriticalArray -> #(unsafeAdd: #unsafeAt:put:)).
	(#Magnitude -> #(#between:and:))}.
	inlined := builder methodSubset: map.
	inlined addAll: builder undermethods.
	inlined := inlined collect: [ :m | builder compile: m ].
	barrier := builder
		compile: builder => #ProtoObject >> #holdRefererIfNeeded:.
	dispatcher := LookupLinker new initializeFrom: nativizer.
	NativizationEnvironment new
		globals: nativizer globals;
		inlinedMethods: inlined;
		messageLinker: dispatcher;
		completeInitialization;
		nativizeOptimizing: barrier.
	self
		transfer: barrier
		in: #ProtoObject
		asNativizerGlobal: #WriteBarrier! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:28:22'!
optimizedMethods 
	| map |
	map := 
	{(#ProtoObject
		->
		#(behavior class primitiveAt: #primitiveAt:put: 
		  #initializeExtended:contentSize:)).
	(#Object
		->
		#(at: #at:put: basicByteAt: #basicByteAt:put: byteAtValid: 
		  #byteAtValid:put: basicObjectAt: #basicObjectAt:put: 
		  #replaceBytesForwardFrom:to:with:startingAt:)).
	(#SendSite
		->
		#(_dispatchOn: #_dispatchOn:startingAt: 
		  _dispatchDebuggableOn: #_dispatchDebuggableOn:startingAt:)).
	(#Species
		->
		#(#allocate:size: primitiveNew primitiveNew: instSize
		   primitiveNewBytes: primitiveNewPointers:)).
	(#'Float class' 
		-> #(new)).
	(#CompiledBlock 
		-> #(argumentCount arity blockCode method)).
	(#Closure 
		-> #(value value: #value:value:)).
	(#CompiledMethod 
		-> #(blockCount isNativized)).
	(#String 
		-> #(at: #at:put: byteAt: #byteAt:put:)).
	(#GCSpace
		-> 
		#(lockedAllocateIfPossible: lockedAllocateUnsafe: shallowCopy:)).
	(#Memory 
		-> #(shallowCopy:))}.

	^ builder undermethods , (builder methodSubset: map)! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:28:45'!
setupMessageLinkers 
	| invoker dispatcher |
	invoker := InvokeLinker new
		invoker: nativizer invokeStub;
		addMethods: nativizer invokedMethods.
	dispatcher := LookupLinker new initializeFrom: nativizer.
	nativizer
		addLinker: invoker;
		addLinker: dispatcher;
		completeInitialization! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:29:13'!
transfer: anSMethod in: classname asNativizerGlobal: name 
	| species transferred |
	species := image classNamed: classname.
	transferred := builder transferMethod: anSMethod in: species.
	transferred := self
		transferNativeCode: anSMethod nativeCode
		of: transferred.
	self mapNativizerGlobal: name to: transferred! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:29:36'!
transferNativeCode: aNativeCode of: compiledCode 
	| size transferred code slot callback |
	size := aNativeCode size.
	transferred := image newSlots: 'NativeCode' sized: size.
	callback := compiledCode classname = #CallbackMethod.
	code := callback
		ifTrue: [ builder newCallback: transferred bytesFrom: aNativeCode code ]
		ifFalse: [ image newBytesFrom: aNativeCode code ].
	transferred
		machineCode: code;
		compiledCode: compiledCode.
	compiledCode nativeCode: transferred.
	aNativeCode
		withIndexDo: [ :elem :i | 
			slot := image transferLiteralDeep: elem.
			transferred at: i put: slot ].
	^ transferred! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:30:08'!
transferNativeCodeOfMethod: anSCompiledMethod 
	| transferred remaining literal block position |
	transferred := image surrogateFor: anSCompiledMethod.
	self transferNativeCode: anSCompiledMethod nativeCode of: transferred.
	remaining := anSCompiledMethod blockCount.
	position := 1.
	[ remaining > 0 ]
		whileTrue: [ literal := anSCompiledMethod at: position.
			literal isBlock
				ifTrue: [ block := transferred at: position.
					self transferNativeCode: literal nativeCode of: block.
					remaining := remaining - 1 ].
			position := position + 1 ].
	^ transferred! !

!DMRBootstrapper methodsFor: 'initialization' stamp: 'KenD 3/2/2021 13:30:22'!
transferNativizerGlobals 

	image transferLiteralDeep: nativizer globals! !

!DMRBootstrapper methodsFor: 'accessing' stamp: 'KenD 3/2/2021 13:04:20'!
image: aVirtualSmalltalkImage 

	image := aVirtualSmalltalkImage! !

!DMRBootstrapper methodsFor: 'accessing' stamp: 'KenD 3/2/2021 13:26:05'!
nativizer 

	^nativizer! !

!DMRBootstrapper methodsFor: 'accessing' stamp: 'KenD 3/2/2021 13:30:37'!
undermethods 

	^builder undermethods! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:34:52'!
argumentAt: anInteger
	^ self subclassResponsibility
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:34:52'!
argumentAt: anInteger in: environmentIndex
	^ self subclassResponsibility
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:34:52'!
arguments
	^ self subclassResponsibility
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:34:52'!
captureClosure: anSBlock
	| closure s i type env arg |
	closure := system newClosureFor: anSBlock compiledCode.
	s := anSBlock capturedVariables readStream.
	i := 1.
	[ s atEnd ]
		whileFalse: [ type := s next.
			type = Self
				ifTrue: [ closure at: i put: self self ].
			type = Environment
				ifTrue: [ closure at: i put: self environment ].
			type = EnvironmentValue
				ifTrue: [ env := self environment at: s next.
					closure at: i put: env ].
			type = LocalArgument
				ifTrue: [ arg := self argumentAt: s next.
					closure at: i put: arg ].
			i := i + 1 ].
	^ closure
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:34:52'!
environment
	^ self subclassResponsibility
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:34:52'!
false
	^ system false
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:34:52'!
firstArgument
	^ self subclassResponsibility
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:34:52'!
fourthArgument
	^ self subclassResponsibility
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:34:52'!
instanceVarAt: index
	^ system instanceVarOf: self self at: index
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:34:52'!
instanceVarAt: index put: value
	^ system instanceVarOf: self self at: index put: value
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:34:52'!
method
	^ self subclassResponsibility
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:34:52'!
method: anSCompiledMethod
	^ self subclassResponsibility
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:34:52'!
methodArguments
	^ self subclassResponsibility
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:34:52'!
nil
	^ system nil
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:34:52'!
receiver
	^self subclassResponsibility
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:34:52'!
secondArgument
	^ self subclassResponsibility
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:34:52'!
self
	^ self subclassResponsibility
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:34:52'!
stackTemporaryAt: index
	^ self subclassResponsibility
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:34:52'!
stackTemporaryAt: index put: value
	^ self subclassResponsibility
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:34:52'!
staticBindingFor: aSymbol
	| symbol |
	symbol := system symbolFrom: aSymbol.
	(self staticBindingForIvar: symbol) ifNotNil: [ :b | ^ b ].
	(self staticBindingForCvar: symbol) ifNotNil: [ :b | ^ b ].
	^ self staticBindingForMvar: symbol
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:34:52'!
system: aPowertalkRuntime
	system := aPowertalkRuntime
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:34:52'!
temporaryAt: index in: environmentIndex
	^ self subclassResponsibility
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:34:52'!
temporaryAt: index in: environmentIndex put: value
	^ self subclassResponsibility
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:34:52'!
thirdArgument
	^ self subclassResponsibility
! !

!EvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:34:52'!
true
	^ system true
! !

!EvaluationContext methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:34:52'!
staticBindingFor: symbol inModule: module
	|  namespace assoc |
	namespace := system moduleNamespace: module.
	assoc := system lookupAssociationFor: symbol in: namespace.
	assoc ifNil: [ self error: 'unbound variable: ' , symbol asString ].
	^ SAssociationBinding new association: assoc
! !

!EvaluationContext methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:34:52'!
staticBindingForCvar: aSymbol
	| species namespaces namespace nilObj |
	species := system methodClassBinding: self method.
	nilObj := system nil.
	[ namespaces := system speciesNamespaces: species.
	1 to: namespaces size do: [ :i | 
		namespace := namespaces at: i. 
		(system lookupAssociationFor: aSymbol in: namespace)
			ifNotNil: [ :assoc | ^ SAssociationBinding new association: assoc ] ].
	species := system speciesSuperclass: species.
	species = nilObj ] whileFalse.
	^ nil
! !

!EvaluationContext methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:34:52'!
staticBindingForIvar: aSymbol
	| ivar |
	ivar := system staticBindingForIvar: aSymbol in: self self.
	^ ivar > 0
		ifTrue: [ SInstVarBinding new index: ivar ]
! !

!EvaluationContext methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:34:52'!
staticBindingForMvar: symbol
	| species module |
	species := system methodClassBinding: self method.
	module := system speciesModule: species.
	^ self staticBindingFor: symbol inModule: module
! !

!EvaluationContext methodsFor: 'services' stamp: 'KenD 9/29/2022 14:34:52'!
backtrace
	^ self subclassResponsibility
! !

!EvaluationContext methodsFor: 'services' stamp: 'KenD 9/29/2022 14:34:52'!
classBinding
	^system methodClassBinding: self method
! !

!EvaluationContext methodsFor: 'services' stamp: 'KenD 9/29/2022 14:34:52'!
loadAssociationValue: anObject
	^system loadAssociationValue: anObject
! !

!EvaluationContext methodsFor: 'services' stamp: 'KenD 9/29/2022 14:34:52'!
staticBindingForNested: name
	| binding module |
	binding := self staticBindingFor: (name at: 1).
	module := binding valueWithin: self.
	^self staticBindingFor: (name at: 2) inModule: module
! !

!EvaluationContext methodsFor: 'services' stamp: 'KenD 9/29/2022 14:34:52'!
storeAssociation: association value: anObject
	system storeAssociation: association value: anObject 
! !

!EvaluationContext methodsFor: 'printing' stamp: 'KenD 11/1/2022 10:51:52'!
printOn: aStream
 self backtrace
				do: [ :frame | 
					frame
						do: [ :elem | elem printOn: aStream ]
						separatedBy: [ aStream nextPutAll: '. ' ].
					aStream newLine ]
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:14:22'!
argumentAt: anInteger
	^arguments at: anInteger
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:14:22'!
argumentAt: index in: environmentIndex
	| env | 
	environmentIndex ifNil: [ ^ arguments at: index ].
	env := self environmentFor: environmentIndex.
	^ env at: index
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:14:22'!
arguments
	^arguments
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:14:22'!
arguments: aCollection
	arguments := aCollection
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:14:22'!
beBlock
	isBlock := true
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:14:22'!
environment: anObject
	environment := anObject
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:14:22'!
environmentFor: anInteger
	"
	-1: inlined argument.
	 0: current env.
 	>0: index of env in current env. "

	anInteger = 0
		ifTrue: [ ^ environment ].
	anInteger = -1
		ifTrue: [ ^ temporaries ].
	^ environment at: anInteger
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:14:22'!
homeContext
	| frame searched |
	isBlock
		ifFalse: [ ^ self ].
	frame := parent.
	searched := system closureHome: environment.
	[ frame notNil ]
		whileTrue: [ frame environment == searched
				ifTrue: [ ^ frame ].
			frame := frame parent ].
	self error: 'home context not found'
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:14:22'!
initialize
	isBlock := false
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:14:22'!
initializeForBlock: sblock args: anArray closure: closure
	"When the block is not inlined, closure becomes the environment of the new context.
	But when it is inlined, the environment is the one of the builder, which is already
	set because we copied from the builder frame."


	sblock isInlined
		ifTrue: [ anArray
				with: sblock inlinedArgs
				do: [ :arg :i | temporaries at: i put: arg ] ]
		ifFalse: [ temporaries := Array new: sblock tempCount.
			arguments := anArray.
			environment := closure. ]
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:14:22'!
isBlock
	^isBlock
	
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:14:22'!
isHomeOf: env
	^ environment == env andNot: [ isBlock ]
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:14:22'!
method
	^method
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:14:22'!
methodArguments
	^ arguments
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:14:22'!
parent
	^parent
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:14:22'!
parent: anEvaluationContext
	parent := anEvaluationContext.
	(isBlock not and: [self framesCount > 1000])
		ifTrue: [ self halt ].
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:14:22'!
receiver
	^_self
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:14:22'!
self
	^ _self
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:14:22'!
self: anObject
	_self := anObject
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:14:22'!
stackTemporaryAt: index
	^ temporaries at: index
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:14:22'!
stackTemporaryAt: index put: value
	^temporaries at: index put: value
	
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:14:22'!
temporaryAt: index in: environmentIndex
	| env |
	environmentIndex ifNil: [ ^ self stackTemporaryAt: index ].
	env := self environmentFor: environmentIndex.
	^ env at: index
! !

!LinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:14:22'!
temporaryAt: index in: environmentIndex put: value
	| env |
	environmentIndex ifNil: [ ^ self stackTemporaryAt: index put: value ].
	env := self environmentFor: environmentIndex.
	^ env at: index put: value
! !

!LinkedEvaluationContext methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:14:22'!
environment
	^ environment
! !

!LinkedEvaluationContext methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:14:22'!
firstArgument
	^arguments at: 1
! !

!LinkedEvaluationContext methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:14:22'!
fourthArgument
	^ arguments at: 4
! !

!LinkedEvaluationContext methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:14:22'!
framesCount
	| current result |
	current := self.
	result := 0.
	[ current notNil ]
		whileTrue: [ result := result + 1.
			current := current parent ].
	^ result
! !

!LinkedEvaluationContext methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:14:22'!
method: aMethod
	| count |
	method := aMethod.
	count := system methodTempCount: aMethod.
	temporaries := Array new: count
! !

!LinkedEvaluationContext methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:14:22'!
secondArgument
	^ arguments at: 2
! !

!LinkedEvaluationContext methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:14:22'!
thirdArgument
	^ arguments at: 3
! !

!LinkedEvaluationContext methodsFor: 'services' stamp: 'KenD 9/30/2022 12:14:22'!
backtrace
	| bt next |
	bt := OrderedCollection new.
	next := self.
	[ next notNil and: [ next method notNil ] ]
		whileTrue: [ bt
				add:
					{next method signature.
					next self} , next arguments.
			next := next parent ].
	^ bt
! !

!LinkedEvaluationContext class methodsFor: 'instance creation' stamp: 'KenD 9/30/2022 12:14:22'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!IterativeLinkedEvaluationContext methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:14:35'!
operandAt: anInteger
	^operands at: operands size - anInteger 
! !

!IterativeLinkedEvaluationContext methodsFor: 'as yet unclassified' stamp: 'KenD 9/30/2022 12:14:35'!
beBlock
	super beBlock.
	operands := nil
! !

!IterativeLinkedEvaluationContext methodsFor: 'as yet unclassified' stamp: 'KenD 9/30/2022 12:14:35'!
dropOperands: anInteger
	anInteger timesRepeat: [ operands removeLast ]
! !

!IterativeLinkedEvaluationContext methodsFor: 'as yet unclassified' stamp: 'KenD 9/30/2022 12:14:35'!
hasFinished
	^parent isNil
! !

!IterativeLinkedEvaluationContext methodsFor: 'as yet unclassified' stamp: 'KenD 9/30/2022 12:14:35'!
popOperand
	^operands removeLast
! !

!IterativeLinkedEvaluationContext methodsFor: 'as yet unclassified' stamp: 'KenD 9/30/2022 12:14:35'!
popOperands: anInteger

	^ anInteger = 0 ifTrue: [#()] ifFalse: [operands removeLast: anInteger]
! !

!IterativeLinkedEvaluationContext methodsFor: 'as yet unclassified' stamp: 'KenD 9/30/2022 12:14:35'!
pushOperand: anObject
	
	operands ifNil: [ operands := OrderedCollection new ].
	operands add: anObject
! !

!IterativeLinkedEvaluationContext methodsFor: 'as yet unclassified' stamp: 'KenD 9/30/2022 12:14:35'!
restart
	operands ifNotNil: [operands reset]
! !

!RecursiveLinkedEvaluationContext methodsFor: 'as yet unclassified' stamp: 'KenD 9/30/2022 12:27:53'!
evaluateFor: interpreter
	| sexpressions result |
	nonLocalReturn := [ :value | 
	interpreter context: self homeContext parent.
	^ value ].
	sexpressions := system sexpressionsOf: method.
	result := interpreter visitMethod: sexpressions.
	interpreter context: self parent.
	^ result
! !

!RecursiveLinkedEvaluationContext methodsFor: 'as yet unclassified' stamp: 'KenD 9/30/2022 12:27:53'!
return: anObject
	^self isBlock
		ifTrue: [ nonLocalReturn value: anObject ]
		ifFalse: [ anObject ]
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:36:01'!
argumentAt: anInteger
	| args |
	args := self isBlock ifTrue: [ system blockArgumentCount: regM ] ifFalse: [ system methodArgumentCount: regM ].
	^stack at: regBP + 1 + (args - anInteger + 1)
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:36:01'!
argumentAt: index in: environmentIndex
	environmentIndex ifNil: [ ^ self argumentAt: index ].
	^self environment: environmentIndex at: index.

! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:36:01'!
arguments
	| count |
	self halt.
	count := system argumentCountOf: regM.
	^ (count to: 1 by: -1) collect: [ :i | self argumentAt: i ]
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:36:01'!
buildClosureFrameFor: receiver code: code environment: environment
	| temps |
	temps := system blockTempCount: code.
	self buildFrameFor: receiver code: code environment: environment temps: temps
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:36:01'!
buildFrameFor: receiver code: code environment: environment temps: temps
	regS := receiver.
	regM := code.
	self
		push: pc;
		push: regBP.
	regBP := regSP.
	regBP < 100 ifTrue: [ self error: 'stack overflow' ].
	self
		push: receiver;
		push: code;
		push: regE;
		push: environment.
	regE := environment.
	pc := 0.
	temps timesRepeat: [ self push: self nil ]
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:36:01'!
buildLaunchFrame
	| launcher code |
	launcher := system newCompiledMethod.
	code := system newArraySized: 0.
	system methodOptimizedCode: launcher put: code.
	self
		buildMethodFrameFor: system nil
		code: launcher
		environment: system nil
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:36:01'!
buildMethodFrameFor: receiver code: code environment: environment
	| temps |
	temps := system methodTempCount: code.
	self
		buildFrameFor: receiver
		code: code
		environment: environment
		temps: temps
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:36:01'!
environment
	^regE
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:36:01'!
environment: environmentIndex at: index
	"
	-1: inlined argument.
	 0: current env.
 	>0: index of env in current env. "

	| env |
	environmentIndex = -1
		ifTrue: [ ^ self stackTemporaryAt: index ].
	env := environmentIndex = 0
		ifTrue: [ regE ]
		ifFalse: [ regE at: environmentIndex ].
	^ env at: index
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:36:01'!
environment: environmentIndex at: index put: value
	"
	-1: inlined argument.
	 0: current env.
 	>0: index of env in current env. "

	| env |
	environmentIndex = -1
		ifTrue: [ ^ self stackTemporaryAt: index put: value ].
	env := environmentIndex = 0
		ifTrue: [ regE ]
		ifFalse: [ regE at: environmentIndex ].
	^ env at: index put: value
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:36:01'!
firstArgument
	^ self argumentAt: 1
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:36:01'!
fourthArgument
	^ self argumentAt: 4
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:36:01'!
hasFinished
	^ regBP = 0 and: [ regSP = (stack size + 1) ]
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:36:01'!
incRegPC
	^pc := pc + 1
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:36:01'!
initialize
	super initialize.
	stack := Array new: 64 * 1024.
	regSP := stack size + 1.
	regBP := 0.
	pc := 0
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:36:01'!
isBlock
	^ system isBlock: regM
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:36:01'!
method
	^ self isBlock
		ifTrue: [ system blockMethod: regM ]
		ifFalse: [ regM ]
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:36:01'!
method: anSCompiledMethod
	regM := anSCompiledMethod

! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:36:01'!
methodArguments
	| count |
	count := system methodArgumentCount: regM.
	^ (count to: 1 by: -1) collect: [ :i | self argumentAt: i ]
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:36:01'!
operandAt: anInteger
	^ stack at: regSP + anInteger
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:36:01'!
pop
	| result |
	result := stack at: regSP.
	regSP := regSP + 1.
	^result

! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:36:01'!
popFrame
	regSP := regBP.
	regE := stack at: regBP - 3.
	regBP := self pop.
	pc := self pop.
		regM := stack at: regBP - 2.
	regS := stack at: regBP - 1.

! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:36:01'!
popLaunchFrame
	regSP := regBP.
	regE := stack at: regBP - 3.
	regBP := self pop.
	pc := self pop.
	regBP = 0
		ifTrue: [ ^ self ].
	regM := stack at: regBP - 2.
	regS := stack at: regBP - 1.

! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:36:01'!
popOperand
	^self pop
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:36:01'!
popOperands: anInteger
	| result |
	anInteger = 0
		ifTrue: [ ^ #() ].
	result := Array new: anInteger.
	anInteger to: 1 by: -1 do: [ :i | result at: i put: self pop ].
	^ result
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 11/1/2022 10:52:06'!
printOn: aStream
	| slot |
	regSP to: regBP + 3 do: [ :i | slot := stack at: i. aStream nextPutAll: i hex; nextPutAll: ' -> '; print: slot; newLine ].
	aStream nextPutAll: '...'; newLine.

super printOn: aStream
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 11/1/2022 10:52:13'!
printStack
	^String
		streamContents: [ :stream | 
			| slot |
			regSP to: stack size do: [ :i | 
				slot := stack at: i.
				stream
					nextPutAll: i hex;
					nextPutAll: ' -> ';
					print: slot;
					newLine ] ]
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:36:01'!
push: anObject
	anObject ifNil: [ self halt ].
	regSP := regSP - 1.
	stack at: regSP put: anObject
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:36:01'!
pushOperand: anObject
	anObject ifNil: [ self halt ].
	regSP := regSP - 1.
	stack at: regSP put: anObject
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:36:01'!
receiver
	^ regS
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:36:01'!
regBP
	^ regBP
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:36:01'!
restart
	| nilObj |
	nilObj := system nil.
	regBP - self tempOffset to: regSP by: -1 do: [ :i | stack at: i put: nilObj ].
	pc := 1
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:36:01'!
secondArgument
	^ self argumentAt: 2
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:36:01'!
self
	^ regS
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:36:01'!
stackTemporaryAt: index
	^ stack at: regBP - self tempOffset - index
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:36:01'!
stackTemporaryAt: index put: value
	^ stack at: regBP - self tempOffset - index put: value
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:36:01'!
system: aPowertalkRuntime
	super system: aPowertalkRuntime.
	regE := regS := system nil
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:36:01'!
tempOffset
"should be 2 or 4 if we had methods without environment"
	^4
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:36:01'!
temporaryAt: index in: environmentIndex
	environmentIndex ifNil: [ ^ self stackTemporaryAt: index].
	^ self environment: environmentIndex at: index
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:36:01'!
temporaryAt: index in: environmentIndex put: value
	environmentIndex ifNil: [ ^ self stackTemporaryAt: index put: value ].
	^ self environment: environmentIndex at: index put: value
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:36:01'!
thirdArgument
	^ self argumentAt: 3
! !

!StackedEvaluationContext methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:36:01'!
unwind
	| home bp environment |
	home := system closureHome: self environment.
	home == system nil ifTrue: [ self error: 'cannot return because closure has no home' ].
	bp := regBP.
	[ bp !!= 0 ]
		whileTrue: [ environment := stack at: bp - 4.
			environment == home
				ifTrue: [ regBP := bp.
					^ self popFrame ].
			bp := stack at: bp ].
	self error: 'cannot return from this closure'
! !

!StackedEvaluationContext methodsFor: 'services' stamp: 'KenD 9/29/2022 14:36:01'!
backtrace
	| result bp code receiver |
	result := OrderedCollection new.
	bp := regBP.
	[ bp !!= 0 ]
		whileTrue: [ code := stack at: bp - 2.
			receiver := stack at: bp - 1.
			result add: {code. receiver}.
			bp := stack at: bp ].
	^ result
! !

!StackedEvaluationContext methodsFor: 'services' stamp: 'KenD 9/29/2022 14:36:01'!
dropOperands: anInteger
	regSP := regSP + anInteger
! !

!StackedEvaluationContext methodsFor: 'services' stamp: 'KenD 9/29/2022 14:36:01'!
reserveStackSlots: anInteger
	regSP := regSP - anInteger
! !

!StackedEvaluationContext methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:36:01'!
regM
	^ regM
! !

!StackedEvaluationContext methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:36:01'!
regPC
	^pc
! !

!StackedEvaluationContext methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:36:01'!
regPC: anInteger
	pc := anInteger
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
context
	^ context 
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
context: anEvaluationContext
	context := anEvaluationContext
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
evaluateClosure: receiver
	^ self evaluateClosure: receiver withArgs: #()
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
evaluatePrimitiveHash: receiver
	| hash |
	hash := receiver headerHash.
	hash = 0
		ifTrue: [ hash := self nextHash.
			receiver headerHash: hash ].
	^ runtime newInteger: hash
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
isIdentical: anObject to: anotherObject
	^ anObject == anotherObject
		or: [ anObject isImmediate
				and: [ anotherObject isImmediate
						and: [ anObject value = anotherObject value ] ] ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 11/8/2022 14:50:04'!
lookup: aSymbol startingAt: aBehavior sendSite: anSMessage
	| method symbol |
	method := anSMessage methodFor: aBehavior.
	method
		ifNil: [ undermessages
				at: aSymbol
				ifPresent: [ :block | 
					anSMessage cacheUndermessage: block.
					^ block ].
			symbol := runtime symbolFrom: aSymbol.
			method := runtime lookup: symbol startingAt: aBehavior.
			self assert: method notNil.
			anSMessage
				registerCacheWith: runtime;
				cache: method when: aBehavior ].
	^ method
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveFor: aSymbol
	^primitives at: aSymbol
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
primitivePrimeFor: anInteger
	| result |

	result := #(2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97 101 103 107 109 113 127 131 137 139 149 151 157 163 167 173 179 181 191 193 197 199 211 223 227 229 233 239 241 251 269 359 479 641 857 1151 1549 2069 2237 2423 2617 2797 2999 3167 3359 3539 3727 3911 4441 4787 5119 5471 5801 6143 6521 6827 7177 7517 7853 8783 9601 10243 10867 11549 12239 12919 13679 14293 15013 15731 17569 19051 20443 21767 23159 24611 25847 27397 28571 30047 31397 35771 38201 40841 43973 46633 48989 51631 54371 57349 60139 62969)
		detect: [ :i | i >= anInteger ].
	^ runtime newInteger: result
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
sendLocal: aSymbol to: receiver
	^ self sendLocal: aSymbol to: receiver with: {}
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
stackSize
	^context framesCount
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
underprimitiveBasicFlags
	^ [ :receiver :arguments | runtime newInteger: receiver headerFlags ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
underprimitiveBasicHash
	^ [ :receiver :arguments | runtime newInteger: receiver headerHash ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
underprimitiveBasicHashPut
	^ [ :receiver :arguments | receiver headerHash: arguments first value ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
underprimitiveBitShiftLeft
	| result |
	^ [ :receiver :arguments | 
	result := receiver value bitShift: arguments first value.
	runtime newInteger: result ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
underprimitiveByteAt
	| result |
	^ [ :receiver :arguments | 
	result := receiver bytes at: arguments first value.
	runtime newInteger: result ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
underprimitiveByteAtPut

	^ [ :receiver :arguments | 
	receiver bytes
		at: arguments first value
		put: arguments second value.
	arguments second ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
underprimitiveHalt
	^ [ :receiver :arguments | self halt ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
underprimitiveIdentityEquals
	^ [ :receiver :arguments | runtime booleanFor: (self isIdentical: receiver to: arguments first)]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
underprimitiveIsLarge
	^ [ :receiver :arguments | runtime booleanFor: receiver isSmall not ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
underprimitiveIsSmallInteger
	^ [ :receiver :arguments | runtime booleanFor: receiver isImmediate ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
underprimitiveLargeSize
	^ [ :receiver :arguments | 
	receiver isSmall
		ifTrue: [ self error ].
	runtime newInteger: receiver size ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
underprimitiveLeadingZeroBitCount
	^ [ :receiver :arguments | 
	runtime
		newInteger: (self
		underprimitiveLeadingZeroBitCount: receiver value) ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
underprimitiveLeadingZeroBitCount: anInteger
	^ anInteger < 0
		ifTrue: [ 0 ]
		ifFalse: [ runtime wordSize * 8 - anInteger highBit ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
underprimitiveSMIBitAnd
	^ [ :receiver :arguments | runtime newInteger: (receiver value bitAnd: arguments first value) ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
underprimitiveSMIBitOr
	^ [ :receiver :arguments | runtime newInteger: (receiver value bitOr: arguments first value) ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
underprimitiveSMIBitShiftLeft
	^ [ :receiver :arguments | runtime newInteger: receiver value << arguments first value ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
underprimitiveSMIBitShiftRight
	^ [ :receiver :arguments | 
	runtime
		newInteger: (receiver value >> arguments first value) ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
underprimitiveSMIEquals
	^ [ :receiver :arguments | runtime booleanFor: receiver value = arguments first value ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
underprimitiveSMIGreaterEqualThan
	^ [ :receiver :arguments | runtime booleanFor: receiver value >= arguments first value ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
underprimitiveSMIGreaterThan
	^ [ :receiver :arguments | runtime booleanFor: receiver value > arguments first value ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
underprimitiveSMILowerEqualThan
	^ [ :receiver :arguments | runtime booleanFor: receiver value <= arguments first value ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
underprimitiveSMILowerThan
	^ [ :receiver :arguments | runtime booleanFor: receiver value < arguments first value ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
underprimitiveSMIMinus
	^ [ :receiver :arguments | runtime newInteger: receiver value - arguments first value ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
underprimitiveSMIPlus
	^ [ :receiver :arguments | runtime newInteger: receiver value + arguments first value ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
underprimitiveSMIQuotientTowardZero
	^ [ :receiver :arguments | runtime newInteger: (receiver value quo: arguments first value) ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
underprimitiveSMIRemainderTowardZero
	^ [ :receiver :arguments | runtime newInteger: (receiver value \\ arguments first value) ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
underprimitiveSMITimes
	^ [ :receiver :arguments | runtime newInteger: receiver value * arguments first value ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
underprimitiveSmallIntegerByteAt
	| result |
	^ [ :receiver :arguments | 
	result := receiver value byteAt: arguments first value.
	runtime newInteger: result ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
underprimitiveSmallSize
	^ [ :receiver :arguments | 
	receiver isSmall
		ifFalse: [ self error ].
	runtime newInteger: receiver size ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
underprimitiveULongAtOffset
	| result |
	^ [ :receiver :arguments | 
	result := receiver bytes unsignedLongAt: arguments second value + 1.
	runtime newInteger: result ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
underprimitiveULongAtOffsetPut
	| value |
	^ [ :receiver :arguments | 
	value := arguments second.
	receiver bytes
		unsignedLongAt: arguments first value + 1
		put: value value.
	value ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
underprimitiveUShortAtOffset
	| result |
	^ [ :receiver :arguments | 
	result := receiver bytes
		unsignedShortAt: arguments second value + 1.
	runtime newInteger: result ]
! !

!PowertalkEvaluator methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:07'!
underprimitiveUShortAtOffsetPut
	| value |
	^ [ :receiver :arguments | 
	value := arguments second.
	receiver bytes
		unsignedShortAt: arguments first value + 1
		put: value value.
	value ]
! !

!PowertalkEvaluator methodsFor: 'services' stamp: 'KenD 9/30/2022 12:21:07'!
booleanFor: aBoolean
	^ aBoolean
		ifTrue: [ trueObj ]
		ifFalse: [ falseObj ]
! !

!PowertalkEvaluator methodsFor: 'services' stamp: 'KenD 9/30/2022 12:21:07'!
booleanFrom: anObject
	anObject == falseObj
		ifTrue: [ ^ false ].
	anObject == trueObj
		ifTrue: [ ^ true ].
	self error: 'not a boolean'
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveAt
	| receiver index value |
	^ [ receiver := context self.
	index := context firstArgument value.
	value := receiver at: index.
	receiver isBytes
		ifTrue: [ runtime newInteger: value ]
		ifFalse: [ value ] ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveAtPut
	| index |
	^ [ index := context firstArgument value.
	context self at: index put: context secondArgument ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveBehavior
	| receiver |
	^ [ receiver := context self.
	receiver isImmediate
		ifTrue: [ self smallintBehavior ]
		ifFalse: [ receiver behavior ] ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveBootstrapDictAt
	| string |
	^ [ string := context firstArgument asString.
	context self at: string ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveBootstrapDictAtPut
	| string |
	^ [ string := context firstArgument asString.
	context self at: string put: context secondArgument ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveBootstrapDictBeConstant
	^ [ context self beConstant ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveBootstrapDictKeys
	^ [ context self keys ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveBootstrapDictNew
	^ [ runtime newBootstrapDictionaryOf: context self ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveBootstrapFixOverrides
	^ [ runtime fixOverrides ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveBootstrapLoadModule
	^ [ runtime loadModule: context firstArgument]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveClass
	^ [ runtime speciesFor: context self ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveClosureArgumentCount
	^ [ runtime newInteger: context self block argumentCount ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveClosureValue
	^ [ self evaluateClosure: context self ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveClosureValueWithArgs
	^ [ self
		evaluateClosure: context self
		withArgs: context methodArguments ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveEqual
	^ [ runtime booleanFor: context self = context firstArgument ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveFloatNew
	^ [ runtime newBytesOf: context self sized: 8 ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveFlushDispatchCaches
	^ [ runtime
		flushDispatchCache: context self
		in: context firstArgument ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveHash
	^ [ runtime newInteger: (runtime hashFor: context self) ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveNew
	^ [ runtime newSlotsOf: context self ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveNewBytes
	| size |
	^ [ size := context firstArgument value.
	runtime newBytesOf: context self sized: size ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveNewObjectHeap
	^ [ runtime newObjectHeap ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveNewSized
	| size |
	^ [ size := context firstArgument value.
	runtime newOf: context self sized: size ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitivePrimeFor
	^ [ self primitivePrimeFor: context firstArgument value ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveSMIBitAnd
	^ [ runtime
		newInteger:
			(context self value
				bitAnd: (runtime integerFrom: context firstArgument)) ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveSMIBitOr
	^ [ runtime
		newInteger:
			(context self value
				bitOr: (runtime integerFrom: context firstArgument)) ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveSMIBitShift
	^ [ runtime
		newInteger:
			(context self value
				bitShift: (runtime integerFrom: context firstArgument)) ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveSMIBitXor
	^ [ runtime
		newInteger:
			(context self value
				bitXor: (runtime integerFrom: context firstArgument)) ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveSMIEqual
	^ [ runtime
		booleanFor: (
			context self value = 
				context firstArgument value) ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveSMIGreaterEqualThan
	^ [ runtime
		booleanFor:
			context self value
				>= (runtime integerFrom: context firstArgument) ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveSMIGreaterThan
	^ [ runtime
		booleanFor: context self value > (runtime integerFrom: context firstArgument) ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveSMIHighBit
	^ [ runtime newInteger: context self value highBit ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveSMIIntDiv
	^ [ runtime
		newInteger:
			context self value
				// (runtime integerFrom: context firstArgument ) ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveSMIIntQuot
	^ [ runtime
		newInteger:
			context self value
				\\ (runtime integerFrom: context firstArgument) ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveSMIMinus
	^ [ runtime
		newInteger:
			context self value
				- (runtime integerFrom: context firstArgument) ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveSMINotEqual
	^ [ runtime
		booleanFor:
			context self value
				!!= (runtime integerFrom: context firstArgument) ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveSMIPlus
	^ [ runtime
		newInteger:
			context self value
				+ (runtime integerFrom: context firstArgument) ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveSMISize
	^ [ runtime newInteger: context self value bytesCount ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveSMITimes
	^ [ runtime
		newInteger:
			context self value
				* (runtime integerFrom: context firstArgument) ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveSetBehavior
	| receiver |
	^ [ receiver := context self.
	receiver behavior: context firstArgument.
	receiver ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveSize
	^ [ runtime newInteger: (runtime arrayedSizeOf: context self) ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveStringReplaceFromToWithStartingAt
	| receiver |
	^ [ receiver := context self.
	receiver bytes
		replaceFrom: context firstArgument value
		to: context secondArgument value
		with: context thirdArgument bytes
		startingAt: context fourthArgument value.
	receiver ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveUnderHash
	^ [ runtime newInteger: context self headerHash ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveUnderIsBytes
	^ [ runtime booleanFor: context self isBytes ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveUnderPointersSize
	^ [ runtime newInteger: context self pointersSize ]
! !

!PowertalkEvaluator methodsFor: 'primitives' stamp: 'KenD 9/30/2022 12:21:07'!
primitiveUnderSize
	^ [ runtime newInteger: context self size ]
! !

!PowertalkEvaluator methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:21:07'!
false
	^ falseObj
! !

!PowertalkEvaluator methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:21:07'!
initialize

	messageCount := 0
! !

!PowertalkEvaluator methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:21:07'!
nil
	^nilObj
	
! !

!PowertalkEvaluator methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:21:07'!
true
	^ trueObj
! !

!PowertalkEvaluator methodsFor: 'initializing' stamp: 'KenD 9/30/2022 12:21:07'!
convertPrimitives
	| original |
	original := primitives.
	primitives := IdentityDictionary new.
	original
		keysAndValuesDo:
			[ :symbol :block | primitives at: (runtime symbolFromLocal: symbol) put: block ]
! !

!PowertalkEvaluator methodsFor: 'initializing' stamp: 'KenD 9/30/2022 12:21:07'!
convertUndermessages
	| original |
	original := undermessages.
	undermessages := IdentityDictionary new.
	original keysAndValuesDo: [ :symbol :block | undermessages at: (runtime symbolFromLocal: symbol) put: block ]

! !

!PowertalkEvaluator methodsFor: 'initializing' stamp: 'KenD 9/30/2022 12:21:07'!
initializePrimitives
	primitives := IdentityDictionary new.
	primitives
		at: #Behavior put: self primitiveBehavior;
		at: #SetBehavior put: self primitiveSetBehavior;
		at: #Class put: self primitiveClass;
		at: #UnderHash put: self primitiveUnderHash;
		at: #UnderIsBytes put: self primitiveUnderIsBytes;
		at: #UnderPointersSize put: self primitiveUnderPointersSize;
		at: #UnderSize put: self primitiveUnderSize;
		at: #Size put: self primitiveSize;
		at: #Hash put: self primitiveHash;
		at: #At put: self primitiveAt;
		at: #AtPut put: self primitiveAtPut;
		at: #New put: self primitiveNew;
		at: #NewSized put: self primitiveNewSized;
		at: #NewBytes put: self primitiveNewBytes;
		at: #Equal put: self primitiveEqual;
		at: #SMIPlus put: self primitiveSMIPlus;
		at: #SMIMinus put: self primitiveSMIMinus;
		at: #SMITimes put: self primitiveSMITimes;
		at: #SMIIntDiv put: self primitiveSMIIntDiv;
		at: #SMIIntQuot put: self primitiveSMIIntQuot;
		at: #SMIBitAnd put: self primitiveSMIBitAnd;
		at: #SMIBitOr put: self primitiveSMIBitOr;
		at: #SMIBitXor put: self primitiveSMIBitXor;
		at: #SMIBitShift put: self primitiveSMIBitShift;
		at: #SMIHighBit put: self primitiveSMIHighBit;
		at: #SMIGreaterThan put: self primitiveSMIGreaterThan;
		at: #SMIGreaterEqualThan put: self primitiveSMIGreaterEqualThan;
		at: #SMIEqual put: self primitiveSMIEqual;
		at: #SMINotEqual put: self primitiveSMINotEqual;
		at: #SMISize put: self primitiveSMISize;
		at: #ClosureValue put: self primitiveClosureValue;
		at: #ClosureValueWithArgs put: self primitiveClosureValueWithArgs;
		at: #ClosureArgumentCount put: self primitiveClosureArgumentCount;
		at: #StringReplaceFromToWithStartingAt
			put: self primitiveStringReplaceFromToWithStartingAt;
		at: #FloatNew put: self primitiveFloatNew;
		at: #DictionaryNew put: self primitiveBootstrapDictNew;
		at: #FlushDispatchCaches put: self primitiveFlushDispatchCaches;
		at: #BootstrapDictBeConstant
			put: self primitiveBootstrapDictBeConstant;
		at: #BootstrapDictKeys put: self primitiveBootstrapDictKeys;
		at: #BootstrapDictAt put: self primitiveBootstrapDictAt;
		at: #BootstrapDictAtPut put: self primitiveBootstrapDictAtPut;
		at: #BootstrapLoadModule put: self primitiveBootstrapLoadModule;
		at: #BootstrapFixOverrides put: self primitiveBootstrapFixOverrides;
		at: #PrimeFor put: self primitivePrimeFor
! !

!PowertalkEvaluator methodsFor: 'initializing' stamp: 'KenD 9/30/2022 12:21:07'!
initializeUndermessages
	undermessages := IdentityDictionary new.
	undermessages
		at: #_isSmallInteger put: self underprimitiveIsSmallInteger;
		at: #_isLarge put: self underprimitiveIsLarge;
		at: #_smallSize put: self underprimitiveSmallSize;
		at: #_largeSize put: self underprimitiveLargeSize;
		at: #_basicFlags put: self underprimitiveBasicFlags;
		at: #_basicAt: put: self underprimitiveBasicAt;
		at: #_byteAt: put: self underprimitiveByteAt;
		at: #_byteAt:put: put: self underprimitiveByteAtPut;
		at: #_basicHash put: self underprimitiveBasicHash;
		at: #_basicHash: put: self underprimitiveBasicHashPut;
		at: #_smallIntegerByteAt:
			put: self underprimitiveSmallIntegerByteAt;
		at: #_bitShiftLeft: put: self underprimitiveBitShiftLeft;
		at: #_primitiveULongAtOffset: put: self underprimitiveULongAtOffset;
		at: #_primitiveULongAtOffset:put:
			put: self underprimitiveULongAtOffsetPut;
		at: #_uShortAtOffset: put: self underprimitiveUShortAtOffset;
		at: #_uShortAtOffset:put: put: self underprimitiveUShortAtOffsetPut;
		at: #_smiPlus: put: self underprimitiveSMIPlus;
		at: #_smiMinus: put: self underprimitiveSMIMinus;
		at: #_smiTimes: put: self underprimitiveSMITimes;
		at: #_smiLowerThan: put: self underprimitiveSMILowerThan;
		at: #_smiLowerEqualThan: put: self underprimitiveSMILowerEqualThan;
		at: #_smiGreaterThan: put: self underprimitiveSMIGreaterThan;
		at: #_smiGreaterEqualThan:
			put: self underprimitiveSMIGreaterEqualThan;
		at: #_smiEquals: put: self underprimitiveSMIEquals;
		at: #_identityEquals: put: self underprimitiveIdentityEquals;
		at: #_leadingZeroBitCount
			put: self underprimitiveLeadingZeroBitCount;
		at: #_quotientTowardZero:
			put: self underprimitiveSMIQuotientTowardZero;
		at: #_remainderTowardZero:
			put: self underprimitiveSMIRemainderTowardZero;
		at: #_bitShiftLeft: put: self underprimitiveSMIBitShiftLeft;
		at: #_bitShiftRight: put: self underprimitiveSMIBitShiftRight;
		at: #_smiBitAnd: put: self underprimitiveSMIBitAnd;
		at: #_smiBitOr: put: self underprimitiveSMIBitOr;
		at: #_halt put: self underprimitiveHalt
! !

!PowertalkEvaluator methodsFor: 'initializing' stamp: 'KenD 9/30/2022 12:21:07'!
runtime
	^runtime

! !

!PowertalkEvaluator methodsFor: 'initializing' stamp: 'KenD 9/30/2022 12:21:07'!
runtime: aPowertalkRuntime
	runtime := aPowertalkRuntime.
	nilObj := runtime nil.
	trueObj := runtime true.
	falseObj := runtime false.
	self
		initializeUndermessages;
		initializePrimitives; convertUndermessages ; convertPrimitives 
! !

!PowertalkEvaluator methodsFor: 'underprimitives' stamp: 'KenD 9/30/2022 12:21:07'!
underprimitiveBasicAt
	^ [ :receiver :arguments | receiver slots at: arguments first value ]
! !

!PowertalkEvaluator methodsFor: 'private' stamp: 'KenD 9/30/2022 12:21:07'!
evaluateClosure: receiver withArgs: arguments
	^self subclassResponsibility
! !

!PowertalkEvaluator methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:21:07'!
evaluateClosure: aPClosure with: anObject
	 ^self evaluateClosure: aPClosure withArgs: { anObject }
! !

!PowertalkEvaluator methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:21:07'!
evaluateClosure: aPClosure with: anObject with: anotherObject
	^ self evaluateClosure: aPClosure withArgs: {anObject. anotherObject}
! !

!PowertalkEvaluator class methodsFor: 'as yet unclassified' stamp: 'KenD 9/30/2022 12:21:07'!
undermessages
	^#(_basicAt: #_basicAt:put: _bitShiftLeft: _byteAt: #_byteAt:put: _smallSize _largeSize _isSmallInteger _basicHash _basicHash: _smallIntegerByteAt: _uShortAtOffset: #_uShortAtOffset:put:)
! !

!PowertalkIterativeInterpreter methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:50'!
evaluate
	^self subclassResponsibility

! !

!PowertalkIterativeInterpreter methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:50'!
hasFinished
	^ context hasFinished
! !

!PowertalkIterativeInterpreter methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:50'!
prepareDispatch: dispatch
	self subclassResponsibility
! !

!PowertalkIterativeInterpreter methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:50'!
prepareForBlock: sblock
	^self subclassResponsibility	
! !

!PowertalkIterativeInterpreter methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:50'!
regR: anObject
	regR := anObject
! !

!PowertalkIterativeInterpreter methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:50'!
underprimitiveRestart
	^ self subclassResponsibility 
! !

!PowertalkIterativeInterpreter methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:50'!
visitBlock: anSBlock
	regR := context captureClosure: anSBlock
! !

!PowertalkIterativeInterpreter methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:50'!
visitIdentifier: anSIdentifier
	regR := anSIdentifier binding valueWithin: context
! !

!PowertalkIterativeInterpreter methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:50'!
visitLiteral: anSLiteral
	regR := runtime literalFor: anSLiteral value
! !

!PowertalkIterativeInterpreter methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:50'!
visitOpAssign: anSOpAssign
	anSOpAssign assignees
		do: [ :identifier | identifier binding assign: regR within: context ]
! !

!PowertalkIterativeInterpreter methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:50'!
visitOpDropToS: anSOpDropToS
	context dropOperands: anSOpDropToS count
! !

!PowertalkIterativeInterpreter methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:50'!
visitOpLoadRfromFrame: anSOpLoadRfromFrame
	regR := context stackTemporaryAt: anSOpLoadRfromFrame index
! !

!PowertalkIterativeInterpreter methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:50'!
visitOpLoadRfromStack: anSOpLoadRfromStack
	regR := context operandAt: anSOpLoadRfromStack index
! !

!PowertalkIterativeInterpreter methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:50'!
visitOpLoadRwithNil: anSOpLoadRwithNil
	regR := nilObj
! !

!PowertalkIterativeInterpreter methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:50'!
visitOpLoadRwithSelf: anSOpLoadRwithSelf
	regR := context self
! !

!PowertalkIterativeInterpreter methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:50'!
visitOpPushR: anSOpPushR
	context pushOperand: regR
! !

!PowertalkIterativeInterpreter methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:21:50'!
visitOpStoreRintoFrame: anSOpStoreRintoFrame
	context stackTemporaryAt: anSOpStoreRintoFrame index put: regR
! !

!PowertalkIterativeInterpreter methodsFor: 'private' stamp: 'KenD 9/30/2022 12:21:50'!
prepareFor: anSCompiledMethod
	self subclassResponsibility
! !

!PowertalkIterativeInterpreter methodsFor: 'private' stamp: 'KenD 9/30/2022 12:21:50'!
prepareForExecution: method
	self subclassResponsibility
! !

!PowertalkIterativeInterpreter methodsFor: 'initializing' stamp: 'KenD 9/30/2022 12:21:50'!
initializeUndermessages
	super initializeUndermessages.
	undermessages 		at: #_restart put: self underprimitiveRestart
	
! !

!PowertalkIterativeLinkedInterpreter methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:22:04'!
evaluationContextClass
	^self subclassResponsibility
! !

!PowertalkIterativeLinkedInterpreter methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:22:04'!
sendLocal: aSymbol to: receiver with: anArray
	| symbol literal dummy message dispatch |
	symbol := runtime symbolFromLocal: aSymbol.
	literal := SLiteral new value: nilObj.
	dummy := Array new: anArray size withAll: literal.
	message := SMessage new
		selector: symbol;
		receiver: literal;
		arguments: dummy.
	dispatch := SOpDispatchMessage new message: message.
	regR := receiver.
	context := self evaluationContextClass new system: self.
	self prepareDispatch: dispatch.
	dummy isEmpty
		ifFalse: [ context pushOperand: receiver ].
	anArray do: [ :arg | context pushOperand: arg ].
	self evaluate.
	^ regR
! !

!PowertalkIterativeLinkedInterpreter methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:22:04'!
visitOpDispatchMessage: anSOpDispatchMessage
	| message argcount arguments behavior method size environment |
	message := anSOpDispatchMessage message.
	argcount := message argumentCount.
	arguments := context popOperands: argcount.
	(argcount > 0 andNot: [ message isCascadeMessage ])
		ifTrue: [ context popOperand ].
	message cachedUndermessage
		ifNotNil: [ :block | ^ regR := block value: regR value: arguments ].
	behavior := message receiver isSuper
		ifTrue: [ runtime superBehaviorOf: context classBinding ]
		ifFalse: [ runtime behaviorOf: regR ].
	method := self
		lookup: message selector
		startingAt: behavior
		sendSite: message.
	method class == BlockClosure
		ifTrue: [ ^ regR := method value: regR value: arguments ].
	size := runtime methodEnvironmentSize: method.
	environment := runtime newEnvironmentSized: size.
	context := self evaluationContextClass new
		self: regR;
		arguments: arguments;
		environment: environment;
		system: runtime; method: method;
		parent: context
		.
	self prepareFor: method
! !

!PowertalkIterativeLinkedInterpreter methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:22:04'!
visitOpNonLocalReturn: anSOpReturn
	context := context homeContext parent
! !

!PowertalkIterativeLinkedInterpreter methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:22:04'!
visitOpReturn: anSOpReturn
	context := context parent
! !

!PowertalkIterativeLinkedInterpreter methodsFor: 'private' stamp: 'KenD 9/30/2022 12:22:04'!
evaluateClosure: closure withArgs: arguments
	| frame sblock |
	frame := closure builder.
	sblock := closure executionTree.
	context := frame copy
		beBlock;
		parent: context;
		initializeForBlock: sblock args: arguments closure: closure.
	^ self prepareForBlock: sblock
! !

!PowertalkLinkedLinearInterpreter methodsFor: 'visiting' stamp: 'KenD 11/1/2022 10:52:23'!
evaluate
	| operation |
	[ operation := context nextOperation. operation notNil]
		whileTrue: [ 			operation acceptVisitor: self ].
	Transcript print: 'MessageCount: ' , messageCount asString; newLine.
	^ regR
! !

!PowertalkLinkedLinearInterpreter methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:26:46'!
evaluationContextClass
	^ LinkedLinearEvaluationContext
! !

!PowertalkLinkedLinearInterpreter methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:26:46'!
initialize
	super initialize.
	linearizer := SExpressionLinearizer new.

! !

!PowertalkLinkedLinearInterpreter methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:26:46'!
initializePrimitives
	super initializePrimitives.
	linearizer primitives: primitives
! !

!PowertalkLinkedLinearInterpreter methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:26:46'!
prepareDispatch: dispatch
	context work:  {dispatch}
! !

!PowertalkLinkedLinearInterpreter methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:26:46'!
prepareForBlock: sblock
	| operations |
	operations := sblock optimizedCode.
	context work: operations; restart .
	^ nilObj
! !

!PowertalkLinkedLinearInterpreter methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:26:46'!
underprimitiveRestart
	^ [ :receiver :arguments | 
	context
		restart]
! !

!PowertalkLinkedLinearInterpreter methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:26:46'!
visitOpJump: anSOpJump
	context regPC: anSOpJump target + 1
! !

!PowertalkLinkedLinearInterpreter methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:26:46'!
visitOpJumpFalse: anSOpJumpFalse
	regR == falseObj
		ifTrue: [ context regPC: anSOpJumpFalse target+1 ]
! !

!PowertalkLinkedLinearInterpreter methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:26:46'!
visitOpJumpTrue: anSOpJumpTrue
	regR == trueObj
		ifTrue: [ context regPC: anSOpJumpTrue target +1]
! !

!PowertalkLinkedLinearInterpreter methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:26:46'!
visitOpPopR: anSOpPopR
	regR := context popOperand
! !

!PowertalkLinkedLinearInterpreter methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:26:46'!
visitOpPrimitive: anSOpPrimtive
	regR := anSOpPrimtive block value
! !

!PowertalkLinkedLinearInterpreter methodsFor: 'private' stamp: 'KenD 9/30/2022 12:26:46'!
prepareFor: method
	| operations |
	operations := self
		prepareForExecution: method. context
		work: operations
! !

!PowertalkLinkedLinearInterpreter methodsFor: 'private' stamp: 'KenD 9/30/2022 12:26:46'!
prepareForExecution: anSCompiledMethod
	| operations array |
	operations := runtime sexpressionsOf: anSCompiledMethod.
	operations isCollection
		ifTrue: [ ^ operations ].
	linearizer visitMethod: operations.
	array := linearizer operations asArray.
	runtime methodOptimizedCode: operations put: array.
	^array
! !

!PowertalkLinkedLinearInterpreter methodsFor: 'initializing' stamp: 'KenD 9/30/2022 12:26:46'!
runtime: aPowertalkRuntime
	super runtime: aPowertalkRuntime.
	linearizer runtime: aPowertalkRuntime
! !

!PowertalkLinkedTreeInterpreter methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:26:58'!
dropToS
	context pushOperation: SOpDropToS new
! !

!PowertalkLinkedTreeInterpreter methodsFor: 'accessing' stamp: 'KenD 11/1/2022 10:52:28'!
evaluate
	| operation |
	[ context hasWork ]
		whileTrue: [ operation := context popOperation.
			operation acceptVisitor: self ].
	Transcript print: 'MessageCount: ' , messageCount asString; newLine.
	^ regR
! !

!PowertalkLinkedTreeInterpreter methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:26:58'!
evaluationContextClass
	^ LinkedTreeEvaluationContext
! !

!PowertalkLinkedTreeInterpreter methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:26:58'!
loadRfromStack: anInteger
	| load |
	load := SOpLoadRfromStack new index: anInteger.
		context pushOperation: load
! !

!PowertalkLinkedTreeInterpreter methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:26:58'!
loadRwithSelf
		context pushOperation:SOpLoadRwithSelf new
! !

!PowertalkLinkedTreeInterpreter methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:26:58'!
prepareDispatch: dispatch
	context pushOperation: dispatch
! !

!PowertalkLinkedTreeInterpreter methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:26:58'!
prepareForBlock: sblock
	| statements |
	statements := sblock statements.
	(statements isEmpty orNot: [ statements last isReturn ])
		ifTrue: [ context pushOperation: SOpReturn new ].
	statements reverseDo: [ :exp | context pushOperation: exp ].
	^ nilObj
! !

!PowertalkLinkedTreeInterpreter methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:26:58'!
push: anSExpression
		context pushOperation: anSExpression
! !

!PowertalkLinkedTreeInterpreter methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:26:58'!
pushOpAssign: aCollection
	| op |
	op := SOpAssign new assignees: aCollection.
		context pushOperation: op
! !

!PowertalkLinkedTreeInterpreter methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:26:58'!
pushOpReturn
		context pushOperation: SOpReturn new
! !

!PowertalkLinkedTreeInterpreter methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:26:58'!
pushOpReturn: aBoolean
	| class |
	class := (aBoolean andNot: [ context isBlock ])
		ifTrue: [ SOpReturn ]
		ifFalse: [ SOpNonLocalReturn ].
	context pushOperation: class new
! !

!PowertalkLinkedTreeInterpreter methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:26:58'!
pushR
		context pushOperation: SOpPushR new
! !

!PowertalkLinkedTreeInterpreter methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:26:58'!
visitAssignment: anSAssignment
	self
		pushOpAssign: anSAssignment assignees;		push: anSAssignment expression

! !

!PowertalkLinkedTreeInterpreter methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:26:58'!
visitCascade: anSCascade
	| dispatch args argsize |
	self dropToS.
	anSCascade messages
		reverseDo: [ :msg | 
			dispatch := SOpDispatchMessage new message: msg.
			self push: dispatch.
			args := msg arguments.
			argsize := args size.
			self loadRfromStack: argsize.
			args
				reverseDo: [ :arg | 
					self
						pushR;
						push: arg ] ].
	self
		pushR;
		push: anSCascade receiver
! !

!PowertalkLinkedTreeInterpreter methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:26:58'!
visitMessage: anSMessage
	| dispatch args argsize |
	messageCount := messageCount + 1.
	dispatch := SOpDispatchMessage new message: anSMessage.
	self push: dispatch.
	args := anSMessage arguments.
	argsize := args size.
	argsize > 0
		ifTrue: [ self loadRfromStack: argsize ].
	args
		reverseDo: [ :arg | 
			self
				pushR;
				push: arg ].
	argsize > 0
		ifTrue: [ self pushR ].
	self push: anSMessage receiver
! !

!PowertalkLinkedTreeInterpreter methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:26:58'!
visitMethod: anSMethod
	| primitive statements |
	primitive := anSMethod pragma.
	primitive
		ifNotNil: [ primitive class == SPragma
				ifTrue: [ primitive := self primitiveFor: anSMethod primitive.
					anSMethod pragma: primitive ].
			self pushOpReturn.
			^ regR := primitive value ].
	statements := anSMethod statements.
	(statements isEmpty orNot: [ statements last isReturn ])
		ifTrue: [ self
				pushOpReturn;
				loadRwithSelf ].
	statements reverseDo: [ :node | self push: node ]
! !

!PowertalkLinkedTreeInterpreter methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:26:58'!
visitOpRestart: anSOpRestart
	| sexpressions |
	sexpressions := runtime sexpressionsOf: context method.
	self push: sexpressions
! !

!PowertalkLinkedTreeInterpreter methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:26:58'!
visitReturn: anSReturn
	self
		pushOpReturn: anSReturn local;
		push: anSReturn expression
! !

!PowertalkLinkedTreeInterpreter methodsFor: 'private' stamp: 'KenD 9/30/2022 12:26:58'!
prepareFor: method
	| sexpressions |
	sexpressions := self prepareForExecution: method.
	self push: sexpressions
! !

!PowertalkLinkedTreeInterpreter methodsFor: 'private' stamp: 'KenD 9/30/2022 12:26:58'!
prepareForExecution: anSCompiledMethod
	^runtime sexpressionsOf: anSCompiledMethod.

! !

!PowertalkLinkedTreeInterpreter methodsFor: 'initializing' stamp: 'KenD 9/30/2022 12:26:58'!
underprimitiveRestart
	^ [ :receiver :arguments | 
	| sexpressions |
	sexpressions := runtime sexpressionsOf: context method.
	context
		restart;
		pushOperation: sexpressions ]
! !

!PowertalkIterativeStackedInterpreter methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:16'!
evaluate
	| operation |
	[ operation := self nextOperation.
	operation notNil ] whileTrue: [ operation acceptVisitor: self ].
	^ regR
! !

!PowertalkIterativeStackedInterpreter methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:16'!
evaluateUndermessage: message with: block
	| argcount arguments |
	argcount := message argumentCount.
	arguments := context popOperands: argcount.
	regR := block value: regR value: arguments.
	context reserveStackSlots: argcount
! !

!PowertalkIterativeStackedInterpreter methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:16'!
initialize
	super initialize.
	context := StackedEvaluationContext new.
	linearizer := SExpressionLinearizer new
! !

!PowertalkIterativeStackedInterpreter methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:16'!
initializePrimitives
	super initializePrimitives.
	linearizer primitives: primitives
! !

!PowertalkIterativeStackedInterpreter methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:16'!
nextOperation
 | pc |
pc := context incRegPC.
	pc <= work size
		ifFalse: [ ^ nil ].
	^ work at: pc
! !

!PowertalkIterativeStackedInterpreter methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:16'!
sendLocal: aSymbol to: receiver with: anArray
	| symbol literal dummy message dispatch prevWork prevPC |
	symbol := runtime symbolFromLocal: aSymbol.
	literal := SLiteral new value: nilObj.
	dummy := Array new: anArray size withAll: nil.
	message := SMessage new
		selector: symbol;
		receiver: literal;
		arguments: dummy.
	dispatch := SOpDispatchMessage new message: message.
	prevWork := work.
	prevPC := context regPC.
	context buildLaunchFrame.
	regR := receiver.
	anArray isEmpty
		ifFalse: [ context pushOperand: receiver ].
	anArray do: [ :arg | context pushOperand: arg ].
	work := {dispatch}.
	context regPC: 0.
	self evaluate.
	context popLaunchFrame.
	work := prevWork.
	context regPC: prevPC.
	^ regR
! !

!PowertalkIterativeStackedInterpreter methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:16'!
underprimitiveRestart
	^ [ :receiver :arguments | context restart ]
! !

!PowertalkIterativeStackedInterpreter methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:16'!
visitOpDispatchMessage: anSOpDispatchMessage
	| message behavior method size environment |
	message := anSOpDispatchMessage message.
	message cachedUndermessage
		ifNotNil: [ :block | ^ self evaluateUndermessage: message with: block ].
	behavior := message receiver isSuper
		ifTrue: [ runtime superBehaviorOf: context classBinding ]
		ifFalse: [ runtime behaviorOf: regR ].
	method := self
		lookup: message selector
		startingAt: behavior
		sendSite: message.
	method class == BlockClosure
		ifTrue: [ ^ self evaluateUndermessage: message with: method ].
	size := runtime methodEnvironmentSize: method.
	environment := runtime newEnvironmentSized: size.
	self prepareFor: method.
	work := runtime methodOptimizedCode: method.
	context
		buildMethodFrameFor: regR
		code: method
		environment: environment
! !

!PowertalkIterativeStackedInterpreter methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:16'!
visitOpJump: anSOpJump
	context regPC: anSOpJump target
! !

!PowertalkIterativeStackedInterpreter methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:16'!
visitOpJumpFalse: anSOpJumpFalse
	regR == falseObj
		ifTrue: [ context regPC: anSOpJumpFalse target ]
! !

!PowertalkIterativeStackedInterpreter methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:16'!
visitOpJumpTrue: anSOpJumpTrue
	regR == trueObj
		ifTrue: [ context regPC: anSOpJumpTrue target ]
! !

!PowertalkIterativeStackedInterpreter methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:16'!
visitOpNonLocalReturn: anSOpReturn
	context unwind.
		work := runtime methodOptimizedCode: context regM
! !

!PowertalkIterativeStackedInterpreter methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:16'!
visitOpPopR: anSOpPopR
	regR := context pop
! !

!PowertalkIterativeStackedInterpreter methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:16'!
visitOpPrimitive: anSOpPrimtive
	regR := anSOpPrimtive block value
! !

!PowertalkIterativeStackedInterpreter methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:16'!
visitOpReturn: anSOpReturn
	context popFrame.
	work := runtime methodOptimizedCode: context regM
! !

!PowertalkIterativeStackedInterpreter methodsFor: 'private' stamp: 'KenD 9/30/2022 12:22:16'!
evaluateClosure: closure withArgs: arguments
	| block receiver |
	block := runtime closureBlock: closure.
	work := runtime blockOptimizedCode: block.
	receiver := (runtime blockCapturesSelf: block)
		ifTrue: [ closure at: 1 ]
		ifFalse: [ nilObj ].
	context
		popFrame;
		buildClosureFrameFor: receiver code: block environment: closure.
	^ regR
! !

!PowertalkIterativeStackedInterpreter methodsFor: 'private' stamp: 'KenD 9/30/2022 12:22:16'!
prepareFor: method
	self prepareForExecution: method

! !

!PowertalkIterativeStackedInterpreter methodsFor: 'private' stamp: 'KenD 9/30/2022 12:22:16'!
prepareForExecution: method
	| operations linearized |
	operations := runtime sexpressionsOf: method.
	operations isCollection
		ifTrue: [ ^ self ].
	linearizer visitMethod: operations.
	linearized := linearizer operations asArray.
	runtime methodOptimizedCode: method put: linearized
! !

!PowertalkIterativeStackedInterpreter methodsFor: 'initializing' stamp: 'KenD 9/30/2022 12:22:16'!
runtime: aPowertalkRuntime
	super runtime: aPowertalkRuntime.
	linearizer
		runtime: aPowertalkRuntime;
		dropsArguments.
	context system: runtime
! !

!PowertalkRecursiveInterpreter methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:27:09'!
evaluateClosure: receiver whileFalse: arg
	| result |
	[ result := self evaluateClosure: receiver.
	self booleanFrom: result ]
		whileFalse: [ self evaluateClosure: arg ].
	^ receiver
! !

!PowertalkRecursiveInterpreter methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:27:09'!
evaluateClosure: receiver whileTrue: arg
	| result |
	[ result := self evaluateClosure: receiver.
	self booleanFrom: result ] whileTrue: [ self evaluateClosure: arg ].
	^ receiver
! !

!PowertalkRecursiveInterpreter methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:27:09'!
hasFinished
	^context isNil
! !

!PowertalkRecursiveInterpreter methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:27:09'!
initializePrimitives
	super initializePrimitives.
	primitives 
		at: #ClosureWhileTrue put: self primitiveClosureWhileTrue;
		at: #ClosureWhileFalse put: self primitiveClosureWhileFalse
! !

!PowertalkRecursiveInterpreter methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:27:09'!
primitiveClosureWhileFalse
	^ [ self
		evaluateClosure: context self
		whileFalse: context arguments first ]
! !

!PowertalkRecursiveInterpreter methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:27:09'!
primitiveClosureWhileTrue
	^ [ self
		evaluateClosure: context self
		whileTrue: context arguments first ]
! !

!PowertalkRecursiveInterpreter methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:27:09'!
send: aSymbol to: receiver with: arguments super: aBoolean
	^self send: aSymbol to: receiver with: arguments super: aBoolean sendSite: SMessage new

! !

!PowertalkRecursiveInterpreter methodsFor: 'visiting' stamp: 'KenD 11/8/2022 14:50:11'!
send: aSymbol to: receiver with: arguments super: aBoolean sendSite: anSMessage
	| behavior method environment size |
	anSMessage cachedUndermessage
		ifNotNil: [ :block | ^ block value: receiver value: arguments ].
	behavior := aBoolean
		ifTrue: [ runtime superBehaviorOf: context classBinding ]
		ifFalse: [ runtime behaviorOf: receiver ].
	method := self
		lookup: aSymbol
		startingAt: behavior
		sendSite: anSMessage.
	method class == BlockClosure
		ifTrue: [ ^ method value: receiver value: arguments ].
	self assert: method notNil.
	size := runtime methodEnvironmentSize: method.
	environment := runtime newEnvironmentSized: size.
	context := RecursiveLinkedEvaluationContext new
		self: receiver;
		arguments: arguments;
		environment: environment;
		parent: context;
		method: method;
		system: runtime.
	^ context evaluateFor: self
! !

!PowertalkRecursiveInterpreter methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:27:09'!
sendLocal: aSymbol to: receiver with: anArray
	| symbol res |
	symbol := runtime symbolFromLocal: aSymbol.
	res := self
		send: symbol
		to: receiver
		with: anArray
		super: false.
	^ res
! !

!PowertalkRecursiveInterpreter methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:27:09'!
visitAssignment: anSAssignment
	| result |
	result := anSAssignment expression acceptVisitor: self.
	anSAssignment assignees
		do: [ :identifier | identifier binding assign: result within: context ].
	^ result
! !

!PowertalkRecursiveInterpreter methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:27:09'!
visitBlock: anSBlock
	^ context captureClosure: anSBlock
! !

!PowertalkRecursiveInterpreter methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:27:09'!
visitCascade: anSCascade
	| recv args  last |
	recv := anSCascade receiver acceptVisitor: self.
	anSCascade messages
		do: [ :msg | 
			args := msg arguments collect: [ :code | code acceptVisitor: self ].
			last := self
				send: msg selector
				to: recv
				with: args
				super: anSCascade receiver isSuper
				sendSite: msg ].
	^ last
! !

!PowertalkRecursiveInterpreter methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:27:09'!
visitIdentifier: anSIdentifier
	^ anSIdentifier binding valueWithin: context
! !

!PowertalkRecursiveInterpreter methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:27:09'!
visitLiteral: anSLiteral
	^ runtime literalFor: anSLiteral value
! !

!PowertalkRecursiveInterpreter methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:27:09'!
visitMessage: anSMessage
	| recv args |
	recv := anSMessage receiver acceptVisitor: self.
	args := anSMessage arguments
		collect: [ :code | code acceptVisitor: self ].
	^ self
		send: anSMessage selector
		to: recv
		with: args
		super: anSMessage receiver isSuper
		sendSite: anSMessage
! !

!PowertalkRecursiveInterpreter methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:27:09'!
visitMethod: anSMethod
	| primitive |
	primitive := anSMethod pragma.
	primitive ifNil: [ ^ self evaluateMethodStatements: anSMethod ].
	primitive class == SPragma
		ifTrue: [ primitive := self primitiveFor: anSMethod primitive.
			anSMethod pragma: primitive ].
	^ primitive value
! !

!PowertalkRecursiveInterpreter methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:27:09'!
visitReturn: anSReturn
	| value |
	value := anSReturn expression acceptVisitor: self.
	^context return: value
! !

!PowertalkRecursiveInterpreter methodsFor: 'services' stamp: 'KenD 9/30/2022 12:27:09'!
evaluateMethodStatements: anSMethod
	| last result |
	last := nil.
	anSMethod statements
		do: [ :node | 
			last := node.
			result := node acceptVisitor: self ].
	^ (last notNil and: [ last isReturn ])
		ifTrue: [ result ]
		ifFalse: [ context self ]
! !

!PowertalkRecursiveInterpreter methodsFor: 'initializing' stamp: 'KenD 9/30/2022 12:27:09'!
runtime: aPowertalkRuntime
	super runtime: aPowertalkRuntime.
	aPowertalkRuntime
		override: #Closure -> #whileTrue: withPrimitive: 'ClosureWhileTrue';
		override: #Closure -> #whileFalse: withPrimitive: 'ClosureWhileFalse'
! !

!PowertalkRecursiveInterpreter methodsFor: 'private' stamp: 'KenD 9/30/2022 12:27:09'!
evaluateClosure: closure withArgs: arguments
	| frame sblock result |
	frame := closure builder.
	sblock := closure executionTree.
	context := frame copy
		beBlock;
		parent: context;
		initializeForBlock: sblock args: arguments closure: closure.
	result := nilObj.
	sblock statements do: [ :node | result := node acceptVisitor: self ].
	^ result
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:23:02'!
behaviorOf: anObject
	^self subclassResponsibility
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:23:02'!
evaluatePrimitiveHash: receiver
	| hash |
	hash := receiver headerHash.
	hash = 0
		ifTrue: [ hash := self nextHash.
			receiver headerHash: hash ].
	^ self newInteger: hash
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:23:02'!
flushDispatchCache: aSymbol in: class
	| behavior |
	behavior := self speciesInstanceBehavior: class.
	symbolCache at: aSymbol ifPresent: [ :messages | messages do: #flushCache ].
	^ methodCache removeKey: aSymbol -> behavior ifAbsent: nil
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:23:02'!
instanceVarOf: receiver at: anInteger
	^ receiver slotAt: anInteger
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:23:02'!
instanceVarOf: receiver at: anInteger put: value
	^ receiver slotAt: anInteger put: value
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:23:02'!
isClosure: anObjectMap
	^ self subclassResponsibility
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:23:02'!
literalFor: anObject
	^anObject
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:23:02'!
localSymbolFrom: anObject
	^ anObject bytes allButLast asString asSymbol
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:23:02'!
lookup: aSymbol startingAt: aBehavior
	^methodCache at: aSymbol -> aBehavior ifAbsentPut: [ self doLookup: aSymbol startingAt: aBehavior ]
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:23:02'!
methodClassBinding: method
	^ self subclassResponsibility
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:23:02'!
methodEnvironmentSize: anObject
	^self subclassResponsibility
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:23:02'!
newBootstrapDictionaryOf: receiver
	^ self subclassResponsibility
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:23:02'!
newBytesOf: receiver sized: size
	^ self subclassResponsibility
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:23:02'!
newClosureFor: compiledBlock
	^ self subclassResponsibility
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:23:02'!
newEnvironmentSized: anInteger
	^self subclassResponsibility

! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:23:02'!
newInteger: anInteger
	^self subclassResponsibility
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:23:02'!
newOf: receiver sized: size
	^ self subclassResponsibility

! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:23:02'!
newSlotsOf: receiver
^self subclassResponsibility
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:23:02'!
registerCache: anSMessage for: symbol
	| messages |
	messages := symbolCache at: symbol ifAbsentPut: [OrderedCollection new].
	messages add: anSMessage 
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:23:02'!
sendLocal: aSymbol to: receiver
	^ self sendLocal: aSymbol to: receiver with: {}
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:23:02'!
sendLocal: aSymbol to: receiver with: anArray
	^interpreter sendLocal: aSymbol to: receiver with: anArray
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:23:02'!
sexpressionsOf: aMethod
	^self subclassResponsibility
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:23:02'!
speciesFor: anObject
	^ self subclassResponsibility
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:23:02'!
speciesInstanceBehavior: class
^	self subclassResponsibility 
! !

!PowertalkRuntime methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:23:02'!
symbolFrom: anObject
	^anObject
! !

!PowertalkRuntime methodsFor: 'services' stamp: 'KenD 9/30/2022 12:23:02'!
booleanFor: aBoolean
	^ aBoolean
		ifTrue: [ trueObj ]
		ifFalse: [ falseObj ]
! !

!PowertalkRuntime methodsFor: 'services' stamp: 'KenD 9/30/2022 12:23:02'!
booleanFrom: anObject
	anObject == falseObj
		ifTrue: [ ^ false ].
	anObject == trueObj
		ifTrue: [ ^ true ].
	self error: 'not a boolean'
! !

!PowertalkRuntime methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:23:02'!
false
	^ falseObj
! !

!PowertalkRuntime methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:23:02'!
initialize
	methodCache := Dictionary new.
	symbolCache := Dictionary new.
	overrides := Dictionary new
! !

!PowertalkRuntime methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:23:02'!
initializeInterpreter
	"interpreter := PowertalkRecursiveInterpreter new runtime: self"

	"interpreter := PowertalkIterativeTreeInterpreter new runtime: self"

	"interpreter := PowertalkLinkedLinearInterpreter new runtime: self"

	interpreter := PowertalkIterativeStackedInterpreter new runtime: self
! !

!PowertalkRuntime methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:23:02'!
interpreter
	^interpreter
! !

!PowertalkRuntime methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:23:02'!
nil
	^nilObj
	
! !

!PowertalkRuntime methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:23:02'!
symbolFromLocal: aSymbol
	^self subclassResponsibility
! !

!PowertalkRuntime methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:23:02'!
true
	^ trueObj
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
addSymbol: aSymbol
	| string |
	string := self newString: aSymbol asString.
	^ self sendLocal: #asSymbol to: string
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
arrayClass: anLMRObject
	arrayClass := anLMRObject 
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
arrayedSizeOf: anLMRObject
	| species ivars |
	anLMRObject isImmediate ifTrue: [ ^0 ].
	species := self speciesFor: anLMRObject.
	ivars := self speciesInstanceSize: species.
	^anLMRObject size - ivars
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
behaviorClass: anLMRObject
	^ anLMRObject slotAt: behaviorClassIndex
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
behaviorClassIndex: anInteger
	behaviorClassIndex := anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
behaviorClass_: anLMRObject
	behaviorClass := anLMRObject
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
behaviorMethodDictionary: anLMRObject
	^ anLMRObject slotAt: behaviorMethodDictionaryIndex
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
behaviorMethodDictionaryIndex: anInteger
	behaviorMethodDictionaryIndex := anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
behaviorNext: anLMRObject
	^ anLMRObject slotAt: behaviorNextIndex
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
behaviorNextIndex: anInteger
	behaviorNextIndex := anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
behaviorOf: anLMRObject
	^anLMRObject isImmediate ifTrue: [ self smallIntegerBehavior ] ifFalse: [anLMRObject behavior]
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
blockArgumentCount: anLMRObject
	| flags |
	flags := anLMRObject slotAt: methodFlagsIndex.
	^ flags value bitsAt: BlockArgCount
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
blockCapturesHome: block
	| flags |
	flags := block slotAt: methodFlagsIndex.
	^ flags value anyMask: BlockCapturesHome
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
blockCapturesSelf: block
	| flags |
	flags := block slotAt: methodFlagsIndex.
	^ flags value anyMask: BlockCapturesSelf
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
blockClass: anLMRObject
	blockClass := anLMRObject
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
blockEnvironmentCount: anLMRObject
	| flags |
	flags := anLMRObject slotAt: methodFlagsIndex.
	^ flags value bitsAt: BlockEnvCount
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
blockExecutionTree: anLMRObject
	^ anLMRObject slotAt: methodOptimizedCodeIndex
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
blockMethod: anLMRObject
	^ anLMRObject slotAt: blockMethodIndex
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
blockMethodIndex: anInteger
	blockMethodIndex := anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
blockOptimizedCode: anLMRObject

	^ self methodOptimizedCode: anLMRObject
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
blockOptimizedCode: anLMRObject put: anObject
	^ self methodOptimizedCode: anLMRObject put: anObject
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
blockTempCount: anLMRObject
	| flags |
	flags := anLMRObject slotAt: methodFlagsIndex.
	^ flags value bitsAt: BlockTempCount
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
bootstrapper: aBootstrapper
	bootstrapper := aBootstrapper
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
byteArrayClass: anLMRObject
	byteArrayClass := anLMRObject
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
classIvars: anLMRObject
	^ anLMRObject slotAt: speciesIvarsIndex
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
classModule: class
	^ class slotAt: classModuleIndex
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
classModuleIndex: anInteger
	classModuleIndex := anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
className: anLMRObject
	^ anLMRObject slotAt: classNameIndex
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
classNameIndex: anInteger
	classNameIndex := anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
classNamespacesIndex: anInteger
	classNamespacesIndex := anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
closureBlock: closure
	^closure slotAt: closureBlockIndex
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
closureBlockIndex: anInteger
	closureBlockIndex := anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
closureClass: anLMRObject
	closureClass := anLMRObject
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
closureHome: closure
	| block |
	block := self closureBlock: closure.
	(self blockCapturesHome: block)
		ifFalse: [ self error: 'closure has no home' ].
	^ (self blockCapturesSelf: block)
		ifTrue: [ closure at: 2 ]
		ifFalse: [ closure at: 1 ]
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
dictionaryTable: anLMRObject
	^anLMRObject slotAt: dictionaryTableIndex
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
dictionaryTableIndex: anInteger
	dictionaryTableIndex := anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
doLookup: aSymbol startingAt: aBehavior
	| behavior m |
	behavior := aBehavior.
	[ m := self methodFor: aSymbol in: behavior.
	m ifNotNil: [ ^m ].
	behavior := self behaviorNext: behavior.
	behavior !!= nilObj ] whileTrue.
	^ nil
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
fixOverrides
	| selector md |
	overrides
		keysAndValuesDo: [ :assoc :method | 
			selector := assoc value.
			md := self behaviorMethodDictionary: assoc key.
			self
				sendLocal: #at:put:
				to: md
				with:
					{selector.
					method} ]
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
hashFor: anLMRObject
	| shifted hash current |
	anLMRObject isImmediate
		ifTrue: [ ^ anLMRObject value ].
	current := anLMRObject headerHash.
	current !!= 0
		ifTrue: [ ^ current ].
	shifted := lastHash bitShift: -1.
	hash := (lastHash bitAnd: 1) = 0
		ifTrue: [ shifted ]
		ifFalse: [ shifted bitXor: 16rB9C8 ].
	anLMRObject headerHash: hash.
	^ lastHash := hash
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
initialize
	lastHash := 1.
	super initialize
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
integerFrom: anLMRObject
	| behavior class |
	anLMRObject isImmediate
		ifTrue: [ ^ anLMRObject value ].
	behavior := self behaviorOf: anLMRObject.
	class := self behaviorClass: behavior.
	^ class == largePositiveIntegerClass
		ifTrue: [ anLMRObject bytes asLittleEndianPositiveInteger ]
		ifFalse: [ anLMRObject bytes asLittleEndianNegativeInteger ]
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
isBlock: compiledCode
	^ (self behaviorClass: compiledCode behavior) ==
	blockClass 
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
isMetaclass: anLMRObject
	^ (self speciesFor: anLMRObject) == metaclassClass
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
kernel
	^kernel
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
kernel: anLMRObject
	kernel := anLMRObject
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
knownSymbols: associations
	knownSymbols := Dictionary withAll: associations
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
largeNegativeIntegerClass: anLMRObject
	largeNegativeIntegerClass := anLMRObject
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
largePositiveIntegerClass: anLMRObject
	largePositiveIntegerClass := anLMRObject
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
loadAssociationValue: association
	^ association slotAt: 2.

! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
loadModule: symbol
	^ bootstrapper loadModule: symbol asLocalString
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
lookupAssociationFor: aSymbol in: dictionary
	|  table assoc key |
	table := self dictionaryTable: dictionary.
	2 to: table size do: [ :index | 
		assoc := table slotAt: index.
		assoc == nilObj ifFalse: [key := assoc slotAt: 1. key == aSymbol
			ifTrue: [ ^ assoc] ]].
	^ nil
	
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
metaclassClass: anLMRObject
	metaclassClass := anLMRObject
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
metaclassInstanceClass: anLMRObject
	^ anLMRObject slotAt: metaclassInstanceClassIndex
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
metaclassInstanceClassIndex: anInteger
	metaclassInstanceClassIndex := anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
method: method literalAt: index
	^ method slotAt: methodInstSize + index
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
methodArgumentCount: anLMRObject
	| flags |
	flags := anLMRObject slotAt: methodFlagsIndex.
	^ flags value bitsAt: ArgCount
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
methodAstcodes: anLMRObject
	^ anLMRObject slotAt: methodAstcodesIndex
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
methodAstcodesIndex: anInteger
	methodAstcodesIndex := anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
methodClass: anLMRObject
	methodClass := anLMRObject
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
methodClassBinding: anLMRObject
	^ anLMRObject slotAt: methodClassBindingIndex
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
methodClassBindingIndex: anInteger
	methodClassBindingIndex := anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
methodEnvironmentSize: anLMRObject
	| flags |
	flags := anLMRObject slotAt: methodFlagsIndex.
	^ flags value bitsAt: EnvCount
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
methodFlagsIndex: anInteger
	methodFlagsIndex := anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
methodFor: aSymbol in: behavior
	| md table  |
	overrides at: behavior -> aSymbol ifPresent: [ :m | ^ m ].
	md := self behaviorMethodDictionary: behavior.
	table := self dictionaryTable: md.
	2 to: table size by: 2 do: [ :index | 
		(table slotAt: index) == aSymbol
			ifTrue: [ ^ table slotAt: index + 1 ] ].
	^ nil
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
methodInstSize: anInteger
	methodInstSize := anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
methodOptimizedCode: anLMRObject
	| slot |
	slot := anLMRObject slotAt: methodOptimizedCodeIndex.
	^ slot == nilObj ifTrue: [ slot ] ifFalse: [ slot code ]
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
methodOptimizedCode: anLMRObject put: anObject
	| behavior header code |
	behavior := self speciesInstanceBehavior: arrayClass.
	header := LMRObjectHeader new
		behavior: behavior;
		bytes: false arrayed: true named: false;
		size: 0;
		hash: 0.

	code := LMRExecutableCode new header: header; code: anObject.
	^ anLMRObject slotAt: methodOptimizedCodeIndex put: code
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
methodOptimizedCodeIndex: anInteger
	methodOptimizedCodeIndex := anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
methodTempCount: anLMRObject
	| flags |
	flags := anLMRObject slotAt: methodFlagsIndex.
	^ flags value bitsAt: TempCount
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
moduleNamespace: anLMRObject
	^anLMRObject slotAt: moduleNamespaceIndex

! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
moduleNamespaceIndex: anInteger

	moduleNamespaceIndex := anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
newArray: anArray
| result |
result := 	self newArraySized: anArray size.
	anArray withIndexDo: [ :elem :i | result at: i put: elem ].
	^result
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
newArraySized: anInteger
	| behavior header |
	behavior := self speciesInstanceBehavior: arrayClass.
	header := LMRObjectHeader new
		behavior: behavior;
		bytes: false arrayed: true named: false;
		size: anInteger;
		hash: 0.
	^ LMRSlotObject new header: header
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
newByteArray: aByteArray
	| behavior header |
	behavior := self speciesInstanceBehavior: byteArrayClass.
	header := LMRObjectHeader new
		behavior: behavior;
		bytes: false arrayed: true named: false;
		size: aByteArray size;
		hash: 0.
	^ LMRByteObject new header: header; bytes: aByteArray
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
newBytes: species size: anInteger
	| behavior header |
	behavior := self speciesInstanceBehavior: species.
	header := LMRObjectHeader new
		behavior: behavior;
		bytes: false arrayed: true named: false;
		size: anInteger;
		hash: 0.
	^ LMRByteObject new
		header: header;
		bytes: (ByteArray new: anInteger)
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
newBytesOf: species sized: size
	^ self newBytes: species size: size
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
newCharacter: aCharacter
	| value |
	value := self newInteger: aCharacter asInteger.
	^self sendLocal: #asCharacter to: value.

! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
newClosureFor: compiledBlock
	| size closure |
	size := self blockEnvironmentCount: compiledBlock.
	closure := self newSlots: closureClass size:  size.
	closure slotAt: closureBlockIndex put: compiledBlock.
	^ closure
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
newCompiledMethod
	| behavior header method |
	behavior := self speciesInstanceBehavior: methodClass.
	header := LMRObjectHeader new
		behavior: behavior;
		bytes: false arrayed: true named: false;
		size: methodInstSize;
		hash: 0.
	method := LMRSlotObject new header: header.
	method slotAt: methodFlagsIndex put: (self newInteger: 0).
	^method
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
newEnvironmentSized: anInteger
	^ self newArraySized: anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
newInteger: anInteger
	anInteger > maxSMI
		ifTrue: [ ^ self newLargePositiveInteger: anInteger ].
	anInteger < minSMI
		ifTrue: [ ^ self newLargeNegativeInteger: anInteger ].
	^ LMRSmallInteger new value: anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
newLargeNegativeInteger: anInteger
	| size bytes byte result complement |
	size := (anInteger bytesCount alignedTo: 2) max: wordSize.
	complement := anInteger negated - 1.
	bytes := ByteArray new: size withAll: 16rFF.
	1 to: anInteger bytesCount do: [ :i | 
		byte := 255 - (complement byteAt: i).
		bytes at: i put: byte ].
	(bytes at: size) < 128 ifTrue: [ bytes := bytes, #[16rFF 16rFF] ].
	result := self newBytes: largeNegativeIntegerClass size: bytes size.
	^result bytes: bytes

! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
newLargePositiveInteger: anInteger
	| size bytes result |
	size := (anInteger bytesCount alignedTo: 2) max: wordSize.
	bytes := anInteger asByteArrayOfSize: size.
	result := self newBytes: largePositiveIntegerClass size: size.
	^ result bytes: bytes reversed
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
newOf: aSpecies sized: anInteger
	^(self speciesIsBytes: aSpecies)
		ifTrue: [ self newBytes: aSpecies size: anInteger ]
		ifFalse: [ self newSlots: aSpecies size: anInteger ]
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
newSlots: class
	^self newSlots: class size: 0
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
newSlots: class size: anInteger
	| ivars behavior header result |
	ivars := self speciesInstanceSize: class.
	behavior := self speciesInstanceBehavior: class.
	header := LMRObjectHeader new
		behavior: behavior;
		bytes: false arrayed: false named: true;
		size: ivars + anInteger;
		hash: 0.
	result := class == behaviorClass
		ifTrue: [ LMRBehaviorObject new runtime: self]
		ifFalse: [ LMRSlotObject new ].
	^ result
		header: header;
		nilSlots: nilObj
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
newSlotsOf: class
	^ self newSlots: class size: 0
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
newSmallInteger: anInteger
	^ LMRSmallInteger new value: anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
newString: aString
	| behavior header bytes |
	behavior := self speciesInstanceBehavior: stringClass.
	bytes := aString asByteArray copyWith: 0.
	header := LMRObjectHeader new
		behavior: behavior;
		bytes: false arrayed: true named: false;
		size: bytes size;
		hash: 0.
	^ LMRByteObject new
		header: header;
		bytes: bytes
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
nil: n true: t false: f
	nilObj := n.
	trueObj := t.
	falseObj := f
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
override: assoc with: method
	overrides at: assoc put: method
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
print: anLMRObject on: aStream
	| species name |
	species := self behaviorClass: anLMRObject behavior.
	name := self speciesLocalName: species.
	name = 'Symbol'
		ifTrue: [ ^ aStream nextPutAll: '<#' , anLMRObject asLocalString , '>' ].
	name = 'String'
		ifTrue: [ ^ aStream nextPutAll: '<''' , anLMRObject asLocalString , '''>' ].
	name = 'CompiledMethod'
		ifTrue: [ ^ aStream
				nextPutAll: '<';
				print: (self methodClassBinding: anLMRObject);
				nextPutAll: '>>#';
				nextPutAll: (anLMRObject slotAt: 5) asLocalString;
				nextPutAll: '>' ].
	aStream
		nextPut: $<;
		nextPutAll: name withArticle;
		nextPut: $>
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
printBehavior: anLMRBehavior on: aStream
	| species name |
	species := self behaviorClass: anLMRBehavior.
	name := self speciesLocalName: species.
	aStream
		nextPutAll: '<' , name , ' instanceBehavior>'
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
removeOverride: assoc
	| species selector |
	species := assoc key.
	selector := assoc value.
	overrides removeKey: species -> selector.
	methodCache removeKey: selector -> species ifAbsent: nil.
	symbolCache
		at: selector
		ifPresent: [ :messages | messages do: #flushCache ]
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
sexpressionsOf: method
	| expressions astcodes decoder |
	expressions := self methodOptimizedCode: method.
	expressions == nilObj ifFalse: [ ^expressions ].
	astcodes := self methodAstcodes: method.
	decoder := AstcodeDecoder new
		stream: astcodes bytes readStream;
		method: method; builder: self.
	expressions := decoder decodeMethod.
	self methodOptimizedCode: method put: expressions.
	^expressions
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
smallIntegerBehavior
	^self speciesInstanceBehavior: smallIntegerClass
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
smallIntegerClass: anLMRObject
	smallIntegerClass := anLMRObject
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
speciesFor: anLMRObject
	| behavior |
	behavior := self behaviorOf: anLMRObject.
	^self behaviorClass: behavior.


! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
speciesFormatIndex: anInteger
	speciesFormatIndex := anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
speciesInstanceBehavior: anLMRObject
	^anLMRObject slotAt: speciesInstanceBehaviorIndex
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
speciesInstanceBehaviorIndex: anInteger
	speciesInstanceBehaviorIndex := anInteger 
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
speciesInstanceClass: anLMRObject
	| metaclass |
	metaclass := self isMetaclass: anLMRObject.
	^ metaclass
		ifTrue: [ self metaclassInstanceClass: anLMRObject ]
		ifFalse: [ anLMRObject ]
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
speciesInstanceSize: anLMRObject
	^ (anLMRObject slotAt: speciesFormatIndex) value bitAnd: 16r7F.
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
speciesIsBytes: anLMRObject
	^ (anLMRObject slotAt: speciesFormatIndex) value noMask: 16r4000
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
speciesIvarsIndex: anInteger
	speciesIvarsIndex := anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
speciesLocalName: species
	| name class |
	(self isMetaclass: species) ifFalse: [
		name :=self className: species.
		^name asLocalString].
	
	class := self metaclassInstanceClass: species. 
	name := self className: class.
	^ name asLocalString, ' class'
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
speciesModule: species
	| class |
	(self isMetaclass: species)
		ifFalse: [ ^ self classModule: species ].
	class := self metaclassInstanceClass: species.
	^ self classModule: class
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
speciesNamespaces: anLMRObject
	| class |
	class := self speciesInstanceClass: anLMRObject.
	^class slotAt: classNamespacesIndex
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
speciesSuperclass: anLMRObject
	^ anLMRObject slotAt: speciesSuperclassIndex
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
speciesSuperclassIndex: anInteger
	speciesSuperclassIndex := anInteger
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
staticBindingForIvar: aSymbol in: receiver
	| class all slots bytes |
	
	class := self speciesFor: receiver.
	all := Array new: 0.
	[ class !!= nilObj ]
		whileTrue: [ slots := self classIvars: class.
			slots == nilObj
				ifFalse: [ all := slots slots , all ].
			class := self speciesSuperclass: class ].
	bytes := aSymbol bytes.
	all withIndexDo: [ :ivar :index | ivar bytes = bytes ifTrue: [ ^ index ] ].
	^0
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
stringClass: anLMRObject
	stringClass := anLMRObject
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
superBehaviorOf: class
	| superclass |
	superclass := self speciesSuperclass: class.
	^ self speciesInstanceBehavior: superclass
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
symbolFromLocal: aSymbol
	| bytes table symbol |
	knownSymbols at: aSymbol ifPresent: [ :s | ^s ].
	bytes := aSymbol asByteArray, #[0].
	table := symbolTable slotAt: 2.
	2 to: table size do: [:i | symbol := table slotAt: i. symbol == nilObj ifFalse: [symbol bytes = bytes ifTrue: [ ^symbol ] ] ].
	self error: 'symbol not found'
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
symbolTable: anLMRObject
	symbolTable:= anLMRObject
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
wordSize
	^wordSize
! !

!PowertalkLMR methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:22:39'!
wordSize: anInteger
	wordSize := anInteger.
	maxSMI := (1 bitShift: wordSize * 8 - 2) - 1.
	minSMI := maxSMI negated - 1
! !

!PowertalkLMR methodsFor: 'validating' stamp: 'KenD 9/30/2022 12:22:39'!
nativizeForLMR
	| script |
	script := 'nativizeForLMR
	lmr := Kernel loadModule: ''Nativization/LMR''. 
	lmr nativizeLoadedModules'.
	self
		compile: script in: #UndefinedObject;
		sendLocal: #nativizeForLMR to: nilObj
! !

!PowertalkLMR methodsFor: 'validating' stamp: 'KenD 9/30/2022 12:22:39'!
readKernel
	| script |
	script := 'readKernel
	| reader |
	reader := Kernel loadModule: ''ImageSegment/Reader''. 
	segment := reader read: ''build/Kernel.ims''.
	^segment'.
	self
		compile: script in: #UndefinedObject;
		sendLocal: #readKernel to: nilObj
! !

!PowertalkLMR methodsFor: 'validating' stamp: 'KenD 9/30/2022 12:22:39'!
writeKernelAt: anInteger
	| script |
	script := 'writeKernel
	| writer |
	writer := Kernel loadModule: ''ImageSegment/Writer''. 
	writer write: Kernel at: ' , anInteger asString
		, ' to: ''build/Kernel.ims'''.
	self
		compile: script in: #UndefinedObject;
		sendLocal: #writeKernel to: nilObj
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
assign: aCollection
	| op |
	op := SOpAssign new assignees: aCollection.
	operations add: op

! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
branchIf: aBoolean
	| class op |
	class := aBoolean
		ifTrue: [ SOpJumpTrue ]
		ifFalse: [ SOpJumpFalse ].
		op := class new.
	operations add: op.
	^op
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
branchTargetOf: branch
	branch target: self currentPC
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
currentPC
	^ operations size
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
dispatch: message
	| op count |
	op := SOpDispatchMessage new message: message.
	operations add: op.
	dropsArguments ifTrue: [ ^self ].
	
	count := message arguments size.
	count > 0 ifTrue: [ count := count + 1 ].
	stackTop := stackTop - count 
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
dropCascadeMessageArgs: argsize
	(argsize = 0 orNot: [ dropsArguments ])
		ifTrue: [ ^ self ].
	self dropToS: argsize
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
dropMessageArgs: argsize
	(argsize = 0 orNot: [ dropsArguments ])
		ifTrue: [ ^ self ].
	self dropToS: argsize + 1
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
dropToS
	^self dropToS: 1
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
dropToS: anInteger
	| op |
	op := SOpDropToS new count: anInteger.
	operations add: op.
	stackTop := stackTop - anInteger
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
dropsArguments
	dropsArguments := true
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
initialize
	dropsArguments := false
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
inline: anSMessage binaryWhile: aBoolean
	"TODO: cleanup block locals to nil after each cycle"

	| start end |
	start := self currentPC.
	self visitStatements: anSMessage receiver statements.
	end := self branchIf: aBoolean not.
	self
		visitStatements: anSMessage arguments first statements;
		jumpTo: start;
		branchTargetOf: end
		
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
inline: anSMessage if: aBoolean
	| branch end |
	anSMessage receiver acceptVisitor: self.
	branch := self branchIf: aBoolean not.
	end := self
		visitStatements: anSMessage arguments first statements;
		jump.
	self
		branchTargetOf: branch;
		loadRwithNil;
		branchTargetOf: end 
		
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
inline: anSMessage ifNil: aBoolean
	| nilObj message branch end arg index |
	anSMessage receiver acceptVisitor: self.
	arg := anSMessage arguments first.
	(arg isBlock and: [ arg inlinedArgs size = 1]) ifTrue: [ 
		index := arg inlinedArgs first.
		self storeRintoFrameAt: index
		 ].
	self pushR.
	nilObj := SLiteral new value: runtime nil.
	message := SMessage new
		receiver: (SOpLoadRfromStack new index: 0);
		arguments: {nilObj};
		selector: equalsEquals.
	self visitMessage: message.
	branch := self branchIf: aBoolean not.

	arg isBlock
		ifTrue: [ self visitStatements: arg statements ]
		ifFalse: [ arg acceptVisitor: self ].
	end := self
		dropToS;
		jump.
	self
		branchTargetOf: branch;
		popR;
		branchTargetOf: end
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
inline: anSMessage ifNilIfNotNil: aBoolean
	| arguments nilObj message branch end arg index |
	anSMessage receiver acceptVisitor: self.
	arguments := anSMessage arguments.
	arg := aBoolean ifTrue: [arguments second] ifFalse: [arguments first].
	(arg isBlock and: [ arg inlinedArgs size = 1 ])
		ifTrue: [ index := arg inlinedArgs first.
			self storeRintoFrameAt: index ].
	self pushR.
	nilObj := SLiteral new value: runtime nil.
	message := SMessage new
		receiver: (SOpLoadRfromStack new index: 0);
		arguments: {nilObj};
		selector: equalsEquals.
	self visitMessage: message.
	branch := self branchIf: aBoolean not.
	end := self
		visitStatements: arguments first statements;
		jump.
	self
		branchTargetOf: branch;
		visitStatements: arguments second statements;
		branchTargetOf: end;
		dropToS
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
inline: anSMessage ifTrueIfFalse: aBoolean
	| branch end |
	anSMessage receiver acceptVisitor: self.
	branch := self branchIf: aBoolean not.
	end := self
		visitStatements: anSMessage arguments first statements;
		jump.
	self
		branchTargetOf: branch;
		visitStatements: anSMessage arguments second statements;
		branchTargetOf: end
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
inline: anSMessage unitaryWhile: aBoolean
	"TODO: cleanup block locals to nil after each cycle"

	| start branch |
	start := self currentPC.
	self visitStatements: anSMessage receiver statements.
	branch :=  self branchIf: aBoolean.
	branch target: start.

! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
inlineAnd: anSMessage
	| branches |
	anSMessage receiver acceptVisitor: self.
	branches := OrderedCollection new.
	anSMessage arguments
		do: [ :block | 
			branches add: (self branchIf: false).
	
	self
		visitStatements: block statements].
	branches do: [ :branch | self branchTargetOf: branch ]
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
inlineAndNot: anSMessage
	| branch message |
	anSMessage receiver acceptVisitor: self.
	branch := self branchIf: false.
	message := SMessage new
		selector: not;
		arguments: #().
	self
		visitStatements: anSMessage arguments first statements;
		dispatch: message;
		branchTargetOf: branch
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
inlineOr: anSMessage
	|  branches |
	anSMessage receiver acceptVisitor: self.
	branches := OrderedCollection new.
	 anSMessage arguments do: [ :block | 
		branches add: (self branchIf: true).
		self visitStatements: block statements].
	branches do: [:branch | self branchTargetOf: branch]
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
inlineOrNot: anSMessage
	| branch message |
	anSMessage receiver acceptVisitor: self.
		branch := self branchIf: true.
	message := SMessage new
		selector: not;
		arguments: #().
	self
		visitStatements: anSMessage arguments first statements;
		dispatch: message;
		branchTargetOf: branch
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
inlineRepeat: anSMessage
	"TODO: cleanup block locals to nil after each cycle"

	| start |
	start := self currentPC.
	self
		visitStatements: anSMessage receiver statements;
		jumpTo: start
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
inlineTimesRepeat: anSMessage
	"TODO: cleanup block locals to nil after each cycle"

	| current limit start end compare increment |
	operations add: one.
	self pushR.
	current := SOpLoadRfromFrame new index: stackTop.
	anSMessage receiver acceptVisitor: self.
	self pushR.
	limit := SOpLoadRfromFrame new index: stackTop.
	start := self currentPC.
	compare := SMessage new
		receiver: current;
		selector: greaterThan;
		arguments: {limit}.
	self visitMessage: compare.
	end := self branchIf: true.
	self visitStatements: anSMessage arguments first statements.
	increment := SMessage new
		receiver: current;
		selector: plus;
		arguments: {one}.
	self
		visitMessage: increment;
		storeRintoFrameAt: current index;
		jumpTo: start;
		branchTargetOf: end;
		dropToS: 2
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
inlineToDo: anSMessage
	"TODO: cleanup block locals to nil after each cycle"

	| index current limit start end compare increment |
	anSMessage receiver acceptVisitor: self.
	index := anSMessage arguments second inlinedArgs first.
	current := SOpLoadRfromFrame new index: index.
	self storeRintoFrameAt: index.
	anSMessage arguments first acceptVisitor: self.
	self pushR.
	limit := SOpLoadRfromFrame new index: stackTop.
	start := self currentPC.
	compare := SMessage new
		receiver: current;
		selector: greaterThan;
		arguments: {limit}.
	self visitMessage: compare.
	end := self branchIf: true.
	self visitStatements: anSMessage arguments second statements.
	increment := SMessage new
		receiver: current;
		selector: plus;
		arguments: {one}.
	self
		visitMessage: increment;
		storeRintoFrameAt: index;
		jumpTo: start;
		branchTargetOf: end;
		dropToS: 1
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
jump
	| op |
	op := SOpJump new.
	operations add: op.
	^op
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
jumpTo: anInteger
| op |
op := SOpJump new target: anInteger.
	operations add: op
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
loadRfromStack: anInteger
	| op |
	op := SOpLoadRfromStack new index: anInteger.
	operations add: op

! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
loadRwithNil
	operations add: SOpLoadRwithNil new
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
loadRwithSelf
	operations add: SOpLoadRwithSelf new
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
operations
^operations
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
popR
	operations add: SOpPopR new.
	stackTop := stackTop - 1
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
primitive: aClosure
	operations add: (SOpPrimitive new block: aClosure)
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
pushR
	operations add: SOpPushR new.
	stackTop := stackTop + 1
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
reset
	operations := OrderedCollection new.
	inBlock := false.

! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
return
	operations add: SOpReturn new
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
return: isLocal
	|  class |
	class := (isLocal andNot: [ inBlock ])
		ifTrue: [ SOpReturn ]
		ifFalse: [ SOpNonLocalReturn ].
	operations add: class new
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
runtime: aPowertalkRuntime
	| literal |
	runtime := aPowertalkRuntime.
	literal := runtime newInteger: 1.
	one := SLiteral new value: literal.
	plus := runtime symbolFromLocal: #+.
	greaterThan := runtime symbolFromLocal: #>.
	equalsEquals := runtime symbolFromLocal: #==.
	not := runtime symbolFromLocal: #not.
	ifTrue := runtime symbolFromLocal: #ifTrue:.
	ifFalse := runtime symbolFromLocal: #ifFalse:.
	ifTrueIfFalse := runtime symbolFromLocal: #ifTrue:ifFalse:.
	ifFalseIfTrue := runtime symbolFromLocal: #ifFalse:ifTrue:.
	ifNil := runtime symbolFromLocal: #ifNil:.
	ifNotNil := runtime symbolFromLocal: #ifNotNil:.
	ifNilIfNotNil := runtime symbolFromLocal: #ifNil:ifNotNil:.
	ifNotNilIfNil := runtime symbolFromLocal: #ifNotNil:ifNil:.
	repeat := runtime symbolFromLocal: #repeat.
	whileTrue := runtime symbolFromLocal: #whileTrue.
	whileFalse := runtime symbolFromLocal: #whileFalse.
	whileTrue_ := runtime symbolFromLocal: #whileTrue:.
	whileFalse_ := runtime symbolFromLocal: #whileFalse:.
	timesRepeat := runtime symbolFromLocal: #timesRepeat:.
	toDo := runtime symbolFromLocal: #to:do:.
	toByDo := runtime symbolFromLocal: #to:by:do:.
	andNot := runtime symbolFromLocal: #andNot:.
	orNot := runtime symbolFromLocal: #orNot:
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
storeRintoFrameAt: anInteger
	| op |
	op := SOpStoreRintoFrame new index: anInteger.
	operations add: op
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
visitAssignment: anSAssignment
	anSAssignment expression acceptVisitor: self.
	self
		assign: anSAssignment assignees
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
visitBlock: anSBlock
	| prevInBlock prevOperations statements |
	operations add: anSBlock.
	prevInBlock := inBlock.
	prevOperations := operations.
	inBlock := true.
	operations := OrderedCollection new.
	statements := anSBlock statements.
	statements do: [ :node | node acceptVisitor: self ].
	statements isEmpty
		ifTrue: [ self loadRwithNil ]
		ifFalse: [ statements last isReturn
				ifFalse: [ self return ] ].
	anSBlock isInlined ifFalse: [ 
	runtime
		blockOptimizedCode: anSBlock compiledCode
		put: operations asArray].
	operations := prevOperations.
	inBlock := prevInBlock
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
visitCascade: anSCascade
	| args argsize |
	anSCascade receiver acceptVisitor: self.
	self pushR.
	anSCascade messages
		do: [ :msg | 
			args := msg arguments.
			argsize := args size.
			args
				do: [ :arg | 
					arg acceptVisitor: self.
					self pushR ].
			self
				loadRfromStack: argsize;
				dispatch: msg;
				dropCascadeMessageArgs: argsize ].
	self dropToS
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
visitIdentifier: anSIdentifier
	operations add: anSIdentifier
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 11/8/2022 14:50:20'!
visitInlinedMessage: anSMessage
	| selector |
	selector := anSMessage selector.
	selector == ifTrue
		ifTrue: [ ^ self inline: anSMessage if: true ].
	selector == ifFalse
		ifTrue: [ ^ self inline: anSMessage if: false ].
	selector == ifNil
		ifTrue: [ ^ self inline: anSMessage ifNil: true ].
	selector == ifNotNil
		ifTrue: [ ^ self inline: anSMessage ifNil: false ].
	selector == ifNilIfNotNil
		ifTrue: [ ^ self inline: anSMessage ifNilIfNotNil: true ].
	selector == ifNotNilIfNil
		ifTrue: [ ^ self inline: anSMessage ifNilIfNotNil: false ].
	selector == ifTrueIfFalse
		ifTrue: [ ^ self inline: anSMessage ifTrueIfFalse: true ].
	selector == ifFalseIfTrue
		ifTrue: [ ^ self inline: anSMessage ifTrueIfFalse: false ].
	selector == whileTrue
		ifTrue: [ ^ self inline: anSMessage unitaryWhile: true ].
	selector == whileFalse
		ifTrue: [ ^ self inline: anSMessage unitaryWhile: false ].
	selector == whileTrue_
		ifTrue: [ ^ self inline: anSMessage binaryWhile: true ].
	selector == whileFalse_
		ifTrue: [ ^ self inline: anSMessage binaryWhile: false ].
	selector == repeat
		ifTrue: [ ^ self inlineRepeat: anSMessage ].
	selector == toDo
		ifTrue: [ ^ self inlineToDo: anSMessage ].
	selector == toByDo
		ifTrue: [ ^ self inlineToByDo: anSMessage ].
	selector == timesRepeat
		ifTrue: [ ^ self inlineTimesRepeat: anSMessage ].
	selector == andNot
		ifTrue: [ ^ self inlineAndNot: anSMessage ].
	selector == orNot
		ifTrue: [ ^ self inlineOrNot: anSMessage ].
	selector := runtime localSymbolFrom: selector.
	(selector beginsWith: #or:)
		ifTrue: [ ^ self inlineOr: anSMessage ].
	(selector beginsWith: #and:)
		ifTrue: [ ^ self inlineAnd: anSMessage ].

	self assert: false
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
visitLiteral: anSLiteral
	operations add: anSLiteral
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
visitMessage: anSMessage
	| args argsize |
	anSMessage isInlined
		ifTrue: [ ^ self visitInlinedMessage: anSMessage ].
	anSMessage receiver acceptVisitor: self.
	args := anSMessage arguments.
	argsize := args size.
	argsize > 0
		ifTrue: [ self pushR ].
	args
		do: [ :arg | 
			arg acceptVisitor: self.
			self pushR ].
	argsize > 0
		ifTrue: [ self loadRfromStack: argsize ].
	self dispatch: anSMessage; dropMessageArgs: argsize.
	
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
visitMethod: anSMethod
	| primitive statements symbol |
	self reset.
	primitive := anSMethod pragma.
	primitive
		ifNotNil: [ symbol := runtime localSymbolFrom: anSMethod primitive.
			primitive := primitives at: symbol.
			^ self
				primitive: primitive;
				return ].
	stackTop := runtime methodTempCount: anSMethod compiledCode.
	statements := anSMethod statements.
	statements do: [ :node | node acceptVisitor: self ].
	(statements isEmpty orNot: [ statements last isReturn ])
		ifTrue: [ self
				loadRwithSelf;
				return ]
! !

!SExpressionLinearizer methodsFor: 'initialization' stamp: 'KenD 9/29/2022 12:33:20'!
visitReturn: anSReturn
	anSReturn expression acceptVisitor: self.
	self
		return: anSReturn local
! !

!SExpressionLinearizer methodsFor: 'visiting' stamp: 'KenD 9/29/2022 12:33:20'!
visitOpLoadRfromFrame: anSOpLoadRfromFrame
	operations add: anSOpLoadRfromFrame
! !

!SExpressionLinearizer methodsFor: 'visiting' stamp: 'KenD 9/29/2022 12:33:20'!
visitOpLoadRfromStack: anSOpLoadRfromStack
self loadRfromStack: anSOpLoadRfromStack index
! !

!SExpressionLinearizer methodsFor: 'private' stamp: 'KenD 9/29/2022 12:33:20'!
visitStatements: aCollection
	aCollection do: [:sexpression | sexpression acceptVisitor: self]
	
! !

!SExpressionLinearizer methodsFor: 'accessing' stamp: 'KenD 9/29/2022 12:33:20'!
primitives: aCollection
	primitives := aCollection
! !

!LMRObject methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:15:10'!
at: index
	"Return indexed value at given index, starting with 1. This CANNOT be 
	 used for accessing named slots (aka, instance variables), to access 
	 them use #instVarAt:"
	
	self subclassResponsibility  
! !

!LMRObject methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:15:10'!
at: index put: value
	"Set indexed value at given `index` to `value`. This CANNOT be used for 
	 setting named slots (aka, instance variables), to access them use 
	 #instVarAt:put:"
	
	self subclassResponsibility  
! !

!LMRObject methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:15:10'!
isBytes
	^ false
! !

!LMRObject methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:15:10'!
isImmediate
	^false
! !

!LMRObject methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:15:10'!
pointersSize
	^0
! !

!LMRHeapObject methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:15:43'!
behavior
	^header behavior
! !

!LMRHeapObject methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:15:43'!
behavior: anLMRHeapObject
	header behavior: anLMRHeapObject
! !

!LMRHeapObject methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:15:43'!
header: anInteger
	header := anInteger
! !

!LMRHeapObject methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:15:43'!
headerFlags
	^header flags
! !

!LMRHeapObject methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:15:43'!
headerHash
	^ header hash
! !

!LMRHeapObject methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:15:43'!
headerHash: anInteger
	header hash: anInteger
! !

!LMRHeapObject methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:15:43'!
isSmall
	^ header isSmall
! !

!LMRHeapObject methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:15:43'!
localClassName
	^ self behavior localClassName
! !

!LMRHeapObject methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:15:43'!
printOn: aStream
	self behavior printInstance: self on: aStream
! !

!LMRHeapObject methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:15:43'!
size
	^header size
! !

!LMRByteObject methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:16:12'!
asLocalString
	^ bytes allButLast asString
! !

!LMRByteObject methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:16:12'!
at: index put: anLMRObject
	| value |
	value := anLMRObject value.
	bytes at: index put: value.
	^ anLMRObject
! !

!LMRByteObject methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:16:12'!
bytes
	^bytes
! !

!LMRByteObject methodsFor: 'accessing' stamp: 'KenD 11/8/2022 14:50:27'!
bytes: aByteArray
	self assert: aByteArray size = header size.
	self assert: aByteArray class == ByteArray.
	bytes := aByteArray
! !

!LMRByteObject methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:16:12'!
header: anLMRObjectHeader
	super header: anLMRObjectHeader.
	bytes := ByteArray new: header size
! !

!LMRByteObject methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:16:12'!
isBytes
	^true
! !

!LMRExecutableCode methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:15:58'!
code
	^code
! !

!LMRExecutableCode methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:15:58'!
code: anObject
	code := anObject
! !

!LMRSlotObject methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:16:36'!
at: index
	^ slots at: header behavior classInstSize + index
! !

!LMRSlotObject methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:16:36'!
at: index put: anLMRObject
	^ slots at: header behavior classInstSize + index put: anLMRObject
! !

!LMRSlotObject methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:16:36'!
basicAt: index put: anLMRObject
	^ slots at: index put: anLMRObject
! !

!LMRSlotObject methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:16:36'!
header: anLMRObjectHeader
	super header: anLMRObjectHeader.
	slots := Array new: header size
! !

!LMRSlotObject methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:16:36'!
nilSlots: nilObj
	slots atAllPut: nilObj
! !

!LMRSlotObject methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:16:36'!
pointersSize
	^ header size
! !

!LMRSlotObject methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:16:36'!
size
	^header size
! !

!LMRSlotObject methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:16:36'!
slotAt: index
	^ slots at: index
! !

!LMRSlotObject methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:16:36'!
slotAt: index put: anLMRObject
	^ slots at: index put: anLMRObject
! !

!LMRSlotObject methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:16:36'!
slots
	^ slots
! !

!LMRBehaviorObject methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:17:14'!
classInstSize
	| class |
	class := runtime behaviorClass: self.
	^runtime speciesInstanceSize: class
! !

!LMRBehaviorObject methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:17:14'!
localClassName
	| class |
	class := runtime behaviorClass: self.
	^ runtime speciesLocalName: class
! !

!LMRBehaviorObject methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:17:14'!
printInstance: anLMRObject on: aStream
	runtime print: anLMRObject on: aStream
! !

!LMRBehaviorObject methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:17:14'!
printOn: aStream
	runtime printBehavior: self on: aStream
! !

!LMRBehaviorObject methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:17:14'!
runtime: aPowertalkLMR
	runtime := aPowertalkLMR
! !

!LMRSmallInteger methodsFor: 'comparing' stamp: 'KenD 9/30/2022 12:16:54'!
= anObject
	anObject class == self class
		ifFalse: [ ^ false ].
	^ value = anObject value
! !

!LMRSmallInteger methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:16:54'!
hash
	^value hash
! !

!LMRSmallInteger methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:16:54'!
isImmediate
	^true
! !

!LMRSmallInteger methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:16:54'!
printOn: aStream
	aStream
		nextPut: $<;
		print: value;
		nextPut: $>
! !

!LMRSmallInteger methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:16:54'!
value
	^value
! !

!LMRSmallInteger methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:16:54'!
value: anInteger
	value := anInteger
! !

!LMRObjectHeader methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:15:25'!
behavior
	^behavior
! !

!LMRObjectHeader methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:15:25'!
behavior: anLMRHeapObject
	behavior := anLMRHeapObject
! !

!LMRObjectHeader methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:15:25'!
bytes: bytes arrayed: arrayed named: named
	| b a n |
	b := bytes
		ifTrue: [ 1 ]
		ifFalse: [ 0 ].
	a := arrayed
		ifTrue: [ 2 ]
		ifFalse: [ 0 ].
	n := named	ifTrue: [ 4 ]
		ifFalse: [ 0 ].
	flags := b | a | n 
! !

!LMRObjectHeader methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:15:25'!
flags
	^flags
! !

!LMRObjectHeader methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:15:25'!
hash
	^hash
! !

!LMRObjectHeader methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:15:25'!
hash: anInteger
	hash := anInteger
! !

!LMRObjectHeader methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:15:25'!
isSmall
	^ self size < 256
! !

!LMRObjectHeader methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:15:25'!
size
	^size 
! !

!LMRObjectHeader methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:15:25'!
size: anInteger
	size := anInteger.
	self isSmall ifTrue: [ flags := flags | 16r80]
! !

!ObjectFormat methodsFor: 'accessing' stamp: 'KenD 2/27/2021 09:24:13'!
bytesOf: oid 
	| size |
	size := self sizeOf: oid.
	^self bytesOf: oid count: size! !

!ObjectFormat methodsFor: 'accessing' stamp: 'KenD 2/27/2021 09:24:30'!
bytesOf: oid count: size 

	^self subclassResponsibility! !

!ObjectFormat methodsFor: 'accessing' stamp: 'KenD 2/27/2021 09:24:42'!
runtime 

	^ runtime! !

!ObjectFormat methodsFor: 'accessing' stamp: 'KenD 2/27/2021 09:24:50'!
runtime: aRuntime 

	runtime := aRuntime! !

!ObjectFormat methodsFor: 'accessing' stamp: 'KenD 2/27/2021 09:24:59'!
sizeOf: oid 

	^self subclassResponsibility! !

!ObjectFormat methodsFor: 'accessing' stamp: 'KenD 2/27/2021 09:25:08'!
storage 

	^ storage! !

!ObjectFormat methodsFor: 'accessing' stamp: 'KenD 2/27/2021 09:25:17'!
storage: anObject 

	storage := anObject! !

!ObjectFormat methodsFor: 'accessing' stamp: 'KenD 2/27/2021 09:25:31'!
stringOf: oid 
	| size |
	size := self sizeOf: oid.
	^self stringOf: oid count: size - 1! !

!ObjectFormat methodsFor: 'accessing' stamp: 'KenD 2/27/2021 09:25:42'!
stringOf: oid count: size 

	^self subclassResponsibility! !

!ObjectFormat methodsFor: 'accessing' stamp: 'KenD 2/27/2021 09:25:55'!
symbolOf: oid 
	| size |
	size := self sizeOf: oid.
	^self stringOf: oid count: size! !

!ObjectFormat class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 09:23:44'!
on: storage 

	^self new storage: storage! !

!DmrObjectFormat methodsFor: 'sizes' stamp: 'KenD 9/30/2022 12:12:28'!
bodySizeInBytesOf: oid
	| total |
	total := self sizeOf: oid.
	^ (self isBytes: oid)
		ifTrue: [ total + wordSize - 1 bitAnd: 0 - wordSize ]
		ifFalse: [ total * wordSize ]
! !

!DmrObjectFormat methodsFor: 'sizes' stamp: 'KenD 9/30/2022 12:12:28'!
bytesOf: oid count: size
	^ storage bytesAt: oid sized: size
! !

!DmrObjectFormat methodsFor: 'sizes' stamp: 'KenD 9/30/2022 12:12:28'!
headerSizeInBytesOf: oid
	^(self isSmall: oid) ifTrue: [8] ifFalse: [16]

! !

!DmrObjectFormat methodsFor: 'sizes' stamp: 'KenD 9/30/2022 12:12:28'!
labelFor: oid
	^oid hex
! !

!DmrObjectFormat methodsFor: 'sizes' stamp: 'KenD 9/30/2022 12:12:28'!
largeSizeOf: oid
	^ storage uint32of: oid atOffset: LargeSizeOffset
! !

!DmrObjectFormat methodsFor: 'sizes' stamp: 'KenD 9/30/2022 12:12:28'!
print: oid on: aStream
	| size |
	aStream
		nextPut: $@;
		nextPutAll: oid hex;
		nextPutAll: '[flags: 0x';
		nextPutAll: (self flagsOf: oid) printStringHex.
	self printFlagsOf: oid on: aStream.
	size := self sizeOf: oid.
	aStream
		nextPutAll: ', size: 0x';
		nextPutAll: size printStringHex;
		nextPut: $].


! !

!DmrObjectFormat methodsFor: 'sizes' stamp: 'KenD 9/30/2022 12:12:28'!
printFlagsOf: oid on: aStream
	| char |
	aStream nextPut: $(.
	char := (self isSmall: oid)
		ifTrue: [ $S ]
		ifFalse: [ $L ].
	aStream
		nextPut: char;
		space.
	char := (self isBytes: oid)
		ifTrue: [ $B ]
		ifFalse: [ $P ].
	aStream
		nextPut: char;
		space.
	char := (self isArrayed: oid)
		ifTrue: [ $A ]
		ifFalse: [ $F ].
	aStream
		nextPut: char;
		nextPut: $)
! !

!DmrObjectFormat methodsFor: 'sizes' stamp: 'KenD 9/30/2022 12:12:28'!
sizeInBytesOf: oid
	^ (self headerSizeInBytesOf: oid) + (self bodySizeInBytesOf: oid)
! !

!DmrObjectFormat methodsFor: 'sizes' stamp: 'KenD 9/30/2022 12:12:28'!
sizeOf: oid
	^ (self isSmall: oid)
		ifTrue: [ self smallSizeOf: oid ]
		ifFalse: [ self largeSizeOf: oid ]
! !

!DmrObjectFormat methodsFor: 'sizes' stamp: 'KenD 9/30/2022 12:12:28'!
smallSizeOf: oid
	^ storage uint8of: oid atOffset: SizeOffset
! !

!DmrObjectFormat methodsFor: 'sizes' stamp: 'KenD 9/30/2022 12:12:28'!
stringOf: oid count: anInteger
	^storage stringAt: oid sized: anInteger
! !

!DmrObjectFormat methodsFor: 'services' stamp: 'KenD 9/30/2022 12:12:28'!
behaviorOf: oid
	^ storage uint32of: oid atOffset: BehaviorOffset
! !

!DmrObjectFormat methodsFor: 'services' stamp: 'KenD 9/30/2022 12:12:28'!
classOf: anObjectHandle
	| oid class behavior handle |
	oid := anObjectHandle oid.
	oid odd ifTrue: [ class := storage classNamed: 'SmallInteger'.
			^ (anObjectHandle runtime handleOn: class) mirror asClassMirror ].
	behavior := self behaviorOf: oid.
	handle := anObjectHandle runtime handleOn: behavior.
	^ handle mirror asBehaviorMirror instanceClass
! !

!DmrObjectFormat methodsFor: 'services' stamp: 'KenD 9/30/2022 12:12:28'!
flagsOf: anObject
	^ storage uint8of: anObject atOffset: FlagsOffset
! !

!DmrObjectFormat methodsFor: 'services' stamp: 'KenD 9/30/2022 12:12:28'!
initialize
	wordSize := 8
! !

!DmrObjectFormat methodsFor: 'services' stamp: 'KenD 11/8/2022 14:50:34'!
integerOf: oid
	| shifted complement |
	self assert: oid odd.
	shifted := oid bitShift: -1. 
	complement := 1 bitShift: storage wordSize * 8 - 1.
	^ oid >= complement
		ifTrue: [ shifted - complement ]
		ifFalse: [ shifted ]
! !

!DmrObjectFormat methodsFor: 'services' stamp: 'KenD 9/30/2022 12:12:28'!
isArrayed: anObject
	^ (self flagsOf: anObject) anyMask: IsArrayed
! !

!DmrObjectFormat methodsFor: 'services' stamp: 'KenD 9/30/2022 12:12:28'!
isBytes: anObject
	^ ((self flagsOf: anObject) anyMask: IsBytes)
! !

!DmrObjectFormat methodsFor: 'services' stamp: 'KenD 9/30/2022 12:12:28'!
isInteger: oid
	^oid odd
! !

!DmrObjectFormat methodsFor: 'services' stamp: 'KenD 9/30/2022 12:12:28'!
isLarge: anObject
	^(self isSmall: anObject) not
! !

!DmrObjectFormat methodsFor: 'services' stamp: 'KenD 9/30/2022 12:12:28'!
isNamed: anObject
	^ (self flagsOf: anObject) anyMask: IsNamed
! !

!DmrObjectFormat methodsFor: 'services' stamp: 'KenD 9/30/2022 12:12:28'!
isSmall: oid
	^ (self flagsOf: oid) anyMask: IsSmall
! !

!DmrObjectFormat methodsFor: 'services' stamp: 'KenD 9/30/2022 12:12:28'!
nextObjectHandleOf: anObjectHandle
	| addr size |
	addr := anObjectHandle oid.
	size := self sizeInBytesOf: addr.
	^anObjectHandle runtime handleOn: addr + size.
	
! !

!DmrObjectFormat methodsFor: 'services' stamp: 'KenD 9/30/2022 12:12:28'!
slotOf: base at: index
	^ storage uint64atOffset: base + (8 * (index - 1))
! !

!DmrObjectFormat class methodsFor: 'instance creation' stamp: 'KenD 9/30/2022 12:12:28'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!ObjectShape methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:22:45'!
indexOf: ivarName 
	
	^fields at: ivarName asString! !

!ObjectShape methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:22:57'!
indexOf: ivarName be: i 

	fields at: ivarName put: i! !

!ObjectShape methodsFor: 'accessing' stamp: 'KenD 2/22/2021 13:24:03'!
name 

	^name! !

!ObjectShape methodsFor: 'initialization' stamp: 'KenD 2/22/2021 13:23:18'!
initialize 

	fields := Dictionary new! !

!ObjectShape methodsFor: 'initialization' stamp: 'KenD 2/22/2021 13:23:52'!
loadFrom: aClassDefinition 

	name := aClassDefinition name asSymbol.
	aClassDefinition allInstVarNames
		withIndexDo: [:ivarName :i | self indexOf: ivarName be: i]! !

!ObjectShape methodsFor: 'printing' stamp: 'KenD 2/22/2021 13:24:29'!
printOn: aStream 

	aStream nextPutAll: 'Shape of '; nextPutAll: name! !

!ObjectShape class methodsFor: 'instance creation' stamp: 'KenD 2/22/2021 13:21:32'!
new 

	^self basicNew initialize! !

!SExpressionInterpreter methodsFor: 'visiting' stamp: 'KenD 2/27/2021 16:10:44'!
isitReturn: anSReturn 

	returnValue := anSReturn expression acceptVisitor: self.
	returned := true.
	^returnValue! !

!SExpressionInterpreter methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:07:19'!
subjectOnInteger: anInteger in: aRuntime
	^ (aRuntime integerHandle: anInteger) maneuverer
! !

!SExpressionInterpreter methodsFor: 'visiting' stamp: 'KenD 2/27/2021 16:08:17'!
visitArgument: anSIdentifier 

	^arguments at: anSIdentifier binding index! !

!SExpressionInterpreter methodsFor: 'visiting' stamp: 'KenD 2/27/2021 16:08:32'!
visitAssignment: anSAssignment 
	| result |
	result := anSAssignment expression acceptVisitor: self.
	anSAssignment assignees
		do: [ :identifier | identifier binding assign: result within: self ].
	^result! !

!SExpressionInterpreter methodsFor: 'visiting' stamp: 'KenD 2/27/2021 16:08:48'!
visitBlock: anSBlock 
	| closure handle |
	closure := anSBlock isInlined
		           ifTrue: [ SCompiledBlock new newClosure home: self ]
		           ifFalse: [ self captureClosure: anSBlock ].
	blockAstcodes at: closure block put: anSBlock.
	self halt.
	"	handle := LocalHandle on: closure within: localRuntime."
	^ handle mirage! !

!SExpressionInterpreter methodsFor: 'visiting' stamp: 'KenD 2/27/2021 16:09:24'!
visitIdentifier: anSIdentifier 

	^anSIdentifier binding valueWithin: self! !

!SExpressionInterpreter methodsFor: 'visiting' stamp: 'KenD 2/27/2021 16:09:37'!
visitMessage: anSMessage 
	| msgReceiver msgArguments selector message |
	msgReceiver := anSMessage receiver acceptVisitor: self.
	msgArguments := anSMessage arguments
		collect: [ :code | code acceptVisitor: self ].
	selector := anSMessage selector.
	message := MessageSend
		receiver: msgReceiver
		selector: selector
		arguments: msgArguments.
	 (self isSpecial: selector)
		ifTrue: [ ^self dispatchSpecial: message ].
	anSMessage receiver isSuper ifTrue: [^self dispatchSuper: message to: msgReceiver].
	^self dispatch: message to: msgReceiver! !

!SExpressionInterpreter methodsFor: 'visiting' stamp: 'KenD 2/27/2021 16:10:10'!
visitMethod: anSMethod 
	| primitive value |
	primitive := anSMethod primitive.
	primitive ifNotNil: [ ^ self visitPrimitive: primitive ].
	environment := Array new: method environmentCount.
	value := self visitScript: anSMethod.
	^returned ifTrue: [ value ] ifFalse: [ receiver ]! !

!SExpressionInterpreter methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:07:19'!
visitReturn: anSReturn
	returnValue := anSReturn expression acceptVisitor: self.
	returned := true.
	^returnValue
! !

!SExpressionInterpreter methodsFor: 'visiting' stamp: 'KenD 2/27/2021 16:10:57'!
visitScript: anSScript 
	| result |
	anSScript statements do: [:node | 
		result := node acceptVisitor: self.
		returned ifTrue: [^returnValue]
	].
	^result! !

!SExpressionInterpreter methodsFor: 'visiting' stamp: 'KenD 2/27/2021 16:11:12'!
visitTemporary: anSIdentifier 

	^temporaries at: anSIdentifier binding index! !

!SExpressionInterpreter methodsFor: 'accessing' stamp: 'KenD 2/27/2021 16:00:53'!
instVarAt: anInteger 

	^receiver _gate slotAt: anInteger! !

!SExpressionInterpreter methodsFor: 'accessing' stamp: 'KenD 2/27/2021 16:01:18'!
instVarAt: index put: aValue 

	^ receiver _gate handle slotAt: index put: aValue _gate handle oid! !

!SExpressionInterpreter methodsFor: 'accessing' stamp: 'KenD 2/27/2021 16:01:43'!
method 

	^method! !

!SExpressionInterpreter methodsFor: 'accessing' stamp: 'KenD 2/27/2021 16:02:03'!
method: aCompiledMethod 

	method := aCompiledMethod.
	temporaries := Array new: aCompiledMethod tempCount! !

!SExpressionInterpreter methodsFor: 'accessing' stamp: 'KenD 2/27/2021 16:02:25'!
mirageOnBoolean: aBoolean 
	| runtime handle |
	runtime := receiver _gate handle runtime.
	handle := aBoolean ifTrue: [runtime true] ifFalse: [runtime false].
	^ handle mirage
! !

!SExpressionInterpreter methodsFor: 'accessing' stamp: 'KenD 2/27/2021 16:02:37'!
mirageOnInteger: anInteger 
	| runtime handle |
	runtime := receiver _gate handle runtime.
	handle := runtime integerHandle: anInteger.
	^ handle mirage! !

!SExpressionInterpreter methodsFor: 'accessing' stamp: 'KenD 2/27/2021 16:02:52'!
mirageOnObject: anObject 

	anObject isSmallInteger ifTrue: [ ^ self mirageOnInteger: anObject ].
	self assert: false! !

!SExpressionInterpreter methodsFor: 'accessing' stamp: 'KenD 2/27/2021 16:03:16'!
parent 

	^parent! !

!SExpressionInterpreter methodsFor: 'accessing' stamp: 'KenD 2/27/2021 16:03:26'!
parent: anInterpreter 

	parent := anInterpreter! !

!SExpressionInterpreter methodsFor: 'accessing' stamp: 'KenD 2/27/2021 16:04:16'!
receiver 

	^receiver! !

!SExpressionInterpreter methodsFor: 'accessing' stamp: 'KenD 2/27/2021 16:04:26'!
receiver: anObject 

	receiver := anObject.
	returnValue := anObject! !

!SExpressionInterpreter methodsFor: 'accessing' stamp: 'KenD 2/27/2021 16:07:11'!
temporaryAt: index in: anInteger 
	| env |
	anInteger ifNil: [ ^ temporaries at: index ].
	env := self environmentFor: anInteger.
	^ env at: index! !

!SExpressionInterpreter methodsFor: 'accessing' stamp: 'KenD 2/27/2021 16:07:46'!
temporaryAt: index in: anInteger put: aValue 
	| env |
	anInteger ifNil: [ ^ temporaries	at:index put: aValue ].
	env := self environmentFor: anInteger.
	^ env at: index put: aValue! !

!SExpressionInterpreter methodsFor: 'evaluation' stamp: 'KenD 2/27/2021 15:56:58'!
argumentAt: index in: anInteger 
	| env |
	anInteger ifNil: [ ^arguments at: index ].
	env := self environmentFor: anInteger.
	^env at: index.! !

!SExpressionInterpreter methodsFor: 'evaluation' stamp: 'KenD 2/27/2021 15:57:13'!
arguments: aCollection 

	arguments := aCollection! !

!SExpressionInterpreter methodsFor: 'evaluation' stamp: 'KenD 2/27/2021 15:57:30'!
captureClosure: anSBlock 
	| closure s i type env arg |
	closure := anSBlock compiledCode newClosure home: self.
	s := anSBlock capturedVariables readStream.
	i := 1.
	[ s atEnd ]
		whileFalse: [ type := s next.
			type = Self
				ifTrue: [ closure at: i put: receiver ].
			type = Environment
				ifTrue: [ closure at: i put: environment].
			type = EnvironmentValue
				ifTrue: [ env := environment at: s next.
					closure at: i put: env ].
			type = LocalArgument
				ifTrue: [ arg := arguments at: s next.
					closure at: i put: arg ].
			i := i + 1 ].
	^ closure! !

!SExpressionInterpreter methodsFor: 'evaluation' stamp: 'KenD 2/27/2021 15:58:12'!
dispatch: message to: msgReceiver 

	^ self subclassResponsibility! !

!SExpressionInterpreter methodsFor: 'evaluation' stamp: 'KenD 2/27/2021 15:58:23'!
dispatchSpecial: message 

		^self subclassResponsibility ! !

!SExpressionInterpreter methodsFor: 'evaluation' stamp: 'KenD 2/27/2021 15:58:36'!
environmentFor: anInteger 
	"
	-1: inlined argument.
	 0: current env.
 	>0: index of env in current env. "

	anInteger = 0
		ifTrue: [ ^ environment ].
	anInteger = -1
		ifTrue: [ ^ temporaries ].
	^ environment at: anInteger! !

!SExpressionInterpreter methodsFor: 'evaluation' stamp: 'KenD 2/27/2021 15:58:57'!
evaluate: anSCompiledMethod 

	method := anSCompiledMethod.
	^ self visitMethod: anSCompiledMethod sexpressions! !

!SExpressionInterpreter methodsFor: 'evaluation' stamp: 'KenD 2/27/2021 15:59:13'!
evaluateClosure: aPClosure 

	^self evaluateClosure: aPClosure withArgs: {}! !

!SExpressionInterpreter methodsFor: 'evaluation' stamp: 'KenD 2/27/2021 15:59:25'!
evaluateClosure: aPClosure with: anObject 

	 ^self evaluateClosure: aPClosure withArgs: { anObject }! !

!SExpressionInterpreter methodsFor: 'evaluation' stamp: 'KenD 2/27/2021 15:59:37'!
evaluateClosure: aPClosure with: anObject with: anotherObject 

	^ self evaluateClosure: aPClosure withArgs: {anObject. anotherObject}! !

!SExpressionInterpreter methodsFor: 'evaluation' stamp: 'KenD 2/27/2021 15:59:58'!
evaluateClosure: aPClosure withArgs: anArray 
	| oldArgs oldTemps oldEnv block sblock result |
	block := aPClosure block.
	sblock := blockAstcodes at: block.
	sblock isInlined ifTrue: [
			 anArray with: sblock inlinedArgs do: [:arg :i | temporaries at: i put: arg].
			^ self visitScript: sblock ].
	oldArgs := arguments.
	oldTemps := temporaries.
	oldEnv := environment.
	arguments := anArray.
	temporaries := Array new: block tempCount.
	environment := aPClosure.
	result := self visitScript: sblock.
	environment := oldEnv.
	temporaries := oldTemps.
	arguments := oldArgs.
	^ result! !

!SExpressionInterpreter methodsFor: 'evaluation' stamp: 'KenD 2/27/2021 16:04:48'!
subjectOn: anObjectHandle 

	^ anObjectHandle maneuverer! !

!SExpressionInterpreter methodsFor: 'evaluation' stamp: 'KenD 2/27/2021 16:06:19'!
subjectOnBoolean: aBoolean in: aRuntime 
	| t f |
	^ aBoolean
		ifTrue: [ t := aRuntime true. 
			(t oid = true) ifTrue: [ t mirage] ifFalse: [ t maneuverer  ] 
		]
		ifFalse: [ f := aRuntime false. 
			(f oid = false) ifTrue: [ f mirage ] ifFalse: [ f maneuverer]
		] ! !

!SExpressionInterpreter methodsFor: 'evaluation' stamp: 'KenD 2/27/2021 16:06:42'!
subjectOnObject: anObjectHandle 

	^ anObjectHandle maneuverer! !

!SExpressionInterpreter methodsFor: 'evaluation' stamp: 'KenD 2/27/2021 16:06:54'!
subjectOnObjectOk: anObjectHandle 

	^ self maneuvererOn: anObjectHandle! !

!SExpressionInterpreter methodsFor: 'evaluation' stamp: 'KenD 2/27/2021 16:06:32'!
ubjectOnInteger: anInteger in: aRuntime 

	^ (aRuntime integerHandle: anInteger) maneuverer! !

!SExpressionInterpreter methodsFor: 'printing' stamp: 'KenD 7/7/2021 15:45:57'!
printOn: aStream 
	aStream
		nextPutAll: self class name withArticle;
		newLine;
		print: method classBinding;
		nextPutAll: '>>';
		print: method selector;
		newLine.
	aStream
		nextPutAll: 'rcvr -> ';
		print: receiver _gate handle;
		newLine.
	arguments
		withIndexDo: [ :a :i | 
			aStream
				nextPutAll: 'arg ';
				print: i;
				nextPutAll: ' -> ';
				print: a _gate;
				newLine ].
	aStream nextPutAll: method source! !

!SExpressionInterpreter methodsFor: 'initialization' stamp: 'KenD 2/27/2021 16:00:30'!
initialize 

	returned := false.
	blockAstcodes := IdentityDictionary new! !

!SExpressionInterpreter methodsFor: 'testing' stamp: 'KenD 2/27/2021 16:01:33'!
isSpecial: aSelectorMirror 

	^ self subclassResponsibility ! !

!SExpressionInterpreter class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 15:56:13'!
new 

	^self basicNew initialize! !

!SExpressionInterpreter class methodsFor: 'instance creation' stamp: 'KenD 2/27/2021 15:56:31'!
on: receiverMirror with: arguments for: method 

	^self new
		receiver: receiverMirror;
		arguments: arguments;
		method: method! !

!SmalltalkInterpreter methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:23:20'!
dispatch: message to: msgReceiver
	^ msgReceiver _gate dispatch: message from: self
! !

!SmalltalkInterpreter methodsFor: 'visiting' stamp: 'KenD 11/8/2022 14:50:46'!
dispatchSpecial: message
	| selector mirror gate |
	selector := message selector.
	gate := message receiver _gate.
	mirror := gate mirror.
	selector == #_isSmallInteger
		ifTrue: [ ^ self subjectOnBoolean: gate handle isInteger in: gate handle runtime].
	selector == #_isLarge
		ifTrue: [ ^ self subjectOnBoolean: mirror reflectsLargeObject in: gate handle runtime].
	selector == #_smallSize
		ifTrue: [ ^ self subjectOnInteger: mirror smallSize in: gate handle runtime ].
	selector == #_largeSize
		ifTrue: [ ^ self subjectOnInteger: mirror largeSize in: gate handle runtime ].
	selector == #_basicFlags
		ifTrue: [ ^ self subjectOnInteger: mirror basicFlags in: gate handle runtime ].
	selector == #_basicHash
		ifTrue: [ ^ self subjectOnInteger: 0 in: gate handle runtime ].
	selector == #_basicHash:
		ifTrue: [ ^ message receiver ].
	self assert: false
! !

!SmalltalkInterpreter methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:23:20'!
dispatchSuper: message to: msgReceiver
	^ msgReceiver _gate dispatchSuper: message from: self
! !

!SmalltalkInterpreter methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:23:20'!
falseLiteral
	^receiver _gate handle runtime false maneuverer.

! !

!SmalltalkInterpreter methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:23:20'!
gateOnBlock: aPCompiledBlock
	| runtime closure handle |
	runtime := receiver _gate handle runtime.
	closure := aPCompiledBlock newClosure home: self.
	handle := LocalHandle on: closure within: localRuntime.
	^ closure mirage
! !

!SmalltalkInterpreter methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:23:20'!
initialize
	super initialize.
	localRuntime := Runtime forLocalPharo.

! !

!SmalltalkInterpreter methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:26:10'!
isSpecial: selector
	^Underprimitives includes: selector
! !

!SmalltalkInterpreter methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:23:20'!
literal: anObject
	| handle |
	handle := receiver _gate handleOn: anObject.
	^ self subjectOn: handle
! !

!SmalltalkInterpreter methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:23:20'!
mirageOnBlock: aPCompiledBlock
	| runtime handle |
	runtime := receiver _gate handle runtime.
	handle := runtime newClosureHandle: aPCompiledBlock.
	^ handle mirage
! !

!SmalltalkInterpreter methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:23:20'!
nilLiteral
	^receiver _gate handle runtime nil maneuverer.

! !

!SmalltalkInterpreter methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:23:20'!
primitiveClosureValue
	| closure block sblock prev result interpreter next |
	closure := receiver _gate handle.
	block := closure mirror asClosureMirror block handle oid.
	interpreter := self.
	[ next := interpreter blocks. next includesKey: block] whileFalse: [ interpreter := interpreter parent ].
	sblock := next at: block.
	prev := environment.
	environment := closure.
	result := interpreter visitScript: sblock.
	environment := prev.
	^result
! !

!SmalltalkInterpreter methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:23:20'!
primitivePrimeFor
	| num result  |
	num := arguments first _gate handle asLocalInteger.
	result := #(2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97 101 103 107 109 113 127 131 137 139 149 151 157 163 167 173 179 181 191 193 197 199 211 223 227 229 233 239 241 251 269 359 479 641 857 1151 1549 2069 2237 2423 2617 2797 2999 3167 3359 3539 3727 3911 4441 4787 5119 5471 5801 6143 6521 6827 7177 7517 7853 8783 9601 10243 10867 11549 12239 12919 13679 14293 15013 15731 17569 19051 20443 21767 23159 24611 25847 27397 28571 30047 31397 35771 38201 40841 43973 46633 48989 51631 54371 57349 60139 62969)
		detect: [ :i | i >= num ].
	^ self subjectOnInteger: result in: receiver _gate handle runtime
! !

!SmalltalkInterpreter methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:23:20'!
trueLiteral
	^receiver _gate handle runtime true maneuverer.

! !

!SmalltalkInterpreter methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:23:20'!
visitLiteral: anSLiteral
	| handle |
	anSLiteral value isInteger ifTrue: [ 
		^self subjectOnInteger: anSLiteral value in: receiver _gate handle runtime ].
	handle := localRuntime handleOn: anSLiteral value.
	^ handle mirage
! !

!SmalltalkInterpreter methodsFor: 'visiting' stamp: 'KenD 11/8/2022 14:50:51'!
visitPrimitive: primitive
	| gate new left right args rcvr runtime value class |
	returned := true.
	gate := receiver _gate.
	runtime := gate handle runtime.
	primitive = #Behavior
		ifTrue: [ class := runtime bridge objectNamed: gate handle oid spec name.
			^ returnValue := self
				subjectOn: (gate handleOn: class instanceBehavior) ].
	primitive = #UnderSize
		ifTrue:
			[ ^ returnValue := self subjectOnInteger: gate handle size in: runtime ].
	primitive = #Size
		ifTrue: [ ^ returnValue := self
				subjectOnInteger: gate handle arrayedSize
				in: runtime ].
	primitive = #At
		ifTrue:
			[ value := gate handle at: arguments first _gate handle asLocalInteger.
			^ returnValue := self subjectOn: value ].
	primitive = #AtPut
		ifTrue: [ value := arguments second.
			gate handle
				at: arguments first _gate handle asLocalInteger
				put: value _gate handle oid.
			^ returnValue := value ].
	primitive = #New
		ifTrue: [ new := gate handle runtime new: gate handle oid.
			^ returnValue := self subjectOn: new ].
	primitive = #NewSized
		ifTrue: [ new := gate handle runtime
				new: gate handle oid
				sized: arguments first _gate handle asLocalInteger.
			^ returnValue := self subjectOn: new ].
	primitive = #Equal
		ifTrue: [ left := receiver _gate handle oid.
			right := arguments first _gate handle oid.
			^ returnValue := self
				subjectOnBoolean: left == right
				in: localRuntime ].
	primitive = #SMIPlus
		ifTrue: [ left := receiver _gate handle asLocalInteger.
			right := arguments first _gate handle asLocalInteger.
			^ returnValue := self subjectOnInteger: left + right in: runtime ].
	primitive = #SMIMinus
		ifTrue: [ left := receiver _gate handle asLocalInteger.
			right := arguments first _gate handle asLocalInteger.
			^ returnValue := self subjectOnInteger: left - right in: runtime ].
	primitive = #SMITimes
		ifTrue: [ left := receiver _gate handle asLocalInteger.
			right := arguments first _gate handle asLocalInteger.
			^ returnValue := self subjectOnInteger: left * right in: runtime ].
	primitive = #SMIIntDiv
		ifTrue: [ left := receiver _gate handle asLocalInteger.
			right := arguments first _gate handle asLocalInteger.
			^ returnValue := self subjectOnInteger: left // right in: runtime ].
	primitive = #SMIIntQuot
		ifTrue: [ left := receiver _gate handle asLocalInteger.
			right := arguments first _gate handle asLocalInteger.
			^ returnValue := self subjectOnInteger: left \\ right in: runtime ].
	primitive = #SMIGreaterThan
		ifTrue: [ left := receiver _gate handle asLocalInteger.
			right := arguments first _gate handle asLocalInteger.
			^ returnValue := self
				subjectOnBoolean: left > right
				in: localRuntime ].
	primitive = #SmallIntegerBitAnd
		ifTrue: [ left := receiver _gate handle asLocalInteger.
			right := arguments first _gate handle asLocalInteger.
			^ returnValue := self
				subjectOnInteger: (left bitAnd: right)
				in: runtime ].
	primitive = #SMIGreaterEqualThan
		ifTrue: [ left := receiver _gate handle asLocalInteger.
			right := arguments first _gate handle asLocalInteger.
			^ returnValue := self
				subjectOnBoolean: left >= right
				in: localRuntime ].
	primitive = #SMIEqual
		ifTrue: [ left := receiver _gate handle asLocalInteger.
			right := arguments first _gate handle asLocalInteger.
			^ returnValue := self
				subjectOnBoolean: left = right
				in: localRuntime ].
	primitive = #SMINotEqual
		ifTrue: [ left := receiver _gate handle asLocalInteger.
			right := arguments first _gate handle asLocalInteger.
			^ returnValue := self
				subjectOnBoolean: left !!= right
				in: localRuntime ].
	primitive = #ClosureValue
		ifTrue: [ ^ self primitiveClosureValue ].
	primitive = #ReplaceFromTo
		ifTrue: [ rcvr := receiver _gate handle target.
			args := arguments collect: [ :arg | arg _gate asLocalCollection ].
			rcvr
				perform: #replaceFrom:to:with:startingAt:
				withArguments: args asArray.
			^ returnValue := receiver ].
	primitive = #PrimeFor
		ifTrue: [ ^ self primitivePrimeFor ].
	self assert: false
! !

!SmalltalkInterpreter methodsFor: 'visiting' stamp: 'KenD 11/8/2022 14:50:56'!
visitPrimitiveOld: primitive
	| gate new left right args rcvr |
	returned := true.
	gate := receiver _gate.
	primitive = #Size
		ifTrue: [ ^ returnValue := self mirageOnInteger: gate mirror size ].
	primitive = #New
		ifTrue: [ new := gate handle runtime new: gate handle oid.
			^ returnValue := self mirageOnObject: new ].
	primitive = #NewSized
		ifTrue: [ new := gate handle target new: arguments first _gate handle target.
			^ returnValue := self mirageOnObject: new ].
	primitive = #SmallIntegerMinus
		ifTrue: [ left := receiver _gate handle target.
			right := arguments first _gate handle target.
			^ returnValue := self mirageOnInteger: left - right ].
	primitive = #SmallIntegerPlus
		ifTrue: [ left := receiver _gate handle asLocalInteger.
			right := arguments first _gate handle asLocalInteger.
			^ returnValue := self mirageOnInteger: left + right ].
	primitive = #SmallIntegerBitAnd
		ifTrue: [ left := receiver _gate handle asLocalInteger.
			right := arguments first _gate handle asLocalInteger.
			^ returnValue := self mirageOnInteger: (left bitAnd: right) ].
	primitive = #SmallIntegerLessOrEqual
		ifTrue: [ left := receiver _gate handle target.
			right := arguments first _gate handle target.
			^ returnValue := self mirageOnBoolean: left <= right ].
	primitive = #SmallIntegerEqual
		ifTrue: [ left := receiver _gate handle asLocalInteger.
			right := arguments first _gate handle asLocalInteger.
			^ returnValue := self mirageOnBoolean: left = right ].
	primitive = #SmallIntegerNotEqual
		ifTrue: [ left := receiver _gate handle asLocalInteger.
			right := arguments first _gate handle asLocalInteger.
			^ returnValue := self mirageOnBoolean: left !!= right ].
	primitive = #ClosureValue
		ifTrue: [ ^ self primitiveClosureValue ].
	primitive = #ReplaceFromTo
		ifTrue: [ rcvr := receiver _gate handle target.
			args := arguments collect: [ :arg | arg _gate asLocalCollection ].
			rcvr
				perform: #replaceFrom:to:with:startingAt:
				withArguments: args asArray.
			^ returnValue := receiver ].
	self assert: false
! !

!SmalltalkInterpreter class methodsFor: 'class initialization' stamp: 'KenD 9/29/2022 14:25:25'!
initialize
	"
	self initialize
	"

	Underprimitives := #(_basicAt: #_basicAt:put: _byteAt: #_byteAt:put: _smallSize _largeSize _isSmallInteger _basicHash _basicHash:)
! !

!ShapeMap methodsFor: 'adding' stamp: 'KenD 9/29/2022 14:22:32'!
add: structure
	shapes at: structure name put: structure
! !

!ShapeMap methodsFor: 'adding' stamp: 'KenD 9/29/2022 14:22:32'!
at: type
	^shapes at: type
! !

!ShapeMap methodsFor: 'adding' stamp: 'KenD 9/29/2022 14:22:32'!
indexInCurrentOf: varname at: type
	| species slot |
	species := Smalltalk at: type asSymbol.
	slot := species slotNamed: varname.
	slot isNil
		ifTrue: [ self error: 'inst var ' , varname , ' not found' ].
	^ slot index
! !

!ShapeMap methodsFor: 'adding' stamp: 'KenD 9/29/2022 14:22:32'!
indexOf: varname at: type
	| shape |
	shape := shapes at: type ifAbsent: [
		^self indexInCurrentOf: varname at: type].
	^shape indexOf: varname
! !

!ShapeMap methodsFor: 'adding' stamp: 'KenD 9/29/2022 14:22:32'!
initialize
	shapes := Dictionary new
! !

!ShapeMap methodsFor: 'adding' stamp: 'KenD 9/29/2022 14:22:32'!
load: aClassDefinition
	| shape |
	shape := ObjectShape new loadFrom: aClassDefinition.
	self add: shape
! !

!ShapeMap class methodsFor: 'instance creation' stamp: 'KenD 9/29/2022 14:22:32'!
new
	^self basicNew initialize
! !

!Storage methodsFor: 'storage' stamp: 'KenD 9/29/2022 14:30:01'!
arrayedSlotOf: base at: index put: value
	^ self subclassResponsibility
! !

!Storage methodsFor: 'storage' stamp: 'KenD 9/29/2022 14:30:01'!
new: oid
	^self subclassResponsibility
! !

!Storage methodsFor: 'storage' stamp: 'KenD 9/29/2022 14:30:01'!
slotOf: base at: index
	^ self subclassResponsibility
! !

!Storage methodsFor: 'storage' stamp: 'KenD 9/29/2022 14:30:01'!
slotOf: base at: index put: value
	^self subclassResponsibility
! !

!BinaryMessageNativizer methodsFor: 'private' stamp: 'KenD 9/26/2022 12:29:42'!
argumentAt: index in: environment
	nativizer argumentAt: index in: environment 
! !

!BinaryMessageNativizer methodsFor: 'private' stamp: 'KenD 9/26/2022 12:29:42'!
assembler: anAssembler
	assembler := anAssembler 
! !

!BinaryMessageNativizer methodsFor: 'private' stamp: 'KenD 9/26/2022 12:29:42'!
failLabel
	^failed 
! !

!BinaryMessageNativizer methodsFor: 'private' stamp: 'KenD 9/26/2022 12:29:42'!
inlineBitAnd
	done := assembler newLabel.
	failed := assembler newLabel.
	self loadOperands.
	nativizer saveContextSwitchPoint.
	assembler
		andRwithA;
		@ done.
	nativizer
		addFallback: [ assembler
				@ failed;
				pushA.
			nativizer emitSend: #bitAnd:.
			assembler jumpTo: done ]
! !

!BinaryMessageNativizer methodsFor: 'private' stamp: 'KenD 9/26/2022 12:29:42'!
inlineBitAnd: selector
	done := assembler newLabel.
	failed := assembler newLabel.
	self loadOperands.
	nativizer saveContextSwitchPoint.
	assembler
		andRwithA;
		@ done.
	nativizer
		addFallback: [ assembler
				@ failed;
				pushA.
			nativizer emitSend: selector.
			assembler jumpTo: done ]
! !

!BinaryMessageNativizer methodsFor: 'private' stamp: 'KenD 9/26/2022 12:29:42'!
inlineBitOr: selector
	done := assembler newLabel.
	failed := assembler newLabel.
	self loadOperands.
	nativizer saveContextSwitchPoint.
	assembler
		orRwithA;
		@ done.
	nativizer
		addFallback: [ assembler
				@ failed;
				pushA.
			nativizer emitSend: selector.
			assembler jumpTo: done ]
! !

!BinaryMessageNativizer methodsFor: 'private' stamp: 'KenD 9/26/2022 12:29:42'!
inlineBitXor
	done := assembler newLabel.
	failed := assembler newLabel.
	self loadOperands.
	nativizer saveContextSwitchPoint.
	assembler
		xorRwithA;
		setRintegerBit;
		@ done.
	nativizer
		addFallback: [ assembler
				@ failed;
				pushA.
			nativizer emitSend: #bitXor:.
			assembler jumpTo: done ]
! !

!BinaryMessageNativizer methodsFor: 'private' stamp: 'KenD 9/26/2022 12:29:42'!
inlineEquals
	done := assembler newLabel.
	failed := assembler newLabel.
	self loadOperands.
	nativizer saveContextSwitchPoint.
	assembler
		loadTwithR;
		loadRwithTrue;
		compareTwithA;
		jumpIfEqualTo: done;
		loadRwithFalse;
		@ done.
	nativizer
		addFallback: [ assembler
				@ failed;
				pushA.
			nativizer emitSend: #=.
			assembler jumpTo: done ]
! !

!BinaryMessageNativizer methodsFor: 'private' stamp: 'KenD 9/26/2022 12:29:42'!
inlineGreaterEqualThan
	done := assembler newLabel.
	failed := assembler newLabel.
	self loadOperands.
	nativizer saveContextSwitchPoint.
	assembler
		loadTwithR;
		loadRwithTrue;
		compareTwithA;
		jumpIfGreaterOrEqualSignedTo: done;
		loadRwithFalse;
		@ done.
	nativizer
		addFallback: [ assembler
				@ failed;
				pushA.
			nativizer emitSend: #<.
			assembler jumpTo: done ]
! !

!BinaryMessageNativizer methodsFor: 'private' stamp: 'KenD 9/26/2022 12:29:42'!
inlineGreaterThan
	done := assembler newLabel.
	failed := assembler newLabel.
	self loadOperands.
	nativizer saveContextSwitchPoint.
	assembler
		loadTwithR;
		loadRwithTrue;
		compareTwithA;
		jumpIfGreaterSignedTo: done;
		loadRwithFalse;
		@ done.
	nativizer
		addFallback: [ assembler
				@ failed;
				pushA.
			nativizer emitSend: #<.
			assembler jumpTo: done ]
! !

!BinaryMessageNativizer methodsFor: 'private' stamp: 'KenD 9/26/2022 12:29:42'!
inlineIdentityEquals
	done := assembler newLabel.
	self loadOperands.
	assembler loadTwithR; loadRwithTrue;
		compareTwithA;
		jumpIfEqualTo: done; loadRwithFalse; @ done
! !

!BinaryMessageNativizer methodsFor: 'private' stamp: 'KenD 9/26/2022 12:29:42'!
inlineLessEqualThan
	done := assembler newLabel.
	failed := assembler newLabel.
	self loadOperands.
	nativizer saveContextSwitchPoint.
	assembler
		loadTwithR;
		loadRwithTrue;
		compareTwithA;
		jumpIfLessOrEqualSignedTo: done;
		loadRwithFalse;
		@ done.
	nativizer
		addFallback: [ assembler
				@ failed;
				pushA.
			nativizer emitSend: #<.
			assembler jumpTo: done ]
! !

!BinaryMessageNativizer methodsFor: 'private' stamp: 'KenD 9/26/2022 12:29:42'!
inlineLessThan
	done := assembler newLabel.
	failed := assembler newLabel.
	self loadOperands.
	nativizer saveContextSwitchPoint.
	assembler
		loadTwithR;
		loadRwithTrue;
		compareTwithA;
		jumpIfLessSignedTo: done;
		loadRwithFalse;
		@ done.
	nativizer
		addFallback: [ assembler
				@ failed;
				pushA.
			nativizer emitSend: #<.
			assembler jumpTo: done ]
! !

!BinaryMessageNativizer methodsFor: 'private' stamp: 'KenD 11/8/2022 14:51:01'!
inlineMessage
	| selector s |
	s := message selector.
	selector := s isSymbol
		ifTrue: [ s ]
		ifFalse: [ nativizer method at: s ].
	selector = #==
		ifTrue: [ ^ self inlineIdentityEquals ].
	selector = #=
		ifTrue: [ ^ self inlineEquals ].
	selector = #+
		ifTrue: [ ^ self inlinePlus ].
	selector = #<
		ifTrue: [ ^ self inlineLessThan ].
	selector = #<=
		ifTrue: [ ^ self inlineLessEqualThan ].
	selector = #>=
		ifTrue: [ ^ self inlineGreaterEqualThan ].
	selector = #>
		ifTrue: [ ^ self inlineGreaterThan ].
	selector = #-
		ifTrue: [ ^ self inlineMinus ].
	selector = #*
		ifTrue: [ ^ self inlineMultiply ].
	selector = #//
		ifTrue: [ ^ self inlineQuotient ].
	selector = #\\
		ifTrue: [ ^ self inlineRemainder ].
	selector = #|
		ifTrue: [ ^ self inlineBitOr: #| ].
	selector = #&
		ifTrue: [ ^ self inlineBitAnd: #& ].
	"	selector = #'>>' ifTrue: [^self inlineBitShiftLeft: #>>].
	selector = #'<<' ifTrue: [^self inlineBitShiftRight: #<<]."
	selector = #bitOr:
		ifTrue: [ ^ self inlineBitOr: #bitOr: ].
	selector = #bitAnd:
		ifTrue: [ ^ self inlineBitAnd: #bitAnd: ].
	selector = #bitXor:
		ifTrue: [ ^ self inlineBitXor ].
	"	selector = #bitShift: ifTrue: [^self inlineBitShift]."
	self assert: false
! !

!BinaryMessageNativizer methodsFor: 'private' stamp: 'KenD 9/26/2022 12:29:42'!
inlineMinus
	| overflow |
	done := assembler newLabel.
	failed := assembler newLabel.
	overflow := assembler newLabel.
	self loadOperands.
	nativizer saveContextSwitchPoint.
	assembler
		subAfromR;
		jumpIfOverflowTo: overflow;
		setRintegerBit;
		@ done.
	nativizer addFallback: [
		assembler
			@ overflow;
			addAtoR;
			@ failed;
			pushA.
		nativizer emitSend: #'-'.
		assembler jumpTo: done] 
! !

!BinaryMessageNativizer methodsFor: 'private' stamp: 'KenD 9/26/2022 12:29:42'!
inlineMultiply
	| overflow |
	done := assembler newLabel.
	failed := assembler newLabel.
	overflow := assembler newLabel.
	self loadOperands.
	nativizer saveContextSwitchPoint.
	assembler
		pushA;
		convertAtoNativeInteger;
		loadTwithR;
		clearRintegerBit;
		multiplyRbyAwideningToA;
		popA;
		jumpIfOverflowTo: overflow;
		setRintegerBit;
		@ done.
	nativizer
		addFallback: [ assembler
				@ overflow;
				loadRwithT;
				@ failed;
				pushA.
			nativizer emitSend: #*.
			assembler jumpTo: done ]
! !

!BinaryMessageNativizer methodsFor: 'private' stamp: 'KenD 9/26/2022 12:29:42'!
inlinePlus
	| overflow |
	done := assembler newLabel.
	failed := assembler newLabel.
	overflow := assembler newLabel.
	self loadOperands.
	nativizer saveContextSwitchPoint.
	assembler
		clearRintegerBit;
		addAtoR;
		jumpIfOverflowTo: overflow;
		@ done.
	nativizer addFallback: [
		assembler
			@ overflow;
			subAfromR;
			setRintegerBit;
			@ failed;
			pushA.
		nativizer emitSend: #'+'.
		assembler jumpTo: done] 
! !

!BinaryMessageNativizer methodsFor: 'private' stamp: 'KenD 9/26/2022 12:29:42'!
inlineQuotient
	| |
	done := assembler newLabel.
	failed := assembler newLabel.
	self loadOperands.
	assembler
		compareRwithSmallInteger: 0;
		jumpIfLessOrEqualSignedTo: failed.
	nativizer saveContextSwitchPoint.
	assembler
		convertRtoNativeInteger;
		convertAtoNativeInteger;
		loadTwithA;
		extendRtoAandDividebyT;
		convertRtoSmallInteger;
		@ done.
	nativizer
		addFallback: [ assembler
				@ failed;
				pushA.
			nativizer emitSend: #//.
			assembler jumpTo: done ]
! !

!BinaryMessageNativizer methodsFor: 'private' stamp: 'KenD 9/26/2022 12:29:42'!
inlineRemainder
	done := assembler newLabel.
	failed := assembler newLabel.
	self loadOperands.
	assembler
		compareRwithSmallInteger: 0;
		jumpIfLessOrEqualSignedTo: failed.
	nativizer saveContextSwitchPoint.
	assembler
		convertRtoNativeInteger;
		convertAtoNativeInteger;
		loadTwithA;
		extendRtoAandDividebyT;
		loadRwithA;
		convertRtoSmallInteger;
		@ done.
	nativizer
		addFallback: [ assembler
				@ failed;
				pushA.
			nativizer emitSend: #//.
			assembler jumpTo: done ]
! !

!BinaryMessageNativizer methodsFor: 'private' stamp: 'KenD 9/26/2022 12:29:42'!
loadAwithArgument: index in: environment
	nativizer loadAwithArgument: index in: environment 
! !

!BinaryMessageNativizer methodsFor: 'private' stamp: 'KenD 9/26/2022 12:29:42'!
loadAwithTemporary: index in: environment
	nativizer loadAwithTemporary: index in: environment 
! !

!BinaryMessageNativizer methodsFor: 'private' stamp: 'KenD 9/26/2022 12:29:42'!
loadOperands
	message opcodes
		do: [:hintcode | hintcode nativizeUsing: assembler for: self] 
! !

!BinaryMessageNativizer methodsFor: 'private' stamp: 'KenD 9/26/2022 12:29:42'!
loadRvisitingArgument
	message arguments first acceptVisitor: nativizer
! !

!BinaryMessageNativizer methodsFor: 'private' stamp: 'KenD 9/26/2022 12:29:42'!
loadRvisitingReceiver
	message receiver acceptVisitor: nativizer 
! !

!BinaryMessageNativizer methodsFor: 'private' stamp: 'KenD 9/26/2022 12:29:42'!
loadRwithTemporary: index env: environment
	nativizer temporaryAt: index in: environment
! !

!BinaryMessageNativizer methodsFor: 'private' stamp: 'KenD 9/26/2022 12:29:42'!
message: aMessageAstcode
	message := aMessageAstcode 
! !

!BinaryMessageNativizer methodsFor: 'private' stamp: 'KenD 9/26/2022 12:29:42'!
method
	^nativizer method 
! !

!BinaryMessageNativizer methodsFor: 'private' stamp: 'KenD 9/26/2022 12:29:42'!
methodLiteralAt: index
	^nativizer methodLiteralAt: index
! !

!BinaryMessageNativizer methodsFor: 'private' stamp: 'KenD 9/26/2022 12:29:42'!
nativizer: anAstcodeNativizer
	nativizer := anAstcodeNativizer 
! !

!BinaryMessageNativizer methodsFor: 'private' stamp: 'KenD 9/26/2022 12:29:42'!
popR
	^ nativizer popR
! !

!BinaryMessageNativizer methodsFor: 'private' stamp: 'KenD 9/26/2022 12:29:42'!
pushR
	^nativizer pushR
! !

!InlinedMessageNativizer methodsFor: 'nativizing' stamp: 'KenD 9/26/2022 12:33:01'!
inlineAnd
	| skip conditions |
	skip := assembler newLabel.
	conditions := Array
		with: message receiver
		withAll: message arguments allButLast.
	conditions do: [ :c | self inlineAndCondition: c skip: skip ].
	message arguments last statements
		do: [ :s | s acceptVisitor: nativizer ].
	assembler @ skip
! !

!InlinedMessageNativizer methodsFor: 'nativizing' stamp: 'KenD 9/26/2022 12:33:01'!
inlineAndCondition: anSExpression skip: skip
	| retry failed |
	retry := assembler newLabel.
	failed := assembler newLabel.
	anSExpression acceptVisitor: nativizer.
	assembler
		@ retry;
		compareRwithFalse;
		jumpIfEqualTo: skip;
		compareRwithTrue;
		jumpIfNotEqualTo: failed.
	nativizer
		addFallback: [ assembler @ failed.
			nativizer sendMustBeBoolean.
			assembler jumpTo: retry ]
! !

!InlinedMessageNativizer methodsFor: 'nativizing' stamp: 'KenD 9/26/2022 12:33:01'!
inlineAndNot
	| skip conditions |
	skip := assembler newLabel.
	conditions := Array
		with: message receiver
		withAll: message arguments allButLast.
	conditions do: [ :c | self inlineAndCondition: c skip: skip ].
	message arguments last statements
		do: [ :s | s acceptVisitor: nativizer ].
	self negateBoolean.
assembler		@ skip
! !

!InlinedMessageNativizer methodsFor: 'nativizing' stamp: 'KenD 9/26/2022 12:33:01'!
inlineBinaryWhile: aBoolean
	| retry failed block continue |
	start := assembler newLabel.
	retry := assembler newLabel.
	failed := assembler newLabel.
	block := assembler newLabel.
	continue := assembler newLabel.
	assembler
		alignTo: 16;
		@ start.
	message receiver statements do: [ :s | s acceptVisitor: nativizer ].
	assembler
		@ retry;
		compareRwithBoolean: aBoolean;
		jumpIfEqualTo: block;
		compareRwithBoolean: aBoolean not;
		jumpIfNotEqualTo: failed;
		jumpTo: continue;
		@ block.
	message arguments first statements
		do: [ :s | s acceptVisitor: nativizer ].
	assembler
		jumpTo: start;
		@ continue.
	nativizer
		addFallback: [ assembler @ failed.
			nativizer sendMustBeBoolean.
			assembler jumpTo: retry ]
! !

!InlinedMessageNativizer methodsFor: 'nativizing' stamp: 'KenD 9/26/2022 12:33:01'!
inlineBranchIf: aBoolean
	| retry failed first second |
	retry := assembler newLabel.
	failed := assembler newLabel.
	end := assembler newLabel.
	message receiver acceptVisitor: nativizer.
	first := aBoolean not.
	second := aBoolean.
	assembler
		@ retry;
		loadAwithR;
		loadRwithNil;
		compareAwithBoolean: first;
		jumpIfEqualTo: end;
		compareAwithBoolean: second;
		jumpIfNotEqualTo: failed.
	message arguments first statements
		do: [ :s | s acceptVisitor: nativizer ].
	assembler @ end.
	nativizer
		addFallback: [ assembler @ failed; loadRwithA.
			nativizer sendMustBeBoolean.
			assembler jumpTo: retry ]
! !

!InlinedMessageNativizer methodsFor: 'nativizing' stamp: 'KenD 9/26/2022 12:33:01'!
inlineBranchIfNil: aBoolean

	end := assembler newLabel.
	message receiver acceptVisitor: nativizer.
	assembler
		compareRwithNil.
	aBoolean
		ifTrue: [ assembler jumpIfNotEqualTo: end ]
		ifFalse: [ assembler jumpIfEqualTo: end ].
	message arguments first acceptVisitor: nativizer.
	assembler @ end
! !

!InlinedMessageNativizer methodsFor: 'nativizing' stamp: 'KenD 9/26/2022 12:33:01'!
inlineBranchIfNilIfNotNil: aBoolean
	| second |
	second := assembler newLabel.
	end := assembler newLabel.
	message receiver acceptVisitor: nativizer.
	assembler compareRwithNil.
	aBoolean
		ifTrue: [ assembler jumpIfNotEqualTo: second ]
		ifFalse: [ assembler jumpIfEqualTo: second ].
	message arguments first acceptVisitor: nativizer.
	assembler
		jumpTo: end;
		@ second.
	message arguments first acceptVisitor: nativizer.
	assembler @ end
! !

!InlinedMessageNativizer methodsFor: 'nativizing' stamp: 'KenD 9/26/2022 12:33:01'!
inlineIfTrueIfFalse: aBoolean
	| retry other failed first second |
	retry := assembler newLabel.
	other := assembler newLabel.
	failed := assembler newLabel.
	end := assembler newLabel.
	message receiver acceptVisitor: nativizer.
	first := aBoolean not.
	second := aBoolean.
	assembler
		@ retry;
		compareRwithBoolean: first;
		jumpIfEqualTo: other;
		compareRwithBoolean: second;
		jumpIfNotEqualTo: failed.
	message arguments first statements
		do: [ :s | s acceptVisitor: nativizer ].
	assembler
		jumpTo: end;
		@ other.
	message arguments second statements
		do: [ :s | s acceptVisitor: nativizer ].
	assembler @ end.
	nativizer
		addFallback: [ assembler @ failed.
			nativizer sendMustBeBoolean.
			assembler jumpTo: retry ]
! !

!InlinedMessageNativizer methodsFor: 'nativizing' stamp: 'KenD 11/8/2022 14:51:10'!
inlineMessage
	| selector |
	selector := message selector.
	selector = #ifTrue:
		ifTrue: [ ^ self inlineBranchIf: true ].
	selector = #ifFalse:
		ifTrue: [ ^ self inlineBranchIf: false ].
	selector = #ifNil:
		ifTrue: [ ^ self inlineBranchIfNil: true ].
	selector = #ifNotNil:
		ifTrue: [ ^ self inlineBranchIfNil: false ].
	selector = #ifNil:ifNotNil:
		ifTrue: [ ^ self inlineBranchIfNilIfNotNil: true ].
	selector = #ifNil:ifNotNil:
		ifTrue: [ ^ self inlineBranchIfNilIfNotNil: false ].
	selector = #ifTrue:ifFalse:
		ifTrue: [ ^ self inlineIfTrueIfFalse: true ].
	selector = #ifFalse:ifTrue:
		ifTrue: [ ^ self inlineIfTrueIfFalse: false ].
	selector = #whileTrue
		ifTrue: [ ^ self inlineUnitaryWhile: true ].
	selector = #whileFalse
		ifTrue: [ ^ self inlineUnitaryWhile: false ].
	selector = #whileTrue:
		ifTrue: [ ^ self inlineBinaryWhile: true ].
	selector = #whileFalse:
		ifTrue: [ ^ self inlineBinaryWhile: false ].
	selector = #repeat
		ifTrue: [ ^ self inlineRepeat ].
	selector = #to:do:
		ifTrue: [ ^ self inlineToDo ].
	selector = #to:by:do:
		ifTrue: [ ^ self inlineToByDo].
	selector = #timesRepeat:
		ifTrue: [ ^ self inlineTimesRepeat ].
	(selector beginsWith: #or:)
		ifTrue: [ ^ self inlineOr ].
	(selector beginsWith: #and:)
		ifTrue: [ ^ self inlineAnd ].
	selector = #andNot:
		ifTrue: [ ^ self inlineAndNot ].
	selector = #orNot:
		ifTrue: [ ^ self inlineOrNot ].
	self assert: false
! !

!InlinedMessageNativizer methodsFor: 'nativizing' stamp: 'KenD 9/26/2022 12:33:01'!
inlineOr
	| skip conditions |
	skip := assembler newLabel.
	conditions := Array
		with: message receiver
		withAll: message arguments allButLast.
	conditions do: [ :c | self inlineOrCondition: c skip: skip ].
	message arguments last statements
		do: [ :s | s acceptVisitor: nativizer ].
	assembler @ skip
! !

!InlinedMessageNativizer methodsFor: 'nativizing' stamp: 'KenD 9/26/2022 12:33:01'!
inlineOrBlock: b skip: skip
	| retry failed |
	retry := assembler newLabel.
	failed := assembler newLabel.
	b statements acceptVisitor: nativizer.
	assembler
		@ retry;
		compareRwithTrue;
		jumpIfEqualTo: skip;
		compareRwithFalse;
		jumpIfNotEqualTo: failed.
	nativizer
		addFallback: [ assembler @ failed.
			nativizer sendMustBeBoolean.
			assembler jumpTo: retry ]
! !

!InlinedMessageNativizer methodsFor: 'nativizing' stamp: 'KenD 9/26/2022 12:33:01'!
inlineOrCondition: anSExpression skip: skip
	| retry failed |
	retry := assembler newLabel.
	failed := assembler newLabel.
	
	anSExpression acceptVisitor: nativizer.
	assembler
		@ retry;
		compareRwithTrue;
		jumpIfEqualTo: skip;
		compareRwithFalse;
		jumpIfNotEqualTo: failed.
	nativizer
		addFallback: [ assembler @ failed.
			nativizer sendMustBeBoolean.
			assembler jumpTo: retry ]
! !

!InlinedMessageNativizer methodsFor: 'nativizing' stamp: 'KenD 9/26/2022 12:33:01'!
inlineOrNot
	| skip conditions |
	skip := assembler newLabel.
	conditions := Array
		with: message receiver
		withAll: message arguments allButLast.
	conditions do: [ :c | self inlineOrCondition: c skip: skip ].
	message arguments last statements
		do: [ :s | s acceptVisitor: nativizer ].
	self negateBoolean.
	assembler @ skip
! !

!InlinedMessageNativizer methodsFor: 'nativizing' stamp: 'KenD 9/26/2022 12:33:01'!
inlineRepeat
	start := assembler newLabel.
	assembler
		alignTo: 16;
		@ start.
	message receiver statements do: [ :s | s acceptVisitor: nativizer ].
	assembler jumpTo: start
! !

!InlinedMessageNativizer methodsFor: 'nativizing' stamp: 'KenD 9/26/2022 12:33:01'!
inlineTimesRepeat
	| head block continue nonInteger nonDecrementable current |
	head := assembler newLabel.
	block := assembler newLabel.
	continue := assembler newLabel.
	nonInteger := assembler newLabel.
	nonDecrementable := assembler newLabel.
	message receiver acceptVisitor: nativizer.
	current := nativizer pushR.
	assembler
		alignTo: 16;
		@ head;
		testIntegerBitOf: assembler regR;
		jumpIfZeroTo: nonInteger;
		compareRwithSmallInteger: 0;
		jumpIfLessOrEqualSignedTo: continue;
		@ block.
	message arguments first statements
		do: [ :s | s acceptVisitor: nativizer ].
	nativizer loadRwithStack: current.
	assembler
		testIntegerBitOf: assembler regR;
		jumpIfZeroTo: nonDecrementable;
		subFromRconstant: 2.
	nativizer storeRInStack: current.
	assembler
		jumpTo: head;
		@ continue.
	nativizer
		dropTos;
		addFallback: [ assembler
				@ nonDecrementable;
				pushSmallInteger: 1.
			nativizer
				emitSend: #-;
				storeRInStack: current.
			assembler jumpTo: head ];
		addFallback: [ assembler
				@ nonInteger;
				pushSmallInteger: 0.
			nativizer emitSend: #>.
			assembler
				compareRwithTrue;
				jumpIfEqualTo: block;
				jumpTo: continue ]

! !

!InlinedMessageNativizer methodsFor: 'nativizing' stamp: 'KenD 9/26/2022 12:33:01'!
inlineToByDo
	| head block continue nonInteger nonIncrementable overflow current limit by increment |
	head := assembler newLabel.
	block := assembler newLabel.
	continue := assembler newLabel.
	nonInteger := assembler newLabel.
	nonIncrementable := assembler newLabel.
	overflow := assembler newLabel.
	message receiver acceptVisitor: nativizer.
	current := message arguments third inlinedArgs first.
	nativizer temporaryInStackAtPut: current.
	message arguments first acceptVisitor: nativizer.
	limit := nativizer pushR.
	assembler loadAwithR.
	nativizer temporaryInStackAt: current.
	assembler
		alignTo: 16;
		@ head;
		testIntegerBitOf: assembler regA;
		jumpIfZeroTo: nonInteger;
		testIntegerBitOf: assembler regR;
		jumpIfZeroTo: nonInteger;
		compareRwithA.
	by := message arguments second value.
	by > 0
		ifTrue: [ assembler jumpIfGreaterSignedTo: continue ]
		ifFalse: [ assembler jumpIfLessSignedTo: continue ].
	increment := (assembler smallInteger: by) - 1.
	assembler @ block.
	message arguments third statements
		do: [ :s | s acceptVisitor: nativizer ].
	nativizer temporaryInStackAt: current.
	assembler
		testIntegerBitOf: assembler regR;
		jumpIfZeroTo: nonIncrementable;
		addRwithImmediate: increment;
		jumpIfOverflowTo: overflow.
	nativizer
		temporaryInStackAtPut: current;
		loadAwithStack: limit.
	assembler
		jumpTo: head;
		@ continue.
	nativizer dropTos;
		addFallback: [ assembler
				@ overflow;
				subFromRconstant: increment;
				@ nonIncrementable;
				pushSmallInteger: 1.
			nativizer
				emitSend: #+;
				temporaryInStackAtPut: current;
				loadAwithStack: limit.
			assembler jumpTo: head ];
		addFallback: [ assembler
				@ nonInteger;
				pushA.
			nativizer emitSend: #<=.
			assembler
				compareRwithTrue;
				jumpIfEqualTo: block;
				jumpTo: continue ]

! !

!InlinedMessageNativizer methodsFor: 'nativizing' stamp: 'KenD 9/26/2022 12:33:01'!
inlineToDo
	| head block continue nonInteger nonIncrementable overflow current limit |
	head := assembler newLabel.
	block := assembler newLabel.
	continue := assembler newLabel.
	nonInteger := assembler newLabel.
	nonIncrementable := assembler newLabel.
	overflow := assembler newLabel.
	message receiver acceptVisitor: nativizer.
	current := message arguments second inlinedArgs first.
	nativizer temporaryInStackAtPut: current.
	message arguments first acceptVisitor: nativizer.
	limit := nativizer pushR.
	assembler loadAwithR.
	nativizer temporaryInStackAt: current.
	assembler
		alignTo: 16;
		@ head;
		testIntegerBitOf: assembler regA;
		jumpIfZeroTo: nonInteger;
		testIntegerBitOf: assembler regR;
		jumpIfZeroTo: nonInteger;
		compareRwithA;
		jumpIfGreaterSignedTo: continue;
		@ block.
	message arguments second statements
		do: [ :s | s acceptVisitor: nativizer ].
	nativizer temporaryInStackAt: current.
	assembler
		testIntegerBitOf: assembler regR;
		jumpIfZeroTo: nonIncrementable;
		addRwithImmediate: 2;
		jumpIfOverflowTo: overflow.
	nativizer
		temporaryInStackAtPut: current;
		loadAwithStack: limit.
	assembler
		jumpTo: head;
		@ continue.
	nativizer dropTos;
		addFallback: [ assembler
				@ overflow;
				subFromRconstant: 2;
				@ nonIncrementable;
				pushSmallInteger: 1.
			nativizer
				emitSend: #+;
				temporaryInStackAtPut: current;
				loadAwithStack: limit.
			assembler jumpTo: head ];
		addFallback: [ assembler
				@ nonInteger;
				pushA.
			nativizer emitSend: #<=.
			assembler
				compareRwithTrue;
				jumpIfEqualTo: block;
				jumpTo: continue ]

! !

!InlinedMessageNativizer methodsFor: 'nativizing' stamp: 'KenD 9/26/2022 12:33:01'!
inlineUnitaryWhile: aBoolean
	| continue failed |
	start := assembler newLabel.
	continue := assembler newLabel.
	failed := assembler newLabel.
	assembler
		alignTo: 16;
		@ start.
	message receiver statements do: [ :s | s acceptVisitor: nativizer ].
	assembler
		compareRwithBoolean: aBoolean;
		jumpIfEqualTo: start;
		compareRwithBoolean: aBoolean not;
		jumpIfNotEqualTo: failed;
		@ continue.
	nativizer
		addFallback: [ assembler @ failed.
			nativizer sendMustBeBoolean.
			assembler jumpTo: continue ]
! !

!InlinedMessageNativizer methodsFor: 'nativizing' stamp: 'KenD 9/26/2022 12:33:01'!
negateBoolean
		| retry failed done |
	retry := assembler newLabel.
	failed := assembler newLabel.
		done := assembler newLabel.
	assembler
		@ retry;
		loadAwithR;
		loadRwithFalse;
		compareRwithA;
		jumpIfEqualTo: done;
		loadRwithTrue;
		compareRwithA;
		jumpIfNotEqualTo: failed; @done.
	nativizer
		addFallback: [ assembler @ failed.
			nativizer sendMustBeBoolean.
			assembler jumpTo: retry ]
! !

!InlinedMessageNativizer methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:33:01'!
assembler: anAssembler
	assembler := anAssembler 
! !

!InlinedMessageNativizer methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:33:01'!
message: aMessageAstcode
	message := aMessageAstcode 
! !

!InlinedMessageNativizer methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:33:01'!
nativizer: anAstcodeNativizer
	nativizer := anAstcodeNativizer 
! !

!MessageLinker methodsFor: 'testing' stamp: 'KenD 9/26/2022 12:30:17'!
canInline: aSymbol
	filter ifNil: [ ^true ].
	filter == aSymbol ifTrue: [ ^true ].
	^(filter includes: aSymbol)
! !

!MessageLinker methodsFor: 'testing' stamp: 'KenD 9/26/2022 12:30:17'!
filter: anObject
	filter := anObject.
	filter isCollection ifTrue: [filter := filter asIdentitySet]
! !

!CompositeMessageLinker methodsFor: 'services' stamp: 'KenD 9/26/2022 12:30:30'!
add: aMessageLinker
	candidates add: aMessageLinker
! !

!CompositeMessageLinker methodsFor: 'services' stamp: 'KenD 9/26/2022 12:30:30'!
dispatchLinkerFor: selector
	^candidates
		detect: [:linker | linker canInline: selector]
		ifNone: [self error: 'cannot dispatch ', selector storeString]
! !

!CompositeMessageLinker methodsFor: 'services' stamp: 'KenD 9/26/2022 12:30:30'!
emitSend: selector using: anAssembler
	| linker |
	linker := self dispatchLinkerFor: selector.
	linker emitSend: selector using: anAssembler

! !

!CompositeMessageLinker methodsFor: 'services' stamp: 'KenD 9/26/2022 12:30:30'!
emitSendSuper: selector from: aClass using: anAssembler
	| linker |
	linker := self dispatchLinkerFor: selector.
	linker emitSendSuper: selector from: aClass using: anAssembler
! !

!CompositeMessageLinker methodsFor: 'services' stamp: 'KenD 9/26/2022 12:30:30'!
initialize
	candidates := OrderedCollection new
! !

!HaltingSend methodsFor: 'nativizing' stamp: 'KenD 9/26/2022 12:30:50'!
emitSend: aSymbol using: anAssembler
	anAssembler breakpoint
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 13:48:34'!
assembleAsFloatInto
	<inline: #_asFloatInto:>.
	assembler
		loadX0withRasDouble;
		storeLargeX0inA.
	self readFloatStatus
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 13:53:55'!
assembleAsNative
	| noninteger |
	<inline: #_asNative>.
	noninteger := assembler labeledIntegerBitTestOfR.
	assembler
		convertRtoNativeInteger;
		@ noninteger
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 13:54:06'!
assembleAsObject
	<inline: #_asObject>.
	assembler clearSafeRintegerBit
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 13:54:20'!
assembleAsPointer
	| nonInteger |
	<inline: #_asPointer>.
	nonInteger := assembler labeledIntegerBitTestOfR.
	assembler
		convertRtoNativeInteger;
		@ nonInteger;
		setSafeRintegerBit
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 13:54:32'!
assembleAsSmallInteger
	<inline: #_asSmallInteger>.
	assembler convertRtoSmallInteger
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 13:54:42'!
assembleBasicAt
	| oop |
	<inline: #_basicAt:>.
	oop := assembler labeledIntegerNativizationOfA.
	assembler
		loadRwithRatA;
		@ oop
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 13:54:52'!
assembleBasicAtPut
	| nonInteger |
	<inline: #_basicAt:put:>.
	nonInteger := assembler labeledIntegerNativizationOfA.
	assembler
		storeTinRatA;
		@ nonInteger;
		loadRwithT
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 13:56:27'!
assembleBasicCopyFromToWith
	<inline: #_basicCopyFrom:to:with:>.
	assembler
		pushE;
		convertAtoNativeInteger;
		convertTtoNativeInteger;
		loadEwithAddressOfRatA;
		loadSwithAddressOfSatA;
		subAfromT;
		addTwithImmediate: 1;
		moveTslots;
		popE
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 13:56:40'!
assembleBasicFlags
	<inline: #_basicFlags>.
	self emitByteAtOffset: _Flags
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 13:57:07'!
assembleBasicFlagsPut
	<inline: #_basicFlags:>.
	self emitByteAtOffsetPut: _Flags
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 13:57:41'!
assembleBasicHash
	<inline: #_basicHash>.
	assembler
		loadZeroExtendShortRwithRoffset: _Hash;
		convertRtoSmallInteger
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 13:57:55'!
assembleBasicHashPut
	| nonInteger |
	<inline: #_basicHash:>.
	nonInteger := assembler labeledIntegerNativizationOfA.
	assembler
		storeShortAinRoffset: _Hash;
		@ nonInteger
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 13:58:05'!
assembleBasicSize
	<inline: #_smallSize>.
	self emitByteAtOffset: _SmallSize
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 13:58:15'!
assembleBasicSizePut
	<inline: #_smallSize:>.
	self emitByteAtOffsetPut: _SmallSize
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 13:58:32'!
assembleBasicULongAt
	| nonInteger |
	<inline: #_basicULongAt:>.
	nonInteger := assembler labeledIntegerNativizationOfA.
	assembler
		loadZeroExtendLongRwithRatA;
		@ nonInteger
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 13:58:44'!
assembleBasicULongAtPut
	| nonInteger |
	<inline: #_basicULongAt:put:>.
	nonInteger := assembler labeledIntegerNativizationOfA.
	assembler
		storeLongTinRatA;
		@ nonInteger;
		loadRwithT
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 13:58:53'!
assembleBeCurrent
	<inline: #_beCurrent>.
	assembler
		loadRwithRindex: 1;
		clearSafeRintegerBit;
		loadFPwithR
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 13:59:05'!
assembleBeEnvironment
	<inline: #_beEnvironment>.
	assembler loadEwithR
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 13:59:17'!
assembleBeFramePointer
	<inline: #_beFramePointer>.
	assembler storeRinFPindex: 1
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 13:59:31'!
assembleBitShiftLeft
	| success |
	<inline: #_bitShiftLeft:>.
	success := assembler newLabel.
	assembler
		loadTwithA;
		loadAwithR;
		clearSafeRintegerBit;
		convertTtoNativeInteger;
		shiftLeftRwithT;
		setSafeRintegerBit;
		pushR;
		shiftRightRwithT;
		setSafeRintegerBit;
		compareRwithA;
		popR;
		shortJumpIfEqualTo: success;
		loadRwithNil;
		@ success
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 13:59:55'!
assembleBitShiftRight
	<inline: #_bitShiftRight:>.
	assembler
		move: assembler regA to: assembler regT;
		convertToNativeInteger: assembler regT;
		shiftRightArithmetic: assembler regR by: assembler regT b;
		setIntegerBit: assembler regR
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:00:07'!
assembleBusyWait
	| loop |
	<inline: #_busyWait>.
	loop := assembler newLabel.
	assembler
		loadTwithImmediate: 0;
		@ loop;
		exchangeRindirectWithT;
		compareTwithImmediate: 0;
		shortJumpIfEqualTo: loop
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:00:23'!
assembleByteAt
	| nonInteger |
	<inline: #_byteAt:>.
	nonInteger := assembler labeledIntegerNativizationOfA.
	assembler
		loadZeroExtendByteRwithRatA;
		convertRtoSmallInteger;
		@ nonInteger
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:00:35'!
assembleByteAtPut
	| nonInteger1 nonInteger2 |
	<inline: #_byteAt:put:>.
	nonInteger1 := assembler labeledIntegerNativizationOfA.
	nonInteger2 := assembler labeledIntegerNativizationOfT.
	assembler
		storeByteTinRatA;
		@ nonInteger1;
		@ nonInteger2;
		loadRwithT;
		convertRtoSmallInteger
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:00:48'!
assembleCDeclCallWithArguments
	<inline: #_cdeclCallWithArguments:>.
	assembler
		loadZeroExtendByteTwithAindex: _SmallSize + 1;
		shiftTright: assembler wordSizeShift;
		pushS;
		saveCallerFrame;
		subTslotsToSP;
		assemble: 'and' with: assembler regSP with: -16;
		loopTtimes: [ assembler
				load: assembler regS
				fromMem: assembler memRefAatT;
				store: assembler regS
				intoMem: assembler memRefSPatT ].
	assembler addressSize = 8
		ifTrue: [ self loadArgumentsIntoRegisters ].
	assembler
		callR;
		restoreCallerFrame;
		popS
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:01:00'!
assembleCallWithArguments
	<inline: #_stdcallWithArguments:>.
	assembler
		loadZeroExtendByteTwithAindex: _SmallSize + 1;
		shiftTright: assembler wordSizeShift;
		loopTtimes: [ assembler pushAatToffset: 0 - assembler addressSize ].
	assembler addressSize = 8
		ifTrue: [ self loadArgumentsIntoRegisters ].
	assembler callR
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:01:08'!
assembleEnvironment
	<inline: #_environment>.
	assembler loadRwithE
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:01:23'!
assembleExpandInStackSized
	<inline: #_expandInStackSized:>.
	assembler
		convertAtoNativeInteger;
		loadTwithA;
		loopTtimes: [ assembler
				pushIndirectR;
				addRwithImmediate: assembler wordSize ]
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:01:36'!
assembleExtendedSize
	<inline: #_largeSize>.
	assembler
		loadZeroExtendLongRwithRindex: _ExtendedSize;
		convertRtoSmallInteger
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:01:45'!
assembleFloatEquals
	"
	first compare magnitudes to set error bit if NaN
	"
	<inline: #_floatEquals:>.
	assembler
		pushR;
		loadLargeX0withRindirect;
		compareLessThanDoubleX0withAindirect;
		popR;
		loadLargeX0withRindirect;
		compareEqualDoubleX0withAindirect;
		moveX0toR;
		addRwithImmediate: 1;
		convertRtoSmallInteger.
	self readFloatStatus
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:01:58'!
assembleFloatFractionPartInto
	<inline: #_floatFractionPartInto:>.
	assembler
		loadLargeX0withRindirect;
		roundDoubleX0intoX1;
		subDoubleX1fromX0;
		storeLargeX0inA.
	self readFloatStatus
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:02:11'!
assembleFloatLessThan
	<inline: #_floatLessThan:>.
	assembler
		loadLargeX0withRindirect;
		compareLessThanDoubleX0withAindirect;
		moveX0toR;
		addRwithImmediate: 1;
		convertRtoSmallInteger.
	self readFloatStatus
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:02:28'!
assembleFloatMinusInto
	<inline: #_floatMinus:into:>.
	assembler
		loadLargeX0withRindirect;
		loadLargeX1withAindirect;
		subDoubleX1fromX0;
		storeLargeX0inT.
	self readFloatStatus
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:02:37'!
assembleFloatMultiplyInto
	<inline: #_floatMultiply:into:>.
	assembler
		loadLargeX0withRindirect;
		loadLargeX1withAindirect;
		multiplyDoubleX0byX1;
		storeLargeX0inT.
	self readFloatStatus
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:02:45'!
assembleFloatPlusInto
	<inline: #_floatPlus:into:>.
	assembler
		loadLargeX0withRindirect;
		loadLargeX1withAindirect;
		addDoubleX1toX0;
		storeLargeX0inT.
	self readFloatStatus
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:02:57'!
assembleFloatQuotientInto
	<inline: #_floatQuotient:into:>.
	assembler
		loadLargeX0withRindirect;
		loadLargeX1withAindirect;
		divideDoubleX0byX1;
		storeLargeX0inT.
	self readFloatStatus
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:03:07'!
assembleFloatSqrtInto
	<inline: #_floatSqrtInto:>.
	assembler
		loadLargeX0withRindirect;
		sqrtDoubleX0;
		storeLargeX0inA.
	self readFloatStatus
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:03:16'!
assembleFloatTruncated
	<inline: #_floatTruncated>.
	assembler loadRconvertingDoublePointedByR.
	self readFloatStatus.
	assembler convertRtoSmallInteger
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:03:24'!
assembleFramePointer
	<inline: #_framePointer>.
	assembler loadRwithFPindex: 1
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:03:55'!
assembleGetTIBValue
	| nonInteger |
	<inline: #_getThreadInformationBlockValue>.
	nonInteger := assembler labeledIntegerNativizationOfR.
	assembler
		loadRwithTIBatR;
		@ nonInteger
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:04:12'!
assembleGetThreadValue
	| nonInteger uninitialized |
	<inline: #_getThreadValue>.
	nonInteger := assembler labeledIntegerNativizationOfR.
	uninitialized := assembler newLabel.
	assembler
		loadRwithThreadVariableAtR;
		compareRwithImmediate: 0;
		shortJumpIfEqualTo: uninitialized.
	assembler
		jumpOver: [ assembler
				@ uninitialized;
				@ nonInteger;
				loadRwithNil ]
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:04:30'!
assembleHigh16
	<inline: #_high16>.
	assembler wordSize > 4
		ifTrue: [ assembler clearRhigh32 ].
	assembler
		shiftRright: 15;
		setSafeRintegerBit
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:04:37'!
assembleHigh32
	<inline: #_high32>.
	assembler
		shiftLogicalRright: 31;
		setSafeRintegerBit
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:04:49'!
assembleHoldRefererIfNeeded
	<inline: #_holdRefererIfNeeded:>.
	assembler
		pushA;
		loadAwithGlobal: #WriteBarrier;
		callIndirectA;
		popA
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:05:05'!
assembleIntegerMultiplyByInto
	<inline: #_integerMultiplyBy:into:>.
	assembler
		convertRtoNativeInteger;
		convertAtoNativeInteger;
		multiplyRbyAwideningToA;
		storeRinTindex: 1;
		storeAinTindex: 2;
		loadRwithT
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:05:19'!
assembleInvoke
	<inline: #_invoke:>.
	assembler
		loadMwithA;
		callIndirectM
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:05:37'!
assembleLeadingZeroBitCount
	<inline: #_leadingZeroBitCount>.
	assembler
		convertRtoNativeInteger;
		leadingRzeroCount;
		convertRtoSmallInteger
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:05:46'!
assembleLoadFloatStatusFrom
	<inline: #_status:>.
	assembler loadMXCSRfromA
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:05:57'!
assembleLow16
	<inline: #_low16>.
	assembler
		andRwithImmediate: 16rFFFF;
		convertRtoSmallInteger
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:06:06'!
assembleLow32
	<inline: #_low32>.
	assembler wordSize > 4
		ifTrue: [ assembler
				andRwithImmediate: 16rFFFFFFFF;
				convertRtoSmallInteger ]
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:06:15'!
assembleNativeHalt
	<inline: #_halt>.
	assembler breakpoint
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:06:25'!
assembleNilSlots
	<inline: #_nilSlots:>.
	assembler
		pushE;
		loadEwithR;
		loadRwithNil;
		loadTwithA;
		convertTtoNativeInteger;
		writeTslots;
		popE
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:06:35'!
assembleObjectAtOffset
	| nonInteger1 |
	<inline: #_objectAtOffset:>.
	nonInteger1 := assembler labeledIntegerNativizationOfA.
	assembler
		loadRwithRatOffsetA;
		@ nonInteger1
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:06:44'!
assembleObjectAtOffsetPut
	| oop |
	<inline: #_objectAtOffset:put:>.
	oop := assembler labeledIntegerNativizationOfA.
	assembler
		storeTinRatOffsetA;
		@ oop;
		loadRwithT;
		convertRtoSmallInteger
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:06:57'!
assembleOop
	<inline: #_oop>.
	^ assembler convertRtoSmallInteger
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:07:10'!
assembleQuotientTowardZero
	<inline: #_quotientTowardZero:>.
	assembler
		convertRtoNativeInteger;
		convertAtoNativeInteger;
		loadTwithA;
		extendRtoAandDividebyT;
		convertRtoSmallInteger
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:07:20'!
assembleRelease
	<inline: #_release>.
	assembler
		lock;
		decRindirect
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:07:31'!
assembleRemainderTowardZero
	| adapt convert |
	<inline: #_remainderTowardZero:>.
	adapt := assembler newLabel.
	convert := assembler newLabel.
	assembler
		convertRtoNativeInteger;
		convertAtoNativeInteger;
		loadTwithA;
		xorAwithR;
		jumpIfSignTo: adapt;
		extendRtoAandDividebyT;
		loadRwithA;
		jumpTo: convert;
		@ adapt;
		extendRtoAandDividebyT;
		loadRwithA;
		testRwithR;
		jumpIfZeroTo: convert;
		addTtoR;
		@ convert;
		convertRtoSmallInteger
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:07:49'!
assembleRestore
	<inline: #_restore>.
	assembler loadEwithR
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:07:58'!
assembleRestoreAndTransferControlWithContext
	<inline: #_restoreAndTransferControlWithContext:>.
	assembler
		clearSafeRintegerBit;
		loadFPwithR;
		loadSPwithFP;
		loadRwithA;
		clearSafeRintegerBit;
		loadFPwithR;
		popR;
		loadEwithR;
		restoreCallerSelf;
		restoreCallerM;
		loadRwithS;
		return: 0
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:08:12'!
assembleRestoreWithContext
	<inline: #_restoreWithContext:>.
	assembler
		clearSafeRintegerBit;
		loadFPwithR;
		loadSPwithFP;
		loadRwithA;
		clearSafeRintegerBit;
		loadFPwithR
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:08:21'!
assembleSaveCurrentEnvironment
	<inline: #_saveCurrentEnvironment>.
	assembler
		clearSafeRintegerBit;
		pushE;
		popT;
		storeTinRindex: 1;
		setSafeRintegerBit
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:08:29'!
assembleSetTIBValue
	<inline: #_setThreadInformationBlockValue:>.
	assembler
		convertRtoNativeInteger;
		storeTIBatRwithA
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:08:37'!
assembleSetThreadValue
	| nonInteger |
	<inline: #_setThreadValue:>.
	nonInteger := assembler labeledIntegerNativizationOfR.
	assembler
		storeAinThreadVariableAtIndexR;
		convertRtoSmallInteger.
	assembler @ nonInteger
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:08:47'!
assembleSmallIntegerByteAt
	| nonInteger |
	<inline: #_smallIntegerByteAt:>.
	nonInteger := assembler labeledIntegerNativizationOfA.
	assembler
		convertRtoNativeInteger;
		pushR;
		loadZeroExtendByteRwithSPatA;
		convertRtoSmallInteger;
		popA;
		@ nonInteger
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:09:00'!
assembleStoreDoubleResult
	<inline: #_storeDoubleResult>.
	assembler storeDoubleResultInRindirect
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:09:09'!
assembleStoreFloatStatusInto
	<inline: #_readStatusOn:>.
	assembler storeMXCSRintoA
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:09:17'!
assembleTestSmallInteger
	| integer |
	<inline: #_isSmallInteger>.
	integer := assembler newLabel.
	assembler
		testRintegerBit;
		loadRwithTrue;
		shortJumpIfNotZeroTo: integer;
		loadRwithFalse;
		@ integer
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:09:46'!
assembleThisContext
	<inline: #_thisContext>.
	assembler loadRwithFP setRintegerBit
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:09:57'!
assembleTimesTwoPower
	<inline: #_timesTwoPower:>.
	assembler clearFPUFlags scaleFloatOnRWithA clearFPUFlags
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:10:15'!
assembleTransferControlDiscardingLastArgTo
	<inline: #_transferControlDiscardingLastArgTo:>.
	assembler
		restoreCallerFrame;
		popSPindirect;
		loadMwithA;
		jumpToMindex: 1
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:10:28'!
assembleTransferControlTo
	<inline: #_transferControlTo:>.
	assembler restoreCallerFrame; loadMwithA; jumpToMindex: 1
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:10:38'!
assembleULargeAtOffset
	| overflow1 overflow2 end |
	<inline: #_uLargeAtOffset:>.
	overflow1 := assembler newLabel.
	overflow2 := assembler newLabel.
	end := assembler newLabel.
	assembler
		convertAtoNativeInteger;
		loadRwithRatOffsetA;
		shiftRleft: 1;
		shortJumpIfCarryTo: overflow1;
		shortJumpIfSignTo: overflow2;
		setRintegerBit;
		shortJumpTo: end.
	assembler
		@ overflow1;
		@ overflow2;
		loadRwithNil;
		@ end
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:10:51'!
assembleULargeAtOffsetInto
	<inline: #_uLargeAtOffset:into:>.
	assembler
		convertAtoNativeInteger;
		loadAwithRoffsetAtA;
		storeAinTindex: 1;
		loadRwithT
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:11:00'!
assembleULargeAtOffsetPut
	| end notSmall |
	<inline: #_uLargeAtOffset:put:>.
	notSmall := assembler
		convertAtoNativeInteger;
		labeledIntegerBitTestOfT.
	end := assembler newLabel.
	assembler
		convertTtoNativeInteger;
		shortJumpTo: end;
		@ notSmall;
		loadTwithTindex: 1;
		@ end;
		storeTinRatOffsetA
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:11:09'!
assembleULongAtOffset
	| overflow1 overflow2 end |
	<inline: #_uLongAtOffset:>.
	overflow1 := assembler newLabel.
	overflow2 := assembler newLabel.
	end := assembler newLabel.
	assembler
		convertAtoNativeInteger;
		loadLongRwithRatOffsetA;
		shiftRleft: 1;
		shortJumpIfCarryTo: overflow1;
		shortJumpIfSignTo: overflow2;
		setRintegerBit;
		shortJumpTo: end.
	assembler
		@ overflow1;
		@ overflow2;
		loadRwithNil;
		@ end
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:11:17'!
assembleULongAtOffsetInto
	<inline: #_uLongAtOffset:into:>.
	assembler
		convertAtoNativeInteger;
		loadLongRwithRatOffsetA;
		storeRinTindex: 1;
		loadRwithT
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:11:24'!
assembleULongAtOffsetPut
	| end oop |
	<inline: #_uLongAtOffset:put:>.
	oop := assembler
		convertAtoNativeInteger;
		labeledIntegerBitTestOfT.
	end := assembler newLabel.
	assembler
		convertTtoNativeInteger;
		shortJumpTo: end;
		@ oop;
		loadTwithTindex: 1;
		@ end;
		storeLongTinRatOffsetA
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:11:32'!
assembleUShortAtOffsetPut
	| end notSmall |
	<inline: #_uShortAtOffset:put:>.
	notSmall := assembler
		convertAtoNativeInteger;
		labeledIntegerBitTestOfT.
	end := assembler newLabel.
	assembler
		convertTtoNativeInteger;
		shortJumpTo: end.
	assembler
		@ notSmall;
		loadTwithTindex: 1;
		@ end;
		storeShortTinRatOffsetA
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 11/1/2022 14:11:39'!
assembleZeroSlots
	<inline: #_zeroSlots:>.
	assembler
		pushE;
		loadEwithR;
		loadRwithImmediate: 0;
		loadTwithA;
		convertTtoNativeInteger;
		writeTslots;
		popE
! !

!InlineMessageLinker methodsFor: 'private - helpers' stamp: 'KenD 9/26/2022 12:32:24'!
emitByteAtOffset: offset
	assembler
		loadZeroExtendByteRwithRindex: offset + 1;
		convertRtoSmallInteger 
! !

!InlineMessageLinker methodsFor: 'private - helpers' stamp: 'KenD 9/26/2022 12:32:24'!
emitByteAtOffsetPut: offset
	| nonInteger |
	nonInteger := assembler labeledIntegerNativizationOfA.
	assembler
		storeByteAinRindex: offset + 1;
		@ nonInteger 
! !

!InlineMessageLinker methodsFor: 'private - helpers' stamp: 'KenD 9/26/2022 12:32:24'!
loadArgumentsIntoRegisters
	| stack1 stack2 stack3 stack4 |
	stack1 :=assembler memRef: rsp indexImm: 1.
	stack2 :=assembler memRef: rsp indexImm: 2.
	stack3 :=assembler memRef: rsp indexImm: 3.
	stack4 :=assembler memRef: rsp indexImm: 4.
	assembler
		load: rcx fromMem: stack1;
		load: rdx fromMem: stack2;
		load: r8 fromMem: stack3;
		load: r9 fromMem: stack4;
		assemble: 'movq' with: xmm0 with: rcx;
		assemble: 'movq' with: xmm1 with: rdx;
		assemble: 'movq' with: xmm2 with: r8;
		assemble: 'movq' with: xmm3 with: r9
! !

!InlineMessageLinker methodsFor: 'private - helpers' stamp: 'KenD 9/26/2022 12:32:24'!
readFPUStatus
	assembler
		loadAwithKnown: #FloatStatus;
		readFPUStatusOnA
! !

!InlineMessageLinker methodsFor: 'private - helpers' stamp: 'KenD 9/26/2022 12:32:24'!
readFloatStatus
	assembler
		loadAwithKnown: #FloatStatus;
		storeMXCSRintoA
! !

!InlineMessageLinker methodsFor: 'nativizing' stamp: 'KenD 11/8/2022 14:48:52'!
emitSend: aSymbol using: anAssembler
	| arity selector | 
	assembler := anAssembler.
	arity := aSymbol arity. 
	arity > 2 ifTrue: [assembler pop: assembler regS].
	arity > 1 ifTrue: [assembler pop: assembler regT].
	arity > 0 ifTrue: [assembler pop: assembler regA].
	self assert: arity <= 3 .
	selector := map at: aSymbol.
	self perform: selector
! !

!InlineMessageLinker methodsFor: 'nativizing' stamp: 'KenD 9/26/2022 12:32:24'!
emitSendDebuggable: aSymbol using: anAssembler
	self emitSend: aSymbol using: anAssembler 
! !

!InlineMessageLinker methodsFor: 'initialization' stamp: 'KenD 11/1/2022 14:14:44'!
initialize
	map := Dictionary new.
	self class supported do: [:each | map add: each].
	self filter: map keys asIdentitySet

	"
	InlineMessageLinker new
	"

! !

!InlineMessageLinker class methodsFor: 'private' stamp: 'KenD 11/1/2022 14:16:12'!
supported
	| selectors |
	selectors := self organization selectorsFor: #'private - assemble'.
	^selectors collect: [:selector | | cm key |
		cm := self >> selector.
		key := (cm pragmaAt: #inline:) argumentAt: 1. 
		key -> selector
	]. 

	"
	InlineMessageLinker supported
	"

! !

!InvokeLinker methodsFor: 'nativizing' stamp: 'KenD 9/26/2022 12:33:29'!
addMethod: aCompiledMethod
	self addMethod: aCompiledMethod for: aCompiledMethod selector
! !

!InvokeLinker methodsFor: 'nativizing' stamp: 'KenD 9/26/2022 12:33:29'!
addMethod: aCompiledMethod for: aSymbol
	| instructions send |
	filter add: aSymbol.
	instructions := invoker ifNil: [ aCompiledMethod nativeCode code ].
	send := SendSite new invoke: aCompiledMethod using: instructions.
	sends at: aSymbol put: send
! !

!InvokeLinker methodsFor: 'nativizing' stamp: 'KenD 9/26/2022 12:33:29'!
addMethods: aCollection
	aCollection do: [:m | self addMethod: m]
! !

!InvokeLinker methodsFor: 'nativizing' stamp: 'KenD 9/26/2022 12:33:29'!
emitSend: aSymbol using: anAssembler
	| send |
	send := sends at: aSymbol.
	anAssembler
		loadAwithLiteral: send;
		callIndirectA;
		discardArguments: aSymbol arity
! !

!InvokeLinker methodsFor: 'nativizing' stamp: 'KenD 9/26/2022 12:33:29'!
initialize
	super initialize.
	sends := Dictionary new.
	self filter: #()
! !

!InvokeLinker methodsFor: 'nativizing' stamp: 'KenD 9/26/2022 12:33:29'!
invoker: aNativeCode
	invoker := aNativeCode
! !

!LookupLinker methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:33:51'!
initializeFrom: aNativizationEnvironment
	lookup := aNativizationEnvironment lookupStub.
	lookupSuper := aNativizationEnvironment lookupSuperStub.

! !

!LookupLinker methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:33:51'!
lookup: aByteArray
	lookup := aByteArray
! !

!LookupLinker methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:33:51'!
lookupSuper: aByteArray
	lookupSuper := aByteArray
! !

!LookupLinker methodsFor: 'nativizing' stamp: 'KenD 9/26/2022 12:33:51'!
emitSend: aSymbol using: anAssembler
	| send |
	send := SendSite new lookup: aSymbol using: lookup.
	anAssembler
		loadAwithLiteral: send;
		callIndirectA;
		discardArguments: aSymbol arity.
	^send
! !

!LookupLinker methodsFor: 'nativizing' stamp: 'KenD 9/26/2022 12:33:51'!
emitSendSuper: aSymbol from: aClass using: anAssembler
	| send behavior |
	send := SendSite new lookup: aSymbol using: lookupSuper; beSuperSend.
	behavior := aClass superclass map instanceBehavior.
	anAssembler
		loadAwithLiteral: send;
		loadTwithLiteral: behavior;
		callIndirectA;
		discardArguments: aSymbol arity.
	^send
! !

!LazyLinker methodsFor: 'nativizing' stamp: 'KenD 9/26/2022 12:34:03'!
emitSend: aSymbol using: anAssembler
	| send |
	send := super emitSend: aSymbol using: anAssembler.
	sends add: send
! !

!LazyLinker methodsFor: 'nativizing' stamp: 'KenD 9/26/2022 12:34:03'!
initialize
	super initialize.
	sends := OrderedCollection new

! !

!LazyLinker methodsFor: 'nativizing' stamp: 'KenD 9/26/2022 12:34:03'!
sends
	^sends

! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:21'!
abi
	^platform abi
! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:21'!
addLinker: aLinker
	messageLinker add: aLinker
! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:21'!
globalNamed: aSymbol
	| index |
	index := self class indexOfGlobal: aSymbol.
	^globals at: index
! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:21'!
globalNamed: aSymbol put: anObject
	| index |
	index := self class indexOfGlobal: aSymbol.
	globals at: index put: anObject
! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:21'!
globals
	^globals
! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:21'!
globals: anArray
	globals := anArray
! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:21'!
inlinedMethods
	^inlinedMethods
! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:21'!
inlinedMethods: aCollection
	inlinedMethods := aCollection
! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:21'!
invokeStub
	| index |
	index := self class indexOfGlobal: #Invoke.
	^(globals at: index) code
! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:21'!
invokedMethods
	^invokedMethods
! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:21'!
invokedMethods: aCollection
	invokedMethods := aCollection asOrderedCollection 
! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:21'!
lookup
	| index |
	index := self class indexOfGlobal: #Lookup.
	^globals at: index
! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:21'!
lookupDebuggableStub
	| index |
	index := self class indexOfGlobal: #DebuggableLookup.
	^(globals at: index) code
! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:21'!
lookupStub
	| index |
	index := self class indexOfGlobal: #Lookup.
	^(globals at: index) code
! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:21'!
lookupSuper
	| index |
	index := self class indexOfGlobal: #LookupSuper.
	^globals at: index
! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:21'!
lookupSuperDebuggableStub
	| index |
	index := self class indexOfGlobal: #DebuggableLookupSuper.
	^(globals at: index) code
! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:21'!
lookupSuperStub
	| index |
	index := self class indexOfGlobal: #LookupSuper.
	^(globals at: index) code
! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:21'!
messageLinker
	^messageLinker
! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:21'!
messageLinker: aLinker
	messageLinker := aLinker 
! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:21'!
methodNativizer
	^cachedNativizer
! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:21'!
optimizedMethods
	^optimizedMethods
! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:21'!
optimizedMethods: aCollection
	optimizedMethods := aCollection
! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:21'!
platform
	^platform
! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:21'!
platform: aNativizationPlatform
	platform := aNativizationPlatform
! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:21'!
safepoint
	| index |
	index := self class indexOfGlobal: #Safepoint.
	^(globals at: index) code
! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:21'!
safepointCheck: anObject
	safepointCheck := anObject 
! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:21'!
wordSize
	^self abi wordSize
! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:21'!
wordSizeShift
	^self abi wordSizeShift
! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:21'!
writeBarrier
	^writeBarrier
! !

!NativizationEnvironment methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:21'!
writeBarrier: aCompiledMethod
	writeBarrier := aCompiledMethod.
	invokedMethods add: writeBarrier 
! !

!NativizationEnvironment methodsFor: 'services' stamp: 'KenD 9/26/2022 12:35:21'!
monomorphicCache
	| asm lookup next |
	asm := platform newAssembler.
	lookup := asm newLabel.
	asm
		loadTwithAindex: 3;
		loadSwithGlobal: #SmallIntegerBehavior.
	next := asm labeledNonIntegerBitTestOfR.
	asm
		loadLongSwithRindex: 0;
		@ next;
		compareSwithTindex: 1;
		shortJumpIfNotEqualTo: lookup;
		loadMwithTindex: 2;
		jumpToMindex: 1;
		@ lookup;
		loadMwithGlobal: #Lookup;
		jumpToMindex: 1;
		applyFixups.
	^asm nativeCode code
! !

!NativizationEnvironment methodsFor: 'services' stamp: 'KenD 9/26/2022 12:35:21'!
nativize: aCompiledMethod
	^(self shouldOptimize: aCompiledMethod)
		  ifTrue: [ self nativizeOptimizing: aCompiledMethod ]
		  ifFalse: [ self nativizeWithoutOptimizing: aCompiledMethod ] 
! !

!NativizationEnvironment methodsFor: 'services' stamp: 'KenD 9/26/2022 12:35:21'!
nativizeOptimizing: aCompiledMethod
	self optimizingNativizer
		method: aCompiledMethod;
		nativize
! !

!NativizationEnvironment methodsFor: 'services' stamp: 'KenD 9/26/2022 12:35:21'!
nativizeWithoutOptimizing: aCompiledMethod
	| method |
	method := self
		nativizerDuring: [ :nativizer | nativizer nativize: aCompiledMethod ].
	^method
! !

!NativizationEnvironment methodsFor: 'services' stamp: 'KenD 9/26/2022 12:35:21'!
nativizerDuring: aBlock
	^busy
		  ifFalse: [ 
			  busy := true.
			  [ aBlock value: cachedNativizer ] ensure: [ busy := false ] ]
		  ifTrue: [ 
			  | old |
			  old := cachedNativizer. 
			  [ 
			  cachedNativizer := self newExpressionNativizer.
			  aBlock value: cachedNativizer ] ensure: [ cachedNativizer := old ] ]
! !

!NativizationEnvironment methodsFor: 'services' stamp: 'KenD 9/26/2022 12:35:21'!
newExpressionNativizer
	^SExpressionNativizer new environment: self
! !

!NativizationEnvironment methodsFor: 'services' stamp: 'KenD 9/26/2022 12:35:21'!
optimizingNativizer
	^OptimizingNativizer new environment: self
! !

!NativizationEnvironment methodsFor: 'services' stamp: 'KenD 9/26/2022 12:35:21'!
polymorphicCache
	| asm smi case2 case3 case4 case5 case6 case7 lookup |
	asm := platform newAssembler.
	smi := asm newLabel.
	case2 := asm newLabel.
	case3 := asm newLabel.
	case4 := asm newLabel.
	case5 := asm newLabel.
	case6 := asm newLabel.
	case7 := asm newLabel.
	lookup := asm newLabel.
	asm loadTwithAindex: 3.
	smi := asm labeledNonIntegerBitTestOfR.
	asm
		loadLongSwithRindex: 0;
		compareSwithTindex: 1;
		shortJumpIfNotEqualTo: case2;
		loadMwithTindex: 2;
		jumpToMindex: 1;
		@ case2;
		compareSwithTindex: 3;
		shortJumpIfNotEqualTo: case3;
		loadMwithTindex: 4;
		jumpToMindex: 1;
		@ case3;
		compareSwithTindex: 5;
		shortJumpIfNotEqualTo: case4;
		loadMwithTindex: 6;
		jumpToMindex: 1;
		@ case4;
		compareSwithTindex: 7;
		shortJumpIfNotEqualTo: case5;
		loadMwithTindex: 8;
		jumpToMindex: 1;
		@ case5;
		compareSwithTindex: 9;
		shortJumpIfNotEqualTo: case6;
		loadMwithTindex: 10;
		jumpToMindex: 1;
		@ case6;
		compareSwithTindex: 11;
		shortJumpIfNotEqualTo: case7;
		loadMwithTindex: 12;
		jumpToMindex: 1;
		@ case7;
		compareSwithTindex: 13;
		shortJumpIfNotEqualTo: lookup;
		loadMwithTindex: 14;
		jumpToMindex: 1;
		@ lookup;
		loadMwithGlobal: #Lookup;
		jumpToMindex: 1;
		@ smi;
		loadMwithTindex: 15;
		jumpToMindex: 1;
		applyFixups.
	^asm nativeCode code
! !

!NativizationEnvironment methodsFor: 'services' stamp: 'KenD 9/26/2022 12:35:21'!
sexpressionOffsetsOf: code
	| method |
	method := code method.
	(self shouldOptimize: method) ifTrue: [ ^#(  ) ].
	^self nativizerDuring: [ :nativizer |
		  method nativeCode ifNotNil: [ method := method copy ].
		  nativizer compile: method.
		  nativizer sexpressionOffsetsOf: code ]
! !

!NativizationEnvironment methodsFor: 'queries' stamp: 'KenD 9/26/2022 12:35:21'!
shouldInline: aSymbol
	^inlinedMethods anySatisfy: [ :m | m selector = aSymbol ]
! !

!NativizationEnvironment methodsFor: 'queries' stamp: 'KenD 11/1/2022 11:51:34'!
shouldOptimize: method
	| selector classname |
	selector := method selector.
	classname := method classBinding name.
	^ optimizedMethods anySatisfy: [:m | m selector = selector and: [ m classBinding name = classname ]  ]
! !

!NativizationEnvironment methodsFor: 'printing & storing' stamp: 'KenD 9/26/2022 12:35:21'!
printOn:aStream
	"append a printed representation of the receiver to the argument, aStream"

	super printOn:aStream.
	aStream nextPutAll:'(platform: '.
	platform name printOn:aStream.
	aStream nextPut:$)
! !

!NativizationEnvironment methodsFor: 'initialization' stamp: 'KenD 9/26/2022 12:35:21'!
completeInitialization
	cachedNativizer := self newExpressionNativizer 
! !

!NativizationEnvironment methodsFor: 'initialization' stamp: 'KenD 11/1/2022 14:55:11'!
initialize
	busy := false.
	optimizedMethods := OrderedCollection new.
	invokedMethods := OrderedCollection new.
	inlinedMethods := OrderedCollection new.
	messageLinker := CompositeMessageLinker new.
	messageLinker add: InlineMessageLinker new.
	globals := Array new: self class globalNames size.
	self flag: #FixMe.
	"self
		initializeGlobals;
		inlinedMethods: self class inlinedMethods;
		invokedMethods: self class invokedMethods;
		optimizedMethods: self class optimizedMethods
"! !

!NativizationEnvironment methodsFor: 'initialization' stamp: 'KenD 9/26/2022 12:35:21'!
setupMessageLinkers
	| invoker dispatcher |
	invoker := InvokeLinker new invoker: self invokeStub; addMethods: invokedMethods.
	dispatcher := LookupLinker new initializeFrom: self.
	self
		addLinker: invoker;
		addLinker: dispatcher;
		completeInitialization
! !

!NativizationEnvironment class methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:21'!
globalNames
	^#(Lookup LookupSuper WriteBarrier Safepoint SmallIntegerBehavior Invoke DebuggableLookup DebuggableLookupSuper)
! !

!NativizationEnvironment class methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:21'!
indexOfGlobal: aSymbol
	^self globalNames
		indexOf: aSymbol
		ifAbsent: [self error: 'global not found']
! !

!NativizationEnvironment class methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:21'!
inlinedMethods
	| map |
	map := {
		(ProtoObject -> #(#objectAtValid: #objectAtValid:put: #behavior #class #primitiveAt: #_cachedLookup: #_cachedLookup:in:)).
		(Object -> #(#byteAtValid: #byteAtValid:put: #basicObjectIndexOf: #at:put:)).
		(Species -> #(#instSize #_instancesAreArrayed #_instancesHavePointers #memory #instanceBehavior #primitiveNew #primitiveNew:)).
		(CompiledMethod -> #(#prepareForExecution #isNativized #nativeCode #blockCount #literalIndexFrom:)).
		(CompiledBlock -> #(#argumentCount #blockNumber #blockCode #method)).
		(NativeCode -> #(#code)).
		(GCSpace -> #(#commitedLimit #nextFree #nextFree:)).
		(CharacterArray -> #(#characterAtValid:))}.
	^self undermethods , (self methodSubset: map)
! !

!NativizationEnvironment class methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:21'!
invokedMethods
	| map |
	map := {
		(ProtoObject -> #(behavior class primitiveAt: #initializeExtended:contentSize:)).
		(Object -> #(#_replaceFrom:to:with:)).
		(Species -> #(#allocate:size: instanceBehavior _instancesAreArrayed _instancesHavePointers #nil:slotsOf: memory primitiveNewBytes: primitiveNewPointers: #zero:bytesOf:))}.
	^self undermethods , (self methodSubset: map)
! !

!NativizationEnvironment class methodsFor: 'accessing' stamp: 'KenD 11/1/2022 11:36:20'!
methodSubset: aDictionary
	| result |
	result := OrderedCollection new.
	aDictionary keysAndValuesDo: [ :species :selectors | 
		selectors collect: [:sel |  species >> sel ifNil: [self assert: false] ] into: result].
	^result
! !

!NativizationEnvironment class methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:21'!
optimizedMethods
	| map |
	map := {
		(ProtoObject -> #(behavior class primitiveAt: #primitiveAt:put: #initializeExtended:contentSize:)).
		(Object -> #(at: #at:put: basicByteAt: #basicByteAt:put: byteAtValid: #byteAtValid:put:
					 basicObjectAt: #basicObjectAt:put: #replaceBytesForwardFrom:to:with:startingAt:)).
		(SendSite -> #(_dispatchOn: #_dispatchOn:startingAt: _dispatchDebuggableOn: #_dispatchDebuggableOn:startingAt:)).
		(Species -> #(#allocate:size: primitiveNew primitiveNew: instSize primitiveNewBytes: primitiveNewPointers:)).
		('Float class' -> #(new)).
		(CompiledBlock -> #(argumentCount arity blockCode method)).
		(Closure -> #(value value: #value:value:)).
		(CompiledMethod -> #(blockCount isNativized)).
		(String -> #(at: #at:put: byteAt: #byteAt:put:)).
		(GCSpace -> #(lockedAllocateIfPossible: lockedAllocateUnsafe: shallowCopy:)).
		(Memory -> #(shallowCopy:))}.
	^self undermethods , (self methodSubset: map)
! !

!NativizationEnvironment class methodsFor: 'instance creation' stamp: 'KenD 11/1/2022 14:56:16'!
forPlatform: aNativizationPlatform
	| env |

	env := self basicNew initialize.
	env platform: aNativizationPlatform.
	^ env
! !

!NativizationEnvironment class methodsFor: 'instance creation' stamp: 'KenD 11/1/2022 13:25:42'!
forTesting

	^ self forPlatform: NativizationPlatform default! !

!NativizationEnvironment class methodsFor: 'instance creation' stamp: 'KenD 11/1/2022 12:18:47'!
new
	self shouldNotImplement. "Use #forPlatform: instead"! !

!NativizationPlatform methodsFor: 'initialization' stamp: 'KenD 9/28/2022 11:29:49'!
abi: anABI
	self assert: abi isNil.
	self assert: anABI notNil.

	abi := anABI.
! !

!NativizationPlatform methodsFor: 'initialization' stamp: 'KenD 10/4/2022 12:56:19'!
codeGeneratorClass: aClass
	self assert: codeGeneratorClass isNil.
	self assert: aClass notNil.

	codeGeneratorClass := aClass.
! !

!NativizationPlatform methodsFor: 'initialization' stamp: 'KenD 10/4/2022 12:56:30'!
name: aString
	self assert: name isNil.
	self assert: aString notNil.

	name := aString.
! !

!NativizationPlatform methodsFor: 'initialization' stamp: 'KenD 10/4/2022 12:56:44'!
wordSize: anInteger
	self assert: wordSize isNil.
	self assert: (anInteger == 8 or:[ anInteger == 4]).

	wordSize := anInteger.
! !

!NativizationPlatform methodsFor: 'instance creation' stamp: 'KenD 9/26/2022 12:35:44'!
newAssembler
	^ Assembler new platform: self
! !

!NativizationPlatform methodsFor: 'instance creation' stamp: 'KenD 9/28/2022 11:29:19'!
newCodeGenerator
	self assert: codeGeneratorClass notNil.

	^ codeGeneratorClass new platform: self.
! !

!NativizationPlatform methodsFor: 'accessing' stamp: 'KenD 10/4/2022 12:45:09'!
abi
	self assert: abi notNil.  
	^ abi
! !

!NativizationPlatform methodsFor: 'accessing' stamp: 'KenD 10/4/2022 12:45:17'!
name
	self assert: name notNil.
	^ name
! !

!NativizationPlatform methodsFor: 'accessing' stamp: 'KenD 10/4/2022 12:45:29'!
wordSize
	self assert: wordSize notNil.
	^ wordSize
! !

!NativizationPlatform methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:44'!
wordSizeShift
	^ #(0 0 0 2 0 0 0 3) at: self wordSize
! !

!NativizationPlatform methodsFor: 'printing & storing' stamp: 'KenD 9/26/2022 12:35:44'!
printOn: aStream
	super printOn:aStream.
	aStream nextPut: $(.
	name printOn:aStream.
	aStream nextPut: $).
! !

!NativizationPlatform class methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:44'!
default
	"Return the default platform to use for tests. Defaults to host.

	 NEVER, EVER use this for anything but testing!!"

	^ Default ifNil: [ self host ]
! !

!NativizationPlatform class methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:44'!
default: aNativizationPlatform
	"Set the default platform to use in tests."

	Default := aNativizationPlatform.
! !

!NativizationPlatform class methodsFor: 'accessing' stamp: 'KenD 11/1/2022 10:39:43'!
host
	"Return platform for the machine this code is running on."

"	| host |

	host := Smalltalk host.
	host = 'x86_64-linux-gnu' ifTrue:[ ^ self x86_64_linux_gnu ].
	host = 'x86_64-darwin' ifTrue:[ ^ self x86_64_darwin ].
	host = 'x86_64-win32' ifTrue:[ ^self x86_64_win32 ].
          "" aarch64-linux-gnu  ""
	host = 'riscv64-linux-gnu' ifTrue:[ ^ self riscv64_linux_gnu ].

	self error:'Unssuported host: ', host.	
"
	self flag: #FixME.
	
	^ self riscv64_linux_gnu

! !

!NativizationPlatform class methodsFor: 'accessing' stamp: 'KenD 10/4/2022 12:51:12'!
riscv64_linux_gnu

		^ self new
		name: 'riscv64_linux_gnu';
		wordSize: 8;
		abi: RV64GABI new;
		codeGeneratorClass: RV64GCodeGenerator ;
		yourself! !

!NativizationPlatform class methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:44'!
x86_64_darwin
	^ self new
		name: 'x86_64-darwin';
		wordSize: 8;
		abi: SysVX64ABI new;
		codeGeneratorClass: AMD64CodeGenerator;
		yourself
! !

!NativizationPlatform class methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:44'!
x86_64_linux_gnu
	^ self new
		name: 'x86_64-linux-gnu';
		wordSize: 8;
		abi: SysVX64ABI new;
		codeGeneratorClass: AMD64CodeGenerator;   
		yourself
! !

!NativizationPlatform class methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:44'!
x86_64_win32
	^ self new
		name: 'x86_64-win32';
		wordSize: 8;
		abi: WinX64ABI new;
		codeGeneratorClass: AMD64CodeGenerator;   
		yourself
! !

!Opcode methodsFor: 'codeGeneration' stamp: 'KenD 2/24/2021 14:04:47'!
nativizeUsing: anAssembler for: messageNativizer

	self nativizeUsing: anAssembler! !

!EnsureSmallIntegerOpcode class methodsFor: 'instance creation' stamp: 'KenD 3/3/2021 13:03:09'!
decodeUsing: anAstcodeDecoder 

	^self new! !

!EnsureASmallInteger methodsFor: 'codeGeneration' stamp: 'KenD 3/3/2021 13:05:02'!
nativizeUsing: anAssembler for: messageNativizer 

	anAssembler
		testIntegerBitOf: anAssembler regA8;
		jumpIfZeroTo: messageNativizer failLabel! !

!EnsureRSmallInteger methodsFor: 'codeGeneration' stamp: 'KenD 3/3/2021 13:06:01'!
nativizeUsing: anAssembler for: messageNativizer 

	anAssembler
		testIntegerBitOf: anAssembler regR8;
		jumpIfZeroTo: messageNativizer failLabel! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
addFallback: aBlock
	fallbacks add: aBlock
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
argumentAt: index in: envIndex
	envIndex ifNil: [ ^ self argumentInStackAt: index ].
	envIndex < 0
		ifTrue: [ self argumentInlinedAt: index ]
		ifFalse: [ self argumentInEnvironmentAt: index ]
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
argumentCount
	^activeScript argumentCount
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
argumentInEnvironmentAt: index
	ir loadRwithEindex: index + SClosure instSize
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
argumentInStackAt: index
	| args end |
	args := self argumentCount.
	method hasFrame ifTrue: [ 
		end := 3 + args.
	ir loadRwithFPindex: end - index ] ifFalse: [ 
		end := 2 + args.
		ir  loadRwithSPindex: end - index
	 ]
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
argumentInlinedAt: index
	self temporaryInStackAt: index
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
associationValueAt: anInteger
	| literal |
	literal := self methodLiteralAt: anInteger.
	ir
		loadRwithLiteral: literal;
		loadRwithRindex: 2
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
associationValueAt: anInteger put: dummy
	| literal |
	literal := self methodLiteralAt: anInteger.
	ir
		loadAwithLiteral: literal;
		storeRinAindex: 2;
		pushA.
	self emitWriteBarrier 
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
captureClosure: anSBlock
	| slot variables |
	self instantiateClosure: anSBlock.
	slot := 3.
	variables := anSBlock capturedVariables readStream.
	[ variables atEnd ]
		whileFalse: [ self captureVariable: variables index: slot.
			slot := slot + 1 ].
	anSBlock capturesHome
		ifTrue: [ self emitSend: #saveHomeFrame ]
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
captureVariable: stream index: anInteger
	| type pos |
	type := stream next.
	type = nil ifTrue: [^self].
	type = Self ifTrue: [^ir storeSinRindex: anInteger].
	type = Environment ifTrue: [^ir storeEinRindex: anInteger].
	pos := stream next.
	type = LocalArgument ifTrue: [
		ir
			loadTwithFPindex: pos + 2;
			storeTinRindex: anInteger].
	type = EnvironmentValue
		ifTrue: [ir loadTwithEindex: pos; storeTinRindex: anInteger]
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
constPoolValueAt: anInteger
	| literal |
	literal := self methodLiteralAt: anInteger.
	ir loadRwithLiteral: literal
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
dropTos
	ir dropTos: 1.
	^stackCount := stackCount - 1
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
emitBlockPrologue: anSBlock
	ir saveCallerFrame.
	self
		loadBlockSelf: anSBlock compiledCode;
		loadBlockNativeCode;
		pushNativeCode;
		pushEnvironments;
		initializeTemporaries: anSBlock tempCount
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
emitCallbackEpilogue
	ir restoreCallerFrame.
	environment abi
		restoreContext: method descriptor with: ir
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
emitCallbackPrologue
	| retaddr |
	environment abi emitEntrypoint: method descriptor with: ir.
	retaddr := 0.
	ir
		pushImm: retaddr;
		xorFPwithFP;
		loadLongMwithIPoffset: 0 - ir currentAddress + ImageSegmentWriter behaviorOffset;
		loadMwithMindex: SCallbackMethod behaviorNativeCodeSlot;
		loadGwithLiteral: environment globals;
		loadNilWithLiteral: nil;
		loadTrueWithLiteral: true;
		loadFalseWithLiteral: false;
		loadEwithNil;
		loadRwithMindex: (NativeCode indexOfSlot: 'compiledCode');
		loadRwithRindex: (SCallbackMethod indexOfSlot: 'receiver')
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
emitEpilogue
	method hasBlocks
		ifTrue: [ ir restoreCallerEnvironment ].
	method isCallback
		ifTrue: [ ^ self emitCallbackEpilogue ].
	method isFrameless
		ifFalse: [ ir restoreCallerFrame ].
	ir
		restoreCallerSelf;
		restoreCallerM;
		return
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
emitFFICall
	self loadObject: method.
	ir pushR; pushS.
	self emitSend: #_ffiCall:.
	ir
		restoreCallerFrame;
		restoreCallerSelf;
		restoreCallerM;
		return
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
emitFallbacks
	fallbacks do: [:block | block value]
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
emitFramedMethodPrologue
	ir
		saveCallerFrame;
		pushR;
		initializeS.
	method isCalloutMethod
		ifTrue: [ self emitFFICall ]
		ifFalse: [ self
				pushNativeCode;
				initializeMethodEnvironment;
				initializeMethodTemporaries;
				emitSafepointCheck ]
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
emitFramelessMethodPrologue
	method capturesSelf
		ifTrue: [ ir initializeS ]
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
emitMethodPrologue
	method isCallback
		ifTrue: [ ^self
				emitCallbackPrologue;
				emitFramedMethodPrologue ].
	method isFrameless
		ifTrue: [ self emitFramelessMethodPrologue ]
		ifFalse: [ self emitFramedMethodPrologue ]
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
emitSafepointCheck
	
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
emitSend: selector
 	| linker |
	linker := environment messageLinker.
	method isDebuggable
		ifTrue: [ linker emitSendDebuggable: selector using: ir ]
		ifFalse: [ linker emitSend: selector using: ir ]
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
emitSend: selector super: aBoolean
	| linker |
	linker := environment messageLinker.
	
	method isDebuggable
		ifTrue: [ aBoolean ifTrue: [linker emitSendSuperDebuggable: selector from: method classBinding using: ir] ifFalse: [linker emitSendDebuggable: selector using: ir ]]
		ifFalse: [ aBoolean ifTrue: [linker emitSendSuper: selector from: method classBinding using: ir ] ifFalse: [linker emitSend: selector using: ir ]]
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
emitWriteBarrier
	ir
		loadAwithGlobal: #WriteBarrier;
		callIndirectA;
		discardArguments: 1
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
falseLiteral
	ir loadRwithFalse
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
initializeMethodEnvironment
	method hasBlocks
		ifFalse: [ ^ self ].
	ir pushE.
	method hasEnvironment
		ifTrue: [ ir
				pushSmallInteger: method environmentCount;
				loadRwithM.
			self emitSend: #newEnvironment:.
			ir
				loadEwithR;
				pushE ]
		ifFalse: [ ir pushNil ]
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
initializeMethodTemporaries
	self initializeTemporaries: method tempCount
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
initializeTemporaries: count
	count = 0
		ifTrue: [ ^ self ].
	count <= 6
		ifTrue: [ count timesRepeat: [ ir pushNil ] ]
		ifFalse: [ ir
				loop: [ ir pushNil ] times: count ]
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
instanceVarAt: index
	ir loadRwithSindex: index
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
instanceVarAt: index put: value
	ir storeRinSindex: index; pushS.
	self emitWriteBarrier
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
instantiateClosure: anSBlock
	self loadLiteralAt: anSBlock index; emitSend: #newClosure
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
loadAwithArgument: index in: envIndex
	envIndex
		ifNil: [ ^ self loadAwithArgumentInStackAt: index ]. envIndex < 0
		ifTrue: [ self loadAwithArgumentInlinedAt: index ]
		ifFalse: [ self loadAwithArgumentInEnvironment: envIndex at: index ]
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
loadAwithArgumentInEnvironment: envIndex at: index
	| offset |
	envIndex = 0
		ifTrue: [ ir loadAwithEindex: index + SClosure instSize ]
		ifFalse: [ offset := activeScript offsetOfEnvironment: envIndex.
			ir
				loadAwithEindex: envIndex + SClosure instSize;
				loadAwithAindex: index + offset ]
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
loadAwithArgumentInStackAt: index
		| end |
	end := 3 + self argumentCount.
			ir loadAwithFPindex: end - index

! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
loadAwithArgumentInlinedAt: index
	self loadAwithTemporaryInStackAt: index

! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
loadAwithStack: anInteger
	ir loadAwithFPindex: 1 - anInteger
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
loadAwithTemporary: index in: envIndex

	envIndex
		ifNil: [ self loadAwithTemporaryInStackAt: index ]
		ifNotNil: [ 
		self loadAwithTemporaryInEnvironment: envIndex at: index ]
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
loadAwithTemporaryInEnvironment: envIndex at: index
	| offset |
	envIndex = 0
		ifTrue: [offset := activeScript offsetOfCurrentEnvironment. ir loadAwithEindex: index + offset ]
		ifFalse: [ offset := activeScript offsetOfEnvironment: envIndex.
			ir
				loadAwithEindex: envIndex + SClosure instSize;
				loadAwithAindex: index + offset ]
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
loadAwithTemporaryInStackAt: index
			| start |
	start := self pushesEnvironments
					 ifTrue: [ -3 ]
					 ifFalse: [ -1 ].
		^ ir loadAwithFPindex: start - index

! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
loadBlockNativeCode
	| block nativeCode |
	block := SClosure indexOfSlot: 'block'.
	nativeCode := SCompiledBlock indexOfSlot: 'nativeCode'.
	ir
		loadMwithRindex: block;
		loadMwithMindex: nativeCode
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
loadBlockSelf: aCompiledBlock
	| offset | 
	aCompiledBlock capturesSelf
		ifTrue: [ offset := aCompiledBlock capturesHome
				ifTrue: [ 1 ]
				ifFalse: [ 0 ].
			ir loadSwithRindex: SClosure instSize + 1 + offset ]
		ifFalse: [ ir loadSwithNil ].
	ir pushS
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
loadLiteralAt: anInteger
	| literal |
	literal := self methodLiteralAt: anInteger.
	ir loadRwithLiteral: literal
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
loadObject: anObject
	ir 	 loadRwithLiteral:  anObject
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
loadRwithStack: anInteger
	ir loadRwithFPindex: 1 - anInteger
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
loadTwithStack: anInteger
	ir loadTwithFPindex: 1 - anInteger
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
methodLiteralAt: anInteger
	^ method at: anInteger
	
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
methodLiteralFrom: anInteger
	^ method at: anInteger
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
nativeCode
	^mainCode
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
nativize
	method sexpressions acceptVisitor: self.
	[remainingBlocks isEmpty]
		whileFalse: [self nativizeBlock: remainingBlocks removeFirst]
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
nativize: aCompiledMethod
	self
		resetFor: aCompiledMethod;
		nativize.
	^ aCompiledMethod nativeCode: mainCode
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
nativizeBlock: anSBlock
	| statements |
	self resetForBlock: anSBlock.
	activeScript := anSBlock.
	self emitBlockPrologue: anSBlock.
	statements := anSBlock statements.
	statements do: [:s | s acceptVisitor: self].
	self saveContextSwitchPoint.
	(statements isEmpty orNot: [statements last isReturn])
		ifTrue: [self emitEpilogue].
	self emitFallbacks.
	anSBlock compiledCode nativeCode: ir applyFixups nativeCode
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
nilLiteral
	ir loadRwithNil
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
popR
	ir popR.
	stackCount := stackCount - 1
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
pushEnvironments
	ir pushE; loadEwithR; pushE
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
pushNativeCode
	ir pushM
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
pushR
	ir pushR.
	^stackCount := stackCount + 1
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
pushesEnvironments
	^method hasBlocks
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
receiver
	ir loadRwithS
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
resetFor: aCompiledMethod
	| fixed |
	method := aCompiledMethod.
	fallbacks := OrderedCollection new.
	remainingBlocks := OrderedCollection new.
	fixed := aCompiledMethod hasBlocks ifTrue: [4] ifFalse: [2].
	stackCount := aCompiledMethod tempCount + fixed.
	ir reset
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
resetForBlock: anSBlock
	fallbacks := OrderedCollection new.
	stackCount := anSBlock tempCount + 4.
	ir reset
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
saveContextSwitchPoint
	method isDebuggable
		ifFalse: [ ^ self ].
	ir
		pushA;
		pushT;
		pushR.
	environment messageLinker emitSend: #signalStep using: ir.
	ir
		popR;
		popT;
		popA
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
saveMethodCode
	mainCode := ir
					applyFixups;
					nativeCode
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
storeRInStack: index
	ir storeRinFPindex: 1 - index
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
temporaryAt: index in: envIndex
	envIndex ifNil: [ self temporaryInStackAt: index ]
ifNotNil: [ self temporaryInEnvironment: envIndex at: index ]
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
temporaryAt: index in: envIndex put: dummy
	envIndex ifNil: [self temporaryInStackAtPut: index ] ifNotNil: [ 
	self temporaryInEnvironment: envIndex atPut: index]
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
temporaryInEnvironment: envIndex at: index
	| offset |
	envIndex = 0
		ifTrue: [offset := activeScript offsetOfCurrentEnvironment. ir loadRwithEindex: index + offset ]
		ifFalse: [ 
			offset := activeScript offsetOfEnvironment: envIndex.
			ir
				loadRwithEindex: envIndex + SClosure instSize ;
				loadRwithRindex: index + offset]
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
temporaryInEnvironment: envIndex atPut: index
	| offset |
	envIndex = 0
		ifTrue: [ offset := activeScript offsetOfCurrentEnvironment.
			ir
				storeRinEindex: index + offset;
				pushE ]
		ifFalse: [ offset := activeScript offsetOfEnvironment: envIndex.
			ir
				loadTwithEindex: envIndex + SClosure instSize ;
				storeRinTindex: index + offset;
				pushT ].
	self emitWriteBarrier
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
temporaryInStackAt: index
		| start |
	start := self pushesEnvironments
					 ifTrue: [ -3 ]
					 ifFalse: [ -1 ].
		^ ir loadRwithFPindex: start - index .

! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
temporaryInStackAtPut: index
			| start |
	start := self pushesEnvironments
						 ifTrue: [ -3 ]
						 ifFalse: [ -1 ].
			ir storeRinFPindex: start - index

! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
trueLiteral
	ir loadRwithTrue
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
visitAssignment: anSAssignment
	anSAssignment expression acceptVisitor: self.
	anSAssignment assignees do: [ :a | 
		a binding assign: nil within: self ]
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
visitBlock: anSBlock
	anSBlock isInlined
		ifTrue: [ ^ anSBlock statements do: [ :s | s acceptVisitor: self ] ].
	remainingBlocks add: anSBlock.
	self captureClosure: anSBlock 
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
visitCascade: anSCascade
	| receiver index |
	receiver := anSCascade receiver.
	receiver acceptVisitor: self.
	index := self pushR.
	anSCascade messages
		do: [ :m | self visitCascadeMessage: m receiver: index super: receiver isSuper ].
	self dropTos
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
visitCascadeMessage: anSCascadeMessage receiver: index super: aBoolean
	| arguments |
	arguments := anSCascadeMessage arguments.
	arguments
		do: [ :node | 
			node acceptVisitor: self.
			self pushR ].
	self
		loadRwithStack: index;
		emitSend: anSCascadeMessage selector super: aBoolean.
	stackCount := stackCount - arguments size
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
visitIdentifier: anSIdentifier
	anSIdentifier binding valueWithin: self
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
visitInlinedMessage: anSMessage
	| nativizer |
	nativizer := InlinedMessageNativizer new
		message: anSMessage;
		assembler: ir;
		nativizer: self.
	nativizer inlineMessage
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
visitLiteral: anSLiteral
	| value |
	value := anSLiteral value.
	value isSmallInteger
		ifTrue: [ ir loadRwithSmallInteger: value ]
		ifFalse: [ self loadLiteralAt: anSLiteral index ]
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
visitMessage: anSMessage
	| arguments index |
	anSMessage isInlined
		ifTrue: [ ^ self visitInlinedMessage: anSMessage ].
	anSMessage isOptimized
		ifTrue: [ ^ self visitOptimizedMessage: anSMessage ].
	anSMessage receiver acceptVisitor: self.
	arguments := anSMessage arguments.
	arguments isEmpty
		ifFalse: [ index := self pushR.
			arguments
				do: [ :node | 
					node acceptVisitor: self.
					self pushR ].
			self loadRwithStack: index ].
	self emitSend: anSMessage selector super: anSMessage receiver isSuper.
	stackCount := stackCount - arguments size.
	arguments isEmpty
		ifFalse: [ self dropTos ]
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
visitMethod: anSMethod
	| statements returned |
	activeScript := anSMethod.
	self emitMethodPrologue.
	statements := anSMethod statements.
	statements do: [ :s | s acceptVisitor: self ].
	(statements notEmpty andNot: [ statements last isReturn ])
		ifTrue: [ ir loadRwithS ].
	returned := statements notEmpty and: [ 	
	statements last isReturn].
	returned ifFalse: [ self emitEpilogue ].
	self
		emitFallbacks;
		saveMethodCode
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
visitOptimizedMessage: anSMessage
	| nativizer |
	nativizer := BinaryMessageNativizer new
		message: anSMessage;
		assembler: ir;
		nativizer: self.
	nativizer inlineMessage
! !

!SExpressionNativizer methodsFor: 'services' stamp: 'KenD 9/26/2022 12:36:28'!
visitReturn: anSReturn
  anSReturn expression acceptVisitor: self.
  anSReturn local ifTrue: [ self emitEpilogue ] ifFalse: [ ir
		   pushR;
		   loadRwithE.
		self emitSend: #_return: ] 
! !

!SExpressionNativizer methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:36:28'!
environment: aNativizationEnvironment
	environment := aNativizationEnvironment.
	ir := environment platform newAssembler
! !

!SExpressionNativizer methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:36:28'!
method
	^method
! !

!SExpressionNativizer methodsFor: 'templates' stamp: 'KenD 9/26/2022 12:36:28'!
sendMustBeBoolean
	self emitSend: #mustBeBoolean
! !

!SExpressionNativizer methodsFor: 'initialization' stamp: 'KenD 9/26/2022 12:36:28'!
initialize
	super initialize.
! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 9/26/2022 12:36:28'!
assemblyFor: aCompiledMethod
	^ NativizationEnvironment forTesting
		newExpressionNativizer nativize: aCompiledMethod
! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 9/26/2022 12:36:28'!
assemblyForBlock
	^self assemblyForSource: 'foo [1] value'
! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 9/26/2022 12:36:28'!
assemblyForIfTrue
	^self assemblyForSource: 'foo x ifTrue: [1]' in: Point
! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 9/26/2022 12:36:28'!
assemblyForMessage
	^self assemblyForSource: 'foo self bar'
! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 9/26/2022 12:36:28'!
assemblyForMessageCascade
	^self assemblyForSource: 'foo self bar; baz'
! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 9/26/2022 12:36:28'!
assemblyForMethod: aCompiledMethod

^	self
		assemblyForSource: aCompiledMethod sourceCode
		in: aCompiledMethod classBinding value.

! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 9/26/2022 12:36:28'!
assemblyForPoint_1_plus_y
	^self assemblyForSource: 'foo 1 + y' in: Point
! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 9/26/2022 12:36:28'!
assemblyForPoint_ret_x_eq_1
	^ self assemblyForSource: 'foo ^x = 1' in: Point
! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 9/26/2022 12:36:28'!
assemblyForPoint_x
	^ self assemblyForMethod: Point >> #x
! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 9/26/2022 12:36:28'!
assemblyForPoint_x_eq_1
	^self assemblyForSource: 'foo x = 1' in: Point
! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 9/26/2022 12:36:28'!
assemblyForPoint_x_eq_eq_1
	^self assemblyForSource: 'foo x == 1' in: Point
! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 9/26/2022 12:36:28'!
assemblyForPoint_x_plus_1
	^self assemblyForSource: 'foo x + 1' in: Point
! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 9/26/2022 12:36:28'!
assemblyForPoint_x_plus_y
	^self assemblyForSource: 'foo x + y' in: Point
! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 9/26/2022 12:36:28'!
assemblyForSource: aString
	^self assemblyForSource: aString in: UndefinedObject
! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 9/26/2022 12:36:28'!
assemblyForSource: aString in: aSpecies
	| method |
	method := SCompiler compile: aString in: aSpecies.
	^self assemblyFor: method
! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 9/26/2022 12:36:28'!
assemblyForSourceOrig: aString
	^self assemblyForSourceOrig: aString in: UndefinedObject
! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 9/26/2022 12:36:28'!
assemblyForSourceOrig: aString in: aSpecies
	| method |
	method := SCompiler compile: aString in: aSpecies.
	^self assemblyOrigFor: method
! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 9/26/2022 12:36:28'!
assemblyForWhileTrue
	^self assemblyForSource: 'foo [x := x + 1. true] whileTrue' in: Point
! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 9/26/2022 12:36:28'!
assemblyOrigFor: aCompiledMethod
	^ NativizationEnvironment forTesting nativize:
		  aCompiledMethod
! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 9/26/2022 12:36:28'!
methodBasicAdd
	| source |
	source := 'basicAdd: anObject
	end = contents size ifTrue: [self makeRoomBehind].
	end := end + 1.
	contents at: end put: anObject.
	^anObject'.
	^self methodForSource: source in: OrderedCollection
! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 9/26/2022 12:36:28'!
methodForSource: aString
	^self methodForSource: aString in: UndefinedObject
! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 9/26/2022 12:36:28'!
methodForSource: aString in: aSpecies
	| method |
	method := SCompiler compile: aString in: aSpecies.
	^self nativize: method
! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 9/26/2022 12:36:28'!
methodWithBlock
	^self methodForSource: 'foo [1] value'
! !

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 11/1/2022 13:26:03'!
nativize: aCompiledMethod

	^ NativizationEnvironment forTesting newExpressionNativizer
		nativize: aCompiledMethod
! !

!SendSite methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:28:07'!
beSuperSend
	format := format bitOr: IsSuperSend
! !

!SendSite methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:28:07'!
initialize
	tally := 0.
	format := 0
! !

!SendSite methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:28:07'!
instructions: aByteArray
	instructions := aByteArray
! !

!SendSite methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:28:07'!
isSuperSend
	^(format bitAnd: IsSuperSend) == IsSuperSend
! !

!SendSite methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:28:07'!
selector
	^selector
! !

!SendSite methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:28:07'!
selector: aSymbol
	selector := aSymbol
! !

!SendSite methodsFor: 'as yet unclassified' stamp: 'KenD 9/26/2022 12:28:07'!
invoke: aCompiledMethod using: invokeInstructions
	instructions := invokeInstructions.
	selector := aCompiledMethod selector.
	cache := aCompiledMethod
! !

!SendSite methodsFor: 'as yet unclassified' stamp: 'KenD 9/26/2022 12:28:07'!
lookup: aSymbol using: lookupInstructions
	instructions := lookupInstructions.
	selector := aSymbol
! !

!IdentifierBinder methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:02:58'!
contents
	^contents
! !

!IdentifierBinder methodsFor: 'printing' stamp: 'KenD 9/29/2022 14:02:58'!
printOn: aStream
	self printOn: aStream indent: 0
! !

!IdentifierBinder methodsFor: 'printing' stamp: 'KenD 9/29/2022 14:02:58'!
printOn: aStream indent: anInteger
	self subclassResponsibility
! !

!IdentifierBinder methodsFor: 'private' stamp: 'KenD 9/29/2022 14:02:58'!
keyFor: aString
	^self subclassResponsibility
! !

!IdentifierBinder class methodsFor: 'instance creation' stamp: 'KenD 9/29/2022 14:02:58'!
new
	^super new initialize
! !

!DynamicBinder methodsFor: 'accessing' stamp: 'KenD 11/13/2022 13:02:41'!
at: aString
	| key assoc |
	key := self keyFor: aString.
	key ifNil: [ ^nil ].
	assoc := contents associationAt: key ifAbsent: [^nil].
	^(type on: assoc) name: key
! !

!DynamicBinder methodsFor: 'accessing' stamp: 'KenD 11/13/2022 13:02:41'!
at: aString ifPresent: aBlock
	| binding |
	binding := self at: aString.
	^binding notNil ifTrue: [aBlock value: binding]
! !

!DynamicBinder methodsFor: 'accessing' stamp: 'KenD 11/13/2022 13:02:41'!
at: aString put: anObject
	| key |
	key := self keyFor: aString.
	self ASSERT: contents !!== Smalltalk.
	contents at: key put: anObject
! !

!DynamicBinder methodsFor: 'accessing' stamp: 'KenD 11/13/2022 13:02:41'!
contents: aDictionary
	contents := aDictionary
! !

!DynamicBinder methodsFor: 'accessing' stamp: 'KenD 11/13/2022 13:02:41'!
poolNamed: aSymbol ifPresent: aBlock
	| pool |
	pool := contents at: aSymbol ifAbsent: nil.
	^pool notNil ifTrue: [aBlock evaluateWith: pool]
! !

!DynamicBinder methodsFor: 'accessing' stamp: 'KenD 11/13/2022 13:02:41'!
type: aClass
	type := aClass
! !

!DynamicBinder methodsFor: 'private' stamp: 'KenD 11/13/2022 13:02:41'!
keyFor: aString
	^type usesSymbols ifTrue: [aString existingSymbol] ifFalse: [aString]
! !

!DynamicBinder methodsFor: 'private' stamp: 'KenD 11/13/2022 13:02:41'!
on: aDictionary type: aClass
	contents := aDictionary.
	type := aClass
! !

!DynamicBinder methodsFor: 'printing' stamp: 'KenD 11/13/2022 13:02:41'!
printOn: aStream indent: anInteger
	aStream
		tab: anInteger;
		nextPutAll: 'binder for ';
		nextPutAll: type name;
		nextPutAll: ': '.
	type == GlobalBinding
		ifTrue: [aStream nextPut: $…]
		ifFalse: [contents keys asArray printOn: aStream]
! !

!DynamicBinder class methodsFor: 'instance creation' stamp: 'KenD 11/13/2022 13:02:41'!
of: type
	^self new type: type
! !

!DynamicBinder class methodsFor: 'instance creation' stamp: 'KenD 11/13/2022 13:02:41'!
on: aPoolDictionary
	| type |
	type := aPoolDictionary isConstant
		ifTrue: [ConstantPoolBinding]
		ifFalse: [PoolVarBinding].
	^self new on: aPoolDictionary type: type
! !

!DynamicBinder class methodsFor: 'instance creation' stamp: 'KenD 11/13/2022 13:02:41'!
on: aDictionary of: type
	^self new on: aDictionary type: type
! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:30:20'!
at: aString
	^contents at: aString ifAbsent: nil
! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:30:20'!
at: aString ifAbsentPut: aBlock
	^contents at: aString ifAbsentPut: aBlock
! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:30:20'!
at: aString put: aBinding
	contents at: aString put: aBinding
! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:30:20'!
define: aString as: aBinding
	contents at: aString put: aBinding
! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:30:20'!
defines: identifier
	^contents includesKey: identifier
! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:30:20'!
do: aBlock
	contents do: aBlock
! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:30:20'!
select: aBlock
	^contents select: aBlock
! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:30:20'!
values
	^contents values
! !

!StaticBinder methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:30:20'!
withIndexDo: aBlock
	contents withIndexDo: aBlock
! !

!StaticBinder methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:30:20'!
initialize
	super initialize.
	contents := OrderedDictionary new
! !

!StaticBinder methodsFor: 'printing' stamp: 'KenD 9/29/2022 14:30:20'!
printOn: aStream indent: anInteger
	aStream tab: anInteger; nextPut: $<.
	contents keys
		do: [:name | name printOn: aStream]
		separatedBy: [aStream space].
	aStream nextPut: $>
! !

!StaticBinder class methodsFor: 'instance creation' stamp: 'KenD 9/29/2022 14:30:20'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!LocalEnvironment methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:04:15'!
isInlinedArgument
	^false
! !

!ArrayEnvironment methodsFor: 'private' stamp: 'KenD 9/30/2022 12:08:26'!
environmentType
	^EnvironmentValue
! !

!ArrayEnvironment methodsFor: 'private' stamp: 'KenD 9/30/2022 12:08:26'!
index
	^index
! !

!ArrayEnvironment methodsFor: 'private' stamp: 'KenD 9/30/2022 12:08:26'!
index: anInteger
	index := anInteger
! !

!ArrayEnvironment methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:08:26'!
isCurrent
	^index isNil
! !

!ArrayEnvironment methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:08:26'!
isIndirect
	^self isCurrent not
! !

!ArrayEnvironment methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:08:26'!
isStack
	^false
! !

!StackEnvironment methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:34:15'!
index
	^nil
! !

!StackEnvironment methodsFor: 'private' stamp: 'KenD 9/29/2022 14:34:15'!
isStack
	^true
! !

!ArgumentEnvironment methodsFor: 'private' stamp: 'KenD 9/30/2022 12:08:10'!
environmentType
	^LocalArgument
! !

!InlinedArgEnvironment methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:13:50'!
isInlinedArgument
	^true
! !

!MessageInliner methodsFor: 'inlining' stamp: 'KenD 9/29/2022 14:04:51'!
inlineConditional
	| arguments |
	arguments := message arguments.
	arguments size >= 1 ifFalse: [^self].
	arguments do: [:arg | arg isEvaluable ifFalse: [^self]].
	message beInlined.
	arguments select: #isBlockNode thenDo: #beInlined
! !

!MessageInliner methodsFor: 'inlining' stamp: 'KenD 9/29/2022 14:04:51'!
inlineIfNilIfNotNil
	| arguments arg |
	arguments := message arguments.
	arguments size = 2 ifFalse: [^self].
	arguments first isEvaluable ifFalse: [^self].
	arg := arguments second.
	(arg isEvaluable or: [arg isBlockNode and: [arg arguments size = 1]])
		ifFalse: [^self].
	message beInlined.
	arguments select: #isBlockNode thenDo: #beInlined
	
! !

!MessageInliner methodsFor: 'inlining' stamp: 'KenD 9/29/2022 14:04:51'!
inlineIfNotNil
	| arguments arg |
	arguments := message arguments.
	arguments size = 1 ifFalse: [^self].
	arg := arguments first.
	(arg isEvaluable or: [arg isBlockNode and: [arg arguments size = 1]])
		ifFalse: [^self].
	message beInlined.
	arg isBlockNode ifTrue: [arg beInlined]
! !

!MessageInliner methodsFor: 'inlining' stamp: 'KenD 9/29/2022 14:04:51'!
inlineIfNotNilIfNil
	| arguments arg |
	arguments := message arguments.
	arguments size = 2 ifFalse: [^self].
	arguments second isEvaluable ifFalse: [^self].
	arg := arguments first.
	(arg isEvaluable or: [arg isBlockNode and: [arg arguments size = 1]])
		ifFalse: [^self].
	message beInlined.
	arguments select: #isBlockNode thenDo: #beInlined
! !

!MessageInliner methodsFor: 'inlining' stamp: 'KenD 9/29/2022 14:04:51'!
inlineToByDo
	| arguments arg step |
	arguments := message arguments.
	arguments size = 3 ifFalse: [^self].
	arg := arguments at: 3.
	arg isBlockNode ifFalse: [^self].
	arg arguments size = 1 ifFalse: [^self].
	step := arguments at: 2.
	(step isNumberNode and: [step value isSmallInteger]) ifFalse: [^self].
	message beInlined.
	arg beInlined
! !

!MessageInliner methodsFor: 'inlining' stamp: 'KenD 9/29/2022 14:04:51'!
inlineToDo
	| arguments last |
	arguments := message arguments.
	arguments size = 2 ifFalse: [^self].
	last := arguments at: 2.
	last isBlockNode ifFalse: [^self].
	last arguments size = 1 ifFalse: [^self].
	message beInlined.
	last beInlined
! !

!MessageInliner methodsFor: 'inlining' stamp: 'KenD 9/29/2022 14:04:51'!
inlineWhile
	| receiver arguments |
	receiver := message receiver.
	receiver isEvaluable
		ifFalse: [ ^ self ].
	arguments := message arguments.
	arguments size = 1
		ifFalse: [ ^ self ].
	arguments last isNullary
		ifFalse: [ ^ self ].
	self inlineConditional.
	receiver isBlockNode
		ifTrue: [ receiver beInlined ]
! !

!MessageInliner methodsFor: 'transforming' stamp: 'KenD 9/29/2022 14:04:51'!
inline: aMessageNode
	| s keywords |
	message := aMessageNode.
	message receiver isSuper
		ifTrue: [ ^ self ].
	(message isCascadeMessage and: [ message receiver isBlockNode ])
		ifTrue: [ ^ self ].
	s := message selector value.
	s == #ifTrue:
		ifTrue: [ ^ self inlineConditional ].
	s == #ifFalse:
		ifTrue: [ ^ self inlineConditional ].
	s == #or:
		ifTrue: [ ^ self inlineConditional ].
	s == #and:
		ifTrue: [ ^ self inlineConditional ].
	s == #timesRepeat:
		ifTrue: [ ^ self inlineConditional ].
	s == #ifTrue:ifFalse:
		ifTrue: [ ^ self inlineConditional ].
	s == #ifFalse:ifTrue:
		ifTrue: [ ^ self inlineConditional ].
	s == #andNot:
		ifTrue: [ ^ self inlineConditional ].
	s == #orNot:
		ifTrue: [ ^ self inlineConditional ].
	s == #ifNil:
		ifTrue: [ ^ self inlineConditional ].
	s == #ifNotNil:
		ifTrue: [ ^ self inlineIfNotNil ].
	s == #ifNil:ifNotNil:
		ifTrue: [ ^ self inlineIfNilIfNotNil ].
	s == #ifNotNil:ifNil:
		ifTrue: [ ^ self inlineIfNotNilIfNil ].
	s == #whileTrue:
		ifTrue: [ ^ self inlineWhile ].
	s == #whileFalse:
		ifTrue: [ ^ self inlineWhile ].
	s == #whileTrue
		ifTrue: [ ^ self inlineUnitaryWhile ].
	s == #whileFalse
		ifTrue: [ ^ self inlineUnitaryWhile ].
	s == #repeat
		ifTrue: [ ^ self inlineRepeat ].
	s == #to:do:
		ifTrue: [ ^ self inlineToDo ].
	"s == #to:by:do:
		ifTrue: [ ^ self inlineToByDo ]."
	keywords := $: split: s.
	keywords last = ''
		ifTrue: [ keywords := keywords allButLast ].
	(keywords conform: [ :k | k = 'and' ])
		ifTrue: [ ^ self inlineConditional ].
	(keywords conform: [ :k | k = 'or' ])
		ifTrue: [ ^ self inlineConditional ].
	((keywords allButLast conform: [ :k | k = 'and' ])
		and: [ #('ifTrue' 'ifFalse') includes: keywords last ])
		ifTrue: [ ^ self inlineConditional ].
	((keywords allButLast conform: [ :k | k = 'or' ])
		and: [ #('ifTrue' 'ifFalse') includes: keywords last ])
		ifTrue: [ self inlineConditional ]
! !

!MessageInliner methodsFor: 'transforming' stamp: 'KenD 9/29/2022 14:04:51'!
inlineRepeat
	| receiver arguments |
	receiver := message receiver.
	receiver isEvaluable
		ifFalse: [ ^ self ].
	arguments := message arguments.
	arguments isEmpty
		ifFalse: [ ^ self ].
	receiver isBlockNode
		ifFalse: [ ^ self ].
	message beInlined.
	receiver beInlined
! !

!MessageInliner methodsFor: 'transforming' stamp: 'KenD 9/29/2022 14:04:51'!
inlineUnitaryWhile
	| receiver arguments |
	receiver := message receiver.
	receiver isEvaluable ifFalse: [^self].
	arguments := message arguments.
	arguments size = 0 ifFalse: [^self].
	self inlineConditional.
	receiver isBlockNode ifTrue: [
		message beInlined.
		receiver beInlined]
! !

!SCompilationResult methodsFor: 'errors' stamp: 'KenD 9/29/2022 14:10:07'!
beSuccessful
	error := nil
! !

!SCompilationResult methodsFor: 'errors' stamp: 'KenD 9/29/2022 14:10:07'!
error
	^error
! !

!SCompilationResult methodsFor: 'errors' stamp: 'KenD 9/29/2022 14:10:07'!
error: aCompilationError
	error := aCompilationError
! !

!SCompilationResult methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:10:07'!
ast
	^ast
! !

!SCompilationResult methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:10:07'!
ast: aParseNode
	ast := aParseNode
! !

!SCompilationResult methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:10:07'!
compiler: aSmalltalkCompiler
	compiler := aSmalltalkCompiler
! !

!SCompilationResult methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:10:07'!
method
	^method
! !

!SCompilationResult methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:10:07'!
method: aCompiledMethod
	method := aCompiledMethod
! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:01:13'!
argumentCount
	^format bitsAt: BlockArgCount
! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:01:13'!
argumentCount: anInteger
	format := format bitsAt: BlockArgCount put: anInteger
! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:01:13'!
capturesHome
	^ format anyMask: BlockCapturesHome
! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:01:13'!
capturesHome: aBoolean
	format := aBoolean
				  ifTrue: [ format bitOr: BlockCapturesHome ]
				  ifFalse: [ format bitClear: BlockCapturesHome ]
! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:01:13'!
capturesSelf
	^format anyMask: BlockCapturesSelf
! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:01:13'!
capturesSelf: aBoolean
	format := aBoolean
		ifTrue: [ format bitOr: BlockCapturesSelf ]
		ifFalse: [ format bitClear: BlockCapturesSelf ]
! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:01:13'!
environmentCount
	^ format bitsAt: BlockEnvCount
! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:01:13'!
environmentCount: anInteger
	format := format bitsAt: BlockEnvCount put: anInteger
! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:01:13'!
format
	^ format
! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:01:13'!
id
	^format bitsAt: BlockId
! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:01:13'!
id: anInteger
	format := format bitsAt: BlockId put: anInteger
! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:01:13'!
initialize
	super initialize.
	format := 0
! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:01:13'!
isBlock
	^true
! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:01:13'!
method
	^method
! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:01:13'!
newClosure
	| closure |
	closure := SClosure new: self environmentCount.
	^ closure block: self
! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:01:13'!
optimizedCode
	^optimizedCode
! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:01:13'!
optimizedCode: anObject
	optimizedCode := anObject
! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:01:13'!
printOn: aStream
	aStream
		print: method classBinding;
		nextPutAll: '>>';
		print: method selector;
		nextPutAll: ' [block ';
		print: self id;
		nextPutAll: ']'

! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:01:13'!
tempCount
	^format bitsAt: BlockTempCount
! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:01:13'!
tempCount: anInteger
	format := format bitsAt: BlockTempCount put: anInteger
! !

!SCompiledBlock methodsFor: 'constants' stamp: 'KenD 10/1/2022 15:01:13'!
value
self halt
"	<primitive: BlockValue>
	^ self primitiveFailed" 
! !

!SCompiledBlock methodsFor: 'accessing' stamp: 'KenD 10/1/2022 15:01:13'!
method: aCompiledMethod
	method := aCompiledMethod
! !

!SCompiledBlock class methodsFor: 'instance creation' stamp: 'KenD 10/1/2022 15:01:13'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!SCompiler methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:25:00'!
classBinding
	 ^class
! !

!SCompiler methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:25:00'!
classBinding: aSpecies
	| instance |
	class := aSpecies.
	instance := aSpecies instanceSide.
	(instance respondsTo: #configureCompiler)
		ifTrue: [instance configureCompiler: self]
! !

!SCompiler methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:25:00'!
initialize: aDictionary
	class := aDictionary at: #UndefinedObject ifAbsent: nil
! !

!SCompiler methodsFor: 'services' stamp: 'KenD 9/30/2022 12:25:00'!
compile: aString
	result := self smalltalkCompiler compileMethod: aString.
	^result method
! !

!SCompiler methodsFor: 'services' stamp: 'KenD 9/30/2022 12:25:00'!
parse: aString
	result := self smalltalkCompiler parseMethod: aString.
	^result ast
! !

!SCompiler methodsFor: 'services' stamp: 'KenD 9/30/2022 12:25:00'!
smalltalkCompiler
	^ SSmalltalkCompiler new frontend: self
! !

!SCompiler methodsFor: 'services' stamp: 'KenD 9/30/2022 12:25:00'!
smalltalkParser
	^ self smalltalkCompiler parser
! !

!SCompiler methodsFor: 'services' stamp: 'KenD 9/30/2022 12:25:00'!
smalltalkScanner
	^ self smalltalkCompiler scanner
! !

!SCompiler methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:25:00'!
canBeInIdentifier: aCharacter
	^aCharacter isLetter or: [aCharacter isDigit] or: [aCharacter = $_]
! !

!SCompiler methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:25:00'!
canStartIdentifier: aCharacter
	^aCharacter isLetter or: [aCharacter = $_]
! !

!SCompiler methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:25:00'!
peekForIdentifier: aStream
	| char next |
	char := aStream peek.
	(self canBeInIdentifier: char) ifTrue: [
		aStream skip: 1.
		^true].
	char = $. ifFalse: [^false].
	aStream prev isLetter ifFalse: [
		aStream skip: 1.
		^false].
	next := aStream skip: 2; peek.
	next isNil ifTrue: [
		aStream skip: -1.
		^false].
	^next isLetter ifFalse: [aStream skip: -1]; yourself
! !

!SCompiler methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:25:00'!
protect: aBlock
	^aBlock value
! !

!SCompiler methodsFor: 'private' stamp: 'KenD 9/30/2022 12:25:00'!
forClass: aClass
	| c |
	c := aClass ifNil: [UndefinedObject].
	self classBinding: c
! !

!SCompiler class methodsFor: 'services' stamp: 'KenD 9/30/2022 12:25:00'!
compile: aString in: aClass
	| compiler |
	compiler := self forClass: aClass.
	^compiler compile: aString
! !

!SCompiler class methodsFor: 'services' stamp: 'KenD 9/30/2022 12:25:00'!
parse: aString in: aClass
	| compiler |
	compiler := self forClass: aClass.
	^compiler parse: aString
! !

!SCompiler class methodsFor: 'instance creation' stamp: 'KenD 9/30/2022 12:25:00'!
forClass: aClass
	^self new forClass: aClass
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 9/26/2022 12:59:46'!
visit: aParseNode
	^aParseNode notNil ifTrue: [aParseNode acceptVisitor: self] 
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 9/26/2022 12:59:46'!
visitAssignment: anAssignmentNode
	^self visitParseNode: anAssignmentNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 9/26/2022 12:59:46'!
visitBlock: aBlockNode
	^self visitParseNode: aBlockNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 9/26/2022 12:59:46'!
visitBraceNode: aBraceNode
	^self visitParseNode: aBraceNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 9/26/2022 12:59:46'!
visitCascade: aCascadeNode
	^self visitParseNode: aCascadeNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 9/26/2022 12:59:46'!
visitCascadeMessage: aCascadeMessageNode
	^self visitMessage: aCascadeMessageNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 9/26/2022 12:59:46'!
visitForeignNode: anForeignNode
	self visitLiteral: anForeignNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 9/26/2022 12:59:46'!
visitIdentifier: anIdentifierNode
	^self visitParseNode: anIdentifierNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 9/26/2022 12:59:46'!
visitLiteral: aLiteralNode
	^self visitParseNode: aLiteralNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 9/26/2022 12:59:46'!
visitMessage: aMessageNode
	^self visitParseNode: aMessageNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 9/26/2022 12:59:46'!
visitMethod: aMethodNode
	^self visitParseNode: aMethodNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 9/26/2022 12:59:46'!
visitNumberNode: aNumberNode
	^self visitLiteral: aNumberNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 9/26/2022 12:59:46'!
visitParseNode: aParseNode
	^self subclassResponsibility
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 9/26/2022 12:59:46'!
visitPragma: aPragmaNode
	^self visitParseNode: aPragmaNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 9/26/2022 12:59:46'!
visitReturn: aReturnNode
	^self visitParseNode: aReturnNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 9/26/2022 12:59:46'!
visitSelector: aSelectorNode
	^self visitParseNode: aSelectorNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 9/26/2022 12:59:46'!
visitString: aStringNode
	^self visitLiteral: aStringNode
! !

!SParseTreeVisitor methodsFor: 'visiting' stamp: 'KenD 9/26/2022 12:59:46'!
visitSymbolicPragma: aPragmaNode
	^self visitPragma: aPragmaNode
! !

!SParseTreeVisitor class methodsFor: 'instance creation' stamp: 'KenD 9/26/2022 12:59:46'!
new
	^super new initialize
! !

!SSemanticVisitor methodsFor: 'analizing' stamp: 'KenD 9/29/2022 13:54:50'!
analyzeAssignment: anAssignmentNode
	anAssignmentNode assignees
		do: [:v | self analyzeIdentifier: v assignee: true]
! !

!SSemanticVisitor methodsFor: 'analizing' stamp: 'KenD 9/29/2022 13:54:50'!
analyzeBlock: aBlockNode while: aBlock
	aBlockNode isInlined
		ifFalse: [aBlockNode index: aBlockNode compiler blockIndex].
	self analyzeScript: aBlockNode while: aBlock
! !

!SSemanticVisitor methodsFor: 'analizing' stamp: 'KenD 9/29/2022 13:54:50'!
analyzeIdentifier: anIdentifierNode
	self analyzeIdentifier: anIdentifierNode assignee: false
! !

!SSemanticVisitor methodsFor: 'analizing' stamp: 'KenD 9/29/2022 13:54:50'!
analyzeIdentifier: anIdentifierNode assignee: aBoolean
	| script binding |
	anIdentifierNode resolveAssigning: aBoolean.
	aBoolean ifTrue: [anIdentifierNode beAssigned].
	script := anIdentifierNode compiler activeScript.
	binding := anIdentifierNode binding.
	script reference: binding.
	binding isLocal ifTrue: [binding := script scope captureLocal: binding].
	anIdentifierNode binding: binding
! !

!SSemanticVisitor methodsFor: 'analizing' stamp: 'KenD 9/29/2022 13:54:50'!
analyzeMessage: aMessageNode
	inliner inline: aMessageNode.
	aMessageNode isInlined ifFalse: [aMessageNode compiler noticeSend]
! !

!SSemanticVisitor methodsFor: 'analizing' stamp: 'KenD 9/29/2022 13:54:50'!
analyzeMethod: aMethodNode while: aBlock
	self analyzeScript: aMethodNode while: aBlock
! !

!SSemanticVisitor methodsFor: 'analizing' stamp: 'KenD 9/29/2022 13:54:50'!
analyzeReturn: aReturnNode
	aReturnNode compiler activeScript realScript captureHome
! !

!SSemanticVisitor methodsFor: 'analizing' stamp: 'KenD 9/29/2022 13:54:50'!
analyzeScript: aScriptNode while: aBlock
	aScriptNode compiler activate: aScriptNode while: aBlock
! !

!SSemanticVisitor methodsFor: 'initialization' stamp: 'KenD 9/29/2022 13:54:50'!
initialize
	super initialize.
	inliner := MessageInliner new
! !

!SSemanticVisitor methodsFor: 'visiting' stamp: 'KenD 9/29/2022 13:54:50'!
visitAssignment: anAssignmentNode
	| c |
	self analyzeAssignment: anAssignmentNode.
	anAssignmentNode expression acceptVisitor: self.
	c := anAssignmentNode compiler.

! !

!SSemanticVisitor methodsFor: 'visiting' stamp: 'KenD 9/29/2022 13:54:50'!
visitBlock: aBlockNode
	self
		analyzeBlock: aBlockNode
		while: [aBlockNode statements do: [:node | node acceptVisitor: self]]
! !

!SSemanticVisitor methodsFor: 'visiting' stamp: 'KenD 9/29/2022 13:54:50'!
visitBraceNode: aBraceNode
	aBraceNode isLiteral
		ifFalse: [aBraceNode asMessageNode acceptVisitor: self]
! !

!SSemanticVisitor methodsFor: 'visiting' stamp: 'KenD 9/29/2022 13:54:50'!
visitCascade: aCascadeNode
	aCascadeNode receiver acceptVisitor: self.
	aCascadeNode messages do: [:msg | msg acceptVisitor: self]
! !

!SSemanticVisitor methodsFor: 'visiting' stamp: 'KenD 9/29/2022 13:54:50'!
visitIdentifier: anIdentifierNode
	self analyzeIdentifier: anIdentifierNode
! !

!SSemanticVisitor methodsFor: 'visiting' stamp: 'KenD 9/29/2022 13:54:50'!
visitMessage: aMessageNode
	self analyzeMessage: aMessageNode.
	aMessageNode receiver acceptVisitor: self.
	aMessageNode arguments do: [:arg | arg acceptVisitor: self]
! !

!SSemanticVisitor methodsFor: 'visiting' stamp: 'KenD 9/29/2022 13:54:50'!
visitMethod: aMethodNode
	self analyzeMethod: aMethodNode while: [
		aMethodNode bindLocals.
		aMethodNode statements do: [:s | s acceptVisitor: self].
		aMethodNode positionLocals]
! !

!SSemanticVisitor methodsFor: 'visiting' stamp: 'KenD 9/29/2022 13:54:50'!
visitParseNode: aParseNode
	"
	do nothing
	"
	
! !

!SSemanticVisitor methodsFor: 'visiting' stamp: 'KenD 9/29/2022 13:54:50'!
visitReturn: aReturnNode
	aReturnNode expression acceptVisitor: self.
	self analyzeReturn: aReturnNode
! !

!SSemanticVisitor class methodsFor: 'instance creation' stamp: 'KenD 9/29/2022 13:54:50'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:30:00'!
encodeClassBinding: association 
	| index |
	index := method indexOf: association ifAbsent: [self assert: false].
	stream nextPut: GlobalClassId; nextPut: index! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:30:25'!
encodeClassVar: association 
	| index |
	index := method indexOf: association ifAbsent: [self assert: false].
	stream nextPut: ClassVarId; nextPut: index! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:31:49'!
encodeGlobalVar: association 
	| index |
	index := method indexOf: association ifAbsent: [ self assert: false ].
	stream
		nextPut: GlobalValueId;
		nextPut: index! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:32:03'!
encodeInlinedMessage: aMessageNode 

	self nextTypePut: 0! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:32:18'!
encodeInstVar: index 

	stream nextPut: InstVarId; nextPut: index! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:32:31'!
encodeLoadAwithArg: anInteger env: environment 
	| encoded |
	encoded := self encodedEnvironment: environment.
	stream
		nextPut: LoadAwithArgumentId;
		nextPut: anInteger;
		nextPut: encoded! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:32:50'!
encodeLoadAwithClassVar: association 
	| index |
	index := method indexOf: association ifAbsent: [ self assert: false ].
	stream
		nextPut: LoadAwithClassVarId;
		nextPut: index! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:33:10'!
encodeLoadAwithConstPoolVar: value 
	| index |
	index := method indexOf: value ifAbsent: [ self assert: false ].
	stream
		nextPut: LoadAwithConstPoolId;
		nextPut: index! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:33:39'!
encodeLoadAwithGlobal: association 
	| index |
	index := method indexOf: association ifAbsent: [ self assert: false ].
	stream
		nextPut: LoadAwithGlobalId;
		nextPut: index! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:33:53'!
encodeLoadAwithInstVar: anInteger 

	stream nextPut: LoadAwithInstVarId; nextPut: anInteger! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:34:04'!
encodeLoadAwithLiteral: value 
	| index |
	index := method indexOf: value.
	stream nextPut: LoadAwithLiteralId; nextPut: index.
	index = 0 ifTrue: [stream nextPut: value]! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:34:14'!
encodeLoadAwithNil 

	stream nextPut: LoadAwithNilId! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:34:30'!
encodeLoadAwithPoolVar: association 
	| index |
	index := method indexOf: association ifAbsent: [ self assert: false ].
	stream
		nextPut: LoadAwithPoolVarId;
		nextPut: index! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:34:42'!
encodeLoadAwithSelf 

	stream nextPut: LoadAwithSelfId! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:34:57'!
encodeLoadAwithTemp: anInteger env: environment 
	| encoded |
	encoded := self encodedEnvironment: environment.
	stream
		nextPut: LoadAwithTemporaryId;
		nextPut: anInteger;
		nextPut: encoded! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:35:37'!
encodeOptimizedBinary: aMessageNode 
	| optimizer |
	optimizer := BinaryMessageOptimizer on: aMessageNode using: self.
	self nestedEncode: [optimizer emitOpcodes]! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:36:00'!
encodeOptimizedMessage: aMessageNode 
	| selector |
	selector := aMessageNode selector.
	aMessageNode isInlined ifTrue: [^self encodeInlinedMessage: aMessageNode].
	(BinaryMessageOptimizer optimizesMessage: selector value) ifFalse: [^self].
	aMessageNode arguments size = 1
		ifTrue: [^self encodeOptimizedBinary: aMessageNode]! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:36:12'!
encodePoolConst: association 
	| index |
	index := method indexOf: association ifAbsent: [ self assert: false ].
	stream
		nextPut: ConstantPoolId;
		nextPut: index! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:36:32'!
encodePoolVar: association 
	| index |
	index := method indexOf: association ifAbsent: [self assert: false].
	stream nextPut: PoolVarId; nextPut: index! !

!AstcodeEncoder methodsFor: 'codeGeneration' stamp: 'KenD 2/25/2021 13:39:50'!
nestedEncode: aBlock 
	| prev nested |
	prev := stream.
	nested := Array streamContents: [:s | 
		stream := s.
		aBlock value.
		stream contents].
	stream := prev.
	stream nextPut: nested
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 9/28/2022 13:23:46'!
compiledBlockIndexOf: aBlockNode
	| index |
	index := method
		findFirst: [:literal | literal isBlock
			and: [literal id == aBlockNode index]].
	^index
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 9/28/2022 13:23:46'!
encodeArgument: anInteger env: environment
	| encoded |
	encoded := self encodedEnvironment: environment.
	self
		nextPut: ArgumentId;
		nextIntegerPut: anInteger;
		nextIntegerPut: encoded
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 11/1/2022 15:07:44'!
encodeClosureElements: aBlockNode
	| scope parent |
	scope := aBlockNode scope.
	parent := aBlockNode realParent.
	^Array streamContents: [:s |
		scope capturesSelf ifTrue: [ s nextPut: Self ].
		scope capturedEnvironments do: [:e | | index |
			e == parent ifTrue: [s nextPut: Environment] ifFalse: [
				index := aBlockNode environmentIndexOf: e.
				self assert: index notNil.
				s nextPut: EnvironmentValue; nextPut: index]].
		scope capturedArguments do: [:a | | binding |
			binding := aBlockNode parent scope resolve: a name.
			s 	nextPut: binding environmentType; nextPut: binding index]]
	
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 9/28/2022 13:23:46'!
encodeDynamicVar: name
	stream nextPut: DynamicVarId.
	self nextSymbolPut: name
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 9/28/2022 13:23:46'!
encodeFalse
	stream nextPut: FalseId
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 9/28/2022 13:23:46'!
encodeLoadRvisitingReceiver
	stream nextPut: LoadRvisitingReceiverId
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 9/28/2022 13:23:46'!
encodeNestedDynamicVar: name
	stream nextPut: NestedDynamicVarId.
	self nextLiteralPut: name 
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 9/28/2022 13:23:46'!
encodeNil
	stream nextPut: NilId
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 9/28/2022 13:23:46'!
encodePopR
	stream nextPut: PopRid 
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 9/28/2022 13:23:46'!
encodePushR
	stream nextPut: PushRid 
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 9/28/2022 13:23:46'!
encodeSelf
	stream nextPut: SelfId
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 9/28/2022 13:23:46'!
encodeSuper
	stream nextPut: SuperId
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 9/28/2022 13:23:46'!
encodeTemporary: anInteger env: environment
	| encoded |
	encoded := self encodedEnvironment: environment.
	self
		nextPut: TemporaryId;
		nextIntegerPut: anInteger;
		nextIntegerPut: encoded
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 9/28/2022 13:23:46'!
encodeTrue
	stream nextPut: TrueId
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 9/28/2022 13:23:46'!
encodedEnvironment: aLocalEnvironment
	aLocalEnvironment isStack
		ifTrue: [ ^ aLocalEnvironment isInlinedArgument
				ifTrue: [ -1 ]
				ifFalse: [ -2 ] ].
	aLocalEnvironment isCurrent
		ifTrue: [ ^ 0 ].
	^ aLocalEnvironment index
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 9/28/2022 13:23:46'!
nextBigIntegerPut: anInteger
	stream
		nextPut: 16r80;
		int64: anInteger
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 9/28/2022 13:23:46'!
nextBooleanPut: aBoolean
	stream nextPut: aBoolean asBit

! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 9/28/2022 13:23:46'!
nextIntegerPut: anInteger
	| value |
	(anInteger > 127 or: [ anInteger < -127 ])
		ifTrue: [ ^ self nextBigIntegerPut: anInteger ].
	value := anInteger >= 0
		ifTrue: [ anInteger ]
		ifFalse: [ anInteger + 16r100 ].
	stream nextPut: value
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 10/2/2022 09:05:40'!
nextLiteralPut: anObject
	| index |
	index := method
		indexOf: anObject
		ifAbsent: [ self assert: false ].
	self nextIntegerPut: index
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 9/28/2022 13:23:46'!
nextPut: anInteger
	stream nextPut: anInteger
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 9/28/2022 13:23:46'!
nextPutAll: aCollection
	stream nextPut: aCollection size; nextPutAll: aCollection
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 10/2/2022 15:44:01'!
nextSymbolPut: aSymbol
	| index |
	index := method
		indexOf: aSymbol asSymbol
		ifAbsent: [ self assert: false ].
	self nextIntegerPut: index
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 9/28/2022 13:23:46'!
nextTypePut: anInteger
	stream nextPut: anInteger
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 9/28/2022 13:23:46'!
visitAssignment: anAssignmentNode
	| assignees |
	self nextTypePut: AssignmentId.
	assignees := anAssignmentNode assignees.
	self nextIntegerPut: assignees size.
	assignees do: [ :node | node acceptVisitor: self ].
	anAssignmentNode expression acceptVisitor: self
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 9/28/2022 13:23:46'!
visitBlock: aBlockNode
	| args inlined |
	self nextTypePut: BlockId.
	inlined := aBlockNode isInlined.
	self nextBooleanPut: inlined.
	inlined
		ifTrue: [ args := aBlockNode arguments collect: [ :id | id binding index ].
			self nextPutAll: args asArray ]
		ifFalse: [ | index captured |
			index := self compiledBlockIndexOf: aBlockNode.
			self nextPut: index.
			captured := self encodeClosureElements: aBlockNode.
			self nextPutAll: captured ].
	self visitScript: aBlockNode
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 9/28/2022 13:23:46'!
visitBraceNode: aBraceNode
	aBraceNode isLiteral
		ifTrue: [self visitLiteral: aBraceNode asLiteralNode]
		ifFalse: [self visitCascade: aBraceNode asMessageNode]
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 9/28/2022 13:23:46'!
visitCascade: aCascadeNode
	| messages |
	self nextTypePut: CascadeId.
	aCascadeNode receiver acceptVisitor: self.
	messages := aCascadeNode messages.
	self nextIntegerPut: messages size.
	messages do: [ :node | self visitCascadeMessage: node ]
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 9/28/2022 13:23:46'!
visitCascadeMessage: aCascadeMessageNode
	| arguments |
	self nextSymbolPut: aCascadeMessageNode selector symbol.
	arguments := aCascadeMessageNode arguments.
	self nextIntegerPut: arguments size.
	arguments do: [ :arg | arg acceptVisitor: self ]
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 9/28/2022 13:23:46'!
visitIdentifier: anIdentifierNode
	self nextTypePut: IdentifierId.
	anIdentifierNode binding encodeUsing: self
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 9/28/2022 13:23:46'!
visitLiteral: aLiteralNode
	| index |
	index := method indexOf: aLiteralNode value.
	self
		nextTypePut: LiteralId;
		nextIntegerPut: index.
	index = 0
		ifTrue: [ self nextIntegerPut: aLiteralNode value ]
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 9/28/2022 13:23:46'!
visitMessage: aMessageNode
	| arguments |
	self
		nextTypePut: MessageId;
		nextBooleanPut: aMessageNode isInlined;
		nextSymbolPut: aMessageNode selector symbol.
	aMessageNode receiver acceptVisitor: self.
	arguments := aMessageNode arguments.
	self nextIntegerPut: arguments size.
	arguments do: [ :arg | arg acceptVisitor: self ]
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 9/28/2022 13:23:46'!
visitMethod: aMethodNode
	| pragma |
	self nextTypePut: MethodId.
	pragma := aMethodNode pragma.
	pragma isUsed
		ifTrue: [ self nextTypePut: PragmaId.
			pragma name
				ifNotNil: [ self nextSymbolPut: pragma name ]
				ifNil: [ self nextPut: 0 ] ].
	self visitScript: aMethodNode.
	^ stream contents 
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 10/2/2022 14:55:28'!
visitParseNode: aParseNode
	^self assert: false
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 9/28/2022 13:23:46'!
visitReturn: aReturnNode
	self
		nextTypePut: ReturnId;
		nextBooleanPut: script realScript isMethod.
	
		aReturnNode expression acceptVisitor: self
! !

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 9/28/2022 13:23:46'!
visitScript: aScriptNode
	| prev statements |
	prev := script.
	script := aScriptNode.
	statements := aScriptNode statements.
	self nextIntegerPut: statements size.
	statements do: [ :node | node acceptVisitor: self ].
	script := prev
! !

!AstcodeEncoder methodsFor: 'accessing' stamp: 'KenD 9/28/2022 13:23:46'!
initialize
	stream := #[] writeStream
! !

!AstcodeEncoder methodsFor: 'accessing' stamp: 'KenD 9/28/2022 13:23:46'!
method: aCompiledMethod
	method := aCompiledMethod
! !

!AstcodeEncoder class methodsFor: 'instance creation' stamp: 'KenD 9/28/2022 13:23:46'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!ScriptScope methodsFor: 'services' stamp: 'KenD 9/29/2022 14:22:10'!
capturesSelf
	^ captureSelf
! !

!ScriptScope methodsFor: 'services' stamp: 'KenD 9/29/2022 14:22:10'!
describe: identifier
	| binding type |
	binding := self resolve: identifier.
	type := self class name asLowercase allButLast: 'scope' size.
	^binding description , ' of ' , type
! !

!ScriptScope methodsFor: 'services' stamp: 'KenD 9/29/2022 14:22:10'!
environmentSize
	^envSize
! !

!ScriptScope methodsFor: 'services' stamp: 'KenD 9/29/2022 14:22:10'!
scopeOf: aString
	| s |
	s := self scriptDefining: aString.
	^s notNil ifTrue: [s scope]
! !

!ScriptScope methodsFor: 'services' stamp: 'KenD 9/29/2022 14:22:10'!
stackSize
	^stackSize
! !

!ScriptScope methodsFor: 'binding' stamp: 'KenD 9/29/2022 14:22:10'!
defineArgument: identifier
	| binding |
	(self resolves: identifier) ifTrue: [self redefinitionError: identifier].
	binding := ArgumentBinding new name: identifier.
	arguments define: identifier as: binding.
	^binding
! !

!ScriptScope methodsFor: 'binding' stamp: 'KenD 9/29/2022 14:22:10'!
defineTemporary: identifier
	| binding |
	(temporaries defines: identifier)
		ifTrue: [self redefinitionError: identifier].
	binding := TemporaryBinding new name: identifier.
	temporaries define: identifier as: binding.
	^binding
! !

!ScriptScope methodsFor: 'binding' stamp: 'KenD 9/29/2022 14:22:10'!
defines: aString
	^(temporaries defines: aString) or: [arguments defines: aString]
! !

!ScriptScope methodsFor: 'binding' stamp: 'KenD 9/29/2022 14:22:10'!
localBindings
	^arguments values , temporaries values
! !

!ScriptScope methodsFor: 'binding' stamp: 'KenD 9/29/2022 14:22:10'!
resolveLocal: aString
	(temporaries at: aString) ifNotNil: [:binding | ^binding].
	^arguments at: aString
! !

!ScriptScope methodsFor: 'binding' stamp: 'KenD 9/29/2022 14:22:10'!
resolves: aString
	^(self resolve: aString) isDynamic not
! !

!ScriptScope methodsFor: 'private' stamp: 'KenD 9/29/2022 14:22:10'!
growEnvironment
	^envSize := envSize + 1
! !

!ScriptScope methodsFor: 'private' stamp: 'KenD 9/29/2022 14:22:10'!
growStack
	^stackSize := stackSize + 1
! !

!ScriptScope methodsFor: 'private' stamp: 'KenD 9/29/2022 14:22:10'!
positionDefinedArguments
	arguments withIndexDo: [:binding :index | binding index: index]
! !

!ScriptScope methodsFor: 'private' stamp: 'KenD 9/29/2022 14:22:10'!
positionDefinedLocals
	self positionDefinedTemporariesIn: self; positionDefinedArguments
! !

!ScriptScope methodsFor: 'private' stamp: 'KenD 9/29/2022 14:22:10'!
positionDefinedTemporariesIn: aScriptScope
	temporaries do: [:binding | | position |
		position := binding isInStack
			ifTrue: [aScriptScope growStack]
			ifFalse: [aScriptScope growEnvironment].
		binding index: position]
! !

!ScriptScope methodsFor: 'private' stamp: 'KenD 9/29/2022 14:22:10'!
positionLocals
	self positionDefinedLocals
! !

!ScriptScope methodsFor: 'private' stamp: 'KenD 9/29/2022 14:22:10'!
realScope
	^script realScript scope
! !

!ScriptScope methodsFor: 'private' stamp: 'KenD 9/29/2022 14:22:10'!
redefinitionError: name
	| scope description |
	scope := self scopeOf: name.
	description := scope describe: name.
	script compiler
		warning: name , ' already declared as ' , description
		at: script stretch
! !

!ScriptScope methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:22:10'!
initialize
	super initialize.
	arguments := StaticBinder new.
	temporaries := StaticBinder new.
	stackSize := envSize := 0.
		captureSelf := false.
! !

!ScriptScope methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:22:10'!
script: aScriptNode
	script := aScriptNode
! !

!ScriptScope class methodsFor: 'instance creation' stamp: 'KenD 9/29/2022 14:22:10'!
new
	^super new initialize
! !

!ScriptScope class methodsFor: 'instance creation' stamp: 'KenD 9/29/2022 14:22:10'!
on: aScriptNode
	^self new script: aScriptNode
! !

!BlockScope methodsFor: 'services' stamp: 'KenD 9/30/2022 12:09:36'!
captureLocal: aLocalBinding
	(self defines: aLocalBinding name) ifTrue: [^aLocalBinding].
	^aLocalBinding isTemporary
		ifTrue: [self captureTemporary: aLocalBinding]
		ifFalse: [self captureArgument: aLocalBinding]
! !

!BlockScope methodsFor: 'services' stamp: 'KenD 9/30/2022 12:09:36'!
captureSelf
	captureSelf ifTrue: [^self].
	captureSelf := true.
	self parent captureSelf
! !

!BlockScope methodsFor: 'services' stamp: 'KenD 9/30/2022 12:09:36'!
captureTemporary: aTemporaryBinding
	| name |
	name := aTemporaryBinding name.
	(self defines: name) ifTrue: [^aTemporaryBinding].
	^captured at: name ifAbsentPut: [| parent declaration transferred copy |
		parent := self parent.
		declaration := parent scriptDefining: name.
		self realScope captureEnvironment: declaration realScript.
		transferred := parent transferLocal: name.
		copy := self copyLocal: transferred.
		copy isInArray ifTrue: [aTemporaryBinding beInArray].
		copy declaration: transferred declaration]
! !

!BlockScope methodsFor: 'services' stamp: 'KenD 9/30/2022 12:09:36'!
capturedArguments
	^captured select: [:b | b isArgument]
! !

!BlockScope methodsFor: 'services' stamp: 'KenD 9/30/2022 12:09:36'!
capturedEnvironments
	^environments
! !

!BlockScope methodsFor: 'services' stamp: 'KenD 9/30/2022 12:09:36'!
capturesHome
	^self home notNil
! !

!BlockScope methodsFor: 'services' stamp: 'KenD 9/30/2022 12:09:36'!
environments
	"
	compatibility, removes the home environment
	"
	| first |
	environments isEmpty ifTrue: [^#()].
	first := environments first.
	^first isMethod ifTrue: [environments allButFirst] ifFalse: [environments]
! !

!BlockScope methodsFor: 'services' stamp: 'KenD 9/30/2022 12:09:36'!
home
	| first |
	environments isEmpty ifTrue: [^nil].
	first := environments first.
	^first isMethod ifTrue: [first]
! !

!BlockScope methodsFor: 'services' stamp: 'KenD 9/30/2022 12:09:36'!
resolveLocal: aString
	(super resolveLocal: aString) ifNotNil: [:binding | ^binding].
	^captured at: aString
! !

!BlockScope methodsFor: 'services' stamp: 'KenD 9/30/2022 12:09:36'!
scriptDefining: aString
	(self defines: aString) ifTrue: [^script].
	^self parent scriptDefining: aString
! !

!BlockScope methodsFor: 'binding' stamp: 'KenD 9/30/2022 12:09:36'!
captureArgument: anArgumentBinding
	| name |
	name := anArgumentBinding name.
	^captured at: name ifAbsentPut: [| transferred copy |
		transferred := self parent transferLocal: name.
		copy := self copyLocal: transferred.
		(anArgumentBinding isInlined and: [copy !!= anArgumentBinding])
			ifTrue: [anArgumentBinding beInArray].
		copy declaration: transferred declaration]
! !

!BlockScope methodsFor: 'binding' stamp: 'KenD 9/30/2022 12:09:36'!
localBindings
	^super localBindings , captured values
! !

!BlockScope methodsFor: 'binding' stamp: 'KenD 9/30/2022 12:09:36'!
resolve: aString
	(self resolveLocal: aString) ifNotNil: [:binding | ^binding].
	^self parent resolve: aString
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 9/30/2022 12:09:36'!
captureEnvironment: aScriptNode
	script == aScriptNode ifTrue: [^self].
	(environments identityIncludes: aScriptNode) ifTrue: [^self].
	self realParent captureEnvironment: aScriptNode.
	aScriptNode isMethod
		ifTrue: [environments addFirst: aScriptNode]
		ifFalse: [environments addLast: aScriptNode]
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 10/2/2022 09:05:07'!
capturedEnvironmentIndexOf: aScriptNode
	| index |
	aScriptNode realScript == script realScript
		ifTrue: [ ^ nil ].
	index := environments indexOf: aScriptNode ifAbsent: nil.
	self assert: index notNil.
	^self capturesSelf ifTrue: [ index + 1 ] ifFalse: [ index ]
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 9/30/2022 12:09:36'!
copyLocal: binding
	^script isInlined ifTrue: [binding] ifFalse: [binding copy beInArray]
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 11/8/2022 14:51:17'!
environmentIndexOf: aScriptNode
	"
	temporal compatibility
	"
	(aScriptNode isKindOf: SScriptNode)
		ifFalse: [ self assert: false. ^nil ].
	^self capturedEnvironmentIndexOf: aScriptNode
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 9/30/2022 12:09:36'!
environmentSizeUpToCapturedArguments
	^self environmentSizeUpToEnvironments + self capturedArguments size
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 9/30/2022 12:09:36'!
environmentSizeUpToEnvironments
	| receiver |
	receiver := self capturesSelf ifTrue: [ 1 ] ifFalse: [ 0 ].
	^receiver + environments size
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 9/30/2022 12:09:36'!
parent
	^script parent scope
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 9/30/2022 12:09:36'!
positionCapturedArgument: anArgumentBinding
	anArgumentBinding index: self growEnvironment
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 9/30/2022 12:09:36'!
positionCapturedLocals
	script isInlined ifTrue: [^self].
	envSize := self environmentSizeUpToEnvironments.
	captured do: [:binding | 
		binding isArgument
			ifTrue: [self positionCapturedArgument: binding]
			ifFalse: [self positionCapturedTemporary: binding]]
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 11/8/2022 14:51:22'!
positionCapturedTemporary: aTemporaryBinding
	| outest index declaration |
	outest := self scriptDefining: aTemporaryBinding name.
	index := self capturedEnvironmentIndexOf: outest realScript.
	aTemporaryBinding environmentIndex: index.
	declaration := outest scope resolve: aTemporaryBinding name.
	self assert: declaration index isInteger.
	aTemporaryBinding index: declaration index
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 9/30/2022 12:09:36'!
positionDefinedArgumentsIn: aScriptScope
	arguments do: [:binding | | index |
		index := binding isInArray
			ifTrue: [aScriptScope growEnvironment]
			ifFalse: [aScriptScope growStack].
		binding index: index]
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 9/30/2022 12:09:36'!
positionDefinedLocals
	| real |
	script isInlined
		ifTrue: [
			real := self realScope.
			self
				positionDefinedTemporariesIn: real;
				positionDefinedArgumentsIn: real]
		ifFalse: [super positionDefinedLocals]
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 9/30/2022 12:09:36'!
positionLocals
	self positionCapturedLocals.
	super positionLocals
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 9/30/2022 12:09:36'!
realParent
	^script realParent scope
! !

!BlockScope methodsFor: 'private' stamp: 'KenD 9/30/2022 12:09:36'!
transferLocal: name
	| binding copy |
	(self resolveLocal: name) ifNotNil: [:b | ^b].
	binding := self parent transferLocal: name.
	copy := self copyLocal: binding.
	captured at: name put: copy.
	^copy
! !

!BlockScope methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:09:36'!
initialize
	super initialize.
	captured := StaticBinder new.
	environments := OrderedCollection new
! !

!MethodScope methodsFor: 'services' stamp: 'KenD 11/8/2022 14:51:27'!
captureLocal: aLocalBinding
	self assert: (self resolveLocal: aLocalBinding name) notNil.
	^aLocalBinding
! !

!MethodScope methodsFor: 'services' stamp: 'KenD 9/30/2022 12:19:08'!
captureSelf
	captureSelf := true.

! !

!MethodScope methodsFor: 'services' stamp: 'KenD 11/8/2022 14:51:32'!
environmentIndexOf: aScriptNode
	self assert: aScriptNode == script.
	^nil
! !

!MethodScope methodsFor: 'services' stamp: 'KenD 11/13/2022 12:50:31'!
poolFor: aString
	cvars do: [:binder | binder at: aString ifPresent: [:b | ^binder contents]].
	pools do: [:pool | pool at: aString ifPresent: [:b | ^pool contents]].
	self error: 'not found'
! !

!MethodScope methodsFor: 'services' stamp: 'KenD 11/13/2022 12:50:31'!
resolve: aString
	(self resolveLocal: aString) ifNotNil: [:binding | ^binding].
	^self resolveShared: aString
! !

!MethodScope methodsFor: 'services' stamp: 'KenD 11/13/2022 12:50:31'!
resolveShared: aString
	(pseudo at: aString) ifNotNil: [:binding | ^binding].
	(ivars at: aString) ifNotNil: [:binding | ^binding].
	cvars do: [:binder | binder at: aString ifPresent: [:binding | ^binding]].
	pools do: [:pool | pool at: aString ifPresent: [:binding | ^binding]].
	^(globals at: aString) ifNil: [UnresolvedBinding new name: aString]
! !

!MethodScope methodsFor: 'services' stamp: 'KenD 11/13/2022 12:58:27'!
scriptDefining: aString
	(self resolveLocal: aString) ifNotNil: [^script].
	(self resolveShared: aString) ifNotNil: [^script].
	self assert: false.
	^nil
! !

!MethodScope methodsFor: 'initialization' stamp: 'KenD 11/13/2022 12:50:31'!
addPool: aPoolDictionary
	| binder |
	binder := DynamicBinder on: aPoolDictionary .
	pools add: binder
! !

!MethodScope methodsFor: 'initialization' stamp: 'KenD 11/13/2022 12:50:31'!
addPool: aDictionary of: type
	| dict |
	dict := DynamicBinder on: aDictionary of: type.
	pools add: dict
! !

!MethodScope methodsFor: 'initialization' stamp: 'KenD 11/13/2022 12:50:31'!
addPoolBinders: aCollection
	pools addAll: aCollection
! !

!MethodScope methodsFor: 'initialization' stamp: 'KenD 11/13/2022 12:50:31'!
classBinding
	^species
! !

!MethodScope methodsFor: 'initialization' stamp: 'KenD 11/13/2022 12:50:31'!
initialize
	super initialize.
	globals := DynamicBinder on: Dictionary new of: GlobalBinding.
	ivars := StaticBinder new.
	cvars := OrderedCollection new. 
	pools := OrderedCollection new.
	self initializePseudoVars
! !

!MethodScope methodsFor: 'initialization' stamp: 'KenD 11/13/2022 12:50:31'!
initializeClassVars
	"
		fixme: bootstrapping should be properly abstracted
		and not checked with isKindOf:
	"

	| vars |
	species instanceSide withAllSuperclasses
		do: [ :class | 
			| binder |
			vars := class classPool.
			binder := DynamicBinder on: vars of: ClassVarBinding.
			cvars add: binder ]
! !

!MethodScope methodsFor: 'initialization' stamp: 'KenD 11/13/2022 12:50:31'!
initializeInstVars
	species allInstVarNames withIndexDo: [:name :i | | binding |
		binding := InstVarBinding new name: name; index: i.
		ivars at: name put: binding]
! !

!MethodScope methodsFor: 'initialization' stamp: 'KenD 11/13/2022 12:50:31'!
initializePoolVars
	| instance |
	instance := species instanceSide.
	(instance allSharedPoolsUsing: globals)
		do:
			[ :pool | self addPool: pool ] .
	instance withAllSuperclasses
		do: [ :class | class localPools do: [ :pool | self addPool: pool ] ]
! !

!MethodScope methodsFor: 'initialization' stamp: 'KenD 11/13/2022 12:50:31'!
initializePseudoVars
	pseudo := StaticBinder new.
	pseudo
		at: 'nil' put: NilBinding new;
		at: 'true' put: TrueBinding new;
		at: 'false' put: FalseBinding new;
		at: 'self' put: SelfBinding new
! !

!MethodScope methodsFor: 'initialization' stamp: 'KenD 11/13/2022 12:50:31'!
species: aSpecies
	species ifNotNil: [^self].
	species := aSpecies.
	self initializeInstVars; initializeClassVars; initializePoolVars.
	species superclass isNil ifTrue: [^self].
	pseudo at: 'super' put: SuperBinding new
! !

!MethodScope methodsFor: 'as yet unclassified' stamp: 'KenD 9/30/2022 12:19:08'!
resolvePseudo: aString
	^pseudo at: aString

! !

!MethodScope methodsFor: 'private' stamp: 'KenD 9/30/2022 15:09:19'!
captureEnvironment: aScriptNode
	self assert: aScriptNode == script
! !

!MethodScope methodsFor: 'private' stamp: 'KenD 9/30/2022 12:19:08'!
transferLocal: name
	^self resolveLocal: name
! !

!MethodScope methodsFor: 'testing' stamp: 'KenD 11/13/2022 12:50:31'!
hasMultipleBindingsFor: aString
	"
	temporal compatibility
	"
	| count |
	count := 0.
	cvars
		do: [:binder | binder at: aString ifPresent: [:b | count := count + 1]].
	pools
		do: [:binder | binder at: aString ifPresent: [:b | count := count + 1]].
	^count > 1
! !

!MethodScope methodsFor: 'accessing' stamp: 'KenD 11/13/2022 12:50:31'!
namespace
	^globals
! !

!MethodScope methodsFor: 'accessing' stamp: 'KenD 11/13/2022 12:50:31'!
namespace: aDictionary
	globals contents: aDictionary
! !

!Binding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:59:00'!
canBeAssigned
	^true
! !

!Binding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:59:00'!
declaration
	^self
! !

!Binding methodsFor: 'testing' stamp: 'KenD 11/8/2022 14:51:41'!
encodeUsing: anAstcodeEncoder
	self assert: false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:59:00'!
isArgument
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:59:00'!
isClassBinding
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:59:00'!
isClassVariable
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:59:00'!
isConstantBinding
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:59:00'!
isDynamic
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:59:00'!
isGlobal
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:59:00'!
isInStack
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:59:00'!
isInstVar
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:59:00'!
isLiteral
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:59:00'!
isLocal
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:59:00'!
isPoolVariableBinding
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:59:00'!
isSelf
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:59:00'!
isSelfOrSuper
	^self isSelf or: [self isSuper]
! !

!Binding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:59:00'!
isSuper
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:59:00'!
isTemporary
	^false
! !

!Binding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:59:00'!
literal
	^nil
! !

!Binding methodsFor: 'accessing' stamp: 'KenD 9/29/2022 13:59:00'!
name
	^name
! !

!Binding methodsFor: 'accessing' stamp: 'KenD 9/29/2022 13:59:00'!
name: aString
	name := aString
! !

!Binding methodsFor: 'printing' stamp: 'KenD 9/29/2022 13:59:00'!
printNameOn: aStream
		aStream
		print: name

! !

!Binding methodsFor: 'printing' stamp: 'KenD 9/29/2022 13:59:00'!
printOn: aStream
	self printNameOn: aStream.
	aStream
		nextPutAll: ' ('.
	super printOn: aStream.
	aStream nextPutAll: ')'
! !

!Binding methodsFor: 'actions' stamp: 'KenD 9/29/2022 13:59:00'!
beReferencedFrom: aScriptNode
	
! !

!AssociationBinding methodsFor: 'accessing' stamp: 'KenD 2/24/2021 11:24:30'!
association 

	^association! !

!AssociationBinding methodsFor: 'accessing' stamp: 'KenD 2/24/2021 11:24:41'!
association: anAssociation 

	association := anAssociation.
	name := anAssociation key! !

!AssociationBinding methodsFor: 'accessing' stamp: 'KenD 2/24/2021 11:25:02'!
literal 

	^association! !

!AssociationBinding methodsFor: 'testing' stamp: 'KenD 2/24/2021 11:24:17'!
usesSymbols 

	^false! !

!AssociationBinding class methodsFor: 'accessing' stamp: 'KenD 6/8/2021 13:16:43'!
usesSymbols 

	^false! !

!AssociationBinding class methodsFor: 'instance creation' stamp: 'KenD 2/24/2021 11:23:29'!
on: anAssociation 

	^self new association: anAssociation! !

!GlobalBinding methodsFor: 'testing' stamp: 'KenD 11/13/2022 12:48:59'!
emitLoadAusing: anAstcodeEncoder
	anAstcodeEncoder encodeLoadAwithGlobal: association
! !

!GlobalBinding methodsFor: 'testing' stamp: 'KenD 11/13/2022 12:48:59'!
encodeUsing: anAstcodeEmitter
	anAstcodeEmitter encodeGlobalVar: association
! !

!GlobalBinding methodsFor: 'testing' stamp: 'KenD 11/13/2022 12:48:59'!
isGlobal
	^true
! !

!GlobalBinding class methodsFor: 'testing' stamp: 'KenD 11/13/2022 12:48:59'!
usesSymbols
	^true
! !

!GlobalBinding class methodsFor: 'private' stamp: 'KenD 11/13/2022 12:48:59'!
on: anAssociation
	| v class |
	v := anAssociation value.
	class := (v isSpecies or: [ v class == SlotObjectMap and: [v spec isMeta]])
		ifTrue: [ ClassBinding ]
		ifFalse: [ GlobalBinding ].
	^ class new association: anAssociation
! !

!PoolVarBinding methodsFor: 'codeGeneration' stamp: 'KenD 3/2/2021 12:43:39'!
emitLoadAusing: anAstcodeEncoder 

	anAstcodeEncoder encodeLoadAwithPoolVar: association! !

!PoolVarBinding methodsFor: 'codeGeneration' stamp: 'KenD 3/2/2021 12:43:50'!
encodeUsing: anAstcodeEmitter 

	anAstcodeEmitter encodePoolVar: self literal! !

!PoolVarBinding methodsFor: 'testing' stamp: 'KenD 3/2/2021 12:44:07'!
isPoolVariableBinding 

	^true! !

!DynamicBinding methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:12:46'!
beReferencedFrom: aScriptNode
	"a dynamic binding could refer to an ivar, so we have to be conservative"
	aScriptNode useSelf
! !

!DynamicBinding methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:12:46'!
encodeUsing: anAstcodeEmitter
	anAstcodeEmitter encodeDynamicVar: name
! !

!DynamicBinding methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:12:46'!
isDynamic
	^true
! !

!DynamicBinding methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:12:46'!
literal
	^name asSymbol
! !

!DynamicBinding class methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:12:46'!
default
	^Default ifNil: [Default := self new name: '<unresolved>']
! !

!DynamicBinding class methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:12:46'!
named: aString
	| index first second |
	index := aString indexOf: $..
	index = 0 ifTrue: [ ^self new name: aString ].
	first := aString copyFrom: 1 to: index - 1.
	second := aString copyFrom: index + 1 to: aString size.
	^NestedDynamicBinding new name: { first. second }
! !

!NestedDynamicBinding methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:19:29'!
encodeUsing: anAstcodeEmitter
	anAstcodeEmitter encodeNestedDynamicVar: name
! !

!NestedDynamicBinding methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:19:29'!
literal
	^name collect: [ :n | n asSymbol]
! !

!NestedDynamicBinding methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:19:29'!
printNameOn: aStream
	name do: [ :n | aStream nextPutAll: n ] separatedBy: [ aStream nextPut: $. ]
! !

!LiteralBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:58:47'!
isLiteral
	^true
! !

!FalseBinding methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:02:17'!
encodeUsing: anAstcodeEmitter
	anAstcodeEmitter encodeFalse
! !

!FalseBinding methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:02:17'!
name
	^'false'
! !

!FalseBinding methodsFor: 'evaluating' stamp: 'KenD 9/29/2022 14:02:17'!
value
	^false
! !

!NilBinding methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:19:43'!
encodeUsing: anAstcodeEmitter
	anAstcodeEmitter encodeNil
! !

!NilBinding methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:19:43'!
name
	^'nil'
! !

!NilBinding methodsFor: 'evaluating' stamp: 'KenD 9/30/2022 12:19:43'!
value
	^nil
! !

!TrueBinding methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:28:12'!
encodeUsing: anAstcodeEmitter
	anAstcodeEmitter encodeTrue
! !

!TrueBinding methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:28:12'!
name
	^'true'
! !

!TrueBinding methodsFor: 'evaluating' stamp: 'KenD 9/29/2022 14:28:12'!
value
	^true
! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 9/29/2022 13:58:17'!
declaration
	^declaration
! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 9/29/2022 13:58:17'!
declaration: anIdentifierNode
	declaration := anIdentifierNode
! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 9/29/2022 13:58:17'!
environment
	^environment index
! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 9/29/2022 13:58:17'!
environmentIndex
	^environment index
! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 9/29/2022 13:58:17'!
environmentIndex: anInteger
	environment index: anInteger
! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 9/29/2022 13:58:17'!
environmentObject
	^environment
! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 9/29/2022 13:58:17'!
environmentType
	^environment environmentType
! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 9/29/2022 13:58:17'!
index
	^index
! !

!LocalBinding methodsFor: 'accessing' stamp: 'KenD 9/29/2022 13:58:17'!
index: aNumber
	index := aNumber
! !

!LocalBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:58:17'!
isInArray
	^self isInStack not
! !

!LocalBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:58:17'!
isInStack
	^environment isStack
! !

!LocalBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:58:17'!
isLocal
	^true
! !

!LocalBinding methodsFor: 'actions' stamp: 'KenD 9/29/2022 13:58:17'!
beInArray
	environment := ArrayEnvironment new
! !

!ArgumentBinding methodsFor: 'actions' stamp: 'KenD 9/29/2022 14:01:42'!
beInlined
	environment := InlinedArgEnvironment new
! !

!ArgumentBinding methodsFor: 'actions' stamp: 'KenD 9/29/2022 14:01:42'!
description
	^'argument ' , name
! !

!ArgumentBinding methodsFor: 'actions' stamp: 'KenD 9/29/2022 14:01:42'!
encodeUsing: anAstcodeEncoder
	anAstcodeEncoder encodeArgument: index env: environment
! !

!ArgumentBinding methodsFor: 'actions' stamp: 'KenD 9/29/2022 14:01:42'!
isInlined
	^environment isInlinedArgument
! !

!ArgumentBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:01:42'!
canBeAssigned
	^false
! !

!ArgumentBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:01:42'!
index: aNumber
	index := aNumber.

! !

!ArgumentBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:01:42'!
isArgument
	^true
! !

!ArgumentBinding methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:01:42'!
initialize
	super initialize.
	environment := ArgumentEnvironment new
! !

!ArgumentBinding class methodsFor: 'instance creation' stamp: 'KenD 9/29/2022 14:01:42'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!TemporaryBinding methodsFor: 'printing' stamp: 'KenD 9/29/2022 14:28:31'!
description
	^'temporary ' , name
! !

!TemporaryBinding methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:28:31'!
encodeUsing: anAstcodeEncoder
	anAstcodeEncoder encodeTemporary: index env: environment
! !

!TemporaryBinding methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:28:31'!
initialize
	super initialize.
	environment := StackEnvironment new
! !

!TemporaryBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:28:31'!
isTemporary
	^true
! !

!TemporaryBinding class methodsFor: 'instance creation' stamp: 'KenD 9/29/2022 14:28:31'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!SelfBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:57:35'!
canBeAssigned
	^false
! !

!SelfBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:57:35'!
encodeUsing: anAstcodeEmitter
	anAstcodeEmitter encodeSelf
! !

!SelfBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:57:35'!
isSelf
	^true
! !

!SelfBinding methodsFor: 'accessing' stamp: 'KenD 9/29/2022 13:57:35'!
name
	^'self'
! !

!SelfBinding methodsFor: 'actions' stamp: 'KenD 9/29/2022 13:57:35'!
beReferencedFrom: aScriptNode
	aScriptNode useSelf
! !

!SuperBinding methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:28:51'!
encodeUsing: anAstcodeEmitter
	anAstcodeEmitter encodeSuper
! !

!SuperBinding methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:28:51'!
name
	^'super'
! !

!SuperBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:28:51'!
isSelf
	^false
! !

!SuperBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:28:51'!
isSuper
	^true
! !

!SSmalltalkCompiler methodsFor: 'services' stamp: 'KenD 10/2/2022 13:45:05'!
parseFragment
	headless := false.
	self reset.
	ast := self parser methodFragment.
	result ast: ast
! !

!SSmalltalkCompiler methodsFor: 'services' stamp: 'KenD 10/2/2022 13:45:05'!
parseFragment: aString
	source := aString.
	[self parseFragment; resolveSemantics] on: SCompilationError do: [].
	^ast
! !

!SSmalltalkCompiler methodsFor: 'services' stamp: 'KenD 10/2/2022 13:45:05'!
parseMethod
	headless := false.
	self reset.
	ast := self parser method.
	result ast: ast
! !

!SSmalltalkCompiler methodsFor: 'services' stamp: 'KenD 10/2/2022 13:45:05'!
parseMethod: aString
	source := aString.
	frontend protect: [self parseMethod; resolveSemantics].
	^result
! !

!SSmalltalkCompiler methodsFor: 'services' stamp: 'KenD 10/2/2022 13:45:05'!
resolveSemantics
	ast acceptVisitor: SSemanticVisitor new
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 10/2/2022 13:45:05'!
assignmentNode
	^SAssignmentNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 10/2/2022 13:45:05'!
blockNode
	^SBlockNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 10/2/2022 13:45:05'!
braceNode
	^SBraceNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 10/2/2022 13:45:05'!
buildMethod
	result method: ast buildMethod
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 10/2/2022 13:45:05'!
cascadeMessageNode
	^SCascadeMessageNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 10/2/2022 13:45:05'!
cascadeNode
	^SCascadeNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 10/2/2022 13:45:05'!
commentNode
	^SCommentNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 10/2/2022 13:45:05'!
compileMethod: aString
	source := aString.
	frontend protect: [
		self
			parseMethod;
			resolveSemantics;
			buildMethod].
	^result
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 10/2/2022 13:45:05'!
delimiterToken
	^SDelimiterToken new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 10/2/2022 13:45:05'!
endToken
	^SEndToken new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 10/2/2022 13:45:05'!
hasBlocks
	^ blocks > 0
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 10/2/2022 13:45:05'!
hasSends
^ leaf not
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 10/2/2022 13:45:05'!
identifierNode
	^SIdentifierNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 10/2/2022 13:45:05'!
initialize
	self reset

! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 10/2/2022 13:45:05'!
literalNode
	^SLiteralNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 10/2/2022 13:45:05'!
messageNode
	^SMessageNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 10/2/2022 13:45:05'!
methodNode
	^SMethodNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 10/2/2022 13:45:05'!
noticeSend
	leaf := false
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 10/2/2022 13:45:05'!
numericLiteralNode
	^SNumberNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 10/2/2022 13:45:05'!
pragmaNode
	^SPragmaNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 10/2/2022 13:45:05'!
reset
	self resetResult.
	leaf := true.
	blocks := 0.
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 10/2/2022 13:45:05'!
returnNode
	^SReturnNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 10/2/2022 13:45:05'!
selectorNode
	^SSelectorNode new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'nodes' stamp: 'KenD 10/2/2022 13:45:05'!
stringToken
	^SStringToken new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 10/2/2022 13:45:05'!
activate: aScriptNode while: aBlock
	| current |
	current := activeScript.
	activeScript := aScriptNode.
	aBlock value.
	activeScript := current
! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 10/2/2022 13:45:05'!
activeScope
	^activeScript scope
! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 10/2/2022 13:45:05'!
activeScript
	^activeScript
! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 10/2/2022 13:45:05'!
activeScript: aParseNode
	activeScript := aParseNode
! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 10/2/2022 13:45:05'!
ast
	^ast
! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 10/2/2022 13:45:05'!
frontend
	^frontend
! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 10/2/2022 13:45:05'!
frontend: aCompiler
	frontend := aCompiler
! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 10/2/2022 13:45:05'!
parser
	^SSmalltalkParser new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 10/2/2022 13:45:05'!
result
	^result
! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 10/2/2022 13:45:05'!
scanner
	^SSmalltalkScanner new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 10/2/2022 13:45:05'!
sourceCode
	^source
! !

!SSmalltalkCompiler methodsFor: 'accessing' stamp: 'KenD 10/2/2022 13:45:05'!
sourceCode: aString
	source := aString
! !

!SSmalltalkCompiler methodsFor: 'emitting' stamp: 'KenD 10/2/2022 13:45:05'!
blockCount
	^blocks
! !

!SSmalltalkCompiler methodsFor: 'emitting' stamp: 'KenD 10/2/2022 13:45:05'!
blockIndex
	blocks := blocks + 1.
	^blocks - 1
! !

!SSmalltalkCompiler methodsFor: 'private' stamp: 'KenD 10/2/2022 13:45:05'!
resetResult
	result := SCompilationResult new compiler: self
! !

!SSmalltalkCompiler methodsFor: 'testing' stamp: 'KenD 10/2/2022 13:45:05'!
supportsBraceNodes
	^true
! !

!SSmalltalkCompiler methodsFor: 'errors' stamp: 'KenD 10/2/2022 13:45:05'!
compilationError: aString stretch: aStretch
	^SCompilationError new
		compiler: self;
		stretch: aStretch;
		description: aString
! !

!SSmalltalkCompiler methodsFor: 'errors' stamp: 'KenD 10/2/2022 13:45:05'!
error: aString at: anInteger
	| stretch |
	stretch := anInteger thru: anInteger.
	^self error: aString stretch: stretch
! !

!SSmalltalkCompiler methodsFor: 'errors' stamp: 'KenD 10/2/2022 13:45:05'!
error: aString stretch: aStretch
	| error |
	error := self compilationError: aString stretch: aStretch.
	^error beFatal; signal
! !

!SSmalltalkCompiler methodsFor: 'errors' stamp: 'KenD 10/2/2022 13:45:05'!
warning: aString at: aStretch
	| error |
	error := self compilationError: aString stretch: aStretch.
	error beWarning; signal
! !

!SSmalltalkCompiler class methodsFor: 'instance creation' stamp: 'KenD 10/2/2022 13:45:05'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!SSmalltalkParser methodsFor: 'arrays' stamp: 'KenD 9/30/2022 12:06:33'!
arrayBody
	| literals position |
	literals := OrderedCollection new.
	position := token position.
	[
		self step.
		(token is: $)) or: [token isEnd]]
		whileFalse: [| element |
			element := self arrayElement.
			literals add: element].
	token isEnd ifTrue: [self missingToken: ')'].
	^self buildNode: compiler literalNode at: position with: literals asArray
! !

!SSmalltalkParser methodsFor: 'arrays' stamp: 'KenD 9/30/2022 12:06:33'!
arrayElement
	token isLiteral ifTrue: [^token value].
	token isNameToken ifTrue: [^self pseudoLiteralValue].
	token isKeyword ifTrue: [^self literalKeyword].
	(token is: #'-') ifTrue: [^self negativeNumberOrBinary].
	token hasSymbol ifTrue: [^token value].
	(token is: $() ifTrue: [^self arrayBody value].
	(token is: #'#(') ifTrue: [^self arrayBody value].
	(token is: #'#[') ifTrue: [^self byteArrayBody value].
	self invalidArrayToken
! !

!SSmalltalkParser methodsFor: 'arrays' stamp: 'KenD 9/30/2022 12:06:33'!
braceBody
	| elements position |
	elements := OrderedCollection new.
	position := token position.
	self step.
	[
		token isEnd ifTrue: [self missingToken: '}'].
		token is: $}]
		whileFalse: [
			elements add: self expression.
			(token is: $.) ifTrue: [self step]].
	^self buildBraceNode: elements at: position
! !

!SSmalltalkParser methodsFor: 'arrays' stamp: 'KenD 9/30/2022 12:06:33'!
bracedArray
	| array |
	array := self braceBody.
	self step.
	^array
! !

!SSmalltalkParser methodsFor: 'arrays' stamp: 'KenD 9/30/2022 12:06:33'!
byteArrayBody
	| bytes save start array node |
	bytes := OrderedCollection new.
	save := token.
	start := token position.
	[
		self step.
		token isLiteral or: [token isPoolLiteral]]
		whileTrue: [self addByteTo: bytes].
	(token is: $]) ifFalse: [
		token isNameToken
			ifTrue: [self missingLiteral]
			ifFalse: [self missingToken: ']']].
	array := ByteArray new: bytes size.
	bytes withIndexDo: [:b :i | array at: i put: b].
	node := self buildNode: compiler literalNode at: start with: array.
	^node moveCommentsFrom: save
! !

!SSmalltalkParser methodsFor: 'arrays' stamp: 'KenD 9/30/2022 12:06:33'!
literalArray
	| array |
	array := self arrayBody.
	self step.
	^array
! !

!SSmalltalkParser methodsFor: 'arrays' stamp: 'KenD 9/30/2022 12:06:33'!
literalByteArray
	| node |
	node := self byteArrayBody.
	self step.
	^node
! !

!SSmalltalkParser methodsFor: 'arrays' stamp: 'KenD 9/30/2022 12:06:33'!
negativeNumberOrBinary
	self peek isNumberNode
		ifTrue: [token := self next negate position: token position - 1].
	^token value
! !

!SSmalltalkParser methodsFor: 'ffi support' stamp: 'KenD 9/30/2022 12:06:33'!
symbolicPragma
	| position symbol pragma |
	position := token position.
	symbol := self step value.
	pragma := self buildNode: compiler pragmaNode at: position.
	^pragma symbol: symbol
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 9/30/2022 12:06:33'!
addByteTo: aCollection
	| byte |
	byte := token isLiteral ifTrue: [token value] ifFalse: [token literalValue].
	byte isInteger ifFalse: [self nonIntegerToken].
	(byte between: 0 and: 255) ifFalse: [self invalidByteValue].
	aCollection add: byte
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 9/30/2022 12:06:33'!
assignment
	| position variable delimiter expression assignment |
	position := token position.
	variable := self step asIdentifierNode moveCommentsFrom: token.
	delimiter := self step.
	expression := self expression.
	expression isAssign
		ifTrue: [^expression assign: variable operator: delimiter].
	expression moveCommentsFrom: token.
	assignment := self buildNode: compiler assignmentNode at: position.
	^assignment assign: variable with: expression operator: delimiter
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 9/30/2022 12:06:33'!
attachPragmaTo: aMethodNode
	| start pragma |
	(aMethodNode isHeadless orNot: [token is: #'<']) ifTrue: [^false].
	start := token position.
	self step.
	pragma := token isKeyword
		ifTrue: [self ffiOrPrimitive: aMethodNode]
		ifFalse: [self symbolicPragma].
	pragma position: start; end: token position.
	aMethodNode pragma: pragma.
	(token is: #'>') ifFalse: [self missingToken: '>'].
	^true
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 9/30/2022 12:06:33'!
buildBraceNode: elements at: position
	| node |
	node := self buildNode: compiler braceNode at: position.
	^node elements: elements
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 9/30/2022 12:06:33'!
buildCascadeMessageNode: receiver
	| node |
	node := self buildNode: compiler cascadeMessageNode at: receiver position.
	^node receiver: receiver
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 9/30/2022 12:06:33'!
buildMessageNode: receiver
	| node |
	node := self buildNode: compiler messageNode at: receiver position.
	^node receiver: receiver
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 9/30/2022 12:06:33'!
buildMethodNode: selector arguments: arguments
	| node |
	node := self buildNode: compiler methodNode at: selector position.
	compiler activeScript: node.
	^node selector: selector; arguments: arguments
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 9/30/2022 12:06:33'!
buildNode: aParserNode at: anInteger
	^aParserNode position: anInteger; end: token position
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 9/30/2022 12:06:33'!
buildNode: aParseNode at: anInteger with: anObject
	| node |
	node := scanner buildToken: aParseNode at: anInteger with: anObject.
	^node end: token position
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 9/30/2022 12:06:33'!
cascadeMessage: aMessageNode
	| msg |
	self hasUnarySelector ifTrue: [^self unaryMessage: aMessageNode].
	self hasBinarySelector ifTrue: [^self binaryMessage: aMessageNode].
	self hasKeywordSelector ifTrue: [^self keywordMessage: aMessageNode].
	msg := token value = ''
		ifTrue: ['unfinished cascade']
		ifFalse: [token value asString , ' not allowed in cascade'].
	self error: msg
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 9/30/2022 12:06:33'!
ffiArguments
	| args type |
	args := OrderedCollection new.
	self step.
	token value !!= $(
		ifTrue: [ self error: 'expected "("' ].
	self peek value = $)
		ifTrue: [ self step.
			^ args ].
	[ type := self ffiType.
	args add: type.
	self step.
	token value = #, ] whileTrue.
	token value !!= $)
		ifTrue: [ self error: 'expected ")"' ].
	^ args
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 9/30/2022 12:06:33'!
ffiCall: aBoolean method: aMethodNode
	| cc return name args descriptor |
	cc := token value.
	return := self ffiType.
	aBoolean
		ifTrue: [ self step.
			name := token value ifNil: [ self error: 'invalid function name' ] ].
	args := self ffiArguments.
	args size = aMethodNode selector arity
		ifFalse:
			[ ^ self error: 'method arity does not match with function arguments' ].
	self step.
	descriptor := SFFIDescriptor ret: return args: args cc: cc.
	^ compiler pragmaNode ffi: cc name: name with: descriptor
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 9/30/2022 12:06:33'!
ffiOrPrimitive: aMethodNode
	| tag |
	tag := token value asLowercase.
	tag last = $: ifFalse: [self invalidPragma].
	tag := tag allButLast.
	token value: tag.
	tag = 'primitive' ifTrue: [^self primitive].
	tag = 'callback' ifTrue: [ ^self ffiCall: false method: aMethodNode ].
	tag = 'callout' ifTrue: [ ^self ffiCall: true method: aMethodNode ].	
	self invalidPragma
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 9/30/2022 12:06:33'!
ffiType
	| type |
	self step.
	token isNameToken ifFalse: [self error: 'expected type name'].
	type := token value.
	type = 'struct' ifFalse: [ ^type].
	self step.
	token isNameToken ifFalse: [self error: 'expected type name'].	
	^token value
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 9/30/2022 12:06:33'!
hasKeywordSelector
	^token isKeyword
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 9/30/2022 12:06:33'!
hasUnarySelector
	^token isNameToken
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 9/30/2022 12:06:33'!
invalidPragma
	| position stretch |
	position := token position.
 	stretch := position thru: position.
	^SInvalidPragmaError new stretch: stretch; signal
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 9/30/2022 12:06:33'!
keywordArgument
	| arg |
	arg := self primary ifNil: [self missingArgument].
	arg := self unarySequence: arg.
	^self binarySequence: arg
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 9/30/2022 12:06:33'!
keywordMessage: aMessageNode
	| selector arguments node |
	node := self buildNode: compiler selectorNode at: token position.
	selector := '' writeStream.
	arguments := OrderedCollection new.
	[token isKeyword] whileTrue: [
		selector nextPutAll: token value.
		node addKeyword: self step.
		arguments add: self keywordArgument].
	node symbol: selector contents; end: token prevPosition.
	aMessageNode
		arguments: arguments;
		end: token prevPosition;
		selector: node
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 9/30/2022 12:06:33'!
keywordSequence: aParseNode
	| expression |
	self hasKeywordSelector ifFalse: [^aParseNode].
	expression := self buildMessageNode: aParseNode.
	self keywordMessage: expression.
	^expression
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 9/30/2022 12:06:33'!
literalKeyword
	| keyword |
	keyword := token value , scanner nextKeyword value.
	^keyword reduced asSymbol
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 9/30/2022 12:06:33'!
namedPrimitive
	| name pragma |
	token isNameToken
		ifFalse: [ self invalidPragma ].
	name := token value.
	pragma := self buildNode: compiler pragmaNode at: token position.
	^ pragma primitive: 0 name: name asSymbol
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 9/30/2022 12:06:33'!
negativeNumber
	token := nil.
	^self negativeNumberOrBinary; step
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 9/30/2022 12:06:33'!
numberedPrimitive
	| number pragma |
	number := token value.
	number isInteger ifFalse: [self invalidPragma].
	pragma := self buildNode: compiler pragmaNode at: token position.
	^pragma primitive: number name: nil
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 9/30/2022 12:06:33'!
primitive
	| primitive |
	self step.
	primitive := token isNumberNode
		ifTrue: [self numberedPrimitive]
		ifFalse: [self namedPrimitive].
	self step.
	^primitive
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 9/30/2022 12:06:33'!
pseudoLiteralValue
	| value |
	token isPoolLiteral ifTrue: [^token literalValue].
	value := token value.
	value = 'nil' ifTrue: [^nil].
	value = 'true' ifTrue: [^true].
	value = 'false' ifTrue: [^false].
	^token isPoolLiteral ifTrue: [token literalValue] ifFalse: [value asSymbol]
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 9/30/2022 12:06:33'!
skipDots
	[token is: $.] whileTrue: [self step]
! !

!SSmalltalkParser methodsFor: 'private' stamp: 'KenD 9/30/2022 12:06:33'!
validateLocalName: aSmalltalkToken
	aSmalltalkToken isDelimitedIdentifier ifTrue: [^self].
	(aSmalltalkToken value includes: $.)
		ifTrue: [self error: 'invalid embedded dot']
! !

!SSmalltalkParser methodsFor: 'productions' stamp: 'KenD 9/30/2022 12:06:33'!
headlessMethod
	| method |
	self step.
	method := compiler methodNode.
	compiler activeScript: method.
	self addBodyTo: method.
	^method
! !

!SSmalltalkParser methodsFor: 'productions' stamp: 'KenD 9/30/2022 12:06:33'!
method
	| method |
	self step.
	method := self methodSignature.
	method isNil ifTrue: [^nil].
	self addBodyTo: method.
	^method
! !

!SSmalltalkParser methodsFor: 'productions' stamp: 'KenD 9/30/2022 12:06:33'!
methodFragment
	| method |
	self step.
	method := self methodSignature.
	method isNil ifTrue: [^nil].
	[self addBodyTo: method] on: SCompilationError do: [].
	^method
! !

!SSmalltalkParser methodsFor: 'productions' stamp: 'KenD 9/30/2022 12:06:33'!
methodSelector
	self step.
	^self methodSignature ifNotNil: [:m | m selectorNode]
! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 9/30/2022 12:06:33'!
error: aString
	self error: aString at: token position
! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 9/30/2022 12:06:33'!
error: aString at: position
	^compiler error: aString at: position
! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 9/30/2022 12:06:33'!
invalidArrayToken
	self error: 'invalid literal entry'
! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 9/30/2022 12:06:33'!
invalidByteValue
	self error: 'value not between 0 and 255'
! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 9/30/2022 12:06:33'!
missingArgument
	self error: 'argument missing'
! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 9/30/2022 12:06:33'!
missingExpression
	self error: 'missing expression'
! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 9/30/2022 12:06:33'!
missingLiteral
	self error: 'missing literal or named literal'
! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 9/30/2022 12:06:33'!
missingToken: aString
	self error: 'missing ' , aString
! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 9/30/2022 12:06:33'!
nonIntegerToken
	self error: 'non-integer token'
! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 9/30/2022 12:06:33'!
notify: aString
	compiler notify: aString at: token position
! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 9/30/2022 12:06:33'!
notify: aString at: position
	compiler notify: aString at: position
! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 9/30/2022 12:06:33'!
warning: aString
	compiler warning: aString at: token position
! !

!SSmalltalkParser methodsFor: 'errors' stamp: 'KenD 9/30/2022 12:06:33'!
warning: aString at: position
	compiler warning: aString at: position
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 9/30/2022 12:06:33'!
addBodyTo: aMethodNode
	self
		addTemporariesTo: aMethodNode;
		addPragmaTo: aMethodNode;
		addStatementsTo: aMethodNode
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 9/30/2022 12:06:33'!
addStatementsTo: aMethodNode
	aMethodNode
		position: token position;
		addStatements: self statements;
		end: token position;
		moveCommentsFrom: token.
	token isEnd
		ifFalse: [^self unexpectedStatementError: aMethodNode statements]
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 9/30/2022 12:06:33'!
addTemporariesTo: aMethodNode
	aMethodNode temporaries: self temporaries
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 9/30/2022 12:06:33'!
cascadeSequence: aMessageNode
	| cascade receiver messages msg node |
	(token is: $;) ifFalse: [^aMessageNode].
	cascade := self buildNode: compiler cascadeNode at: aMessageNode position.
	receiver := aMessageNode receiver.
	cascade receiver: receiver.
	node := compiler cascadeMessageNode from: aMessageNode.
	node cascade: cascade.
	messages := OrderedCollection with: node.
	[token is: $;] whileTrue: [
		self step.
		msg := self buildCascadeMessageNode: receiver.
		msg
			cascade: cascade;
			position: token position;
			moveCommentsFrom: token.
		messages add: msg.
		self cascadeMessage: msg].
	^cascade messages: messages asArray; end: msg end
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 9/30/2022 12:06:33'!
expression
	| primary expression |
	(token isNameToken and: [self peek isAssignment]) ifTrue: [^self assignment].
	primary := self primary ifNil: [^self missingExpression].
	expression := self unarySequence: primary.
	expression := self binarySequence: expression.
	expression := self keywordSequence: expression.
	expression == primary
		ifFalse: [expression := self cascadeSequence: expression].
	token endsExpression ifFalse: [self errorIn: primary].
	^expression
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 9/30/2022 12:06:33'!
keywordSignature
	| selector arguments node |
	selector := '' writeStream.
	arguments := OrderedCollection new.
	node := self buildNode: compiler selectorNode at: token position.
	[token isKeyword] whileTrue: [
		selector nextPutAll: token value.
		node addKeyword: token asSelectorNode.
		self step.
		token isNameToken ifFalse: [self missingArgument].
		arguments add: token asIdentifierNode.
		self step].
	arguments isEmpty ifTrue: [^nil].
	node
		symbol: selector contents;
		end: token end;
		moveCommentsFrom: token.
	^self buildMethodNode: node arguments: arguments
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 9/30/2022 12:06:33'!
methodPragma
	self step.
	^[| method |
		method := self methodSignature.
		self addTemporariesTo: method; attachPragmaTo: method.
		method pragma]
		on: SCompilationError
		do: [:ex | ex return: compiler pragmaNode]
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 9/30/2022 12:06:33'!
methodSignature
	self keywordSignature ifNotNil: [:m | ^m].
	self binarySignature ifNotNil: [:m | ^m].
	self unarySignature ifNotNil: [:m | ^m].
	self error: 'method signature expected'
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 9/30/2022 12:06:33'!
parenthesizedExpression
	| start open expression |
	start := token position.
	open := self step.
	expression := self expression.
	expression moveCommentsFrom: open.
	(token is: $)) ifFalse: [self missingToken: ')'].
	expression isImmediate
		ifFalse: [expression position: start; end: token position].
	self step.
	^expression
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 9/30/2022 12:06:33'!
primary
	token isNameToken ifTrue: [^self step asIdentifierNode].
	token isLiteral ifTrue: [^self step].
	(token is: $[) ifTrue: [^self block].
	(token is: $() ifTrue: [^self parenthesizedExpression].
	(token is: #'#(') ifTrue: [^self literalArray].
	(token is: #'#[') ifTrue: [^self literalByteArray].
	(compiler supportsBraceNodes and: [token is: ${]) ifTrue: [^self bracedArray].
	(token is: #'-') ifTrue: [^self negativeNumber].
	(token is: #'<') ifTrue: [^self taggedNode].
	^nil
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 9/30/2022 12:06:33'!
return
	| return expression end node |
	return := self step.
	expression := self expression.
	expression moveCommentsFrom: token.
	end := token position.
	self skipDots.
	node := self buildNode: compiler returnNode at: return position.
	^node
		return: return;
		end: end;
		expression: expression;
		moveCommentsFrom: return
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 9/30/2022 12:06:33'!
statement
	| expression |
	(token is: $^) ifTrue: [^self return].
	expression := self expression.
	token moveCommentsTo: expression.
	^expression
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 9/30/2022 12:06:33'!
statements
	| statements |
	statements := OrderedCollection new.
	[
		token endsExpression ifTrue: [^statements].
		statements add: self statement.
		token is: $.]
		whileTrue: [self skipDots].
	^statements
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 9/30/2022 12:06:33'!
step
	| save comments |
	save := token.
	self next isComment ifFalse: [^save].
	comments := OrderedCollection new: 2.
	[
		comments add: token.
		self next isComment] whileTrue.
	token comments: comments.
	^save
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 9/30/2022 12:06:33'!
temporaries
	| temporaries |
	(token is: #'||') ifTrue: [
		self step.
		^#()].
	token isBar ifFalse: [^#()].
	temporaries := OrderedCollection new.
	[
		self step.
		token isNameToken]
		whileTrue: [
			self validateLocalName: token.
			temporaries add: token asIdentifierNode].
	token isBar ifFalse: [self missingToken: '|'].
	self step.
	^temporaries
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 9/30/2022 12:06:33'!
unaryMessage: aMessageNode
	| selector |
	selector := self unarySelector.
	aMessageNode
		selector: selector;
		end: selector end;
		arguments: #();
		moveCommentsFrom: selector
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 9/30/2022 12:06:33'!
unarySelector
	| selector start end node |
	selector := token value.
	start := token position.
	end := start + selector size - 1.
	self step.
	node := self buildNode: compiler selectorNode at: start.
	^node
		symbol: selector;
		end: end;
		moveCommentsFrom: token
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 9/30/2022 12:06:33'!
unarySequence: aParseNode
	| node receiver |
	node := aParseNode.
	node isNameToken ifTrue: [node := node asIdentifierNode].
	[
		receiver := node.
		self hasUnarySelector]
		whileTrue: [
			node := self buildMessageNode: receiver.
			self unaryMessage: node].
	^node moveCommentsFrom: token
! !

!SSmalltalkParser methodsFor: 'parsing' stamp: 'KenD 9/30/2022 12:06:33'!
unarySignature
	self hasUnarySelector ifFalse: [^nil].
	^self buildMethodNode: self unarySelector arguments: #()
! !

!SSmalltalkParser methodsFor: 'api support' stamp: 'KenD 9/30/2022 12:06:33'!
addPragmaTo: aMethodNode
	(self attachPragmaTo: aMethodNode) ifTrue: [self step]
! !

!SSmalltalkParser methodsFor: 'binary' stamp: 'KenD 9/30/2022 12:06:33'!
binaryMessage: aMessageNode
	| selector primary argument |
	selector := self step.
	primary := self primary.
	primary isNil ifTrue: [
		((selector is: $:) and: [token is: #'='])
			ifTrue: [self
				error: 'stray whitespaces left in assignment'
				at: token position - 1]
			ifFalse: [self error: 'primary missing']].
	argument := self unarySequence: primary.
	aMessageNode
		selector: selector asSelectorNode;
		end: argument end;
		arguments: {argument}
! !

!SSmalltalkParser methodsFor: 'binary' stamp: 'KenD 9/30/2022 12:06:33'!
binarySequence: aParseNode
	| node rcvr |
	node := aParseNode.
	[
		rcvr := node.
		self hasBinarySelector]
		whileTrue: [
			node := self buildMessageNode: rcvr.
			self binaryMessage: node].
	^node
! !

!SSmalltalkParser methodsFor: 'binary' stamp: 'KenD 9/30/2022 12:06:33'!
binarySignature
	| selector arguments |
	((token isStringToken and: [token hasSymbol])
		or: [token is: $^]
		or: [token is: $:])
		ifFalse: [^nil].
	selector := self step asSelectorNode.
	token isNameToken ifFalse: [self missingArgument].
	self validateLocalName: token.
	arguments := {token asIdentifierNode}.
	self step.
	token moveCommentsTo: selector.
	^self buildMethodNode: selector arguments: arguments
! !

!SSmalltalkParser methodsFor: 'binary' stamp: 'KenD 9/30/2022 12:06:33'!
hasBinarySelector
	^(token isStringToken and: [token hasSymbol])
		or: [token is: $^]
		or: [token is: $:]
! !

!SSmalltalkParser methodsFor: 'blocks' stamp: 'KenD 9/30/2022 12:06:33'!
block
	| block |
	block := self buildNode: compiler blockNode at: token position.
	block parent: compiler activeScript.
	compiler activate: block while: [
		token moveCommentsTo: block.
		self step.
		block
			arguments: self blockArguments;
			temporaries: self temporaries;
			addStatements: self statements.
		(token is: $]) ifFalse: [self missingToken: ']'].
		block end: token position.
		token moveCommentsTo: block.
		self step].
	^block
! !

!SSmalltalkParser methodsFor: 'blocks' stamp: 'KenD 9/30/2022 12:06:33'!
blockArguments
	| arguments |
	(token is: $:) ifFalse: [^#()].
	arguments := OrderedCollection new.
	[
		self step.
		token isNameToken ifFalse: [self missingArgument].
		self validateLocalName: token.
		arguments add: self step asIdentifierNode.
		token is: $:] whileTrue.
	token isBar ifTrue: [self step] ifFalse: [
		(token is: #'||')
			ifTrue: [token value: #'|']
			ifFalse: [self missingToken: '|']].
	^arguments
! !

!SSmalltalkParser methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:06:33'!
compiler
	^compiler
! !

!SSmalltalkParser methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:06:33'!
compiler: aSmalltalkCompiler
	compiler := aSmalltalkCompiler.
	scanner := compiler scanner
! !

!SSmalltalkParser methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:06:33'!
next
	token := next.
	next := nil.
	^token ifNil: [token := scanner next]
! !

!SSmalltalkParser methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:06:33'!
on: aString
	scanner on: aString
! !

!SSmalltalkParser methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:06:33'!
peek
	| comments |
	next ifNotNil: [^next].
	next := scanner next.
	next isComment ifFalse: [^next].
	comments := OrderedCollection new: 2.
	[
		comments add: next.
		next := scanner next.
		next isComment] whileTrue.
	^next comments: comments
! !

!SSmalltalkParser methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:06:33'!
token
	^token
! !

!SSmalltalkParser methodsFor: 'services' stamp: 'KenD 9/30/2022 12:06:33'!
parse: aString
	^self on: aString; method
! !

!SSmalltalkParser methodsFor: 'services' stamp: 'KenD 9/30/2022 12:06:33'!
parseExpression: aString
	^self on: aString; headlessMethod
! !

!SSmalltalkParser methodsFor: 'services' stamp: 'KenD 9/30/2022 12:06:33'!
parseFragment: aString
	| method |
	self on: aString; step.
	[
		method := self methodSignature.
		method notNil ifTrue: [self addBodyTo: method]]
		on: SCompilationError
		do: [].
	^method
! !

!SSmalltalkParser methodsFor: 'services' stamp: 'KenD 9/30/2022 12:06:33'!
parseTemporaries: aString
	self on: aString; step.
	^self methodSignature notNil ifTrue: [self temporaries]
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 10/2/2022 13:42:15'!
end
	^self buildToken: compiler endToken at: stream position + 1
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 9/30/2022 12:57:47'!
isBinary: aCharacter
	| code |
	aCharacter isNil ifTrue: [^false].
	code := aCharacter asInteger.
	code < 128 ifTrue: [
		^#($+ $- $< $> $= $* $/ $\ $| $& $~ $, $@ $% $? $!! $: $^)
			includes: aCharacter].
	^code > 255
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 9/30/2022 12:57:47'!
next
	^self nextToken
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 9/30/2022 12:57:47'!
nextArrayPrefix
	| string |
	string := stream copyFrom: stream position - 1 to: stream position.
	^self
		buildToken: compiler delimiterToken
		at: stream position - 1
		with: string
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 9/30/2022 12:57:47'!
nextAssignment
	^self buildToken: compiler delimiterToken at: stream position with: #':='
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 9/30/2022 12:57:47'!
nextBinarySelector
	stream back.
	^self
		buildToken: compiler stringToken
		at: stream position + 1
		with: self scanBinarySymbol
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 9/30/2022 12:57:47'!
nextBinarySymbol
	^self
		buildToken: compiler literalNode
		at: stream position
		with: self scanBinarySymbol
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 9/30/2022 12:57:47'!
nextColon
	| start char |
	start := stream position.
	char := stream peek.
	((char = Character space or: [char = Character tab]) and: [(stream peek: 2) second = $=]) ifTrue: [
		stream skip: 1.
		char := $=].
	char = $= ifTrue: [
		stream skip.
		^self nextAssignment position: start].
	^(self isBinary: stream peek)
		ifTrue: [self nextBinarySelector]
		ifFalse: [self nextSpecialCharacter]

! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 9/30/2022 12:57:47'!
nextComment
	| start comment |
	start := stream position.
	[ stream atEnd not and:[stream peek !!== $"] ] whileTrue: [stream next].
	stream atEnd ifTrue: [self error: 'unfinished comment' at: start].
	stream position: start.
	comment := stream upTo: $".
	^self buildToken: compiler commentNode at: start with: comment

! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 9/30/2022 12:57:47'!
nextIdentifierOrKeyword
	| start |
	start := stream position.
	self skipIdentifier.
	((stream peekFor: $:) and: [stream peekFor: $=]) ifTrue: [stream skip: -2].
	^self buildToken: compiler stringToken at: start
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 9/30/2022 12:57:47'!
nextKeyword
	| start string |
	start := stream position + 1.
	self skipKeyword.
	string := stream copyFrom: start to: stream position.
	^self buildToken: compiler literalNode at: start - 1 with: string asSymbol
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 9/30/2022 12:57:47'!
nextLiteralCharacter
	stream atEnd ifTrue: [^self error: 'character expected'].
	^self
		buildToken: compiler literalNode
		at: stream position
		with: stream next
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 9/30/2022 12:57:47'!
nextLiteralString
	^self
		buildToken: compiler literalNode
		at: stream position
		with: self scanString reduced
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 9/30/2022 12:57:47'!
nextNumber
	| parser assoc |
	stream skip: -1.
	parser := NumberParser2 new on: stream.
	assoc := parser next.
	parser error ifNotNil: [:e | ^self error: e key at: e value].
	^self
		buildToken: compiler numericLiteralNode
		at: assoc value start
		with: assoc key
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 9/30/2022 12:57:47'!
nextQuotedSymbol
	| node |
	node := self nextLiteralString.
	^node beSymbol; position: node position - 1
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 9/30/2022 12:57:47'!
nextSpecialCharacter
	| token |
	token := self buildToken: compiler delimiterToken.
	^token beCharacter
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 9/30/2022 12:57:47'!
nextSymbolOrArrayPrefix
	| char |
	stream atEnd ifTrue: [self error: 'character expected'].
	char := stream peek.
	(self canBeInIdentifier: char) ifTrue: [^self nextKeyword].
	(self isBinary: char) ifTrue: [^self nextBinarySymbol].
	stream next.
	(char = $[ or: [char = $(]) ifTrue: [^self nextArrayPrefix].
	char = $' ifTrue: [^self nextQuotedSymbol].
	self error: 'character expected'
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 9/30/2022 12:57:47'!
nextToken
	| first |
	first := self scanChar.
	first isNil ifTrue: [^self end].
	(self canStartIdentifier: first) ifTrue: [^self nextIdentifierOrKeyword].
	(first = $_) ifTrue: [^self nextAssignment].
	first = $: ifTrue: [^self nextColon].
	first = $' ifTrue: [^self nextLiteralString].
	first = $$ ifTrue: [^self nextLiteralCharacter].
	first = $# ifTrue: [^self nextSymbolOrArrayPrefix].
	first = $" ifTrue: [^self nextComment].
	first isDigit ifTrue: [^self nextNumber].
	(first !!= $^ and: [first !!= $_ and: [self isBinary: first]])
		ifTrue: [^self nextBinarySelector].
	^self nextSpecialCharacter
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 9/30/2022 12:57:47'!
scanBinarySymbol
	| start symbol |
	start := stream position.
	self skipBinary.
	symbol := stream copyFrom: start + 1 to: stream position.
	^symbol asSymbol
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 9/30/2022 12:57:47'!
scanChar
	^(stream skipSeparators; atEnd) ifFalse: [stream next]

! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 9/30/2022 12:57:47'!
scanString
	| current start |
	start := current := stream position.
	^String streamContents: [:writer | 
		[| fragment |
			fragment := stream upTo: $'.
			writer nextPutAll: fragment.
			(current < stream position and: [(stream back; next) = $'])
				ifFalse: [self error: 'string end expected' at: start].
			stream peekFor: $']
			whileTrue: [
				writer nextPut: $'.
				current := stream position]]
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 9/30/2022 12:57:47'!
skipBinary
	[self isBinary: stream peek] whileTrue: [stream next]
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 9/30/2022 12:57:47'!
skipIdentifier
	| frontend |
	frontend := compiler frontend.
	[stream atEnd]
		whileFalse: [(frontend peekForIdentifier: stream) ifFalse: [^self]]
! !

!SSmalltalkScanner methodsFor: 'scanning' stamp: 'KenD 9/30/2022 12:57:47'!
skipKeyword
	| frontend continue pos |
	frontend := compiler frontend.
	[
		self skipIdentifier.
		continue := false.
		(stream peekFor: $:) ifTrue: [
			pos := stream position.
			stream atEnd
				ifFalse: [continue := frontend canStartIdentifier: stream peek]].
		continue] whileTrue.
	pos isNil ifFalse: [stream position: pos]
! !

!SSmalltalkScanner methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:57:47'!
compiler
	^compiler
! !

!SSmalltalkScanner methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:57:47'!
compiler: aSmalltalkCompiler
	compiler := aSmalltalkCompiler.
	compiler sourceCode ifNotNil: [:s | self sourceCode: s]
! !

!SSmalltalkScanner methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:57:47'!
on: aString
	stream := aString readStream.
	compiler notNil ifTrue: [compiler sourceCode: aString]
! !

!SSmalltalkScanner methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:57:47'!
sourceCode: aString
	stream := aString readStream
! !

!SSmalltalkScanner methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:57:47'!
canBeInIdentifier: aCharacter
	^compiler frontend canBeInIdentifier: aCharacter
! !

!SSmalltalkScanner methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:57:47'!
canStartIdentifier: aCharacter
	(compiler frontend canStartIdentifier: aCharacter) ifFalse: [^false].
	aCharacter = $_
		ifTrue: [^stream peek ifNil: [false] ifNotNil: [:ch | ch asInteger >= 33]].
	^true
! !

!SSmalltalkScanner methodsFor: 'private' stamp: 'KenD 9/30/2022 12:57:47'!
buildToken: aSmalltalkToken
	^self buildToken: aSmalltalkToken at: stream position
! !

!SSmalltalkScanner methodsFor: 'private' stamp: 'KenD 9/30/2022 12:57:47'!
buildToken: aSmalltalkToken at: anInteger
	| string |
	string := stream copyFrom: anInteger to: stream position.
	^self buildToken: aSmalltalkToken at: anInteger with: string
! !

!SSmalltalkScanner methodsFor: 'private' stamp: 'KenD 9/30/2022 12:57:47'!
buildToken: aSmalltalkToken at: anInteger with: anObject
	^aSmalltalkToken
		position: anInteger;
		value: anObject;
		end: stream position
! !

!SSmalltalkScanner methodsFor: 'errors' stamp: 'KenD 9/30/2022 12:57:47'!
error: aString
	^self error: aString at: stream position
! !

!SSmalltalkScanner methodsFor: 'errors' stamp: 'KenD 9/30/2022 12:57:47'!
error: aString at: anInteger
	^compiler error: aString at: anInteger
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:20:36'!
compileWarning: aString
	compiler notify: aString at: self stretch
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:20:36'!
compiler
	^compiler
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:20:36'!
compiler: aSmalltalkCompiler
	compiler := aSmalltalkCompiler
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:20:36'!
end
	^stretch end
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:20:36'!
end: aNumber
	stretch end: aNumber
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:20:36'!
position
	^stretch start
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:20:36'!
position: aNumber
	stretch start: aNumber
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:20:36'!
prevPosition
	^stretch start - 1
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:20:36'!
source
	^compiler sourceCode copyFrom: stretch start to: stretch end
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:20:36'!
stretch
	^stretch
! !

!SToken methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:20:36'!
stretch: aStretch
	stretch := aStretch
! !

!SToken methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:20:36'!
isDelimitedIdentifier
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:20:36'!
endsExpression
	^self isEnd
! !

!SToken methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:20:36'!
hasSymbol
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:20:36'!
is: anObject
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:20:36'!
isAssignment
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:20:36'!
isBar
	^(self is: #'|') or: [self is: #'/']
! !

!SToken methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:20:36'!
isBlockNode
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:20:36'!
isComment
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:20:36'!
isDelimiter
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:20:36'!
isEnd
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:20:36'!
isIdentifier
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:20:36'!
isKeyword
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:20:36'!
isLiteral
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:20:36'!
isNameToken
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:20:36'!
isNumberNode
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:20:36'!
isPoolLiteral
	^false
! !

!SToken methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:20:36'!
isStringToken
	^false
! !

!SToken methodsFor: 'printing' stamp: 'KenD 9/29/2022 14:20:36'!
comment
	^comments notNil ifTrue: [comments anyOne]
! !

!SToken methodsFor: 'printing' stamp: 'KenD 9/29/2022 14:20:36'!
comments
	^comments
! !

!SToken methodsFor: 'printing' stamp: 'KenD 9/29/2022 14:20:36'!
comments: aCollection
	aCollection isNil ifTrue: [^self].
	comments isNil
		ifTrue: [comments := aCollection]
		ifFalse: [comments addAll: aCollection]
! !

!SToken methodsFor: 'printing' stamp: 'KenD 9/29/2022 14:20:36'!
moveCommentsTo: aParseNode
	aParseNode comments: comments.
	comments := nil
! !

!SToken methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:20:36'!
initialize
	super initialize.
	stretch := 1 thru: 0
! !

!SToken class methodsFor: 'instance creation' stamp: 'KenD 9/29/2022 14:20:36'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!SEndToken methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:25:44'!
isEnd
	^true
! !

!SEndToken methodsFor: 'evaluating' stamp: 'KenD 9/30/2022 12:25:44'!
value: aString
	''
! !

!SEndToken methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:25:44'!
position: aNumber
	super position: aNumber - 1
! !

!SEndToken methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:25:44'!
prevPosition
	^stretch start
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:33:55'!
hasAssign
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:33:55'!
isAssign
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:33:55'!
isBraceNode
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:33:55'!
isCascade
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:33:55'!
isCascadeMessage
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:33:55'!
isEvaluable
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:33:55'!
isImmediate
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:33:55'!
isMessageNode
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:33:55'!
isMethod
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:33:55'!
isMethodArgument
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:33:55'!
isMethodTemporary
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:33:55'!
isReturn
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:33:55'!
isSelector
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:33:55'!
isSelf
	^false
! !

!SParseNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:33:55'!
isSuper
	^false
! !

!SParseNode methodsFor: 'enumerating' stamp: 'KenD 9/30/2022 12:33:55'!
allNodesDo: aBlock
	self nodesDo: aBlock includingDeclarations: true
! !

!SParseNode methodsFor: 'enumerating' stamp: 'KenD 9/30/2022 12:33:55'!
nodeWithLiteral: anObject
	^self nodesDetect: [:n | (n isLiteral or: [n isSelector]) and: [n value = anObject]] ifAbsent: nil

! !

!SParseNode methodsFor: 'enumerating' stamp: 'KenD 9/30/2022 12:33:55'!
nodesDetect: aBlock ifAbsent: absentBlock
	self nodesDo: [:node | (aBlock value: node) ifTrue: [ ^node ] ] includingDeclarations: false.
	^absentBlock value
! !

!SParseNode methodsFor: 'enumerating' stamp: 'KenD 10/2/2022 13:35:18'!
nodesDo: aBlock
	self nodesDo: aBlock includingDeclarations: false
! !

!SParseNode methodsFor: 'enumerating' stamp: 'KenD 10/2/2022 15:43:49'!
nodesDo: aBlock includingDeclarations: aBoolean
	aBlock value: self
! !

!SParseNode methodsFor: 'printing' stamp: 'KenD 9/30/2022 12:33:55'!
moveCommentsFrom: aParseNode
	aParseNode moveCommentsTo: self
! !

!SParseNode methodsFor: 'printing' stamp: 'KenD 9/30/2022 12:33:55'!
variableNamed: aString
	self
		allNodesDo: [:node | (node isIdentifier and: [node name = aString])
			ifTrue: [^node]].
	^nil
! !

!SParseNode methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:33:55'!
ast
	^compiler ast
! !

!SParseNode methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:33:55'!
acceptVisitor: visitor
	^visitor visitParseNode: self
! !

!SAssignmentNode methodsFor: 'adding / removing' stamp: 'KenD 9/30/2022 12:28:42'!
assign: anIdentifierNode operator: aDelimiterToken
	assignees add: anIdentifierNode.
	operators add: aDelimiterToken
! !

!SAssignmentNode methodsFor: 'adding / removing' stamp: 'KenD 9/30/2022 12:28:42'!
assign: anIdentifierNode with: aParseNode operator: aDelimiterToken
	assignees add: anIdentifierNode.
	operators add: aDelimiterToken.
	expression := aParseNode
! !

!SAssignmentNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:28:42'!
hasAssign
	^true
! !

!SAssignmentNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:28:42'!
isAssign
	^true
! !

!SAssignmentNode methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:28:42'!
assignees
	^assignees
! !

!SAssignmentNode methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:28:42'!
expression
	^expression
! !

!SAssignmentNode methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:28:42'!
operators
	^operators
! !

!SAssignmentNode methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:28:42'!
initialize
	super initialize.
	assignees := OrderedCollection new: 1.
	operators := OrderedCollection new: 1
! !

!SAssignmentNode methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:28:42'!
acceptVisitor: visitor
	^visitor visitAssignment: self
! !

!SAssignmentNode methodsFor: 'enumerating' stamp: 'KenD 9/30/2022 12:28:42'!
nodesDo: aBlock includingDeclarations: aBoolean
	super nodesDo: aBlock includingDeclarations: aBoolean.
	assignees do: [:v | v nodesDo: aBlock includingDeclarations: aBoolean].
	expression nodesDo: aBlock includingDeclarations: aBoolean
! !

!SBraceNode methodsFor: 'testing' stamp: 'KenD 10/1/2022 14:18:39'!
asMessageNode
	message notNil ifTrue: [^message].
	^message := self expanded
! !

!SBraceNode methodsFor: 'testing' stamp: 'KenD 10/1/2022 14:18:39'!
isBraceNode
	^true
! !

!SBraceNode methodsFor: 'accessing' stamp: 'KenD 10/1/2022 14:18:39'!
elements
	^elements
! !

!SBraceNode methodsFor: 'accessing' stamp: 'KenD 10/1/2022 14:18:39'!
elements: aCollection
	elements := aCollection asArray
! !

!SBraceNode methodsFor: 'accessing' stamp: 'KenD 10/1/2022 14:18:39'!
expanded
	| receiver n new argument array messages i you yourself cascade |
	receiver := compiler identifierNode name: 'Array'.
	n := elements size.
	new := compiler selectorNode symbol: #new:.
	argument := compiler numericLiteralNode value: n.
	array := compiler messageNode.
	array receiver: receiver.
	array selector: new.
	array arguments: (Array with: argument).
	i := 0.
	messages := elements collect: [:elem | | msg sel idx args |
		i := i + 1.
		msg := compiler cascadeMessageNode position: elem position; end: elem end.
		sel := compiler selectorNode symbol: #at:put:.
		idx := compiler numericLiteralNode value: i.
		args := Array with: idx with: elem.
		msg selector: sel; arguments: args].
	you := compiler selectorNode symbol: #yourself.
	yourself := compiler cascadeMessageNode.
	yourself selector: you.
	yourself arguments: #().
	messages := messages copyWith: yourself.
	cascade := compiler cascadeNode receiver: array.
	messages do: [:msg | msg cascade: cascade].
	^cascade messages: messages
! !

!SBraceNode methodsFor: 'visiting' stamp: 'KenD 10/1/2022 14:18:39'!
acceptVisitor: visitor
	^visitor visitBraceNode: self
! !

!SBraceNode methodsFor: 'enumerating' stamp: 'KenD 10/1/2022 14:18:39'!
nodesDo: aBlock includingDeclarations: aBoolean
	super nodesDo: aBlock includingDeclarations: aBoolean.
	elements do: [:n | n nodesDo: aBlock includingDeclarations: aBoolean]
! !

!SCascadeNode methodsFor: 'testing' stamp: 'KenD 10/1/2022 15:02:24'!
hasAssign
	receiver hasAssign ifTrue: [^true].
	messages detect: [:msg | msg hasAssign] ifNone: [^false].
	^true
! !

!SCascadeNode methodsFor: 'enumerating' stamp: 'KenD 10/1/2022 15:02:24'!
isCascade
	^true
! !

!SCascadeNode methodsFor: 'enumerating' stamp: 'KenD 10/1/2022 15:02:24'!
nodesDo: aBlock includingDeclarations: aBoolean
	super nodesDo: aBlock includingDeclarations: aBoolean.
	receiver nodesDo: aBlock includingDeclarations: aBoolean.
	messages do: [:msg | msg nodesDo: aBlock includingDeclarations: aBoolean]
! !

!SCascadeNode methodsFor: 'accessing' stamp: 'KenD 10/1/2022 15:02:24'!
messages
	^messages
! !

!SCascadeNode methodsFor: 'accessing' stamp: 'KenD 10/1/2022 15:02:24'!
messages: aCollection
	messages := aCollection
! !

!SCascadeNode methodsFor: 'accessing' stamp: 'KenD 10/1/2022 15:02:24'!
receiver
	^receiver
! !

!SCascadeNode methodsFor: 'accessing' stamp: 'KenD 10/1/2022 15:02:24'!
receiver: rcvr
	receiver := rcvr
! !

!SCascadeNode methodsFor: 'visiting' stamp: 'KenD 10/1/2022 15:02:24'!
acceptVisitor: visitor
	^visitor visitCascade: self
! !

!SCommentNode methodsFor: 'testing' stamp: 'KenD 10/1/2022 15:01:45'!
isComment
	^true
! !

!SCommentNode methodsFor: 'accessing' stamp: 'KenD 10/1/2022 15:01:45'!
value
	^value
! !

!SCommentNode methodsFor: 'accessing' stamp: 'KenD 10/1/2022 15:01:45'!
value: aString
	value := aString
! !

!SIdentifierNode methodsFor: 'private' stamp: 'KenD 9/30/2022 12:34:20'!
declaration
	^binding declaration
! !

!SIdentifierNode methodsFor: 'private' stamp: 'KenD 9/30/2022 12:34:20'!
defineArgumentIn: aScriptScope
	binding := aScriptScope defineArgument: name.
	binding declaration: self
! !

!SIdentifierNode methodsFor: 'private' stamp: 'KenD 9/30/2022 12:34:20'!
defineTemporaryIn: scope
	binding := scope defineTemporary: name.
	binding declaration: self
! !

!SIdentifierNode methodsFor: 'private' stamp: 'KenD 9/30/2022 12:34:20'!
printOn: aStream
	aStream nextPut: $<;
	nextPutAll: name;
	nextPutAll: '> ('.
	super printOn: aStream.
	aStream nextPut: $)
! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:34:20'!
checkLowercase
	| char |
	char := name first.
	(char isLetter and: [char isUppercase]) ifFalse: [^self].
	self compileWarning: name storeString , ' should start with lowercase'
! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:34:20'!
isEvaluable
	^self isIdentifierLiteral
! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:34:20'!
isIdentifier
	^true
! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:34:20'!
isIdentifierLiteral
	binding isDynamic ifFalse: [^binding isLiteral].
	^self ast ifNil: [false] ifNotNil: [:ast | | b |
		b := ast scope resolve: name.
		b isLiteral]
! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:34:20'!
isImmediate
	^true
! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:34:20'!
isLocal
	^binding isLocal
! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:34:20'!
isMethodArgument
	| ast |
	binding isArgument ifFalse: [^false].
	ast := self ast ifNil: [^false].
	^ast arguments includes: self declaration
! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:34:20'!
isMethodTemporary
	^self ast temporaries includes: self declaration
! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:34:20'!
isSelf
	^binding isSelf
! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:34:20'!
isSuper
	^binding isSuper
! !

!SIdentifierNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:34:20'!
sourceIntervals
	| stretchs declaration ast string code index |
	stretchs := OrderedCollection new.
	declaration := binding declaration.
	ast := self ast.
	ast allNodesDo: [:node | 
		(node class == self class and: [node binding declaration == declaration])
			ifTrue: [stretchs add: node stretch]].
	string := self source.
	code := compiler sourceCode.
	index := ast stretch end.
	[
		index := code indexOfString: string startingAt: index + 1.
		index > 0]
		whileTrue: [stretchs add: (index to: index + string size - 1)].
	^stretchs
! !

!SIdentifierNode methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:34:20'!
binding
	^binding
! !

!SIdentifierNode methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:34:20'!
binding: aBinding
	binding := aBinding
! !

!SIdentifierNode methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:34:20'!
initialize
	super initialize.
	binding := DynamicBinding default
! !

!SIdentifierNode methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:34:20'!
name
	^name
! !

!SIdentifierNode methodsFor: 'binding' stamp: 'KenD 9/30/2022 12:34:20'!
beAssigned
	| immutable |
	binding canBeAssigned ifTrue: [^self].
	immutable := binding isClassBinding
		ifTrue: ['class']
		ifFalse: [compiler activeScope describe: binding name].
	self compileError: 'cannot assign to ' , immutable
! !

!SIdentifierNode methodsFor: 'binding' stamp: 'KenD 9/30/2022 12:34:20'!
resolveAssigning: aBoolean
	binding := compiler activeScope resolve: name.
	^binding

! !

!SIdentifierNode methodsFor: 'evaluating' stamp: 'KenD 9/30/2022 12:34:20'!
name: aString
	name := aString reduced
! !

!SIdentifierNode methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:34:20'!
acceptVisitor: visitor
	^visitor visitIdentifier: self
! !

!SLiteralNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:35:15'!
acceptVisitor: visitor
	^visitor visitLiteral: self
! !

!SLiteralNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:35:15'!
hasSymbol
	^value isSymbol
! !

!SLiteralNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:35:15'!
isEvaluable
	^true
! !

!SLiteralNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:35:15'!
isImmediate
	^true
! !

!SLiteralNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:35:15'!
isLiteral
	^true
! !

!SLiteralNode methodsFor: 'evaluating' stamp: 'KenD 9/30/2022 12:35:15'!
value
	^value
! !

!SLiteralNode methodsFor: 'evaluating' stamp: 'KenD 9/30/2022 12:35:15'!
value: anObject
	value := anObject
! !

!SLiteralNode methodsFor: 'private' stamp: 'KenD 9/30/2022 12:35:15'!
beSymbol
	value := value asSymbol
! !

!SNumberNode methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:36:45'!
acceptVisitor: visitor
	^visitor visitNumberNode: self
! !

!SNumberNode methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:36:45'!
negate
	value := value negated
! !

!SNumberNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:36:45'!
isNumberNode
	^true
! !

!SStringNode methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:37:51'!
acceptVisitor: visitor
	^visitor visitString: self
! !

!SMessageNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:36:17'!
hasAssign
	receiver hasAssign ifTrue: [^true].
	^arguments anySatisfy: [:arg | arg hasAssign]
! !

!SMessageNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:36:17'!
hasVolatileArguments
	^arguments anySatisfy: [:arg | 
		arg isIdentifier
			ifTrue: [arg binding canBeAssigned]
			ifFalse: [arg isBlockNode not andNot: [arg isLiteral]]]
! !

!SMessageNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:36:17'!
hasVolatileReceiver
	^ compiler hasBlocks
		  or: [ receiver isMethodTemporary not ]
		  or: [ arguments anySatisfy: [ :arg | arg hasAssign ] ]
! !

!SMessageNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:36:17'!
initialize
	super initialize.
	inlined := false
! !

!SMessageNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:36:17'!
isCascadeMessage
	^false
! !

!SMessageNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:36:17'!
isInlined
	^inlined
! !

!SMessageNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:36:17'!
isMessageNode
	^true
! !

!SMessageNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:36:17'!
needsStrictEvaluationOrder
	arguments size = 0 ifTrue: [^false].
	receiver isBlockNode ifTrue: [^false].
	receiver isLiteral ifTrue: [^false].
	receiver isSelf ifTrue: [^false].
	receiver isSuper ifTrue: [^false].
	receiver isMethodArgument ifTrue: [^false].
	self hasVolatileReceiver ifFalse: [^false].
	(receiver isImmediate
		and: [arguments conform: [:arg | arg isImmediate or: [arg isBlockNode]]])
		ifTrue: [^false].
	receiver hasAssign ifTrue: [^true].
	receiver isMessageNode ifTrue: [ ^true ]. 
	^self hasVolatileArguments
! !

!SMessageNode methodsFor: 'emitting - inlined' stamp: 'KenD 9/30/2022 12:36:17'!
beInlined
	inlined := true
! !

!SMessageNode methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:36:17'!
arguments
	^arguments
! !

!SMessageNode methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:36:17'!
arguments: aCollection
	arguments := aCollection
! !

!SMessageNode methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:36:17'!
receiver
	^receiver
! !

!SMessageNode methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:36:17'!
receiver: node
	receiver := node
! !

!SMessageNode methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:36:17'!
selector
	^selector
! !

!SMessageNode methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:36:17'!
selector: node
	selector := node
! !

!SMessageNode methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:36:17'!
symbol
	^selector symbol
! !

!SMessageNode methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:36:17'!
acceptVisitor: visitor
	^visitor visitMessage: self
! !

!SMessageNode methodsFor: 'enumerating' stamp: 'KenD 9/30/2022 12:36:17'!
nodesDo: aBlock includingDeclarations: aBoolean
	super nodesDo: aBlock includingDeclarations: aBoolean.
	receiver nodesDo: aBlock includingDeclarations: aBoolean.
	arguments do: [:arg | arg nodesDo: aBlock includingDeclarations: aBoolean].
	selector nodesDo: aBlock includingDeclarations: aBoolean
! !

!SCascadeMessageNode methodsFor: 'visiting' stamp: 'KenD 10/1/2022 15:02:04'!
acceptVisitor: visitor
	^visitor visitCascadeMessage: self
! !

!SCascadeMessageNode methodsFor: 'accessing' stamp: 'KenD 10/1/2022 15:02:04'!
cascade: aCascadeNode
	cascade := aCascadeNode.
	receiver := cascade receiver
! !

!SCascadeMessageNode methodsFor: 'enumerating' stamp: 'KenD 10/1/2022 15:02:04'!
nodesDo: aBlock includingDeclarations: aBoolean
	aBlock evaluateWith: self.
	arguments do: [:arg | arg nodesDo: aBlock includingDeclarations: aBoolean]
! !

!SCascadeMessageNode methodsFor: 'testing' stamp: 'KenD 10/1/2022 15:02:04'!
isCascadeMessage
	^true
! !

!SCascadeMessageNode methodsFor: 'private' stamp: 'KenD 10/1/2022 15:02:04'!
from: aMessageNode
	arguments := aMessageNode arguments.
	receiver := aMessageNode receiver.
	selector := aMessageNode selector.
	inlined := aMessageNode isInlined.
	stretch := aMessageNode stretch.
	comments := aMessageNode comments
! !

!SReturnNode methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:33:34'!
expression
	^expression
! !

!SReturnNode methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:33:34'!
expression: node
	expression := node
! !

!SReturnNode methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:33:34'!
return: aSmalltalkToken
	return := aSmalltalkToken
! !

!SReturnNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:33:34'!
hasAssign
	^expression hasAssign
! !

!SReturnNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:33:34'!
isReturn
	^true
! !

!SReturnNode methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:33:34'!
acceptVisitor: visitor
	^visitor visitReturn: self
! !

!SReturnNode methodsFor: 'enumerating' stamp: 'KenD 9/30/2022 12:33:34'!
nodesDo: aBlock includingDeclarations: aBoolean
	super nodesDo: aBlock includingDeclarations: aBoolean.
	expression nodesDo: aBlock includingDeclarations: aBoolean
! !

!SScriptNode methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:19:49'!
hasAssign
	statements do: [:s | s hasAssign ifTrue: [^true]].
	^false
! !

!SScriptNode methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:19:49'!
arguments
	^arguments
! !

!SScriptNode methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:19:49'!
arguments: aCollection
	arguments := aCollection
! !

!SScriptNode methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:19:49'!
children
	^children
! !

!SScriptNode methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:19:49'!
environmentSize
	^scope environmentSize
! !

!SScriptNode methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:19:49'!
realScript
	self subclassResponsibility
! !

!SScriptNode methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:19:49'!
statements
	^statements
! !

!SScriptNode methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:19:49'!
temporaries
	^temporaries
! !

!SScriptNode methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:19:49'!
temporaries: aCollection
	temporaries := aCollection
! !

!SScriptNode methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:19:49'!
addStatements: anOrderedCollection
	statements addAll: anOrderedCollection
! !

!SScriptNode methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:19:49'!
identifiers
	| result |
	result := OrderedCollection new.
	self nodesDo: [:node | node isIdentifier ifTrue: [result add: node]].
	^result removeDuplicates
! !

!SScriptNode methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:19:49'!
initialize
	super initialize.
	statements := OrderedCollection new.
	arguments := #().
	temporaries := #().
	children := OrderedCollection new
! !

!SScriptNode methodsFor: 'add/remove' stamp: 'KenD 9/29/2022 14:19:49'!
addChild: aBlockNode
	children add: aBlockNode
! !

!SScriptNode methodsFor: 'binding' stamp: 'KenD 9/29/2022 14:19:49'!
bindLocals
	arguments do: [:arg | arg defineArgumentIn: scope].
	temporaries do: [:temp | temp checkLowercase; defineTemporaryIn: scope].
	children do: [:block | block bindLocals]
! !

!SScriptNode methodsFor: 'binding' stamp: 'KenD 9/29/2022 14:19:49'!
positionLocals
	scope positionLocals.
	children do: [:b | b positionLocals]
! !

!SScriptNode methodsFor: 'binding' stamp: 'KenD 9/29/2022 14:19:49'!
reference: aBinding
	aBinding beReferencedFrom: self
! !

!SScriptNode methodsFor: 'binding' stamp: 'KenD 9/29/2022 14:19:49'!
scope
	^scope
! !

!SScriptNode methodsFor: 'enumerating' stamp: 'KenD 10/2/2022 15:41:27'!
nodesDo: aBlock includingDeclarations: aBoolean
	super nodesDo: aBlock includingDeclarations: aBoolean.
	aBoolean ifTrue: [
		arguments do: [:a | a nodesDo: aBlock includingDeclarations: aBoolean].
		temporaries do: [:a | a nodesDo: aBlock includingDeclarations: aBoolean]].
	statements do: [:s | s nodesDo: aBlock includingDeclarations: aBoolean]
! !

!SScriptNode methodsFor: 'private' stamp: 'KenD 9/29/2022 14:19:49'!
useSelf
	scope captureSelf
! !

!SBlockNode methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:31:21'!
index
	^index
! !

!SBlockNode methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:31:21'!
index: aNumber
	index := aNumber
! !

!SBlockNode methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:31:21'!
parent
	^parent
! !

!SBlockNode methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:31:21'!
parent: aScriptNode
	parent := aScriptNode addChild: self
! !

!SBlockNode methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:31:21'!
realParent
	^parent realScript
! !

!SBlockNode methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:31:21'!
realScript
	^inlined ifTrue: [parent realScript] ifFalse: [self]
! !

!SBlockNode methodsFor: 'emitting - inlined' stamp: 'KenD 9/30/2022 12:31:21'!
beInlined
	inlined := true.
	arguments do: [:arg | arg binding beInlined]
! !

!SBlockNode methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:31:21'!
initialize
	super initialize.
	inlined := false.
	scope := BlockScope on: self
! !

!SBlockNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:31:21'!
environmentIndexOf: aParseNode
	^scope environmentIndexOf: aParseNode
! !

!SBlockNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:31:21'!
isBlockNode
	^true
! !

!SBlockNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:31:21'!
isEvaluable
	^self isNullary
! !

!SBlockNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:31:21'!
isInlined
	^inlined
! !

!SBlockNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:31:21'!
isNullary
	^arguments isEmpty
! !

!SBlockNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:31:21'!
usesHome
	^inlined
		ifTrue: [children anySatisfy: [:block | block usesHome]]
		ifFalse: [scope capturesHome]
! !

!SBlockNode methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:31:21'!
acceptVisitor: visitor
	^visitor visitBlock: self
! !

!SBlockNode methodsFor: 'private' stamp: 'KenD 9/30/2022 12:31:21'!
buildBlock
	| block |
	self isInlined ifTrue: [ ^ nil ].
	block := SCompiledBlock new.
	^ block
		  id: index;
		  argumentCount: arguments size;
		  tempCount: scope stackSize;
		  environmentCount: scope environmentSize;
		  capturesSelf: scope capturesSelf;
			capturesHome: scope capturesHome
! !

!SBlockNode methodsFor: 'private' stamp: 'KenD 9/30/2022 12:31:21'!
captureHome
	scope captureEnvironment: self ast
! !

!SMethodNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:36:30'!
isHeadless
	^selector isNil
! !

!SMethodNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:36:30'!
isMethod
	^true
! !

!SMethodNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:36:30'!
needsEnvironment
	^scope environmentSize > 0
		or: [children anySatisfy: [:block | block usesHome]]
! !

!SMethodNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:36:30'!
needsFrame
	scope stackSize > 0 ifTrue: [ ^ true ].
	arguments size > 16 ifTrue: [ ^ true ].
	compiler hasSends ifTrue: [ ^ true ].
	compiler hasBlocks ifTrue: [ ^ true ].
	^ false
! !

!SMethodNode methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:36:30'!
compiler: aSmalltalkCompiler
	super compiler: aSmalltalkCompiler.
	scope := MethodScope new script: self.
	pragma := aSmalltalkCompiler pragmaNode
! !

!SMethodNode methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:36:30'!
pragma
	^pragma
! !

!SMethodNode methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:36:30'!
pragma: anObject
	pragma := anObject
! !

!SMethodNode methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:36:30'!
realScript
	^self
! !

!SMethodNode methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:36:30'!
selector
	^selector value
! !

!SMethodNode methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:36:30'!
selector: aSelectorNode
	selector := aSelectorNode
! !

!SMethodNode methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:36:30'!
selectorNode
	^selector
! !

!SMethodNode methodsFor: 'parsing' stamp: 'KenD 9/30/2022 12:36:30'!
buildMethod
	| cm encoder astcodes |
	cm := self methodClass withAll: self literals.
	cm
		blockCount: compiler blockCount;
		tempCount: scope stackSize;
		argumentCount: arguments size;
		environmentCount: scope environmentSize;
		capturesSelf: scope capturesSelf;
		hasEnvironment: self needsEnvironment;
		hasFrame: self needsFrame;
		selector: self selector;
		source: compiler sourceCode;
		classBinding: compiler frontend classBinding.
	cm pragma: pragma.
	cm blocks do: [ :block | block method: cm ].
	encoder := AstcodeEncoder new method: cm.
	astcodes := self acceptVisitor: encoder.
	^ cm astcodes: astcodes
! !

!SMethodNode methodsFor: 'parsing' stamp: 'KenD 9/30/2022 12:36:30'!
captureHome
	
! !

!SMethodNode methodsFor: 'parsing' stamp: 'KenD 10/2/2022 13:35:02'!
literals
	| literals v l |
	literals := OrderedCollection new.
	pragma isUsed
		ifTrue: [ literals add: pragma name ].
	self
		nodesDo: [ :n | 
			n isLiteral
				ifTrue: [ v := n value.
					v isSmallInteger
						ifFalse: [ literals add: v ] ].
			n isMessageNode
				ifTrue: [ literals add: n symbol ].
			n isBraceNode
				ifTrue: [ n isLiteral
						ifTrue: [ self halt ]
						ifFalse: [ literals
								add: #Array;
								add: #new:;
								add: #at:put:;
								add: #yourself ] ].
			(n isIdentifier
				and: [ l := n binding literal.
					l notNil ])
				ifTrue: [ literals add: l ].
			(n isBlockNode andNot: [ n isInlined ])
				ifTrue: [ literals add: n buildBlock ] ].
	^ literals removeDuplicates
! !

!SMethodNode methodsFor: 'parsing' stamp: 'KenD 9/30/2022 12:36:30'!
methodClass
	| type |
	type := pragma type.
	type = #callback
		ifTrue: [ ^ SCallbackMethod ].
	type = #callout
		ifTrue: [ ^ SCalloutMethod ].
	^ SCompiledMethod
! !

!SMethodNode methodsFor: 'private' stamp: 'KenD 9/30/2022 12:36:30'!
environmentIndexOf: aParseNode
	^nil
! !

!SMethodNode methodsFor: 'inquiries' stamp: 'KenD 9/30/2022 12:36:30'!
header
	"
	(Object >> #printOn:) ast header
	"
	| interval |
	interval := selector stretch.
	arguments notEmpty
		ifTrue: [interval := interval start thru: arguments last stretch end].
	^compiler sourceCode copyFrom: interval start to: interval end
! !

!SMethodNode methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:36:30'!
acceptVisitor: visitor
	^visitor visitMethod: self
! !

!SMethodNode methodsFor: 'enumerating' stamp: 'KenD 9/30/2022 12:36:30'!
nodesDo: aBlock includingDeclarations: aBoolean
	super nodesDo: aBlock includingDeclarations: aBoolean.
	(aBoolean and: [selector notNil]) ifTrue: [aBlock evaluateWith: selector]
! !

!SSelectorNode methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:37:33'!
addKeyword: aSelectorNode
	keywords isNil ifTrue: [keywords := OrderedCollection new: 1].
	keywords add: aSelectorNode
! !

!SSelectorNode methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:37:33'!
end
	stretch end ifNotNil: [:e | ^e].
	^keywords notNil ifTrue: [keywords last end]
! !

!SSelectorNode methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:37:33'!
keywords
	^keywords isNil ifTrue: [{self}] ifFalse: [keywords]
! !

!SSelectorNode methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:37:33'!
positions
	^self keywords collect: [:node | node position]
! !

!SSelectorNode methodsFor: 'evaluating' stamp: 'KenD 9/30/2022 12:37:33'!
symbol
	^symbol
! !

!SSelectorNode methodsFor: 'evaluating' stamp: 'KenD 9/30/2022 12:37:33'!
symbol: aString
	symbol := aString asSymbol
! !

!SSelectorNode methodsFor: 'evaluating' stamp: 'KenD 9/30/2022 12:37:33'!
value
	^symbol
! !

!SSelectorNode methodsFor: 'queries' stamp: 'KenD 9/30/2022 12:37:33'!
isBinary
	^symbol isBinary
! !

!SSelectorNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:37:33'!
hasSymbol
	^symbol isSymbol
! !

!SSelectorNode methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:37:33'!
isSelector
	^true
! !

!SSelectorNode methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:37:33'!
acceptVisitor: visitor
	^visitor visitSelector: self
! !

!SPragmaNode methodsFor: 'as yet unclassified' stamp: 'KenD 9/30/2022 12:30:32'!
acceptVisitor: aVisitor
	self isFFI ifTrue: [^aVisitor visitFFIPragma: self].
	self isPrimitive ifTrue: [^aVisitor visitPrimitivePragma: self].
	self isSymbolic ifTrue: [^aVisitor visitSymbolicPragma: self]
! !

!SPragmaNode methodsFor: 'as yet unclassified' stamp: 'KenD 9/30/2022 12:30:32'!
ffi: cc name: aString with: anFFIDescriptor
	type := cc.
	name := aString.
	info := anFFIDescriptor
! !

!SPragmaNode methodsFor: 'as yet unclassified' stamp: 'KenD 9/30/2022 12:30:32'!
ffi: aString with: anFFIDescriptor
	type := #ffi.
	name := aString.
	info := anFFIDescriptor
! !

!SPragmaNode methodsFor: 'as yet unclassified' stamp: 'KenD 9/30/2022 12:30:32'!
info
	^info
! !

!SPragmaNode methodsFor: 'as yet unclassified' stamp: 'KenD 9/30/2022 12:30:32'!
isUsed
	^type notNil
! !

!SPragmaNode methodsFor: 'as yet unclassified' stamp: 'KenD 9/30/2022 12:30:32'!
name
	^name
! !

!SPragmaNode methodsFor: 'as yet unclassified' stamp: 'KenD 9/30/2022 12:30:32'!
primitive: anInteger name: aString
	type := #primitive.
	name := aString.
	info := anInteger
! !

!SPragmaNode methodsFor: 'as yet unclassified' stamp: 'KenD 9/30/2022 12:30:32'!
type
	^type
! !

!SSymbolicToken methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:21:04'!
value
	^value
! !

!SSymbolicToken methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:21:04'!
value: anObject
	value := anObject
! !

!SSymbolicToken methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:21:04'!
is: anObject
	^value == anObject
! !

!SDelimiterToken methodsFor: 'evaluating' stamp: 'KenD 9/30/2022 12:25:17'!
beCharacter
	value := value isCharacter ifTrue: [value] ifFalse: [value first]
! !

!SDelimiterToken methodsFor: 'evaluating' stamp: 'KenD 9/30/2022 12:25:17'!
value: aString
	super value: aString asSymbol
! !

!SDelimiterToken methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:25:17'!
endsExpression
	^value = $. or: [value = $]] or: [value = $)] or: [value = $}]
! !

!SDelimiterToken methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:25:17'!
isAssignment
	^self is: #':='
! !

!SDelimiterToken methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:25:17'!
isDelimiter
	^true
! !

!SDelimiterToken methodsFor: 'converting' stamp: 'KenD 9/30/2022 12:25:17'!
asSelectorNode
	^compiler selectorNode symbol: value asString; stretch: stretch
! !

!SStringToken methodsFor: 'converting' stamp: 'KenD 9/29/2022 14:21:26'!
asIdentifierNode
	^compiler identifierNode
		name: value;
		stretch: stretch;
		comments: comments
! !

!SStringToken methodsFor: 'converting' stamp: 'KenD 9/29/2022 14:21:26'!
asSelectorNode
	^compiler selectorNode symbol: value; stretch: stretch
! !

!SStringToken methodsFor: 'converting' stamp: 'KenD 9/29/2022 14:21:26'!
isStringToken
	^true
! !

!SStringToken methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:21:26'!
hasSymbol
	^value isSymbol
! !

!SStringToken methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:21:26'!
isBinary
	^value isSymbol
! !

!SStringToken methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:21:26'!
isDelimitedIdentifier
	^value first = ${
! !

!SStringToken methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:21:26'!
isKeyword
	^value last = $:
! !

!SStringToken methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:21:26'!
isNameToken
	^(self isKeyword or: [self isBinary]) not
! !

!AstcodeDecoder methodsFor: 'decoding' stamp: 'KenD 2/24/2021 11:32:30'!
decodeClassBinding 
	| index assoc |
		index := self nextInteger.

	assoc := method at: index.
	^ SClassBinding new index: index; association: assoc! !

!AstcodeDecoder methodsFor: 'decoding' stamp: 'KenD 2/24/2021 11:32:45'!
decodeClassVar 
	| index assoc |
	index := self nextInteger.
	assoc := method at: index.
	^ SClassVarBinding new index: index; association: assoc! !

!AstcodeDecoder methodsFor: 'decoding' stamp: 'KenD 2/24/2021 11:33:08'!
decodeConstantPoolVar 
	| index assoc |
	index := self nextInteger.
	assoc := method at: index.
	^ SConstantPoolBinding new
		index: index;
		association: assoc! !

!AstcodeDecoder methodsFor: 'decoding' stamp: 'KenD 2/24/2021 11:33:31'!
decodeGlobalBinding 
	| index assoc |
	index := self nextInteger.
	assoc := method at: index.
	^ SGlobalBinding new index: index; association: assoc! !

!AstcodeDecoder methodsFor: 'decoding' stamp: 'KenD 2/24/2021 11:35:05'!
decodeInlineNodes: anArray
	| prev result type decoded |
	anArray ifNil: [ ^ #() ].
	prev _ stream.
	result _ OrderedCollection new.
	stream _ anArray readStream.
	[ stream atEnd ] whileFalse: [
		type _ self nodeTypeOf: stream next.
		decoded _ type decodeUsing: self.
		result add: decoded ].
	stream _ prev.
	^ result! !

!AstcodeDecoder methodsFor: 'decoding' stamp: 'KenD 2/24/2021 11:35:26'!
decodeInstVar 

	^SInstVarBinding new index: self nextInteger! !

!AstcodeDecoder methodsFor: 'decoding' stamp: 'KenD 2/24/2021 11:37:06'!
decodeNode: anArray 
	| prev type result |
	prev := stream.
	stream := anArray readStream.
	type := self nodeTypeOf: stream next.
	result := type decodeUsing: self.
	stream := prev.
	^result
! !

!AstcodeDecoder methodsFor: 'decoding' stamp: 'KenD 2/24/2021 11:37:21'!
decodeNodes: anArray 
	anArray ifNil: [^#(  )].
	^anArray collect: [:arg | self decodeNode: arg  ]! !

!AstcodeDecoder methodsFor: 'decoding' stamp: 'KenD 2/24/2021 11:37:34'!
decodePoolVar 
	| index assoc |
	index := self nextInteger.

	assoc := method at: index.
	^ SPoolVarBinding new index: index; association: assoc! !

!AstcodeDecoder methodsFor: 'decoding' stamp: 'KenD 2/24/2021 11:38:15'!
decodeStatement: anArray 

	^self decodeNode: anArray! !

!AstcodeDecoder methodsFor: 'decoding' stamp: 'KenD 2/24/2021 11:38:29'!
decodeStatements 

	^stream upToEnd collect: [:statement | self decodeStatement: statement]! !

!AstcodeDecoder methodsFor: 'accessing' stamp: 'KenD 10/2/2022 14:01:04'!
builder: aRuntime
	builder := aRuntime
! !

!AstcodeDecoder methodsFor: 'accessing' stamp: 'KenD 10/2/2022 14:01:04'!
method: aMethod
	method := aMethod
! !

!AstcodeDecoder methodsFor: 'accessing' stamp: 'KenD 2/24/2021 11:41:43'!
next 

	^stream next! !

!AstcodeDecoder methodsFor: 'accessing' stamp: 'KenD 10/2/2022 14:01:04'!
stream: aStream
	stream := aStream
! !

!AstcodeDecoder methodsFor: 'initialization' stamp: 'KenD 10/2/2022 14:01:04'!
nextBoolean
	^ stream next = 1
! !

!AstcodeDecoder methodsFor: 'initialization' stamp: 'KenD 10/2/2022 14:01:04'!
nextInteger
	| value |
	value := stream next.
	value = 16r80
		ifTrue: [ ^ stream int64 ].
	^ value <= 127
		ifTrue: [ value ]
		ifFalse: [ value - 16r100 ]
! !

!AstcodeDecoder methodsFor: 'initialization' stamp: 'KenD 10/2/2022 14:01:04'!
nextUnsignedInteger
	| value |
	value := self nextByte.
	^value < 128
		ifTrue: [value]
		ifFalse: [value - 128 + (self nextUnsignedInteger bitShift: 7)]
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 11/1/2022 15:26:28'!
bindingTypeOf: id
	^ self class bindingTypes at: id
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 10/2/2022 14:01:04'!
decodeArgument
	^ SArgumentBinding new
		index: self nextInteger;
		environment: self nextEnvironment
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 10/2/2022 14:01:04'!
decodeAssignment
	| assignment assignees |
	assignment := SAssignment new.
	
	assignees := self nextExpressionArray.
	assignment expression: self nextExpression.
	assignees do: [ :identifier | assignment assign: identifier ].
	^ assignment
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 10/2/2022 14:01:04'!
decodeBlock
	| expression inlined block index |
	expression := SBlock new.
	inlined := self nextBoolean.
	inlined
		ifTrue: [ expression inlinedArgs: self nextArray ]
		ifFalse: [ index := self nextInteger.
			block := self literalAt: index.
			builder ifNotNil: [ builder blockOptimizedCode: block put: expression ].
			expression
				compiledCode: block;
				index: index;
				capturedVariables: self nextArray ].
	expression statements: self nextExpressionArray.
	^ expression
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 10/2/2022 14:01:04'!
decodeCascade
	| cascade receiver messages message count |
	cascade := SCascade new.
	receiver := self nextExpression.
	count := self nextInteger.
	messages := (1 to: count)
		collect: [ :i | 
			message := SCascadeMessage decodeUsing: self.
			message cascade: cascade ].
	^ cascade
		receiver: receiver;
		messages: messages
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 10/2/2022 14:01:04'!
decodeCascadeMessage
	| selector arguments |
	selector := self nextSymbol.
	arguments := self nextExpressionArray.
	^ SCascadeMessage new
		selector: selector;
		arguments: arguments
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 10/2/2022 14:01:04'!
decodeDynamicVar
	^ SDynamicBinding new name: self nextSymbol
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 10/2/2022 14:01:04'!
decodeIdentifier
	| type binding |
	type := self bindingTypeOf: self nextInteger.
	binding := type decodeUsing: self.
	^ SIdentifier new binding: binding
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 10/2/2022 14:01:04'!
decodeLiteral
	| index value |
	index := self nextInteger.
	value := index = 0
		ifTrue: [ self nextLiteralInteger ]
		ifFalse: [ self literalAt: index ].
	^ SLiteral new
		index: index;
		value: value
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 10/2/2022 14:01:04'!
decodeMessage
	| inlined selector receiver arguments |
	inlined := self nextBoolean.
	selector := self nextSymbol.
	receiver := self nextExpression.
	arguments := self nextExpressionArray.
	^ SMessage new
		receiver: receiver;
		selector: selector;
		arguments: arguments;
		inlined: inlined
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 10/2/2022 14:01:04'!
decodeMethod
	| type node next pragma |
	type := stream next.
	type !!= MethodId
		ifTrue: [ self error: 'method astcode expected' ].
	node := SMethod new.
	next := stream peek.
	next = PragmaId
		ifTrue: [ stream next.
			pragma := SPragma new name: self nextSymbolOrNil.
			node pragma: pragma ].
	node
		compiledCode: method;
		statements: self nextExpressionArray.
	^ node
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 10/2/2022 14:01:04'!
decodeNestedDynamicVar
	^ SNestedDynamicBinding new
		name:
			self nextSymbol.

! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 10/2/2022 14:01:04'!
decodeReturn
	| expression local |
	local := self nextBoolean.
	expression := self nextExpression.
	^ SReturn new
		local: local;
		expression: expression
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 10/2/2022 14:01:04'!
decodeTemporary
	^ STemporaryBinding new
		index: self nextInteger;
		environment: self nextEnvironment
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 10/2/2022 14:01:04'!
nextArray
	| count |
	count := self nextInteger.
	^ stream next: count
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 10/2/2022 14:01:04'!
nextEnvironment
	| value |
	value := self nextInteger.
	^ value !!= -2
		ifTrue: [ value ]
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 10/2/2022 14:01:04'!
nextExpression
	| type |
	type := self nodeTypeOf: stream next.
	^type decodeUsing: self.

! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 10/2/2022 14:01:04'!
nextExpressionArray
	| count |
	count := self nextInteger.
	^(1 to: count) collect: [ :arg | self nextExpression ]
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 10/2/2022 14:01:04'!
nextSymbol
	| index |
	index := self nextInteger.
	^ self literalAt: index
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 10/2/2022 14:01:04'!
nextSymbolOrNil
	| index |
	index := self nextInteger.
	^index !!= 0 ifTrue: [ self literalAt: index]
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 11/1/2022 15:26:41'!
nodeTypeOf: id
	^self class nodeTypes at: id
! !

!AstcodeDecoder methodsFor: 'unclassified' stamp: 'KenD 10/2/2022 14:01:04'!
literalAt: anInteger
	^ builder ifNil: [method at: anInteger] ifNotNil: [builder method: method literalAt: anInteger]
! !

!AstcodeDecoder methodsFor: 'unclassified' stamp: 'KenD 10/2/2022 14:01:04'!
nextLiteralInteger
	| value |
	value := self nextInteger.
	^ builder
		ifNil: [ value ]
		ifNotNil: [ builder newInteger: value ]
! !

!AstcodeDecoder class methodsFor: 'class initialization' stamp: 'KenD 10/2/2022 14:01:04'!
initialize
	NodeTypes := Dictionary new.
	BindingTypes := Dictionary new.
	NodeTypes
		at: AssignmentId put: SAssignment;
		at: BlockId put: SBlock;
		at: CascadeId put: SCascade;
		at: LiteralId put: SLiteral;
		at: IdentifierId put: SIdentifier;
		at: MessageId put: SMessage;
		at: ReturnId put: SReturn.
	BindingTypes
		at: NilId put: SNilBinding;
		at: TrueId put: STrueBinding;
		at: FalseId put: SFalseBinding;
		at: ArgumentId put: SArgumentBinding;
		at: TemporaryId put: STemporaryBinding;
		at: SelfId put: SSelfBinding;
		at: SuperId put: SSuperBinding;
		at: DynamicVarId put: SDynamicBinding;
		at: NestedDynamicVarId put: SNestedDynamicBinding
! !

!AstcodeDecoder class methodsFor: 'instance creation' stamp: 'KenD 10/2/2022 14:01:04'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!AstcodeDecoder class methodsFor: 'accessing' stamp: 'KenD 11/1/2022 15:26:08'!
bindingTypes

	^BindingTypes ! !

!AstcodeDecoder class methodsFor: 'accessing' stamp: 'KenD 11/1/2022 15:25:55'!
nodeTypes

	^NodeTypes ! !

!SBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:53:08'!
assign: value within: aPowertalkRuntime
	^ self subclassResponsibility
! !

!SBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:53:08'!
isArgument
	^false
! !

!SBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:53:08'!
isAssociation
	^false
! !

!SBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:53:08'!
isClassBinding
	^false
! !

!SBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:53:08'!
isClassVar
	^false
! !

!SBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:53:08'!
isDynamic
	^ false
! !

!SBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:53:08'!
isInstVar
	^false
! !

!SBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:53:08'!
isLiteral
	^false
! !

!SBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:53:08'!
isPoolVar
	^false
! !

!SBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:53:08'!
isSelf
	^false
! !

!SBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:53:08'!
isSuper
	^false
! !

!SBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:53:08'!
isTemporary
	^false
! !

!SBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:53:08'!
name
	^self printString
! !

!SBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:53:08'!
valueWithin: anEvaluationContext
	^ self subclassResponsibility
! !

!SBinding class methodsFor: 'unclassified' stamp: 'KenD 9/29/2022 13:53:08'!
decodeUsing: anAstcodeDecoder
	^self subclassResponsibility
! !

!SAssociationBinding methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:29:03'!
assign: value within: anEvaluationContext
	anEvaluationContext storeAssociation: association value: value
! !

!SAssociationBinding methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:29:03'!
index
	^ index
! !

!SAssociationBinding methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:29:03'!
index: anInteger
	 index := anInteger 
! !

!SAssociationBinding methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:29:03'!
isAssociation
	^true
! !

!SAssociationBinding methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:29:03'!
isConstant
	^ false
! !

!SAssociationBinding methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:29:03'!
valueWithin: anEvaluationContext
	^ anEvaluationContext loadAssociationValue: association
! !

!SAssociationBinding methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:29:03'!
association
	^association
! !

!SAssociationBinding methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:29:03'!
association: anAssociation
	association := anAssociation
! !

!SDynamicBinding methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:06:54'!
assign: value within: anEvaluationContext
	cache ifNil: [ self lookupWithin: anEvaluationContext ].
	cache assign: value within: anEvaluationContext
! !

!SDynamicBinding methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:06:54'!
isDynamic
	^true
! !

!SDynamicBinding methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:06:54'!
lookupWithin: anEvaluationContext
	cache := anEvaluationContext staticBindingFor: name
! !

!SDynamicBinding methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:06:54'!
name
	name
! !

!SDynamicBinding methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:06:54'!
name: aSymbol
	name := aSymbol
! !

!SDynamicBinding methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:06:54'!
printOn: aStream
	aStream
		nextPutAll: 'DinamicVarId. ';
		nextPutAll: name printString
! !

!SDynamicBinding methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:06:54'!
valueWithin: anEvaluationContext
	cache ifNil: [ self lookupWithin: anEvaluationContext ].
	^ cache valueWithin: anEvaluationContext
! !

!SDynamicBinding class methodsFor: 'unclassified' stamp: 'KenD 9/29/2022 14:06:54'!
decodeUsing: anAstcodeDecoder
	^ anAstcodeDecoder decodeDynamicVar
! !

!SNestedDynamicBinding methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:32:34'!
lookupWithin: anEvaluationContext
	cache := anEvaluationContext staticBindingForNested: name
! !

!SNestedDynamicBinding class methodsFor: 'unclassified' stamp: 'KenD 9/29/2022 14:32:34'!
decodeUsing: anAstcodeDecoder
	^ anAstcodeDecoder decodeNestedDynamicVar
! !

!SInstVarBinding methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:09:06'!
index
	^index
! !

!SInstVarBinding methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:09:06'!
index: anInteger
	index := anInteger
! !

!SInstVarBinding methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:09:06'!
valueWithin: anEvaluationContext
	^ anEvaluationContext instanceVarAt: index
! !

!SInstVarBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:09:06'!
assign: value within: anEvaluationContext
	anEvaluationContext instanceVarAt: index put: value
! !

!SInstVarBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:09:06'!
isInstVar
	^true
! !

!SInstVarBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:09:06'!
printOn: aStream
	aStream nextPutAll: 'InstVarId. '; nextPutAll: index printString
! !

!SInstVarBinding class methodsFor: 'unclassified' stamp: 'KenD 9/29/2022 14:09:06'!
decodeUsing: anAstcodeDecoder
	^anAstcodeDecoder decodeInstVar
! !

!SLiteralBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:11:31'!
isLiteral
	^true
! !

!SLiteralBinding class methodsFor: 'unclassified' stamp: 'KenD 9/29/2022 14:11:31'!
decodeUsing: anAstcodeDecoder
	^self new
! !

!SFalseBinding methodsFor: 'printing' stamp: 'KenD 9/30/2022 12:34:44'!
printOn: aStream
	aStream nextPutAll: 'FalseId'
! !

!SFalseBinding methodsFor: 'printing' stamp: 'KenD 9/30/2022 12:34:44'!
value
	^false
! !

!SFalseBinding methodsFor: 'printing' stamp: 'KenD 9/30/2022 12:34:44'!
valueWithin: anEvaluationContext
	^ anEvaluationContext false
! !

!SNilBinding methodsFor: 'evaluating' stamp: 'KenD 9/29/2022 14:13:12'!
printOn: aStream
	aStream nextPutAll: 'NilId'
! !

!SNilBinding methodsFor: 'evaluating' stamp: 'KenD 9/29/2022 14:13:12'!
value
	^nil
! !

!SNilBinding methodsFor: 'evaluating' stamp: 'KenD 9/29/2022 14:13:12'!
valueWithin: anEvaluationContext
	^ anEvaluationContext nil
! !

!STrueBinding methodsFor: 'printing' stamp: 'KenD 9/29/2022 14:21:45'!
printOn: aStream
	aStream nextPutAll: 'TrueId'
! !

!STrueBinding methodsFor: 'printing' stamp: 'KenD 9/29/2022 14:21:45'!
value
	^true
! !

!STrueBinding methodsFor: 'printing' stamp: 'KenD 9/29/2022 14:21:45'!
valueWithin: anEvaluationContext
	^ anEvaluationContext true
! !

!SLocalBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:12:24'!
environment
	^environment
! !

!SLocalBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:12:24'!
environment: anInteger
	environment := anInteger
! !

!SLocalBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:12:24'!
index
	^position
! !

!SLocalBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:12:24'!
index: anInteger
	position := anInteger
! !

!SLocalBinding methodsFor: 'testing' stamp: 'KenD 11/8/2022 14:51:46'!
isInStack
	self assert: false.
	^ environment = 0
! !

!SArgumentBinding methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:28:16'!
assign: value within: anEvaluationContext
	self halt
! !

!SArgumentBinding methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:28:16'!
isArgument
	^true
! !

!SArgumentBinding methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:28:16'!
isInlined
	^ environment = -1
! !

!SArgumentBinding methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:28:16'!
printOn: aStream
	aStream
		nextPutAll: 'SArgument ';
		print: position;
		nextPutAll: ' @ env ';
		print: environment
! !

!SArgumentBinding methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:28:16'!
valueWithin: anEvaluationContext
	^ anEvaluationContext argumentAt: position in: environment
! !

!SArgumentBinding class methodsFor: 'unclassified' stamp: 'KenD 9/30/2022 12:28:16'!
decodeUsing: anAstcodeDecoder
	^anAstcodeDecoder decodeArgument
! !

!STemporaryBinding methodsFor: 'as yet unclassified' stamp: 'KenD 9/29/2022 14:20:53'!
assign: value within: anEvaluationContext
	anEvaluationContext temporaryAt: position in: environment put: value
! !

!STemporaryBinding methodsFor: 'as yet unclassified' stamp: 'KenD 9/29/2022 14:20:53'!
printOn: aStream
	aStream
		nextPutAll: 'STemporary ';
		print: position;
		nextPutAll: ' @ env ';
		print: environment
! !

!STemporaryBinding methodsFor: 'as yet unclassified' stamp: 'KenD 9/29/2022 14:20:53'!
valueWithin: anEvaluationContext
	^ anEvaluationContext temporaryAt: position in: environment
! !

!STemporaryBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:20:53'!
isInCurrentEnvironment
	^environment = 1
! !

!STemporaryBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:20:53'!
isTemporary
	^true
! !

!STemporaryBinding class methodsFor: 'unclassified' stamp: 'KenD 9/29/2022 14:20:53'!
decodeUsing: anAstcodeDecoder
	^anAstcodeDecoder decodeTemporary
! !

!SSelfBinding methodsFor: 'printing' stamp: 'KenD 9/29/2022 13:54:15'!
printOn: aStream
	aStream nextPutAll: 'SelfId'
! !

!SSelfBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:54:15'!
isSelf
	^true
! !

!SSelfBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:54:15'!
valueWithin: anEvaluationContext
	^ anEvaluationContext receiver
! !

!SSelfBinding class methodsFor: 'unclassified' stamp: 'KenD 9/29/2022 13:54:15'!
decodeUsing: anAstcodeDecoder
	^self new
! !

!SSuperBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:56:33'!
isSelf
	^false
! !

!SSuperBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:56:33'!
isSuper
	^true
! !

!SSuperBinding methodsFor: 'testing' stamp: 'KenD 9/29/2022 13:56:33'!
printOn: aStream
	aStream nextPutAll: 'SuperId'
! !

!SExpression methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:04:54'!
isAssignment 

	^false! !

!SExpression methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:05:01'!
isCascade 

	^false! !

!SExpression methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:05:10'!
isCascadeMessage 

	^false! !

!SExpression methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:05:16'!
isIdentifier 

	^false! !

!SExpression methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:05:23'!
isInstVar 

	^false! !

!SExpression methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:05:32'!
isLiteral 

	^false! !

!SExpression methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:05:39'!
isMessage 

	^false! !

!SExpression methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:05:48'!
isMethod 

	^false! !

!SExpression methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:05:55'!
isReturn 

	^false! !

!SExpression methodsFor: 'testing' stamp: 'KenD 2/22/2021 13:06:02'!
isSuper 

	^false! !

!SExpression methodsFor: 'printing' stamp: 'KenD 2/22/2021 13:06:29'!
printOn: aStream 

	self printOn: aStream indent: 0! !

!SExpression methodsFor: 'printing' stamp: 'KenD 2/22/2021 13:06:44'!
printOn: aStream indent: anInteger 

	super printOn: aStream! !

!SExpression methodsFor: 'visiting' stamp: 'KenD 2/22/2021 13:04:25'!
acceptVisitor: visitor 

	^self subclassResponsibility! !

!SAssignment methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:28:29'!
acceptVisitor: visitor
	^visitor visitAssignment: self
! !

!SAssignment methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:28:29'!
assignees
	^assignees
! !

!SAssignment methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:28:29'!
expression
	^expression
! !

!SAssignment methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:28:29'!
expression: anSExpression
	expression := anSExpression
! !

!SAssignment methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:28:29'!
initialize
	assignees := OrderedCollection new
! !

!SAssignment methodsFor: 'testing' stamp: 'KenD 9/30/2022 12:28:29'!
isAssignment
	^true
! !

!SAssignment methodsFor: 'testing' stamp: 'KenD 11/1/2022 10:52:37'!
printOn: aStream indent: anInteger
	aStream tab: anInteger; nextPutAll: '{AssignmentId.'.
	assignees
		do: [:identifier | 
			aStream cr.
			identifier printOn: aStream indent: anInteger + 1]
		separatedBy: [aStream nextPutAll: '.'].
	aStream nextPutAll: '.'; newLine.
	expression printOn: aStream indent: anInteger + 1.
	aStream nextPutAll: '}'
! !

!SAssignment methodsFor: 'private' stamp: 'KenD 9/30/2022 12:28:29'!
assign: anSIdentifier
	assignees add: anSIdentifier
! !

!SAssignment class methodsFor: 'unclassified' stamp: 'KenD 9/30/2022 12:28:29'!
decodeUsing: anAstcodeDecoder
	^anAstcodeDecoder decodeAssignment
! !

!SAssignment class methodsFor: 'instance creation' stamp: 'KenD 9/30/2022 12:28:29'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!SCascade methodsFor: 'testing' stamp: 'KenD 10/1/2022 15:02:48'!
isCascade
	^true
! !

!SCascade methodsFor: 'accessing' stamp: 'KenD 10/1/2022 15:02:48'!
messages
	^messages
! !

!SCascade methodsFor: 'accessing' stamp: 'KenD 10/1/2022 15:02:48'!
messages: aCollection
	messages := aCollection
! !

!SCascade methodsFor: 'accessing' stamp: 'KenD 10/1/2022 15:02:48'!
receiver
	^receiver
! !

!SCascade methodsFor: 'accessing' stamp: 'KenD 10/1/2022 15:02:48'!
receiver: anSExpression
	receiver := anSExpression
! !

!SCascade methodsFor: 'visiting' stamp: 'KenD 10/1/2022 15:02:48'!
acceptVisitor: visitor
	^visitor visitCascade: self
! !

!SCascade class methodsFor: 'unclassified' stamp: 'KenD 10/1/2022 15:02:48'!
decodeUsing: anAstcodeDecoder
	^anAstcodeDecoder decodeCascade
! !

!SCascadeMessage methodsFor: 'accessing' stamp: 'KenD 10/1/2022 15:03:05'!
acceptVisitor: visitor
	^ visitor visitCascadeMessage: self
! !

!SCascadeMessage methodsFor: 'accessing' stamp: 'KenD 10/1/2022 15:03:05'!
argumentCount
	^arguments size
! !

!SCascadeMessage methodsFor: 'accessing' stamp: 'KenD 10/1/2022 15:03:05'!
arguments
	^arguments
! !

!SCascadeMessage methodsFor: 'accessing' stamp: 'KenD 10/1/2022 15:03:05'!
arguments: aCollection
	arguments := aCollection
! !

!SCascadeMessage methodsFor: 'accessing' stamp: 'KenD 10/1/2022 15:03:05'!
cache: anSCompiledMethod when: type
	cache ifNil: [ ^ cache := Array with: type with: anSCompiledMethod ].
	cache := cache , (Array with: type with: anSCompiledMethod)
! !

!SCascadeMessage methodsFor: 'accessing' stamp: 'KenD 10/1/2022 15:03:05'!
cacheUndermessage: aBlockClosure
	cache := aBlockClosure
! !

!SCascadeMessage methodsFor: 'accessing' stamp: 'KenD 10/1/2022 15:03:05'!
cachedUndermessage
	^ cache class == BlockClosure
		ifTrue: [ cache ]
! !

!SCascadeMessage methodsFor: 'accessing' stamp: 'KenD 10/1/2022 15:03:05'!
cascade
	cascade
! !

!SCascadeMessage methodsFor: 'accessing' stamp: 'KenD 10/1/2022 15:03:05'!
cascade: anSCascade
	cascade := anSCascade
! !

!SCascadeMessage methodsFor: 'accessing' stamp: 'KenD 10/1/2022 15:03:05'!
flushCache
	cache := nil
! !

!SCascadeMessage methodsFor: 'accessing' stamp: 'KenD 10/1/2022 15:03:05'!
isCascadeMessage
	^true
! !

!SCascadeMessage methodsFor: 'accessing' stamp: 'KenD 10/1/2022 15:03:05'!
methodFor: requiredType
	| type |
	cache ifNil: [ ^ nil ].
	1 to: cache size by: 2 do: [ :i | 
		type := cache at: i.
		type == requiredType
			ifTrue: [ ^ cache at: i + 1 ] ].
	^ nil
! !

!SCascadeMessage methodsFor: 'accessing' stamp: 'KenD 10/1/2022 15:03:05'!
receiver
	^cascade receiver
! !

!SCascadeMessage methodsFor: 'accessing' stamp: 'KenD 10/1/2022 15:03:05'!
registerCacheWith: runtime
	cache ifNil: [ runtime registerCache: self for: selector ]
! !

!SCascadeMessage methodsFor: 'accessing' stamp: 'KenD 10/1/2022 15:03:05'!
selector
	^selector
! !

!SCascadeMessage methodsFor: 'accessing' stamp: 'KenD 10/1/2022 15:03:05'!
selector: aSymbol
	selector := aSymbol
! !

!SCascadeMessage class methodsFor: 'unclassified' stamp: 'KenD 10/1/2022 15:03:05'!
decodeUsing: anAstcodeDecoder
	^anAstcodeDecoder decodeCascadeMessage
! !

!SIdentifier methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:08:33'!
acceptVisitor: visitor
	^visitor visitIdentifier: self
! !

!SIdentifier methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:08:33'!
binding: aBinding
	binding := aBinding
! !

!SIdentifier methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:08:33'!
isArgument
	^binding isArgument
! !

!SIdentifier methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:08:33'!
isAssociation
	^binding isAssociation
! !

!SIdentifier methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:08:33'!
isIdentifier
	^true
! !

!SIdentifier methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:08:33'!
isInstVar
	^binding isInstVar
! !

!SIdentifier methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:08:33'!
isLiteral
	^binding isLiteral
! !

!SIdentifier methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:08:33'!
isSelf
	^binding isSelf
! !

!SIdentifier methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:08:33'!
isSelfOrSuper
	^binding isSelf or: [binding isSuper]
! !

!SIdentifier methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:08:33'!
isSuper
	^binding isSuper
! !

!SIdentifier methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:08:33'!
isTemporary
	^binding isTemporary
! !

!SIdentifier methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:08:33'!
isVariable
	^true
! !

!SIdentifier methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:08:33'!
printOn: aStream indent: anInteger
	aStream
		tab: anInteger;
		nextPutAll: '{IdentifierId. ';
		print: binding;
		nextPutAll: '}'
! !

!SIdentifier methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:08:33'!
binding
	^binding
! !

!SIdentifier class methodsFor: 'unclassified' stamp: 'KenD 9/29/2022 14:08:33'!
decodeUsing: anAstcodeDecoder
	^anAstcodeDecoder decodeIdentifier
! !

!SLiteralVar methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:10:53'!
index
	^index
! !

!SLiteralVar methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:10:53'!
index: anInteger
	index := anInteger
! !

!SLiteral methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:11:06'!
acceptVisitor: visitor
	^ visitor visitLiteral: self
! !

!SLiteral methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:11:06'!
isLiteral
	^true
! !

!SLiteral methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:11:06'!
value
	^value
! !

!SLiteral methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:11:06'!
value: anObject
	value := anObject
! !

!SLiteral methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:11:06'!
printOn: aStream indent: anInteger
	aStream
		tab: anInteger;
		nextPutAll: '{LiteralId. ';
		print: value;
		nextPutAll: '}'
! !

!SLiteral class methodsFor: 'initialization' stamp: 'KenD 9/29/2022 14:11:06'!
decodeUsing: anAstcodeDecoder
	^anAstcodeDecoder decodeLiteral
! !

!SMessage methodsFor: 'private' stamp: 'KenD 9/29/2022 14:12:37'!
inlined: aBoolean
	inlined := aBoolean
! !

!SMessage methodsFor: 'printing' stamp: 'KenD 9/29/2022 14:12:37'!
acceptVisitor: visitor
	^visitor visitMessage: self
! !

!SMessage methodsFor: 'printing' stamp: 'KenD 9/29/2022 14:12:37'!
arguments
	^arguments
! !

!SMessage methodsFor: 'printing' stamp: 'KenD 9/29/2022 14:12:37'!
arguments: aCollection
	arguments := aCollection
! !

!SMessage methodsFor: 'printing' stamp: 'KenD 9/29/2022 14:12:37'!
cache: anSCompiledMethod when: type
	cache
		ifNil: [ ^ cache := Array with: type with:
			anSCompiledMethod].
	cache := cache
		,
			(Array with: type with: 
			anSCompiledMethod)
! !

!SMessage methodsFor: 'printing' stamp: 'KenD 9/29/2022 14:12:37'!
cacheUndermessage: aBlockClosure
	cache := aBlockClosure
! !

!SMessage methodsFor: 'printing' stamp: 'KenD 9/29/2022 14:12:37'!
cachedUndermessage
	^cache class == BlockClosure ifTrue: [ cache ]
! !

!SMessage methodsFor: 'printing' stamp: 'KenD 9/29/2022 14:12:37'!
flushCache
	cache := nil
! !

!SMessage methodsFor: 'printing' stamp: 'KenD 9/29/2022 14:12:37'!
initialize
	super initialize.
	arguments := #().
	inlined := false
! !

!SMessage methodsFor: 'printing' stamp: 'KenD 9/29/2022 14:12:37'!
methodFor: requiredType
	| type |
	cache ifNil: [ ^ nil ].
	1 to: cache size by: 2 do: [ :i | 
		type := cache at: i.
		type == requiredType
			ifTrue: [ ^ cache at: i + 1 ] ].
	^ nil
! !

!SMessage methodsFor: 'printing' stamp: 'KenD 11/1/2022 10:52:50'!
printOn: aStream indent: anInteger
	aStream tab: anInteger; nextPutAll: '{MessageId. '; print: selector; nextPutAll: '. '; newLine.
	receiver printOn: aStream indent: anInteger + 1.
	aStream nextPutAll: '.'; newLine.
	arguments
		do: [:statement | statement printOn: aStream indent: anInteger + 1]
		separatedBy: [aStream nextPutAll: '. '; newLine].
	aStream nextPutAll: '}'
! !

!SMessage methodsFor: 'printing' stamp: 'KenD 9/29/2022 14:12:37'!
receiver
	^receiver
! !

!SMessage methodsFor: 'printing' stamp: 'KenD 9/29/2022 14:12:37'!
receiver: anSExpression
	receiver := anSExpression
! !

!SMessage methodsFor: 'printing' stamp: 'KenD 9/29/2022 14:12:37'!
registerCacheWith: runtime
	cache ifNil: [ runtime registerCache: self for: selector ]
! !

!SMessage methodsFor: 'printing' stamp: 'KenD 9/29/2022 14:12:37'!
selector
	^selector
! !

!SMessage methodsFor: 'printing' stamp: 'KenD 9/29/2022 14:12:37'!
selector: aSelector
	selector := aSelector
! !

!SMessage methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:12:37'!
argumentCount
	^arguments size
! !

!SMessage methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:12:37'!
isInlined
	^ inlined
! !

!SMessage methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:12:37'!
isMessage
	^true
! !

!SMessage methodsFor: 'testing' stamp: 'KenD 11/2/2022 12:43:49'!
isOptimized
	self flag: #ReVisit.
	^ cache notNil 
! !

!SMessage class methodsFor: 'unclassified' stamp: 'KenD 9/29/2022 14:12:37'!
decodeUsing: anAstcodeDecoder
	^anAstcodeDecoder decodeMessage
! !

!SMessage class methodsFor: 'instance creation' stamp: 'KenD 9/29/2022 14:12:37'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!SOpJump methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:14:36'!
acceptVisitor: visitor
	^ visitor visitOpJump: self
! !

!SOpJump methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:14:36'!
printOn: aStream
	aStream nextPutAll: self class name withArticle; nextPutAll: ' after '; print: target
! !

!SOpJump methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:14:36'!
target
	^target
! !

!SOpJump methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:14:36'!
target: anInteger
	 target := anInteger
! !

!SOpJumpFalse methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:15:54'!
acceptVisitor: visitor
	^ visitor visitOpJumpFalse: self
! !

!SOpJumpTrue methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:16:06'!
acceptVisitor: visitor
	^ visitor visitOpJumpTrue: self
! !

!SOpLoadRfromFrame methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:16:17'!
acceptVisitor: visitor
	^ visitor visitOpLoadRfromFrame: self
! !

!SOpLoadRfromFrame methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:16:17'!
index
^	index
! !

!SOpLoadRfromFrame methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:16:17'!
index: anInteger
	index := anInteger
! !

!SOpPopR methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:17:55'!
acceptVisitor: visitor
	^ visitor visitOpPopR: self
! !

!SOpStoreRintoFrame methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:18:51'!
acceptVisitor: visitor
	^ visitor visitOpStoreRintoFrame: self
! !

!SOpStoreRintoFrame methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:18:51'!
index
	^ index
! !

!SOpStoreRintoFrame methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:18:51'!
index: anInteger
	index := anInteger
! !

!SOpAssign methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:14:05'!
acceptVisitor: visitor
	^ visitor visitOpAssign: self
! !

!SOpAssign methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:14:05'!
assignees
	^assignees
! !

!SOpAssign methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:14:05'!
assignees: aCollection
	assignees := aCollection
! !

!SOpDispatchMessage methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:14:16'!
acceptVisitor: visitor
	^ visitor visitOpDispatchMessage: self
! !

!SOpDispatchMessage methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:14:16'!
message
	^ message
! !

!SOpDispatchMessage methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:14:16'!
message: anSMessage
	message := anSMessage
! !

!SOpDropToS methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:14:26'!
acceptVisitor: visitor
	^ visitor visitOpDropToS: self
! !

!SOpDropToS methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:14:26'!
count
	^count
! !

!SOpDropToS methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:14:26'!
count: anInteger
	count := anInteger 
! !

!SOpLoadRfromStack methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:16:28'!
acceptVisitor: visitor
	^ visitor visitOpLoadRfromStack: self
! !

!SOpLoadRfromStack methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:16:28'!
index
	^index
! !

!SOpLoadRfromStack methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:16:28'!
index: anInteger
	index := anInteger
! !

!SOpLoadRwithNil methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:16:38'!
acceptVisitor: visitor
	^ visitor visitOpLoadRwithNil: self
! !

!SOpLoadRwithSelf methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:16:48'!
acceptVisitor: visitor
	^ visitor visitOpLoadRwithSelf: self
! !

!SOpPrimitive methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:18:05'!
acceptVisitor: visitor
	^ visitor visitOpPrimitive: self
! !

!SOpPrimitive methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:18:05'!
block
	^block
! !

!SOpPrimitive methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:18:05'!
block: aBlockClosure
	block := aBlockClosure
! !

!SOpPushR methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:18:17'!
acceptVisitor: visitor
	^ visitor visitOpPushR: self
! !

!SOpRestart methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:17:19'!
acceptVisitor: visitor
	^ visitor visitOpRestart: self
! !

!SOpReturn methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:17:33'!
acceptVisitor: visitor
	^ visitor visitOpReturn: self
! !

!SOpNonLocalReturn methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:17:01'!
acceptVisitor: visitor
	^ visitor visitOpNonLocalReturn: self
! !

!SPragma methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:19:08'!
name
	^ name
! !

!SPragma methodsFor: 'accessing' stamp: 'KenD 9/29/2022 14:19:08'!
name: aString
	name := aString
! !

!SReturn methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:19:31'!
acceptVisitor: visitor
	^visitor visitReturn: self
! !

!SReturn methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:19:31'!
expression
	^expression
! !

!SReturn methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:19:31'!
expression: anSExpression
	expression := anSExpression
! !

!SReturn methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:19:31'!
isReturn
	^true
! !

!SReturn methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:19:31'!
local
	^local
! !

!SReturn methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:19:31'!
local: aBoolean
	local := aBoolean
! !

!SReturn methodsFor: 'visiting' stamp: 'KenD 11/1/2022 10:52:55'!
printOn: aStream indent: anInteger
	aStream tab: anInteger; nextPutAll: '{ReturnId.'; newLine.
	expression printOn: aStream indent: anInteger + 1.
	aStream nextPutAll: '}'
! !

!SReturn class methodsFor: 'unclassified' stamp: 'KenD 9/29/2022 14:19:31'!
decodeUsing: anAstcodeDecoder
	^anAstcodeDecoder decodeReturn
! !

!SScript methodsFor: 'printing' stamp: 'KenD 9/29/2022 13:53:47'!
argumentCount
	^compiledCode argumentCount
! !

!SScript methodsFor: 'printing' stamp: 'KenD 9/29/2022 13:53:47'!
compiledCode
	^compiledCode
! !

!SScript methodsFor: 'printing' stamp: 'KenD 9/29/2022 13:53:47'!
compiledCode: anObject
	compiledCode := anObject
! !

!SScript methodsFor: 'printing' stamp: 'KenD 9/29/2022 13:53:47'!
initialize
	statements := #()
! !

!SScript methodsFor: 'printing' stamp: 'KenD 11/1/2022 10:53:00'!
printOn: aStream indent: anInteger
	statements
		do: [:statement | statement printOn: aStream indent: anInteger + 1]
		separatedBy: [aStream nextPutAll: '.'; newLine]
! !

!SScript methodsFor: 'printing' stamp: 'KenD 9/29/2022 13:53:47'!
statements
	^statements
! !

!SScript methodsFor: 'printing' stamp: 'KenD 9/29/2022 13:53:47'!
statements: aCollection
	statements := aCollection
! !

!SScript methodsFor: 'printing' stamp: 'KenD 9/29/2022 13:53:47'!
tempCount
	^compiledCode tempCount
! !

!SScript methodsFor: 'accessing' stamp: 'KenD 9/29/2022 13:53:47'!
optimizedCode: anObject
	^ self compiledCode optimizedCode: anObject
! !

!SScript class methodsFor: 'instance creation' stamp: 'KenD 9/29/2022 13:53:47'!
new
	"return an initialized instance"

	^ self basicNew initialize.

! !

!SBlock methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:29:24'!
capturedVariables
	^capturedVariables
! !

!SBlock methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:29:24'!
capturedVariables: aCollection
	capturedVariables := aCollection
! !

!SBlock methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:29:24'!
capturesHome
	^compiledCode capturesHome
! !

!SBlock methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:29:24'!
index
	^index
! !

!SBlock methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:29:24'!
index: anInteger
	index := anInteger
! !

!SBlock methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:29:24'!
inlinedArgs
	^ inlinedArgs
! !

!SBlock methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:29:24'!
inlinedArgs: anArray
	inlinedArgs:= anArray 
! !

!SBlock methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:29:24'!
offsetOfCurrentEnvironment
	^ 2
! !

!SBlock methodsFor: 'accessing' stamp: 'KenD 9/30/2022 12:29:24'!
optimizedCode
	^compiledCode optimizedCode
! !

!SBlock methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:29:24'!
initialize
	capturedVariables := #()
! !

!SBlock methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:29:24'!
isBlock
	^true
! !

!SBlock methodsFor: 'initialization' stamp: 'KenD 9/30/2022 12:29:24'!
isInlined
	^ compiledCode isNil
! !

!SBlock methodsFor: 'unclassified' stamp: 'KenD 11/1/2022 10:53:05'!
printOn: aStream indent: anInteger
	aStream
		tab: anInteger;
		nextPutAll: '{BlockId. capturedVariables: ';
		print: capturedVariables;
		newLine.
	super printOn: aStream indent: anInteger.
	aStream nextPutAll: '}'
! !

!SBlock methodsFor: 'visiting' stamp: 'KenD 9/30/2022 12:29:24'!
acceptVisitor: visitor
	^visitor visitBlock: self
! !

!SBlock class methodsFor: 'unclassified' stamp: 'KenD 9/30/2022 12:29:24'!
decodeUsing: anAstcodeDecoder
	^anAstcodeDecoder decodeBlock
! !

!SMethod methodsFor: 'printing' stamp: 'KenD 9/29/2022 14:12:50'!
offsetOfCurrentEnvironment
	^ 0
! !

!SMethod methodsFor: 'printing' stamp: 'KenD 9/29/2022 14:12:50'!
offsetOfEnvironment: anInteger
	^0
! !

!SMethod methodsFor: 'printing' stamp: 'KenD 9/29/2022 14:12:50'!
pragma
	^pragma
! !

!SMethod methodsFor: 'printing' stamp: 'KenD 9/29/2022 14:12:50'!
pragma: anSPragma
	pragma := anSPragma
! !

!SMethod methodsFor: 'printing' stamp: 'KenD 9/29/2022 14:12:50'!
primitive
	^pragma ifNotNil: [ pragma name ]
! !

!SMethod methodsFor: 'printing' stamp: 'KenD 11/1/2022 10:53:36'!
printOn: aStream indent: anInteger
	aStream nextPutAll: '{MethodId. '; newLine.
	pragma ifNotNil: [ (pragma isKindOf: SExpression) 
					ifTrue: [ pragma printOn: aStream indent: anInteger + 1] 
					ifFalse: [ aStream tab: anInteger + 1; print: pragma ] 
	].
	super printOn: aStream indent: anInteger.
	aStream nextPutAll: '}'
! !

!SMethod methodsFor: 'testing' stamp: 'KenD 9/29/2022 14:12:50'!
isMethod
	^true
! !

!SMethod methodsFor: 'visiting' stamp: 'KenD 9/29/2022 14:12:50'!
acceptVisitor: visitor
	^visitor visitMethod: self
! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:08:51'!
argumentAt: index in: anInteger 
	| env |
	anInteger ifNil: [ ^arguments at: index ].
	env := self environmentFor: anInteger.
	^env at: index.! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:09:05'!
arguments 

	^arguments! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:09:16'!
arguments: aCollection 

	arguments := aCollection! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:09:24'!
associationValueAt: anInteger 

	^ (method at: anInteger) value! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:09:34'!
associationValueAt: anInteger put: value 
	| association |
	association := (method at: anInteger).
	^association value: value! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:10:01'!
beBlock 
	
	isBlock := true! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:10:11'!
blockAstcodesOf: anSCompiledBlock 

	^blockAstcodes at: anSCompiledBlock! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:10:23'!
blockOf: anObjectMap 

	^closures at: anObjectMap! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:10:36'!
booleanFor: aBoolean 

	^ aBoolean
		ifTrue: [ system true ]
		ifFalse: [ system false ]! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:11:10'!
captureClosure: anSBlock with: block 
	| closure s i type env arg |
	closure := system newClosure: block environmentCount.
	closures at: closure put: block.
	s := anSBlock capturedVariables readStream.
	i := 1.
	[ s atEnd ]
		whileFalse: [ type := s next.
			type = Self
				ifTrue: [ closure at: i put: receiver ].
			type = Environment
				ifTrue: [ closure at: i put: environment ].
			type = EnvironmentValue
				ifTrue: [ env := environment at: s next.
					closure at: i put: env ].
			type = LocalArgument
				ifTrue: [ arg := arguments at: s next.
					closure at: i put: arg ].
			i := i + 1 ].
	^ closure! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:12:08'!
closures 

	^closures! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:12:20'!
constPoolValueAt: anInteger 

	^ method at: anInteger! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:13:59'!
environment: anObjectMap 

	environment := anObjectMap! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:14:24'!
environmentFor: anInteger 
"
	-1: inlined argument.
	 0: current env.
 	>0: index of env in current env. 
"
	anInteger = 0
		ifTrue: [ ^ environment ].
	anInteger = -1
		ifTrue: [ ^ temporaries ].
	^ environment at: anInteger! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:22:34'!
falseLiteral 

	^ system false! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:23:06'!
instanceVarAt: anInteger 

	^ receiver slotAt: anInteger! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:23:17'!
instanceVarAt: index put: aValue 

	^ receiver slotAt: index put: aValue! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:23:28'!
integerFor: anInteger 

	^ system newInteger: anInteger! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:24:11'!
literal: anObject 

	^anObject! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:24:22'!
method 

	^method! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:24:36'!
method: anSCompiledMethod 

	method := anSCompiledMethod.
	temporaries := Array new: anSCompiledMethod tempCount! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:24:48'!
nilLiteral 

	^ system nil! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:24:57'!
parent 

	^parent! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:25:05'!
parent: anInterpreter 

	parent := anInterpreter! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:25:29'!
primitive: primitive 
	| result |
	result := self evaluatePrimitive: primitive.
	returning ifTrue: [ ^self ].
	system popFrame.
	self returning: result! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:26:59'!
receiver 

	^receiver! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:27:10'!
receiver: anObject 

	receiver := anObject.
	returnValue := anObject! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:27:24'!
returning: anObject 

	returning := true.
	returnValue := anObject! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:28:15'!
system: anEmulator 

	system := anEmulator! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:28:27'!
temporaryAt: index in: anInteger 
	| env |
	anInteger ifNil: [ ^ temporaries at: index ].
	env := self environmentFor: anInteger.
	^ env at: index! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:28:40'!
temporaryAt: index in: anInteger put: aValue 
	| env |
	anInteger ifNil: [ ^ temporaries	at:index put: aValue ].
	env := self environmentFor: anInteger.
	^ env at: index put: aValue
! !

!MethodEvaluator methodsFor: 'accessing' stamp: 'KenD 3/3/2021 11:28:55'!
trueLiteral 

	^system true! !

!MethodEvaluator methodsFor: 'evaluating' stamp: 'KenD 3/3/2021 11:09:45'!
backtrace 
	| bt next |
	bt := OrderedCollection new.
	next := self.
	[ next notNil ]
		whileTrue: [ bt
				add:
					{next method signature.
					next receiver} , next arguments.
			next := next parent ].
	^ bt! !

!MethodEvaluator methodsFor: 'evaluating' stamp: 'KenD 3/3/2021 11:14:55'!
evaluate 

	system pushFrame: self.
	^ self visitMethod: method sexpressions! !

!MethodEvaluator methodsFor: 'evaluating' stamp: 'KenD 3/3/2021 11:15:18'!
evaluateBlock: sblock args: anArray 
	" as this block is inlined, we didn't capture parent environment.
	Thus, we don't know if environment is a closure or a method home.
	We unwind to that environment and clean up later if it was a closure. "

	anArray
		with: sblock inlinedArgs
		do: [ :arg :i | temporaries at: i put: arg ].
	^ self visitScript: sblock! !

!MethodEvaluator methodsFor: 'evaluating' stamp: 'KenD 3/3/2021 11:15:36'!
evaluateBlock: sblock args: anArray closure: closure 
	" inlined blocks can only return to their real parent environment.
	Here we complete the non-local return process for them, unwinding
	to the real home environment "

	temporaries := Array new: sblock tempCount.
	environment := closure.
	arguments := anArray.
	^ self visitScript: sblock! !

!MethodEvaluator methodsFor: 'evaluating' stamp: 'KenD 3/3/2021 11:15:51'!
evaluateClosure: aPClosure 

	^self evaluateClosure: aPClosure withArgs: {}! !

!MethodEvaluator methodsFor: 'evaluating' stamp: 'KenD 3/3/2021 11:16:45'!
evaluateClosure: aPClosure with: anObject 

	 ^self evaluateClosure: aPClosure withArgs: { anObject }! !

!MethodEvaluator methodsFor: 'evaluating' stamp: 'KenD 3/3/2021 11:16:58'!
evaluateClosure: aPClosure with: anObject with: anotherObject 

	^ self evaluateClosure: aPClosure withArgs: {anObject. anotherObject}! !

!MethodEvaluator methodsFor: 'evaluating' stamp: 'KenD 3/3/2021 11:17:12'!
evaluateClosure: closure withArgs: anArray 
	| frame block sblock evaluator result |
	frame := system builderOf: closure.
	block := frame blockOf: closure.
	sblock := frame blockAstcodesOf: block.
	evaluator := frame copy beBlock.
	system pushFrame: evaluator.
	result := sblock isInlined
		ifTrue: [ evaluator evaluateBlock: sblock args: anArray ]
		ifFalse: [ evaluator evaluateBlock: sblock args: anArray closure: closure ].
	returning ifFalse: [ system popFrame ].
	^result! !

!MethodEvaluator methodsFor: 'evaluating' stamp: 'KenD 3/3/2021 11:19:55'!
evaluatePrimitive: primitive 
	| index size argument value |
	primitive = #Behavior
		ifTrue: [ ^ receiver isImmediate
				ifTrue: [ system smallintBehavior ]
				ifFalse: [ receiver behavior ] ].
	primitive = #UnderSize
		ifTrue: [ ^ self integerFor: receiver size ].
	primitive = #Size
		ifTrue: [ ^ self integerFor: receiver arrayedSize ].
	primitive = #At
		ifTrue: [ index := arguments first value.
			value := receiver at: index.
			^ receiver isBytes
				ifTrue: [ self integerFor: value ]
				ifFalse: [ value ] ].
	primitive = #AtPut
		ifTrue: [ index := arguments first value.
			^ receiver at: index put: arguments second ].
	primitive = #New
		ifTrue: [ ^ system newSlotsOf: receiver spec instanceSide sized: 0].
	primitive = #NewSized
		ifTrue: [ size := arguments first value.
			^ system newOf: receiver spec instanceSide sized: size ].
	primitive = #NewBytes
		ifTrue: [ size := arguments first value.
			^ system newBytesOf: receiver spec instanceSide sized: size ].
	primitive = #Equal
		ifTrue: [ argument := arguments first.
			^ self
				booleanFor:
					(receiver == argument
						or: [ receiver isImmediate
								and: [ argument isImmediate and: [ receiver value = argument value ] ] ]) ].
	primitive = #SMIPlus
		ifTrue: [ ^ self integerFor: receiver value + arguments first value ].
	primitive = #SMIMinus
		ifTrue: [ ^ self integerFor: receiver value - arguments first value ].
	primitive = #SMITimes
		ifTrue: [ ^ self integerFor: receiver value * arguments first value ].
	primitive = #SMIIntDiv
		ifTrue: [ ^ self integerFor: receiver value // arguments first value ].
	primitive = #SMIIntQuot
		ifTrue: [ ^ self integerFor: receiver value \\ arguments first value ].
	primitive = #SMIBitAnd
		ifTrue: [ ^ self integerFor: (receiver value bitAnd: arguments first value) ].
	primitive = #SMIBitXor
		ifTrue: [ ^ self integerFor: (receiver value bitXor: arguments first value) ].
	primitive = #SMIBitShift
		ifTrue:
			[ ^ self integerFor: (receiver value bitShift: arguments first value) ].
	primitive = #SMIHighBit
		ifTrue: [ ^ self integerFor: receiver value highBit ].
	primitive = #SMIGreaterThan
		ifTrue: [ ^ self booleanFor: receiver value > arguments first value ].
	primitive = #SMIGreaterEqualThan
		ifTrue: [ ^ self booleanFor: receiver value >= arguments first value ].
	primitive = #SMIEqual
		ifTrue: [ ^ self booleanFor: receiver value = arguments first value ].
	primitive = #SMINotEqual
		ifTrue: [ ^ self booleanFor: receiver value !!= arguments first value ].
	primitive = #SMISize
		ifTrue: [ ^ self integerFor: receiver value bytesCount ].
	primitive = #ClosureValue
		ifTrue: [ ^ self evaluatePrimitiveClosureValue ].
	primitive = #ClosureValueWithArgs
		ifTrue: [ ^ self evaluatePrimitiveClosureValueWithArgs ].
	primitive = #ClosureWhileTrue
		ifTrue: [ ^ self evaluatePrimitiveClosureWhileTrue ].
	primitive = #ClosureWhileFalse
		ifTrue: [ ^ self evaluatePrimitiveClosureWhileFalse ].
	primitive = #ClosureArgumentCount
		ifTrue: [ ^ self evaluatePrimitiveClosureArgumentCount ].
	primitive = #StringReplaceFromToWithStartingAt
		ifTrue: [ receiver bytes
				replaceFrom: arguments first value
				to: arguments second value
				with: arguments third bytes
				startingAt: arguments fourth value.
			^ receiver ].
	primitive = #FloatNew
		ifTrue: [ ^ system newBytesOf: receiver spec instanceSide sized: 8 ].
	primitive = #PrimeFor
		ifTrue: [ ^ self evaluatePrimitivePrimeFor ].
	self assert: false
! !

!MethodEvaluator methodsFor: 'evaluating' stamp: 'KenD 3/3/2021 11:20:47'!
evaluatePrimitiveClosureArgumentCount 
	| frame block |
	frame := system builderOf: receiver. 
	block := frame blockOf: receiver.
	^ self integerFor: block argumentCount! !

!MethodEvaluator methodsFor: 'evaluating' stamp: 'KenD 3/3/2021 11:21:01'!
evaluatePrimitiveClosureValue 

	^ self evaluateClosure: receiver! !

!MethodEvaluator methodsFor: 'evaluating' stamp: 'KenD 3/3/2021 11:21:11'!
evaluatePrimitiveClosureValueWithArgs 

	^ self evaluateClosure: receiver withArgs: arguments! !

!MethodEvaluator methodsFor: 'evaluating' stamp: 'KenD 3/3/2021 11:21:23'!
evaluatePrimitiveClosureWhileFalse 
	| result arg |
	arg := arguments first.
	[ result := self evaluateClosure: receiver.
	returning
		ifTrue: [ ^ returnValue ].
	system booleanFrom: result ]
		whileFalse: [ self evaluateClosure: arg.
			returning
				ifTrue: [ ^ returnValue ] ].
	^ receiver! !

!MethodEvaluator methodsFor: 'evaluating' stamp: 'KenD 3/3/2021 11:21:45'!
evaluatePrimitiveClosureWhileTrue 
	| result arg |
	arg := arguments first.
	[ result := self evaluateClosure: receiver. returning ifTrue: [^returnValue].
	system booleanFrom: result ] whileTrue: [ self evaluateClosure: arg. returning ifTrue: [^returnValue]].
	^ receiver! !

!MethodEvaluator methodsFor: 'evaluating' stamp: 'KenD 3/3/2021 11:22:00'!
evaluatePrimitiveHash 
	| hash |
	hash := receiver headerHash.
	hash = 0 ifTrue: [ hash := system nextHash. receiver headerHash: hash ].
	^ self integerFor: hash! !

!MethodEvaluator methodsFor: 'evaluating' stamp: 'KenD 3/3/2021 11:22:16'!
evaluatePrimitivePrimeFor 
	| num result |
	num := arguments first value.
	result := #(2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97 101 103 107 109 113 127 131 137 139 149 151 157 163 167 173 179 181 191 193 197 199 211 223 227 229 233 239 241 251 269 359 479 641 857 1151 1549 2069 2237 2423 2617 2797 2999 3167 3359 3539 3727 3911 4441 4787 5119 5471 5801 6143 6521 6827 7177 7517 7853 8783 9601 10243 10867 11549 12239 12919 13679 14293 15013 15731 17569 19051 20443 21767 23159 24611 25847 27397 28571 30047 31397 35771 38201 40841 43973 46633 48989 51631 54371 57349 60139 62969)
		detect: [ :i | i >= num ].
	^ self integerFor: result! !

!MethodEvaluator methodsFor: 'visiting' stamp: 'KenD 3/3/2021 11:29:27'!
visitArgument: anSIdentifier 

	^arguments at: anSIdentifier binding index! !

!MethodEvaluator methodsFor: 'visiting' stamp: 'KenD 3/3/2021 11:29:37'!
visitAssignment: anSAssignment 
	| result |
	result := anSAssignment expression acceptVisitor: self.
	anSAssignment assignees
		do: [ :identifier | identifier binding assign: result within: self ].
	^result! !

!MethodEvaluator methodsFor: 'visiting' stamp: 'KenD 3/3/2021 11:29:53'!
visitBlock: anSBlock 
	| block closure |
	block := anSBlock isInlined
		ifTrue: [ SCompiledBlock new ]
		ifFalse: [ anSBlock compiledCode ].
	closure := self captureClosure: anSBlock with: block.
	blockAstcodes at: block put: anSBlock.
	^ closure! !

!MethodEvaluator methodsFor: 'visiting' stamp: 'KenD 3/3/2021 11:30:04'!
visitCascade: anSCascade 
	| recv args selector last |
	recv := anSCascade receiver acceptVisitor: self.
	anSCascade messages
		do: [ :msg | 
			args := msg arguments collect: [ :code | code acceptVisitor: self ].
			selector := system symbolFrom: msg selector.
			last := system
				send: selector
				to: recv
				with: args
				super: anSCascade receiver isSuper ].
	^ last! !

!MethodEvaluator methodsFor: 'visiting' stamp: 'KenD 3/3/2021 11:30:25'!
visitIdentifier: anSIdentifier 

	^anSIdentifier binding valueWithin: self! !

!MethodEvaluator methodsFor: 'visiting' stamp: 'KenD 3/3/2021 11:30:36'!
visitLiteral: anSLiteral 

	^ system transferLiteral: anSLiteral value! !

!MethodEvaluator methodsFor: 'visiting' stamp: 'KenD 3/3/2021 11:30:49'!
visitMessage: anSMessage 
	| recv args selector message |
	recv := anSMessage receiver acceptVisitor: self.
	args := anSMessage arguments
		collect: [ :code | code acceptVisitor: self ].
	selector := system symbolFrom: anSMessage selector.
	self assert: selector !!== #error:.
	^ system send: selector to: recv with: args super: anSMessage receiver isSuper! !

!MethodEvaluator methodsFor: 'visiting' stamp: 'KenD 3/3/2021 11:31:39'!
visitMethod: anSMethod 
	| primitive |
	primitive := anSMethod primitive.
	primitive 
		ifNil: [	self visitScript: anSMethod] 
		ifNotNil: [ self primitive: primitive ].
	^ returning
		ifTrue: [ returnValue ]
		ifFalse: [ system popFrame.  receiver ]! !

!MethodEvaluator methodsFor: 'visiting' stamp: 'KenD 3/3/2021 11:31:58'!
visitReturn: anSReturn 
	| value home |
	value := anSReturn expression acceptVisitor: self.
	"it could happen that while we were going to return, the
	expression contained a non-local return that was reached.
	In that case we just keep unwinding without altering the
	unwindLimit"
	returning
		ifTrue: [ ^ returnValue ].
	home := anSReturn local
		ifTrue: [ environment ]
		ifFalse: [ environment at: 1 ].
	system unwindUpTo: home returning: value! !

!MethodEvaluator methodsFor: 'visiting' stamp: 'KenD 3/3/2021 11:32:12'!
visitScript: anSScript 
	| result |
	anSScript statements
		do: [ :node | 
			result := node acceptVisitor: self.
			returning
				ifTrue: [ ^ returnValue ] ].
	^ result! !

!MethodEvaluator methodsFor: 'visiting' stamp: 'KenD 3/3/2021 11:32:26'!
visitTemporary: anSIdentifier 

	^temporaries at: anSIdentifier binding index! !

!MethodEvaluator methodsFor: 'services' stamp: 'KenD 3/3/2021 11:11:55'!
classBinding 

	^method classBinding! !

!MethodEvaluator methodsFor: 'printing' stamp: 'KenD 7/7/2021 15:44:28'!
printOn: aStream 

 	self backtrace
		do: [ :frame | 
			frame do: [ :elem | elem printOn: aStream ]
				   separatedBy: [ aStream nextPutAll: '. ' ].
			aStream newLine ]
! !

!MethodEvaluator methodsFor: 'initialization' stamp: 'KenD 3/3/2021 11:22:52'!
initialize 

	blockAstcodes := IdentityDictionary new.
	closures := IdentityDictionary new.
	returning := false.
	isBlock := false! !

!MethodEvaluator methodsFor: 'testing' stamp: 'KenD 3/3/2021 11:10:54'!
built: closure 

	^closures includesKey: closure! !

!MethodEvaluator methodsFor: 'testing' stamp: 'KenD 3/3/2021 11:23:38'!
isHomeOf: env 

	^ environment == env andNot: [ isBlock ]! !

!MethodEvaluator methodsFor: 'testing' stamp: 'KenD 3/3/2021 11:24:00'!
isUndermessage: selector 

	^ Undermessages includes: selector! !

!MethodEvaluator methodsFor: 'dispatch' stamp: 'KenD 3/3/2021 11:13:04'!
dispatchUndermessage: message 
	| selector recv args result |
	selector := message selector.
	recv := message receiver.
	args := message arguments.
	selector == #_isSmallInteger
		ifTrue: [ ^ self booleanFor: recv isImmediate ].
	selector == #_isLarge
		ifTrue: [ ^ self booleanFor: recv isSmall not ].
	selector == #_smallSize
		ifTrue: [ ^ self
				integerFor:
					(recv isSmall
						ifTrue: [ recv size ]
						ifFalse: [ self error ]) ].
	selector == #_largeSize
		ifTrue: [ ^ self
				integerFor:
					(recv isSmall
						ifTrue: [ self error ]
						ifFalse: [ recv size ]) ].
	selector == #_basicFlags
		ifTrue: [ ^ self integerFor: recv headerFlags ].
	selector == #_basicAt:
		ifTrue: [ ^ recv slots at: args first value ].
	selector == #_byteAt:
		ifTrue: [ result := recv bytes at: args first value.
			^ self integerFor: result ].
	selector == #_basicHash
		ifTrue: [ ^ self integerFor: recv headerHash ].
	selector == #_basicHash:
		ifTrue: [ recv headerHash: args first value.
			^ recv ].
	selector == #_smallIntegerByteAt:
		ifTrue: [ result := recv value byteAt: args first value.
			^ self integerFor: result ].
	selector == #_bitShiftLeft:
		ifTrue: [ result := recv value bitShift: args first value.
			(result isKindOf: LargeInteger)
				ifTrue: [ self halt ].
			^ self integerFor: result ].
	selector == #_uShortAtOffset:
		ifTrue: [ ^ result := self
				integerFor: (recv bytes unsignedShortAt: args first value + 1) ].
	selector == #_uShortAtOffset:put:
		ifTrue: [ result := args second.
			recv bytes unsignedShortAt: args first value + 1 put: result value.
			^ result ].
	self assert: false! !

!MethodEvaluator methodsFor: 'dispatch' stamp: 'KenD 3/3/2021 11:27:51'!
staticSend: selector to: recv with: args 
	| result |
	selector == #_isSmallInteger
		ifTrue: [ ^ self booleanFor: recv isImmediate ].
	selector == #_isLarge
		ifTrue: [ ^ self booleanFor: recv isSmall not ].
	selector == #_smallSize
		ifTrue: [ ^ self
				integerFor:
					(recv isSmall
						ifTrue: [ recv size ]
						ifFalse: [ self error ]) ].
	selector == #_largeSize
		ifTrue: [ ^ self
				integerFor:
					(recv isSmall
						ifTrue: [ self error ]
						ifFalse: [ recv size ]) ].
	selector == #_basicFlags
		ifTrue: [ ^ self integerFor: recv headerFlags ].
	selector == #_basicAt:
		ifTrue: [ ^ recv slots at: args first value ].
	selector == #_byteAt:
		ifTrue: [ result := recv bytes at: args first value.
			^ self integerFor: result ].
	selector == #_basicHash
		ifTrue: [ ^ self integerFor: recv headerHash ].
	selector == #_basicHash:
		ifTrue: [ recv headerHash: args first value.
			^ recv ].
	selector == #_smallIntegerByteAt:
		ifTrue: [ result := recv value byteAt: args first value.
			^ self integerFor: result ].
	selector == #_bitShiftLeft:
		ifTrue: [ result := recv value bitShift: args first value.
			(result isKindOf: LargeInteger)
				ifTrue: [ self halt ].
			^ self integerFor: result ].
	selector == #_uShortAtOffset:
		ifTrue: [ ^ result := self
				integerFor: (recv bytes unsignedShortAt: args first value + 1) ].
	selector == #_uShortAtOffset:put:
		ifTrue: [ result := args second.
			recv bytes unsignedShortAt: args first value + 1 put: result value.
			^ result ].
	self assert: false! !

!MethodEvaluator class methodsFor: 'class initialization' stamp: 'KenD 3/3/2021 11:07:59'!
initialize 
"
	self initialize
"

	Undermessages := #(_basicAt: #_basicAt:put: 
		_bitShiftLeft: _byteAt: #_byteAt:put: 
		_smallSize _largeSize _isSmallInteger 
		_basicHash _basicHash: 
		_smallIntegerByteAt: 
		_uShortAtOffset: _uShortAtOffset:put:)
! !

!ProtoObject methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 16:44:40'!
!!== anObject 

	^self ~~ anObject! !

!Object methodsFor: '*powerlang-core' stamp: 'Install-PowerLang 5/30/2021 14:45:16'!
!!= anObject

	^self ~= anObject! !

!Object methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 16:28:08'!
deny: aBoolean

	self assert: aBoolean not! !

!Object methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 16:28:24'!
disableCode: aBlock 

	"the block has been disabled"! !

!Object methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 16:28:45'!
evaluate 

	^self! !

!Object methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 16:28:56'!
evaluateWith: anObject 

	^self evaluateWithArguments: {anObject}! !

!Object methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 16:29:09'!
evaluateWithArguments: anArray 

	^self evaluate! !

!Object methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 16:29:24'!
hashWith: a 

	^self
		hashedWith: a
		with: nil
		with: nil
		with: nil
		with: nil
		with: nil
		count: 2! !

!Object methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 16:29:37'!
hashWith: a with: b 

	^ self
		hashedWith: a
		with: b
		with: nil
		with: nil
		with: nil
		with: nil
		count: 3! !

!Object methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 16:29:49'!
hashWith: a with: b with: c 

	^self
		hashedWith: a
		with: b
		with: c
		with: nil
		with: nil
		with: nil
		count: 4! !

!Object methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 16:30:01'!
hashWith: a with: b with: c with: d 

	^ self
		hashedWith: a
		with: b
		with: c
		with: d
		with: nil
		with: nil
		count: 5! !

!Object methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 16:30:12'!
hashWith: a with: b with: c with: d with: e 

	^ self
		hashedWith: a
		with: b
		with: c
		with: d
		with: e
		with: nil
		count: 6! !

!Object methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 16:31:12'!
hashedWith: a with: b with: c with: d with: e with: f count: n 
	| hash |
	hash := n hashMultiply bitXor: self hash.
	hash := hash hashMultiply bitXor: a hash.
	n = 2 ifTrue: [^hash].
	hash := hash hashMultiply bitXor: b hash.
	n = 3 ifTrue: [^hash].
	hash := hash hashMultiply bitXor: c hash.
	n = 4 ifTrue: [^hash].
	hash := hash hashMultiply bitXor: d hash.
	n = 5 ifTrue: [^hash].
	hash := hash hashMultiply bitXor: e hash.
	n = 6 ifTrue: [^hash].
	hash := hash hashMultiply bitXor: f hash.
	n = 7 ifTrue: [^hash].
	self error: 'Invalid argument count'! !

!Object methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 16:31:41'!
isBoolean 

	^false! !

!Object methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 16:31:53'!
isEmptyOrNil 

	^false
! !

!Object methodsFor: '*powerlang-core' stamp: 'KenD 5/5/2021 16:34:39'!
isInstruction 

	^false! !

!Object methodsFor: '*powerlang-core' stamp: 'KenD 6/10/2021 12:15:05'!
isRegister

	^false! !

!Object methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 16:32:03'!
isSmallInteger 

	^false! !

!Object methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 16:32:11'!
isSpecies 

	^false! !

!Object methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 16:32:30'!
primitivePrintString 

	^self printString! !

!Integer methodsFor: '*Powerlang-Core' stamp: 'KenD 9/30/2022 15:31:43'!
bin 
	"
	255 bin
	"
	^self printStringBase: 2! !

!Integer methodsFor: '*Powerlang-Core' stamp: 'KenD 9/30/2022 15:31:24'!
bin: bits 
	"
	(2 bin: 7) size = 7
	"
	| pad bin |
	pad := String new: bits withAll: $0.
	bin := pad , self bin.
	^ bin copyFrom: bin size - bits + 1 to: bin size! !

!Integer methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 12:53:06'!
bitShiftRight: anInteger 

	^self bitShift: 0 - anInteger! !

!Integer methodsFor: '*Powerlang-Core' stamp: 'KenD 9/30/2022 15:30:23'!
bitsAt: aStretch 
	"
	(2r001101010 bitField: (3 thru: 6)) bin = '1010'
	(-16r40000000 bitField: (29 thru: 31)) bin = '100'
	"
	| shifted mask |
	shifted := self bitShiftRight: aStretch start - 1.
	mask := 1 bitShift: aStretch length.
	^shifted bitAnd: mask - 1! !

!Integer methodsFor: '*Powerlang-Core' stamp: 'KenD 9/30/2022 15:29:27'!
bitsAt: aStretch put: anInteger 
	"
	((2r001101100 bitsAt: (3 thru: 6) put: 2r1101) bitField: (3 thru: 6)) bin = '1101'
	((2r100 bitsAt: (29 thru: 31) put: 2r101) bitField: (29 thru: 31)) bin = '101'
	((2r100 bitsAt: (29 thru: 31) put: 2r101) bitField: (1 thru: 3)) bin = '100'
	"
	| shifted max |
	shifted := anInteger bitShift: aStretch start - 1.
	max := 1 bitShift: aStretch length.
	anInteger < max ifFalse: [self error: 'invalid argument'].
	^(self bitsClear: aStretch) bitOr: shifted! !

!Integer methodsFor: '*Powerlang-Core' stamp: 'KenD 9/30/2022 15:29:57'!
bitsClear: aStretch 
	"
	(2r111100110 bitsClear: (3 thru: 6)) = 2r111000010
	"
	| mask |
	mask := (1 bitShift: aStretch end) - (1 bitShift: aStretch start - 1).
	^self bitAnd: mask bitInvert! !

!Integer methodsFor: '*Powerlang-Core' stamp: 'KenD 9/30/2022 15:30:51'!
isOnBit: n

	^(self bitAnd: n) = n! !

!Integer methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 12:54:20'!
linearFeedbackShiftRandom: key 
	"
	LFSR implementation (avoids 0 by definition).
	More keys at: https://users.ece.cmu.edu/~koopman/lfsr/index.html
	"

	| shifted |
	shifted := self bitShift: -1.
	^ (self bitAnd: 1) = 0
		ifTrue: [ shifted ]
		ifFalse: [ shifted bitXor: key ]! !

!Integer methodsFor: '*Powerlang-Core' stamp: 'KenD 9/29/2022 14:03:31'!
thru: anInteger
	^Stretch from: self thru: anInteger
! !

!Behavior methodsFor: '*powerlang-core' stamp: 'KenD 6/8/2021 06:51:39'!
configureCompiler: aCompiler! !

!Behavior methodsFor: '*powerlang-core' stamp: 'KenD 6/5/2021 08:23:15'!
isSpecies 
	
	^ true! !

!ClassDescription methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 12:46:44'!
allSharedPoolsUsing: globals 

	^self allSharedPools ! !

!ClassDescription methodsFor: '*powerlang-core' stamp: 'KenD 6/10/2021 12:53:29'!
indexOfSlot: instVarName 
	self flag: #KenD_Revisit.
	"^self instVarIndexFor: instVarName"
	
	"Nota Bene: returns zero on failure; use nil?"
	^self instVarNames findFirst: [ :name | name = instVarName ]! !

!ClassDescription methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 12:47:07'!
localPools 

	^#()! !

!Class methodsFor: '*powerlang-core' stamp: 'KenD 6/8/2021 06:55:50'!
instanceSide

	^ self! !

!Metaclass methodsFor: '*powerlang-core' stamp: 'KenD 6/8/2021 06:55:30'!
instanceSide

	^ thisClass! !

!ClassOrganizer methodsFor: '*powerlang-core' stamp: 'KenD 11/1/2022 13:34:40'!
selectorsFor: aString 

	^ self listAtCategoryNamed: aString! !

!Collection methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 12:48:46'!
anyone 

	^self anyOne! !

!Collection methodsFor: '*powerlang-core' stamp: 'KenD 6/9/2021 15:03:53'!
collect: collectBlock thenDo: doBlock
	
	^self do: [ :each | doBlock value: (collectBlock value: each)]! !

!Collection methodsFor: '*powerlang-core' stamp: 'KenD 5/30/2021 13:58:29'!
conform: evaluable

	^self allSatisfy: evaluable! !

!Collection methodsFor: '*powerlang-core' stamp: 'KenD 5/30/2021 14:06:30'!
reject: rejectBlock thenDo: doBlock
	"A utility which does not create intermediate collection"

	self do: [ :each |
		(rejectBlock value: each)
		ifFalse: [ doBlock value: each ]
	]! !

!Collection class methodsFor: '*powerlang-core' stamp: 'KenD 6/17/2021 13:20:37'!
with: anObject withAll: aCollection 

	^self new add: anObject; addAll: aCollection; yourself! !

!SequenceableCollection methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 16:48:44'!
beeCopyFrom: start 

	^self beeCopyFrom: start to: self size! !

!SequenceableCollection methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 16:48:57'!
beeCopyFrom: start to: stop 
	| size copy |
	size := stop - start + 1 max: 0.
	copy := self species ofSize: size.
	^copy
		replaceFrom: 1
		to: size
		with: self
		startingAt: start! !

!SequenceableCollection methodsFor: '*powerlang-core' stamp: 'KenD 6/3/2021 13:48:05'!
indexOfSubCollection: aSubCollection 

	^self
		indexOfSubCollection: aSubCollection
		startingAt: 1
		ifAbsent: [0]! !

!Symbol methodsFor: '*powerlang-core' stamp: 'KenD 6/3/2021 13:53:01'!
isBinary 

	^self precedence = 2! !

!Utf8Symbol methodsFor: '*powerlang-core' stamp: 'KenD 11/12/2022 13:22:10'!
isBinary 

	^self precedence = 2! !

!ArrayedCollection class methodsFor: '*powerlang-core' stamp: 'KenD 6/17/2021 13:20:02'!
with: anObject withAll: aCollection

"
	Array with: 1 withAll: #(2 3 4).
"
	| newArray |
	newArray := self new: aCollection size + 1.
	newArray at: 1 put: anObject.
	newArray
		replaceFrom: 2 to: newArray size  with: aCollection.
	^newArray ! !

!ByteArray methodsFor: '*Powerlang-Core' stamp: 'KenD 9/30/2022 12:10:15'!
asLittleEndianNegativeInteger
	| integer |
	integer := LargeNegativeInteger new: self size.
	self withIndexDo: [ :value :i | integer at: i put: 255 - value ].
	^ integer - 1
! !

!ByteArray methodsFor: '*Powerlang-Core' stamp: 'KenD 9/30/2022 12:10:15'!
asLittleEndianPositiveInteger
	| integer |
	integer := LargePositiveInteger new: self size.
	self withIndexDo: [ :value :i | integer at: i put: value ].
	^ integer normalize
	

! !

!Dictionary methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 12:50:25'!
removeAllSuchThat: aBlock 
	"Evaluate aBlock for each element and remove all that elements from
	the receiver for that aBlock evaluates to true.  Use a copy to enumerate 
	collections whose order changes when an element is removed (i.e. Sets)."
	self copy
		keysAndValuesDo: [:key :each | (aBlock evaluateWith: each)
			ifTrue: [self removeKey: key]]! !

!Stream methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 16:50:43'!
sizeToEnd 

	^self size - self position! !

!Stream methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 16:50:55'!
skip 

	self skip: 1! !

!PositionableStream methodsFor: '*powerlang-core' stamp: 'KenD 5/31/2021 13:40:53'!
peekForAll: aCollection

	| n |
	n := aCollection size.
	^((self peek: n) hasEqualElements: aCollection)
		ifTrue: [self skip: n];
		yourself! !

!PositionableStream methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 16:42:37'!
uint16le 
	"Answer the next unsigned, 16-bit integer from this (binary) stream."

	^ self next + (self next bitShift: 8)! !

!PositionableStream methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 16:42:52'!
uint16le: anInteger 
	"Store the given unsigned, 32-bit integer as little endian 
	 on this (binary) stream."

	(anInteger < 0 or: [ anInteger >= 16r10000 ])
		ifTrue: [ self error: 'outside unsigned 16-bit integer range' ].
	self nextPut: (anInteger byteAt: 1).
	self nextPut: (anInteger byteAt: 2)! !

!PositionableStream methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 16:43:02'!
uint32le 
	"Answer the next unsigned, 32-bit integer from this (binary) stream."

	^self next + (self next bitShift: 8) + (self next bitShift: 16) + (self next bitShift: 24)! !

!PositionableStream methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 16:43:14'!
uint32le: anInteger 
	"Store the given unsigned, 32-bit integer as little endian 
	 on this (binary) stream."

	(anInteger < 0 or: [ anInteger >= 16r100000000 ])
		ifTrue: [ self error: 'outside unsigned 32-bit integer range' ].
	self nextPut: (anInteger byteAt: 1).
	self nextPut: (anInteger byteAt: 2).
	self nextPut: (anInteger byteAt: 3).
	self nextPut: (anInteger byteAt: 4)! !

!PositionableStream methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 16:43:28'!
uint64le 
	"Answer the next unsigned, 64-bit integer from this (binary) stream."

	^ self next + (self next bitShift: 8) + (self next bitShift: 16)
		+ (self next bitShift: 24) + (self next bitShift: 32)
		+ (self next bitShift: 40) + (self next bitShift: 48)
		+ (self next bitShift: 56)! !

!PositionableStream methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 16:43:41'!
uint64le: anInteger 
	"Store the given unsigned, 64-bit integer as little endian 
	 on this (binary) stream."

	self nextPut: (anInteger byteAt: 1).
	self nextPut: (anInteger byteAt: 2).
	self nextPut: (anInteger byteAt: 3).
	self nextPut: (anInteger byteAt: 4).
	self nextPut: (anInteger byteAt: 5).
	self nextPut: (anInteger byteAt: 6).
	self nextPut: (anInteger byteAt: 7).
	self nextPut: (anInteger byteAt: 8)! !

!ReadStream methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 11:20:29'!
copyFrom: start to: end

	| startPos result |
	startPos := self position.
	self position: start - 1.
	result := self next: end - start + 1.
	self position: startPos.
	^result! !

!ReadStream methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 16:47:36'!
peek: n

	| startPos safe data |
	startPos := self position.
	safe := n min: (self size - startPos).
	data := self next: safe.
	self position: startPos.
	^data
	! !

!ReadStream methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 16:47:54'!
prev 

	^self position > 0
		ifTrue: [self position: self position - 1; peek]
		ifFalse: [self error: 'read beyond start of stream']! !

!WriteStream methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 16:58:02'!
nextBytePut: aCollection 

	^ self nextPut: aCollection! !

!WriteStream methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 16:58:18'!
nextBytesPut: aCollection 

	^self nextBytesPutAll: aCollection! !

!WriteStream methodsFor: '*powerlang-core' stamp: 'KenD 6/8/2021 13:00:35'!
nextBytesPutAll: aCollection
	"Append the bytes of aCollection to the sequence of bytes
	 accessable to the receiver.  Answer aCollection"

	| newEnd |
	(collection class instSpec == aCollection class instSpec)
		ifFalse: [ ^ super nextPutAll: aCollection ].

	newEnd _ position + aCollection size.
	newEnd > writeLimit ifTrue: [
		self growTo: newEnd + 10].

	collection replaceFrom: position+1 to: newEnd  with: aCollection startingAt: 1.
	position _ newEnd.
	
	^aCollection! !

!WriteStream methodsFor: '*Powerlang-Compatibility-Pharo' stamp: 'KenD 10/4/2022 16:11:59'!
nextDoublePut: anInteger
	"Write out an 8 byte signed integer"
	| unsigned |
	unsigned := anInteger < 0 ifTrue: [ anInteger + (1 << 64) ] ifFalse: [ anInteger  ]
.self nextUDoublePut: unsigned.
! !

!WriteStream methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 16:59:00'!
nextLongPut: anInteger
	| unsigned |
	unsigned _ anInteger < 0
		ifTrue: [ anInteger + (1 << 32) ]
		ifFalse: [ anInteger ].
	self nextULongPut: unsigned.! !

!WriteStream methodsFor: '*Powerlang-Compatibility-Pharo' stamp: 'KenD 10/4/2022 16:10:19'!
nextUDoublePut: anInteger
	"Place 8 byte unsigned integer into stream"
	1 to: 8 do: [ :i | 
		| bi |
		bi := anInteger byteAt: i.
		self nextPut: bi ]

! !

!WriteStream methodsFor: '*powerlang-core' stamp: 'KenD 10/4/2022 16:07:23'!
nextULongPut: anInteger 
	"Place 4 byte unsigned integer into stream"
	1 to: 4 do: [ :i | 
		| bi |
		bi := anInteger byteAt: i.
		self nextPut: bi ]! !
CharacterConstants initialize!
OperandTypeFlags initialize!
RegistersRISCV initialize!
ObjectHeaderMasks initialize!
ObjectHeaderOffsets initialize!
InlineMessageLinkerFlags initialize!
SendSiteFlags initialize!
SCompiledBlockFlags initialize!
SCompiledMethodFlags initialize!
AstBindingTypes initialize!
AstNodeTypes initialize!
ClosureElementTypes initialize!
SExpressionTypes initialize!
SFFIDescriptor initialize!
Assembler initialize!
SmalltalkInterpreter initialize!
AstcodeDecoder initialize!
MethodEvaluator initialize!
