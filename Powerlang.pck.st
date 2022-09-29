'From Cuis 6.0 [latest update: #5492] on 29 September 2022 at 11:02:43 am'!
'Description Original + Bee RiscV64G code generation back end.'!
!provides: 'Powerlang' 1 5!
!requires: 'BeeCompatibility' 1 25 nil!
!requires: 'RISC5-Instructions' 1 28 nil!
SystemOrganization addCategory: #'Powerlang-Core-Nativization'!
SystemOrganization addCategory: 'Powerlang-Core-Building'!
SystemOrganization addCategory: 'Powerlang-Core-Assembly'!
SystemOrganization addCategory: 'Powerlang-Core-Assembly-RISCV'!
SystemOrganization addCategory: 'Powerlang-Core-SCompiler'!
SystemOrganization addCategory: 'Powerlang-Core-SExpressions'!
SystemOrganization addCategory: 'Powerlang-Core-Metaphysics'!
SystemOrganization addCategory: 'Powerlang-Core-Mirrors'!
SystemOrganization addCategory: 'Powerlang-Core'!
SystemOrganization addCategory: 'Powerlang-Core-Assembler-Intel'!


!classDefinition: #InlineMessageLinkerFlags category: #'Powerlang-Core-Nativization'!
PSharedPool subclass: #InlineMessageLinkerFlags
	instanceVariableNames: ''
	classVariableNames: '_ExtendedSize _Flags _Hash _Reserved _SmallSize'
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'InlineMessageLinkerFlags class' category: #'Powerlang-Core-Nativization'!
InlineMessageLinkerFlags class
	instanceVariableNames: '_ExtendedSize _Flags _Hash _Reserved _SmallSize'!

!classDefinition: #SendSiteFlags category: #'Powerlang-Core-Nativization'!
PSharedPool subclass: #SendSiteFlags
	instanceVariableNames: ''
	classVariableNames: 'HasBeenReset IsPolymorphic IsStaticSend IsSuperSend'
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'SendSiteFlags class' category: #'Powerlang-Core-Nativization'!
SendSiteFlags class
	instanceVariableNames: 'HasBeenReset IsPolymorphic IsStaticSend IsSuperSend'!

!classDefinition: #SCompiledMethodFlags category: 'Powerlang-Core-SCompiler'!
PSharedPool subclass: #SCompiledMethodFlags
	instanceVariableNames: ''
	classVariableNames: 'ArgCount BlockCount CapturesSelf Debuggable EnvCount HasEnvironment HasFrame TempCount'
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'SCompiledMethodFlags class' category: 'Powerlang-Core-SCompiler'!
SCompiledMethodFlags class
	instanceVariableNames: 'ArgCount BlockCount CapturesSelf Debuggable EnvCount HasEnvironment HasFrame TempCount'!

!classDefinition: #AstBindingTypes category: 'Powerlang-Core-SExpressions'!
PSharedPool subclass: #AstBindingTypes
	instanceVariableNames: ''
	classVariableNames: 'ArgumentId ClassVarId ConstantPoolId EnsureAisSmallIntegerId EnsureRisSmallIntegerId FalseId GlobalClassId GlobalValueId InstVarId LoadAvisitingArgumentId LoadAwithArgumentId LoadAwithClassVarId LoadAwithConstPoolId LoadAwithFalseId LoadAwithGlobalId LoadAwithInstVarId LoadAwithLiteralId LoadAwithNilId LoadAwithPoolVarId LoadAwithSelfId LoadAwithTemporaryId LoadAwithTrueId LoadRvisitingReceiverId LoadRwithArgumentId LoadRwithClassVarId LoadRwithConstPoolId LoadRwithFalseId LoadRwithGlobalId LoadRwithInstVarId LoadRwithLiteralId LoadRwithNilId LoadRwithPoolVarId LoadRwithSelfId LoadRwithTemporaryId LoadRwithTrueId NilId PoolVarId PopRid PushRid SelfId SuperId TemporaryId TrueId'
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'AstBindingTypes class' category: 'Powerlang-Core-SExpressions'!
AstBindingTypes class
	instanceVariableNames: ''!

!classDefinition: #AstNodeTypes category: 'Powerlang-Core-SExpressions'!
PSharedPool subclass: #AstNodeTypes
	instanceVariableNames: ''
	classVariableNames: 'AssignmentId BlockId BraceId CascadeId IdentifierId LiteralId MessageId MethodId PragmaId ReturnId'
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'AstNodeTypes class' category: 'Powerlang-Core-SExpressions'!
AstNodeTypes class
	instanceVariableNames: 'AssignmentId BlockId BraceId CascadeId IdentifierId LiteralId MessageId MethodId PragmaId ReturnId'!

!classDefinition: #ClosureElementTypes category: 'Powerlang-Core-SExpressions'!
PSharedPool subclass: #ClosureElementTypes
	instanceVariableNames: ''
	classVariableNames: 'Environment EnvironmentValue LocalArgument Self'
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'ClosureElementTypes class' category: 'Powerlang-Core-SExpressions'!
ClosureElementTypes class
	instanceVariableNames: ''!

!classDefinition: #SExpressionTypes category: 'Powerlang-Core-SExpressions'!
PSharedPool subclass: #SExpressionTypes
	instanceVariableNames: ''
	classVariableNames: 'AssignmentId BlockId BraceId CascadeId IdentifierId LiteralId MessageId MethodId PragmaId ReturnId'
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SExpressionTypes class' category: 'Powerlang-Core-SExpressions'!
SExpressionTypes class
	instanceVariableNames: ''!

!classDefinition: #ObjectHeaderMasks category: 'Powerlang-Core-Metaphysics'!
PSharedPool subclass: #ObjectHeaderMasks
	instanceVariableNames: ''
	classVariableNames: 'IsArrayed IsBytes IsNamed IsSmall'
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'ObjectHeaderMasks class' category: 'Powerlang-Core-Metaphysics'!
ObjectHeaderMasks class
	instanceVariableNames: ''!

!classDefinition: #ObjectHeaderOffsets category: 'Powerlang-Core-Metaphysics'!
PSharedPool subclass: #ObjectHeaderOffsets
	instanceVariableNames: ''
	classVariableNames: 'BehaviorOffset FlagsOffset HashOffset LargeSizeOffset SizeOffset'
	poolDictionaries: ''
	category: 'Powerlang-Core-Metaphysics'!
!classDefinition: 'ObjectHeaderOffsets class' category: 'Powerlang-Core-Metaphysics'!
ObjectHeaderOffsets class
	instanceVariableNames: ''!

!classDefinition: #CompiledBlockFormatMasks category: 'Powerlang-Core-Mirrors'!
PSharedPool subclass: #CompiledBlockFormatMasks
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Mirrors'!
!classDefinition: 'CompiledBlockFormatMasks class' category: 'Powerlang-Core-Mirrors'!
CompiledBlockFormatMasks class
	instanceVariableNames: ''!

!classDefinition: #CompiledMethodFormatMasks category: 'Powerlang-Core-Mirrors'!
PSharedPool subclass: #CompiledMethodFormatMasks
	instanceVariableNames: ''
	classVariableNames: 'ArgCount BlockCount TempCount'
	poolDictionaries: ''
	category: 'Powerlang-Core-Mirrors'!
!classDefinition: 'CompiledMethodFormatMasks class' category: 'Powerlang-Core-Mirrors'!
CompiledMethodFormatMasks class
	instanceVariableNames: ''!

!classDefinition: #FrameOffsets category: 'Powerlang-Core-Mirrors'!
PSharedPool subclass: #FrameOffsets
	instanceVariableNames: ''
	classVariableNames: 'CallerIndex LastArgumentIndex MethodIndex ReceiverIndex ReturnAddressIndex'
	poolDictionaries: ''
	category: 'Powerlang-Core-Mirrors'!
!classDefinition: 'FrameOffsets class' category: 'Powerlang-Core-Mirrors'!
FrameOffsets class
	instanceVariableNames: ''!

!classDefinition: #CharacterConstants category: 'Powerlang-Core'!
PSharedPool subclass: #CharacterConstants
	instanceVariableNames: ''
	classVariableNames: 'Cr Lf Newline Space Tab'
	poolDictionaries: ''
	category: 'Powerlang-Core'!
!classDefinition: 'CharacterConstants class' category: 'Powerlang-Core'!
CharacterConstants class
	instanceVariableNames: ''!

!classDefinition: #OperandTypeFlags category: 'Powerlang-Core-Assembler-Intel'!
PSharedPool subclass: #OperandTypeFlags
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
	classVariableNames: 'RegA RegE RegFP RegFalse RegG RegIP RegM RegNextIP RegNil RegR RegS RegSP RegT RegTrue RegV RegX0 RegX1'
	poolDictionaries: 'RISC5Regs'
	category: 'Powerlang-Core-Assembly-RISCV'!
!classDefinition: 'RegistersRISCV class' category: 'Powerlang-Core-Assembly-RISCV'!
RegistersRISCV class
	instanceVariableNames: ''!

!classDefinition: #NativeCode category: #'Powerlang-Core-Nativization'!
Array variableSubclass: #NativeCode
	instanceVariableNames: 'machineCode compiledCode'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'NativeCode class' category: #'Powerlang-Core-Nativization'!
NativeCode class
	instanceVariableNames: ''!

!classDefinition: #BinaryMessageNativizer category: #'Powerlang-Core-Nativization'!
Object subclass: #BinaryMessageNativizer
	instanceVariableNames: 'message assembler nativizer done failed'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'BinaryMessageNativizer class' category: #'Powerlang-Core-Nativization'!
BinaryMessageNativizer class
	instanceVariableNames: ''!

!classDefinition: #InlinedMessageNativizer category: #'Powerlang-Core-Nativization'!
Object subclass: #InlinedMessageNativizer
	instanceVariableNames: 'message assembler nativizer start end'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'InlinedMessageNativizer class' category: #'Powerlang-Core-Nativization'!
InlinedMessageNativizer class
	instanceVariableNames: ''!

!classDefinition: #MessageLinker category: #'Powerlang-Core-Nativization'!
Object subclass: #MessageLinker
	instanceVariableNames: 'filter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'MessageLinker class' category: #'Powerlang-Core-Nativization'!
MessageLinker class
	instanceVariableNames: ''!

!classDefinition: #CompositeMessageLinker category: #'Powerlang-Core-Nativization'!
MessageLinker subclass: #CompositeMessageLinker
	instanceVariableNames: 'candidates'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'CompositeMessageLinker class' category: #'Powerlang-Core-Nativization'!
CompositeMessageLinker class
	instanceVariableNames: ''!

!classDefinition: #HaltingSend category: #'Powerlang-Core-Nativization'!
MessageLinker subclass: #HaltingSend
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'HaltingSend class' category: #'Powerlang-Core-Nativization'!
HaltingSend class
	instanceVariableNames: ''!

!classDefinition: #InlineMessageLinker category: #'Powerlang-Core-Nativization'!
MessageLinker subclass: #InlineMessageLinker
	instanceVariableNames: 'assembler map'
	classVariableNames: ''
	poolDictionaries: 'InlineMessageLinkerFlags Registers'
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'InlineMessageLinker class' category: #'Powerlang-Core-Nativization'!
InlineMessageLinker class
	instanceVariableNames: ''!

!classDefinition: #InvokeLinker category: #'Powerlang-Core-Nativization'!
MessageLinker subclass: #InvokeLinker
	instanceVariableNames: 'invoker sends'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'InvokeLinker class' category: #'Powerlang-Core-Nativization'!
InvokeLinker class
	instanceVariableNames: ''!

!classDefinition: #LookupLinker category: #'Powerlang-Core-Nativization'!
MessageLinker subclass: #LookupLinker
	instanceVariableNames: 'lookup lookupSuper'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'LookupLinker class' category: #'Powerlang-Core-Nativization'!
LookupLinker class
	instanceVariableNames: ''!

!classDefinition: #LazyLinker category: #'Powerlang-Core-Nativization'!
LookupLinker subclass: #LazyLinker
	instanceVariableNames: 'sends'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'LazyLinker class' category: #'Powerlang-Core-Nativization'!
LazyLinker class
	instanceVariableNames: ''!

!classDefinition: #NativizationEnvironment category: #'Powerlang-Core-Nativization'!
Object subclass: #NativizationEnvironment
	instanceVariableNames: 'platform optimizedMethods invokedMethods inlinedMethods messageLinker globals writeBarrier safepointCheck cachedNativizer busy'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'NativizationEnvironment class' category: #'Powerlang-Core-Nativization'!
NativizationEnvironment class
	instanceVariableNames: ''!

!classDefinition: #NativizationPlatform category: #'Powerlang-Core-Nativization'!
Object subclass: #NativizationPlatform
	instanceVariableNames: 'name wordSize abi codeGeneratorClass'
	classVariableNames: 'Default'
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'NativizationPlatform class' category: #'Powerlang-Core-Nativization'!
NativizationPlatform class
	instanceVariableNames: 'Default'!

!classDefinition: #Opcode category: #'Powerlang-Core-Nativization'!
Object subclass: #Opcode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'Opcode class' category: #'Powerlang-Core-Nativization'!
Opcode class
	instanceVariableNames: ''!

!classDefinition: #SExpressionNativizer category: #'Powerlang-Core-Nativization'!
Object subclass: #SExpressionNativizer
	instanceVariableNames: 'environment method remainingBlocks safepointCheck mainCode stackCount fallbacks activeScript ir'
	classVariableNames: ''
	poolDictionaries: 'private'
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'SExpressionNativizer class' category: #'Powerlang-Core-Nativization'!
SExpressionNativizer class
	instanceVariableNames: ''!

!classDefinition: #SendSite category: #'Powerlang-Core-Nativization'!
Object subclass: #SendSite
	instanceVariableNames: 'instructions selector cache tally format'
	classVariableNames: ''
	poolDictionaries: 'SendSiteFlags'
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'SendSite class' category: #'Powerlang-Core-Nativization'!
SendSite class
	instanceVariableNames: ''!

!classDefinition: #StackFrameCursor category: #'Powerlang-Core-Nativization'!
Object subclass: #StackFrameCursor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Nativization'!
!classDefinition: 'StackFrameCursor class' category: #'Powerlang-Core-Nativization'!
StackFrameCursor class
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

!classDefinition: #ABI category: 'Powerlang-Core-Assembly'!
Object subclass: #ABI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-Assembly'!
!classDefinition: 'ABI class' category: 'Powerlang-Core-Assembly'!
ABI class
	instanceVariableNames: ''!

!classDefinition: #RiscV64ABI category: 'Powerlang-Core-Assembly-RISCV'!
ABI subclass: #RiscV64ABI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'RegistersRISCV'
	category: 'Powerlang-Core-Assembly-RISCV'!
!classDefinition: 'RiscV64ABI class' category: 'Powerlang-Core-Assembly-RISCV'!
RiscV64ABI class
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

!classDefinition: #RV64CodeGenerator category: 'Powerlang-Core-Assembly-RISCV'!
RISCCodeGenerator subclass: #RV64CodeGenerator
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'RegistersRISCV'
	category: 'Powerlang-Core-Assembly-RISCV'!
!classDefinition: 'RV64CodeGenerator class' category: 'Powerlang-Core-Assembly-RISCV'!
RV64CodeGenerator class
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

!classDefinition: #SParseTreeVisitor category: 'Powerlang-Core-SCompiler'!
Object subclass: #SParseTreeVisitor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SCompiler'!
!classDefinition: 'SParseTreeVisitor class' category: 'Powerlang-Core-SCompiler'!
SParseTreeVisitor class
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

!classDefinition: #AstcodeDecoder category: 'Powerlang-Core-SExpressions'!
Object subclass: #AstcodeDecoder
	instanceVariableNames: 'method stream builder'
	classVariableNames: 'BindingTypes NodeTypes'
	poolDictionaries: 'AstBindingTypes AstNodeTypes'
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'AstcodeDecoder class' category: 'Powerlang-Core-SExpressions'!
AstcodeDecoder class
	instanceVariableNames: 'BindingTypes NodeTypes'!

!classDefinition: #SExpression category: 'Powerlang-Core-SExpressions'!
Object subclass: #SExpression
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Powerlang-Core-SExpressions'!
!classDefinition: 'SExpression class' category: 'Powerlang-Core-SExpressions'!
SExpression class
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
	instanceVariableNames: ''
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

!classDefinition: #OperandEncoding category: 'Powerlang-Core-Assembler-Intel'!
Object subclass: #OperandEncoding
	instanceVariableNames: 'name selectors descriptions immediate modrm'
	classVariableNames: 'Encodings'
	poolDictionaries: 'Registers'
	category: 'Powerlang-Core-Assembler-Intel'!
!classDefinition: 'OperandEncoding class' category: 'Powerlang-Core-Assembler-Intel'!
OperandEncoding class
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
I am the JIT assembler frontend. I provide a high-level assembler interface (if that really exists)
and delegate writing of the actual bytes to my backends.
!

!RV64CodeGenerator commentStamp: '<historical>' prior: 0!
RISC-V RV64G
See specs at:
  https://riscv.org/technical/specifications/!

!RelocatableBuffer commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
	See (MIT) license in root directory.
!

!RelocationFixup commentStamp: '<historical>' prior: 0!
Copyright (c) 2020 Aucerna.
	See (MIT) license in root directory.
!

!SExpression commentStamp: '<historical>' prior: 0!
I am a Smalltalk expression, the minimal unit of Smalltalk semantics, expressed as a tree.
!

!InlineMessageLinkerFlags class methodsFor: 'class initialization' stamp: 'KenD 9/26/2022 12:31:19'!
initialize
	_Flags := -5.
	_SmallSize := -6.
	_Hash := -8.
	_Reserved := -2.
	_ExtendedSize := -3.

! !

!SendSiteFlags class methodsFor: 'class initialization' stamp: 'KenD 9/26/2022 12:27:40'!
initialize
		IsStaticSend := 16r1.
		IsSuperSend := 16r2.
		IsPolymorphic := 16r4.
		HasBeenReset := 16r8
	
! !

!SCompiledMethodFlags class methodsFor: 'class initialization' stamp: 'KenD 9/28/2022 13:26:58'!
initialize
	ArgCount := 1 thru: 6.
	BlockCount := 7 thru: 13.
	TempCount := 14 thru: 21.
	CapturesSelf := 1 bitShift: 22 - 1.
	HasEnvironment := 1 bitShift: 23 - 1.
	HasFrame := 1 bitShift: 24 - 1.
	Debuggable := 1 bitShift: 25 - 1.
	EnvCount := 26 thru: 31
! !

!AstBindingTypes class methodsFor: 'class initialization' stamp: 'KenD 2/23/2021 14:51:53'!
initialize 
	NilId := 1.
	TrueId := 2.
	FalseId := 3.
	ArgumentId := 4.
	TemporaryId := 5.
	SelfId := 6.
	SuperId := 7.
	InstVarId := 8.
	ClassVarId := 9.
	GlobalValueId := 10.
	GlobalClassId := 11.
	PoolVarId := 12.
	ConstantPoolId := 13.
	LoadRwithSelfId := 20.
	LoadAwithSelfId := 21.
	LoadRwithInstVarId := 22.
	LoadAwithInstVarId := 23.
	LoadRvisitingReceiverId := 24.
	LoadAvisitingArgumentId := 25.
	LoadRwithLiteralId := 26.
	LoadAwithLiteralId := 27.
	EnsureRisSmallIntegerId := 28.
	EnsureAisSmallIntegerId := 29.
	LoadRwithArgumentId := 30.
	LoadAwithArgumentId := 31.
	LoadRwithTemporaryId := 32.
	LoadAwithTemporaryId := 33.
	LoadRwithNilId := 34.
	LoadAwithNilId := 35.
	LoadRwithFalseId := 36.
	LoadAwithFalseId := 37.
	LoadRwithTrueId := 38.
	LoadAwithTrueId := 39.
	LoadRwithGlobalId := 40.
	LoadAwithGlobalId := 41.
	LoadRwithClassVarId := 42.
	LoadAwithClassVarId := 43.
	LoadRwithPoolVarId := 44.
	LoadAwithPoolVarId := 45.
	LoadRwithConstPoolId := 46.
	LoadAwithConstPoolId := 47.
	PushRid := 48.
	PopRid := 49! !

!AstNodeTypes class methodsFor: 'class initialization' stamp: 'KenD 9/28/2022 13:24:02'!
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
	PragmaId := 110
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

!RegistersRISCV class methodsFor: 'class initialization' stamp: 'KenD 9/29/2022 11:01:30'!
initialize

	RegA       := X11. "Arg  [Arg1]"
	RegE       := X21. "Environment"
	RegFP     := FramePtr. "X8"
	RegFalse := X26.
	RegG      := X23.
	RegNextIP := X7. "Next Code Address to Jump to" 
	RegM  := X19.
	RegNil := X24.
	RegR   := X10. "Receiver/Result [Arg0]"
	RegS   := X20. "Selector"
	RegSP := StackPtr. "X2"
	RegT   := X28.
	RegTrue := X25.
	RegV   := X22.
	RegX0 := X14.
	RegX1 := X15.
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

!BinaryMessageNativizer methodsFor: 'private' stamp: 'KenD 9/26/2022 12:29:42'!
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
	self ASSERT: false
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

!InlinedMessageNativizer methodsFor: 'nativizing' stamp: 'KenD 9/26/2022 12:33:01'!
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
	self ASSERT: false
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

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleAsFloatInto
	#_asFloatInto:.
	assembler
		loadX0withRasDouble;
		storeLargeX0inA.
	self readFloatStatus
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleAsNative
	| noninteger |
	#_asNative.
	noninteger := assembler labeledIntegerBitTestOfR.
	assembler
		convertRtoNativeInteger;
		@ noninteger
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleAsObject
	#_asObject.
	assembler clearSafeRintegerBit
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleAsPointer
	| nonInteger |
	#_asPointer.
	nonInteger := assembler labeledIntegerBitTestOfR.
	assembler
		convertRtoNativeInteger;
		@ nonInteger;
		setSafeRintegerBit
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleAsSmallInteger
	#_asSmallInteger.
	assembler convertRtoSmallInteger
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleBasicAt
	| oop |
	#_basicAt:.
	oop := assembler labeledIntegerNativizationOfA.
	assembler
		loadRwithRatA;
		@ oop
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleBasicAtPut
	| nonInteger |
	#_basicAt:put:.
	nonInteger := assembler labeledIntegerNativizationOfA.
	assembler
		storeTinRatA;
		@ nonInteger;
		loadRwithT
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleBasicCopyFromToWith
	#_basicCopyFrom:to:with:.
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

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleBasicFlags
	#_basicFlags.
	self emitByteAtOffset: _Flags
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleBasicFlagsPut
	#_basicFlags:.
	self emitByteAtOffsetPut: _Flags
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleBasicHash
	#_basicHash.
	assembler
		loadZeroExtendShortRwithRoffset: _Hash;
		convertRtoSmallInteger
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleBasicHashPut
	| nonInteger |
	#_basicHash:.
	nonInteger := assembler labeledIntegerNativizationOfA.
	assembler
		storeShortAinRoffset: _Hash;
		@ nonInteger
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleBasicSize
	#_smallSize.
	self emitByteAtOffset: _SmallSize
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleBasicSizePut
	#_smallSize:.
	self emitByteAtOffsetPut: _SmallSize
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleBasicULongAt
	| nonInteger |
	#_basicULongAt:.
	nonInteger := assembler labeledIntegerNativizationOfA.
	assembler
		loadZeroExtendLongRwithRatA;
		@ nonInteger
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleBasicULongAtPut
	| nonInteger |
	#_basicULongAt:put:.
	nonInteger := assembler labeledIntegerNativizationOfA.
	assembler
		storeLongTinRatA;
		@ nonInteger;
		loadRwithT
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleBeCurrent
	#_beCurrent.
	assembler
		loadRwithRindex: 1;
		clearSafeRintegerBit;
		loadFPwithR
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleBeEnvironment
	#_beEnvironment.
	assembler loadEwithR
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleBeFramePointer
	#_beFramePointer.
	assembler storeRinFPindex: 1
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleBitShiftLeft
	| success |
	#_bitShiftLeft:.
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

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleBitShiftRight
	#_bitShiftRight:.
	assembler
		move: assembler regA to: assembler regT;
		convertToNativeInteger: assembler regT;
		shiftRightArithmetic: assembler regR by: assembler regT b;
		setIntegerBit: assembler regR
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleBusyWait
	| loop |
	#_busyWait.
	loop := assembler newLabel.
	assembler
		loadTwithImmediate: 0;
		@ loop;
		exchangeRindirectWithT;
		compareTwithImmediate: 0;
		shortJumpIfEqualTo: loop
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleByteAt
	| nonInteger |
	#_byteAt:.
	nonInteger := assembler labeledIntegerNativizationOfA.
	assembler
		loadZeroExtendByteRwithRatA;
		convertRtoSmallInteger;
		@ nonInteger
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleByteAtPut
	| nonInteger1 nonInteger2 |
	#_byteAt:put:.
	nonInteger1 := assembler labeledIntegerNativizationOfA.
	nonInteger2 := assembler labeledIntegerNativizationOfT.
	assembler
		storeByteTinRatA;
		@ nonInteger1;
		@ nonInteger2;
		loadRwithT;
		convertRtoSmallInteger
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleCDeclCallWithArguments
	#_cdeclCallWithArguments:.
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

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleCallWithArguments
	#_stdcallWithArguments:.
	assembler
		loadZeroExtendByteTwithAindex: _SmallSize + 1;
		shiftTright: assembler wordSizeShift;
		loopTtimes: [ assembler pushAatToffset: 0 - assembler addressSize ].
	assembler addressSize = 8
		ifTrue: [ self loadArgumentsIntoRegisters ].
	assembler callR
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleEnvironment
	#_environment.
	assembler loadRwithE
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleExpandInStackSized
	#_expandInStackSized:.
	assembler
		convertAtoNativeInteger;
		loadTwithA;
		loopTtimes: [ assembler
				pushIndirectR;
				addRwithImmediate: assembler wordSize ]
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleExtendedSize
	#_largeSize.
	assembler
		loadZeroExtendLongRwithRindex: _ExtendedSize;
		convertRtoSmallInteger
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleFloatEquals
	"
	first compare magnitudes to set error bit if NaN
	"
	#_floatEquals:.
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

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleFloatFractionPartInto
	#_floatFractionPartInto:.
	assembler
		loadLargeX0withRindirect;
		roundDoubleX0intoX1;
		subDoubleX1fromX0;
		storeLargeX0inA.
	self readFloatStatus
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleFloatLessThan
	#_floatLessThan:.
	assembler
		loadLargeX0withRindirect;
		compareLessThanDoubleX0withAindirect;
		moveX0toR;
		addRwithImmediate: 1;
		convertRtoSmallInteger.
	self readFloatStatus
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleFloatMinusInto
	#_floatMinus:into:.
	assembler
		loadLargeX0withRindirect;
		loadLargeX1withAindirect;
		subDoubleX1fromX0;
		storeLargeX0inT.
	self readFloatStatus
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleFloatMultiplyInto
	#_floatMultiply:into:.
	assembler
		loadLargeX0withRindirect;
		loadLargeX1withAindirect;
		multiplyDoubleX0byX1;
		storeLargeX0inT.
	self readFloatStatus
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleFloatPlusInto
	#_floatPlus:into:.
	assembler
		loadLargeX0withRindirect;
		loadLargeX1withAindirect;
		addDoubleX1toX0;
		storeLargeX0inT.
	self readFloatStatus
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleFloatQuotientInto
	#_floatQuotient:into:.
	assembler
		loadLargeX0withRindirect;
		loadLargeX1withAindirect;
		divideDoubleX0byX1;
		storeLargeX0inT.
	self readFloatStatus
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleFloatSqrtInto
	#_floatSqrtInto:.
	assembler
		loadLargeX0withRindirect;
		sqrtDoubleX0;
		storeLargeX0inA.
	self readFloatStatus
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleFloatTruncated
	#_floatTruncated.
	assembler loadRconvertingDoublePointedByR.
	self readFloatStatus.
	assembler convertRtoSmallInteger
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleFramePointer
	#_framePointer.
	assembler loadRwithFPindex: 1
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleGetTIBValue
	| nonInteger |
	#_getThreadInformationBlockValue.
	nonInteger := assembler labeledIntegerNativizationOfR.
	assembler
		loadRwithTIBatR;
		@ nonInteger
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleGetThreadValue
	| nonInteger uninitialized |
		#_getThreadValue.
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

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleHigh16
	#_high16.
	assembler wordSize > 4
		ifTrue: [ assembler clearRhigh32 ].
	assembler
		shiftRright: 15;
		setSafeRintegerBit
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleHigh32
	#_high32.
	assembler
		shiftLogicalRright: 31;
		setSafeRintegerBit
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleHoldRefererIfNeeded
	#_holdRefererIfNeeded:.
	assembler
		pushA;
		loadAwithGlobal: #WriteBarrier;
		callIndirectA;
		popA
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleIntegerMultiplyByInto
	#_integerMultiplyBy:into:.
	assembler
		convertRtoNativeInteger;
		convertAtoNativeInteger;
		multiplyRbyAwideningToA;
		storeRinTindex: 1;
		storeAinTindex: 2;
		loadRwithT
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleInvoke
	#_invoke:.
	assembler
		loadMwithA;
		callIndirectM
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleLeadingZeroBitCount
	#_leadingZeroBitCount.
	assembler
		convertRtoNativeInteger;
		leadingRzeroCount;
		convertRtoSmallInteger
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleLoadFloatStatusFrom
	#_status:.
	assembler loadMXCSRfromA
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleLow16
	#_low16.
	assembler
		andRwithImmediate: 16rFFFF;
		convertRtoSmallInteger
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleLow32
	#_low32.
	assembler wordSize > 4
		ifTrue: [ assembler
				andRwithImmediate: 16rFFFFFFFF;
				convertRtoSmallInteger ]
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleNativeHalt
	#_halt.
	assembler breakpoint
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleNilSlots
	#_nilSlots:.
	assembler
		pushE;
		loadEwithR;
		loadRwithNil;
		loadTwithA;
		convertTtoNativeInteger;
		writeTslots;
		popE
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleObjectAtOffset
	| nonInteger1 |
	#_objectAtOffset:.
	nonInteger1 := assembler labeledIntegerNativizationOfA.
	assembler
		loadRwithRatOffsetA;
		@ nonInteger1
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleObjectAtOffsetPut
	| oop |
	#_objectAtOffset:put:.
	oop := assembler labeledIntegerNativizationOfA.
	assembler
		storeTinRatOffsetA;
		@ oop;
		loadRwithT;
		convertRtoSmallInteger
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleOop
	#_oop.
	^ assembler convertRtoSmallInteger
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleQuotientTowardZero
	#_quotientTowardZero:.
	assembler
		convertRtoNativeInteger;
		convertAtoNativeInteger;
		loadTwithA;
		extendRtoAandDividebyT;
		convertRtoSmallInteger
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleRelease
	#_release.
	assembler
		lock;
		decRindirect
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleRemainderTowardZero
	| adapt convert |
	#_remainderTowardZero:.
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

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleRestore
	#_restore.
	assembler loadEwithR
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleRestoreAndTransferControlWithContext
	#_restoreAndTransferControlWithContext:.
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

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleRestoreWithContext
	#_restoreWithContext:.
	assembler
		clearSafeRintegerBit;
		loadFPwithR;
		loadSPwithFP;
		loadRwithA;
		clearSafeRintegerBit;
		loadFPwithR
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleSaveCurrentEnvironment
	#_saveCurrentEnvironment.
	assembler
		clearSafeRintegerBit;
		pushE;
		popT;
		storeTinRindex: 1;
		setSafeRintegerBit
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleSetTIBValue
	#_setThreadInformationBlockValue:.
	assembler
		convertRtoNativeInteger;
		storeTIBatRwithA
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleSetThreadValue
	| nonInteger |
	#_setThreadValue:.
	nonInteger := assembler labeledIntegerNativizationOfR.
	assembler
		storeAinThreadVariableAtIndexR;
		convertRtoSmallInteger.
	assembler @ nonInteger
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleSmallIntegerByteAt
	| nonInteger |
	#_smallIntegerByteAt:.
	nonInteger := assembler labeledIntegerNativizationOfA.
	assembler
		convertRtoNativeInteger;
		pushR;
		loadZeroExtendByteRwithSPatA;
		convertRtoSmallInteger;
		popA;
		@ nonInteger
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleStoreDoubleResult
	#_storeDoubleResult.
	assembler storeDoubleResultInRindirect
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleStoreFloatStatusInto
	#_readStatusOn:.
	assembler storeMXCSRintoA
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleTestSmallInteger
	| integer |
	#_isSmallInteger.
	integer := assembler newLabel.
	assembler
		testRintegerBit;
		loadRwithTrue;
		shortJumpIfNotZeroTo: integer;
		loadRwithFalse;
		@ integer
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleThisContext
	#_thisContext.
	assembler loadRwithFP setRintegerBit
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleTimesTwoPower
	#_timesTwoPower:.
	assembler clearFPUFlags scaleFloatOnRWithA clearFPUFlags
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleTransferControlDiscardingLastArgTo
	#_transferControlDiscardingLastArgTo:.
	assembler
		restoreCallerFrame;
		popSPindirect;
		loadMwithA;
		jumpToMindex: 1
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleTransferControlTo
	#_transferControlTo:.
	assembler restoreCallerFrame; loadMwithA; jumpToMindex: 1
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleULargeAtOffset
	| overflow1 overflow2 end |
	#_uLargeAtOffset:.
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

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleULargeAtOffsetInto
	#_uLargeAtOffset:into:.
	assembler
		convertAtoNativeInteger;
		loadAwithRoffsetAtA;
		storeAinTindex: 1;
		loadRwithT
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleULargeAtOffsetPut
	| end notSmall |
	#_uLargeAtOffset:put:.
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

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleULongAtOffset
	| overflow1 overflow2 end |
	#_uLongAtOffset:.
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

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleULongAtOffsetInto
	#_uLongAtOffset:into:.
	assembler
		convertAtoNativeInteger;
		loadLongRwithRatOffsetA;
		storeRinTindex: 1;
		loadRwithT
! !

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleULongAtOffsetPut
	| end oop |
	#_uLongAtOffset:put:.
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

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleUShortAtOffsetPut
	| end notSmall |
	#_uShortAtOffset:put:.
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

!InlineMessageLinker methodsFor: 'private - assemble' stamp: 'KenD 9/26/2022 12:32:24'!
assembleZeroSlots
	#_zeroSlots:.
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

!InlineMessageLinker methodsFor: 'nativizing' stamp: 'KenD 9/26/2022 12:32:24'!
emitSend: aSymbol using: anAssembler
	| arity selector | 
	assembler := anAssembler.
	arity := aSymbol arity. 
	arity > 2 ifTrue: [assembler pop: assembler regS].
	arity > 1 ifTrue: [assembler pop: assembler regT].
	arity > 0 ifTrue: [assembler pop: assembler regA].
	self ASSERT: arity <= 3 .
	selector := map at: aSymbol.
	self perform: selector
! !

!InlineMessageLinker methodsFor: 'nativizing' stamp: 'KenD 9/26/2022 12:32:24'!
emitSendDebuggable: aSymbol using: anAssembler
	self emitSend: aSymbol using: anAssembler 
! !

!InlineMessageLinker methodsFor: 'initialization' stamp: 'KenD 9/26/2022 12:32:24'!
initialize
	map := Dictionary new.
	self class supported do:[:each|map add: each].
	self filter: map keys asIdentitySet

	"
	InlineMessageLinker new
	"

! !

!InlineMessageLinker class methodsFor: 'private' stamp: 'KenD 9/26/2022 12:32:24'!
supported
	| selectors |
	selectors := self organization selectorsFor: #'private - assemble'.
	^selectors collect: [:selector | | cm key |
		cm := self >> selector.
		key := cm literals detect: [:each | each isSymbol and:[each first == $_ ]].
		key -> selector]. 

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

!NativizationEnvironment methodsFor: 'initialization' stamp: 'KenD 9/26/2022 12:35:21'!
initialize
	busy := false.
	optimizedMethods := OrderedCollection new.
	invokedMethods := OrderedCollection new.
	inlinedMethods := OrderedCollection new.
	messageLinker := CompositeMessageLinker new.
	messageLinker add: InlineMessageLinker new.
	globals := Array new: self class globalNames size.
	self
		initializeGlobals;
		inlinedMethods: self class inlinedMethods;
		invokedMethods: self class invokedMethods;
		optimizedMethods: self class optimizedMethods
! !

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

!NativizationEnvironment class methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:21'!
methodSubset: aDictionary
	| result |
	result := OrderedCollection new.
	aDictionary keysAndValuesDo: [ :species :selectors | 
		selectors collect: [:sel | | m | species >> sel ifNil: [self ASSERT: false] ] into: result].
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

!NativizationPlatform methodsFor: 'initialization' stamp: 'KenD 9/28/2022 11:29:49'!
abi: anABI
	self assert: abi isNil.
	self assert: anABI notNil.

	abi := anABI.
! !

!NativizationPlatform methodsFor: 'initialization' stamp: 'KenD 9/26/2022 12:35:44'!
codeGeneratorClass: aClass
	self ASSERT: codeGeneratorClass isNil.
	self ASSERT: aClass notNil.

	codeGeneratorClass := aClass.
! !

!NativizationPlatform methodsFor: 'initialization' stamp: 'KenD 9/26/2022 12:35:44'!
initialize
	"super initialize.   -- commented since inherited method does nothing"
! !

!NativizationPlatform methodsFor: 'initialization' stamp: 'KenD 9/26/2022 12:35:44'!
name: aString
	self ASSERT: name isNil.
	self ASSERT: aString notNil.

	name := aString.
! !

!NativizationPlatform methodsFor: 'initialization' stamp: 'KenD 9/26/2022 12:35:44'!
wordSize: anInteger
	self ASSERT: wordSize isNil.
	self ASSERT:(anInteger == 8 or:[ anInteger == 4]).

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

!NativizationPlatform methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:44'!
abi
	self ASSERT: abi notNil.  
	^ abi
! !

!NativizationPlatform methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:44'!
name
	self ASSERT: name notNil.
	^ name
! !

!NativizationPlatform methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:44'!
wordSize
	self ASSERT: wordSize notNil.
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

!NativizationPlatform class methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:35:44'!
host
	"Return platform for the machine this code is running on."

	| host |

	host := Smalltalk host.
	host = 'x86_64-linux-gnu' ifTrue:[ ^ self x86_64_linux_gnu ].
	host = 'x86_64-darwin' ifTrue:[ ^ self x86_64_darwin ].
	host = 'x86_64-win32' ifTrue:[ ^self x86_64_win32 ].

	host = 'riscv64-linux-gnu' ifTrue:[ ^ self riscv64_linux_gnu ].

	self error:'Unssuported host: ', host.
! !

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

!SExpressionNativizer class methodsFor: 'instance creation' stamp: 'KenD 9/26/2022 12:36:28'!
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

!ABI methodsFor: 'unclassified' stamp: 'KenD 9/26/2022 12:37:49'!
is32bits
	^self bits = 32
! !

!ABI methodsFor: 'unclassified' stamp: 'KenD 9/26/2022 12:37:49'!
is64bits
	^self bits = 64
! !

!RiscV64ABI methodsFor: 'registers - IR' stamp: 'KenD 9/27/2022 10:44:26'!
regA

	^RegA! !

!RiscV64ABI methodsFor: 'registers - IR' stamp: 'KenD 9/27/2022 10:44:41'!
regE

	^RegE! !

!RiscV64ABI methodsFor: 'registers - IR' stamp: 'KenD 9/27/2022 10:44:51'!
regFP

	^RegFP! !

!RiscV64ABI methodsFor: 'registers - IR' stamp: 'KenD 9/27/2022 10:45:04'!
regFalse

	^RegFalse! !

!RiscV64ABI methodsFor: 'registers - IR' stamp: 'KenD 9/27/2022 10:45:23'!
regG

	^RegG! !

!RiscV64ABI methodsFor: 'registers - IR' stamp: 'KenD 9/27/2022 13:11:47'!
regIP

	self shouldNotImplement ! !

!RiscV64ABI methodsFor: 'registers - IR' stamp: 'KenD 9/27/2022 10:46:09'!
regM

	^RegM! !

!RiscV64ABI methodsFor: 'registers - IR' stamp: 'KenD 9/27/2022 13:12:33'!
regNextIP
	"This is used to synthesize a code jump target address"
	^ RegNextIP! !

!RiscV64ABI methodsFor: 'registers - IR' stamp: 'KenD 9/27/2022 10:46:22'!
regNil

	^RegNil! !

!RiscV64ABI methodsFor: 'registers - IR' stamp: 'KenD 9/27/2022 10:46:34'!
regR

	^RegR! !

!RiscV64ABI methodsFor: 'registers - IR' stamp: 'KenD 9/27/2022 10:46:54'!
regS

	^RegS! !

!RiscV64ABI methodsFor: 'registers - IR' stamp: 'KenD 9/27/2022 10:47:09'!
regSP

	^RegSP! !

!RiscV64ABI methodsFor: 'registers - IR' stamp: 'KenD 9/27/2022 10:47:25'!
regT

	^RegT! !

!RiscV64ABI methodsFor: 'registers - IR' stamp: 'KenD 9/27/2022 13:07:47'!
regTrue

	^RegTrue! !

!RiscV64ABI methodsFor: 'registers - IR' stamp: 'KenD 9/27/2022 13:07:59'!
regV

	^RegV! !

!RiscV64ABI methodsFor: 'registers - IR' stamp: 'KenD 9/27/2022 13:08:17'!
regX0

	^RegX0! !

!RiscV64ABI methodsFor: 'registers - IR' stamp: 'KenD 9/27/2022 13:08:27'!
regX1

	^RegX1! !

!RiscV64ABI methodsFor: 'accessing' stamp: 'KenD 9/26/2022 16:41:42'!
bits
	"Pointers are 8 bytes"
	^ 64! !

!RiscV64ABI methodsFor: 'accessing' stamp: 'KenD 9/26/2022 16:42:07'!
wordSize
	"Pointers are 8 bytes"
	^ 8! !

!RiscV64ABI methodsFor: 'accessing' stamp: 'KenD 9/26/2022 16:42:51'!
wordSizeShift

	^ 3
! !

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

!Assembler methodsFor: 'operations - arithmetic' stamp: 'KenD 9/26/2022 12:38:17'!
callIndirectA
	| memref |
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

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadAwithRoffsetAtA
	| memref |
	memref := codegen memRef
				base: codegen regR;
				index: codegen regA;
				scale: 1.
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

!Assembler methodsFor: 'loading' stamp: 'KenD 9/26/2022 12:38:17'!
loadRwithRatOffsetA
	| memref |
	memref := codegen memRef
				base: codegen regR;
				index: codegen regA;
				scale: 1.
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

!CodeGenerator methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:38:32'!
addressBitSize
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

!CodeGenerator methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:38:32'!
wordSize: anInteger
	self ASSERT: anInteger == 8.
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

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 9/26/2022 12:38:32'!
memRef16
	"Return clean instance of memory reference."

	^ self memRef length: 16; yourself

! !

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 9/26/2022 12:38:32'!
memRef16: baseReg offset: offsetReg
	^ self memRef16
		base: baseReg;
		index: offsetReg;
		scale: 1;
		yourself
! !

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 9/26/2022 12:38:32'!
memRef16: baseReg offsetImm: offsetImm
	^ self memRef16
		base: baseReg;
		displacement: offsetImm;
		yourself
! !

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 9/26/2022 12:38:32'!
memRef32
	"Return clean instance of memory reference."

	^ self memRef length: 32; yourself

! !

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 9/26/2022 12:38:32'!
memRef32: baseReg index: indexReg
	^ self memRef32 
		base: baseReg; 
		displacement: -4;
		index: indexReg;
		scale: 4;
		yourself

! !

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 9/26/2022 12:38:32'!
memRef32: baseReg indexImm: indexImm
	^ self memRef32 
		base: baseReg; 
		displacement: (indexImm - 1) * 4;
		yourself

! !

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 9/26/2022 12:38:32'!
memRef32: baseReg offset: offsetReg
	^ self memRef32
		base: baseReg;
		index: offsetReg;
		scale: 1;
		yourself
! !

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 9/26/2022 12:38:32'!
memRef64
	"Return clean instance of memory reference."

	^ self memRef length: 64; yourself

! !

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 9/26/2022 12:38:32'!
memRef64: baseReg indexImm: indexImm
	^ self memRef64
		base: baseReg;
		displacement: (indexImm - 1) * 8;
		yourself
! !

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 9/26/2022 12:38:32'!
memRef8
	"Return clean instance of memory reference."

	^ self memRef length: 8; yourself

! !

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 9/26/2022 12:38:32'!
memRef8: baseReg index: indexReg
	^ self memRef8 
		base: baseReg; 
		displacement: -1;
		index: indexReg;
		scale: 1;
		yourself

! !

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 9/26/2022 12:38:32'!
memRef8: baseReg indexImm: indexImm
	^ self memRef8
		base: baseReg; 
		displacement: (indexImm - 1);
		yourself

! !

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 9/26/2022 12:38:32'!
memRef: baseReg index: indexRef
	^ self memRef 
		base: baseReg; 
		displacement: self addressSize negated;
		index: indexRef;
		scale: self addressSize;
		yourself

! !

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 9/26/2022 12:38:32'!
memRef: baseReg index: indexRef offsetImm: anInteger
	^ self memRef 
		base: baseReg; 
		displacement: anInteger;
		index: indexRef;
		scale: self addressSize;
		yourself

! !

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 9/26/2022 12:38:32'!
memRef: baseReg indexImm: indexImm
	^ self memRef 
		base: baseReg; 
		displacement: (indexImm - 1) * self addressSize;
		yourself

! !

!CodeGenerator methodsFor: 'memory' stamp: 'KenD 9/26/2022 12:38:32'!
memRef: baseReg offset: indexReg
	^ self memRef
		base: baseReg;
		index: indexReg;
		scale: 1;
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

!RISCCodeGenerator methodsFor: 'jumps' stamp: 'KenD 9/26/2022 12:39:12'!
push: srcReg
	| memref |
	memref := self memRef base: self regSP; displacement: -8.
	self
		store: srcReg intoMem: memref;
		subImm: wordSize from: self regSP 
! !

!RISCCodeGenerator methodsFor: 'jumps' stamp: 'KenD 9/26/2022 12:39:12'!
pushImm: imm
	| memref |
	memref := self memRef base: self regSP; displacement: -8.
	self moveImm: imm to: self regV;
		store: self regV intoMem: memref;
		subImm: wordSize from: self regSP 
! !

!RISCCodeGenerator methodsFor: 'jumps' stamp: 'KenD 9/26/2022 12:39:12'!
subImm: anInteger from: srcAndDstReg
	self addImm: anInteger negated to: srcAndDstReg

! !

!RV64CodeGenerator class methodsFor: 'instance creation' stamp: 'KenD 9/27/2022 13:46:16'!
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

!RelocatableBuffer methodsFor: 'writing' stamp: 'KenD 9/26/2022 12:39:25'!
nextLargePut: large
	stream nextLargePut: large

! !

!RelocatableBuffer methodsFor: 'writing' stamp: 'KenD 9/26/2022 12:39:25'!
nextLongPut: long
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

!RelocatableBuffer methodsFor: 'writing' stamp: 'KenD 9/26/2022 12:39:25'!
nextULargePut: large
	stream nextULargePut: large

! !

!RelocatableBuffer methodsFor: 'writing' stamp: 'KenD 9/26/2022 12:39:25'!
nextULongPut: long
	stream nextULongPut: long
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

!RelocationFixup methodsFor: 'accessing' stamp: 'KenD 9/26/2022 12:39:39'!
addressSize
	^4
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

!RelocationFixup methodsFor: 'services' stamp: 'KenD 9/26/2022 12:39:39'!
patch: buffer with: solver
	| delta address |
	address := solver resolveLabel: target.
	self ASSERT: address notNil.
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

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 9/28/2022 13:23:46'!
encodeClosureElements: aBlockNode
	| scope parent |
	scope := aBlockNode scope.
	parent := aBlockNode realParent.
	^Array streamContents: [:s |
		scope capturesSelf ifTrue: [ s nextPut: Self ].
		scope capturedEnvironments do: [:e | | index |
			e == parent ifTrue: [s nextPut: Environment] ifFalse: [
				index := aBlockNode environmentIndexOf: e.
				self ASSERT: index notNil.
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

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 9/28/2022 13:23:46'!
nextLiteralPut: anObject
	| index |
	index := method
		indexOf: anObject
		ifAbsent: [ self ASSERT: false ].
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

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 9/28/2022 13:23:46'!
nextSymbolPut: aSymbol
	| index |
	index := method
		indexOf: aSymbol asSymbol
		ifAbsent: [ self ASSERT: false ].
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

!AstcodeEncoder methodsFor: 'visiting' stamp: 'KenD 9/28/2022 13:23:46'!
visitParseNode: aParseNode
	^self ASSERT: false
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

!AstcodeDecoder methodsFor: 'accessing' stamp: 'KenD 9/28/2022 13:22:49'!
builder: aRuntime
	builder := aRuntime
! !

!AstcodeDecoder methodsFor: 'accessing' stamp: 'KenD 9/28/2022 13:22:49'!
method: aMethod
	method := aMethod
! !

!AstcodeDecoder methodsFor: 'accessing' stamp: 'KenD 2/24/2021 11:41:43'!
next 

	^stream next! !

!AstcodeDecoder methodsFor: 'accessing' stamp: 'KenD 9/28/2022 13:22:49'!
stream: aStream
	stream := aStream
! !

!AstcodeDecoder methodsFor: 'initialization' stamp: 'KenD 2/24/2021 11:39:27'!
initialize 
	nodeTypes := Dictionary new: 40.
	bindingTypes := Dictionary new: 20.
	nodeTypes
		at: AssignmentId put: SAssignment;
		at: BlockId put: SBlock;
		at: CascadeId put: SCascade;
		at: LiteralId put: SLiteral;
		at: IdentifierId put: SIdentifier;
		at: MessageId put: SMessage;
		at: ReturnId put: SReturn;
		at: LoadRwithSelfId put: LoadRwithSelf;
		at: LoadAwithSelfId put: LoadAwithSelf;
		at: LoadRwithNilId put: LoadRwithNil;
		at: LoadAwithNilId put: LoadAwithNil;
		at: LoadRwithFalseId put: LoadRwithFalse;
		at: LoadAwithFalseId put: LoadAwithFalse;
		at: LoadRwithTrueId put: LoadRwithTrue;
		at: LoadAwithTrueId put: LoadAwithTrue;
		at: LoadRwithArgumentId put: LoadRwithArgument;
		at: LoadAwithArgumentId put: LoadAwithArgument;
		at: LoadRwithTemporaryId put: LoadRwithTemporary;
		at: LoadAwithTemporaryId put: LoadAwithTemporary;
		at: LoadRwithInstVarId put: LoadRwithInstVar;
		at: LoadAwithInstVarId put: LoadAwithInstVar;
		at: LoadAwithGlobalId put: LoadAwithGlobal;
		at: LoadAwithClassVarId put: LoadAwithClassVar;
		at: LoadAwithPoolVarId put: LoadAwithPoolVar;
		at: LoadAwithConstPoolId put: LoadAwithConstPoolVar;
		at: LoadRvisitingReceiverId put: LoadRvisitingReceiver;
		at: LoadAvisitingArgumentId put: LoadAvisitingArgument;
		"		at: LoadRwithLiteralId put: LoadRwithLiteral;"
			at: LoadAwithLiteralId put: LoadAwithLiteral;
		at: EnsureRisSmallIntegerId put: EnsureRSmallInteger;
		at: EnsureAisSmallIntegerId put: EnsureASmallInteger;
		at: PushRid put: PushRopcode;
		at: PopRid put: PopRopcode.
	bindingTypes
		at: NilId put: SNilBinding;
		at: TrueId put: STrueBinding;
		at: FalseId put: SFalseBinding;
		at: ArgumentId put: SArgumentBinding;
		at: TemporaryId put: STemporaryBinding;
		at: SelfId put: SSelfBinding;
		at: SuperId put: SSuperBinding;
		at: InstVarId put: SInstVarBinding;
		at: ClassVarId put: SClassVarBinding;
		at: GlobalValueId put: SGlobalBinding;
		at: GlobalClassId put: SClassBinding;
		at: PoolVarId put: SPoolVarBinding;
		at: ConstantPoolId put: SConstantPoolBinding! !

!AstcodeDecoder methodsFor: 'initialization' stamp: 'KenD 9/28/2022 13:22:49'!
nextBoolean
	^ stream next = 1
! !

!AstcodeDecoder methodsFor: 'initialization' stamp: 'KenD 9/28/2022 13:22:49'!
nextInteger
	| value |
	value := stream next.
	value = 16r80
		ifTrue: [ ^ stream int64 ].
	^ value <= 127
		ifTrue: [ value ]
		ifFalse: [ value - 16r100 ]
! !

!AstcodeDecoder methodsFor: 'initialization' stamp: 'KenD 9/28/2022 13:22:49'!
nextUnsignedInteger
	| value |
	value := self nextByte.
	^value < 128
		ifTrue: [value]
		ifFalse: [value - 128 + (self nextUnsignedInteger bitShift: 7)]
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 9/28/2022 13:22:49'!
bindingTypeOf: id
	^ BindingTypes at: id
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 9/28/2022 13:22:49'!
decodeArgument
	^ SArgumentBinding new
		index: self nextInteger;
		environment: self nextEnvironment
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 9/28/2022 13:22:49'!
decodeAssignment
	| assignment assignees |
	assignment := SAssignment new.
	
	assignees := self nextExpressionArray.
	assignment expression: self nextExpression.
	assignees do: [ :identifier | assignment assign: identifier ].
	^ assignment
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 9/28/2022 13:22:49'!
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

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 9/28/2022 13:22:49'!
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

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 9/28/2022 13:22:49'!
decodeCascadeMessage
	| selector arguments |
	selector := self nextSymbol.
	arguments := self nextExpressionArray.
	^ SCascadeMessage new
		selector: selector;
		arguments: arguments
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 9/28/2022 13:22:49'!
decodeDynamicVar
	^ SDynamicBinding new name: self nextSymbol
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 9/28/2022 13:22:49'!
decodeIdentifier
	| type binding |
	type := self bindingTypeOf: self nextInteger.
	binding := type decodeUsing: self.
	^ SIdentifier new binding: binding
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 9/28/2022 13:22:49'!
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

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 9/28/2022 13:22:49'!
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

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 9/28/2022 13:22:49'!
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

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 9/28/2022 13:22:49'!
decodeNestedDynamicVar
	^ SNestedDynamicBinding new
		name:
			self nextSymbol.

! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 9/28/2022 13:22:49'!
decodeReturn
	| expression local |
	local := self nextBoolean.
	expression := self nextExpression.
	^ SReturn new
		local: local;
		expression: expression
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 9/28/2022 13:22:49'!
decodeTemporary
	^ STemporaryBinding new
		index: self nextInteger;
		environment: self nextEnvironment
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 9/28/2022 13:22:49'!
nextArray
	| count |
	count := self nextInteger.
	^ stream next: count
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 9/28/2022 13:22:49'!
nextEnvironment
	| value |
	value := self nextInteger.
	^ value !!= -2
		ifTrue: [ value ]
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 9/28/2022 13:22:49'!
nextExpression
	| type |
	type := self nodeTypeOf: stream next.
	^type decodeUsing: self.

! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 9/28/2022 13:22:49'!
nextExpressionArray
	| count |
	count := self nextInteger.
	^(1 to: count) collect: [ :arg | self nextExpression ]
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 9/28/2022 13:22:49'!
nextSymbol
	| index |
	index := self nextInteger.
	^ self literalAt: index
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 9/28/2022 13:22:49'!
nextSymbolOrNil
	| index |
	index := self nextInteger.
	^index !!= 0 ifTrue: [ self literalAt: index]
! !

!AstcodeDecoder methodsFor: 'public' stamp: 'KenD 9/28/2022 13:22:49'!
nodeTypeOf: id
	^NodeTypes at: id
! !

!AstcodeDecoder methodsFor: 'unclassified' stamp: 'KenD 9/28/2022 13:22:49'!
literalAt: anInteger
	^ builder ifNil: [method at: anInteger] ifNotNil: [builder method: method literalAt: anInteger]
! !

!AstcodeDecoder methodsFor: 'unclassified' stamp: 'KenD 9/28/2022 13:22:49'!
nextLiteralInteger
	| value |
	value := self nextInteger.
	^ builder
		ifNil: [ value ]
		ifNotNil: [ builder newInteger: value ]
! !

!AstcodeDecoder class methodsFor: 'class initialization' stamp: 'KenD 9/28/2022 13:22:49'!
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

!AstcodeDecoder class methodsFor: 'instance creation' stamp: 'KenD 9/28/2022 13:22:49'!
new
	"return an initialized instance"

	^ self basicNew initialize.

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

!DmrObjectFormat methodsFor: 'testing' stamp: 'KenD 3/2/2021 13:35:01'!
isArrayed: anObject 

	^ (self flagsOf: anObject) anyMask: IsArrayed! !

!DmrObjectFormat methodsFor: 'testing' stamp: 'KenD 3/2/2021 13:35:16'!
isBytes: anObject 

	^ ((self flagsOf: anObject) anyMask: IsBytes)! !

!DmrObjectFormat methodsFor: 'testing' stamp: 'KenD 3/2/2021 13:35:25'!
isInteger: oid 

	^oid odd! !

!DmrObjectFormat methodsFor: 'testing' stamp: 'KenD 3/2/2021 13:35:34'!
isLarge: anObject 

	^(self isSmall: anObject) not! !

!DmrObjectFormat methodsFor: 'testing' stamp: 'KenD 3/2/2021 13:35:46'!
isNamed: anObject 

	^ (self flagsOf: anObject) anyMask: IsNamed! !

!DmrObjectFormat methodsFor: 'testing' stamp: 'KenD 3/2/2021 13:35:59'!
isSmall: oid 

	^ (self flagsOf: oid) anyMask: IsSmall! !

!DmrObjectFormat methodsFor: 'testing' stamp: 'KenD 3/2/2021 13:36:09'!
labelFor: oid 

	^oid hex! !

!DmrObjectFormat methodsFor: 'testing' stamp: 'KenD 3/2/2021 13:36:19'!
largeSizeOf: oid 

	^ storage uint32of: oid atOffset: LargeSizeOffset! !

!DmrObjectFormat methodsFor: 'accessing' stamp: 'KenD 3/2/2021 13:33:26'!
behaviorOf: oid 

	^ storage uint32of: oid atOffset: BehaviorOffset! !

!DmrObjectFormat methodsFor: 'accessing' stamp: 'KenD 3/2/2021 13:33:48'!
bytesOf: oid count: size 
	
	^ storage bytesAt: oid sized: size! !

!DmrObjectFormat methodsFor: 'accessing' stamp: 'KenD 3/2/2021 13:34:01'!
classOf: anObjectHandle 
	| oid class behavior handle |
	oid := anObjectHandle oid.
	oid odd ifTrue: [ class := storage classNamed: 'SmallInteger'.
			^ (anObjectHandle runtime handleOn: class) mirror asClassMirror ].
	behavior := self behaviorOf: oid.
	handle := anObjectHandle runtime handleOn: behavior.
	^ handle mirror asBehaviorMirror instanceClass! !

!DmrObjectFormat methodsFor: 'accessing' stamp: 'KenD 3/2/2021 13:34:16'!
flagsOf: anObject 
	^ storage uint8of: anObject atOffset: FlagsOffset! !

!DmrObjectFormat methodsFor: 'accessing' stamp: 'KenD 3/2/2021 13:34:27'!
integerOf: oid 
	| shifted complement |
	self assert: oid odd.
	shifted := oid bitShift: -1. 
	complement := 1 bitShift: storage wordSize * 8 - 1.
	^ oid >= complement
		ifTrue: [ shifted - complement ]
		ifFalse: [ shifted ]! !

!DmrObjectFormat methodsFor: 'accessing' stamp: 'KenD 3/2/2021 13:38:11'!
sizeOf: oid 

	^ (self isSmall: oid)
		ifTrue: [ self smallSizeOf: oid ]
		ifFalse: [ self largeSizeOf: oid ]! !

!DmrObjectFormat methodsFor: 'accessing' stamp: 'KenD 3/2/2021 13:38:26'!
slotOf: base at: index 

	^ storage uint64atOffset: base + (8 * (index - 1))! !

!DmrObjectFormat methodsFor: 'accessing' stamp: 'KenD 3/2/2021 13:38:42'!
smallSizeOf: oid 

	^ storage uint8of: oid atOffset: SizeOffset! !

!DmrObjectFormat methodsFor: 'accessing' stamp: 'KenD 3/2/2021 13:38:54'!
stringOf: oid count: anInteger 

	^storage stringAt: oid sized: anInteger! !

!DmrObjectFormat methodsFor: 'printing' stamp: 'KenD 3/2/2021 13:37:05'!
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
		nextPut: $]
! !

!DmrObjectFormat methodsFor: 'printing' stamp: 'KenD 3/2/2021 13:37:40'!
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
		nextPut: $)! !

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

!WriteStream methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 16:59:00'!
nextLongPut: anInteger
	| unsigned |
	unsigned _ anInteger < 0
		ifTrue: [ anInteger + (1 << 32) ]
		ifFalse: [ anInteger ].
	self nextULongPut: unsigned.! !

!WriteStream methodsFor: '*powerlang-core' stamp: 'KenD 6/2/2021 16:59:13'!
nextULongPut: anInteger 

	1 to: 4 do: [ :i | 
		| bi |
		bi := anInteger byteAt: i.
		self nextPut: bi ]! !
InlineMessageLinkerFlags initialize!
SendSiteFlags initialize!
SCompiledMethodFlags initialize!
AstBindingTypes initialize!
AstNodeTypes initialize!
ClosureElementTypes initialize!
SExpressionTypes initialize!
ObjectHeaderMasks initialize!
ObjectHeaderOffsets initialize!
CharacterConstants initialize!
OperandTypeFlags initialize!
RegistersRISCV initialize!
Assembler initialize!
AstcodeDecoder initialize!
