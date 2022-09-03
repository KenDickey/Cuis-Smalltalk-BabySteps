'From Cuis 5.0 [latest update: #4579] on 11 May 2021 at 2:26:36 pm'!
'Description RISC-V Instruction opcodes for RV64G'!
!provides: 'RISC5-Instructions' 1 23!
SystemOrganization addCategory: #'RISC5-Instructions'!


!classDefinition: #RISC5Regs category: #'RISC5-Instructions'!
SharedPool subclass: #RISC5Regs
	instanceVariableNames: ''
	classVariableNames: 'Arg0 Arg1 Arg2 Arg3 Arg4 Arg5 Arg6 Arg7 F0 F1 F10 F11 F12 F13 F14 F15 F16 F17 F18 F19 F2 F20 F21 F22 F23 F24 F25 F26 F27 F28 F29 F3 F30 F31 F4 F5 F6 F7 F8 F9 FArg0 FArg1 FArg2 FArg3 FArg4 FArg5 FArg6 FArg7 FSav0 FSav1 FSav10 FSav11 FSav2 FSav3 FSav4 FSav5 FSav6 FSav7 FSav8 FSav9 FTmp0 FTmp1 FTmp10 FTmp11 FTmp2 FTmp3 FTmp4 FTmp5 FTmp6 FTmp7 FTmp8 FTmp9 FramePtr GlobalPtr ReturnAddr Sav0 Sav10 Sav11 Sav2 Sav3 Sav4 Sav5 Sav6 Sav7 Sav8 Sav9 StackPtr ThreadPtr Tmp0 Tmp1 Tmp2 Tmp3 Tmp4 Tmp5 Tmp6 X0 X1 X10 X11 X12 X13 X14 X15 X16 X17 X18 X19 X2 X20 X21 X22 X23 X24 X25 X26 X27 X28 X29 X3 X30 X31 X4 X5 X6 X7 X8 X9 Zero'
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RISC5Regs class' category: #'RISC5-Instructions'!
RISC5Regs class
	instanceVariableNames: ''!

!classDefinition: #RISC5Instructions category: #'RISC5-Instructions'!
Object subclass: #RISC5Instructions
	instanceVariableNames: 'destReg'
	classVariableNames: 'FRegs IRegs'
	poolDictionaries: 'RISC5Regs'
	category: 'RISC5-Instructions'!
!classDefinition: 'RISC5Instructions class' category: #'RISC5-Instructions'!
RISC5Instructions class
	instanceVariableNames: ''!

!classDefinition: #RV64B category: #'RISC5-Instructions'!
RISC5Instructions subclass: #RV64B
	instanceVariableNames: 'regA regB immHi immLo'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64B class' category: #'RISC5-Instructions'!
RV64B class
	instanceVariableNames: ''!

!classDefinition: #RV64BEQ category: #'RISC5-Instructions'!
RV64B subclass: #RV64BEQ
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64BEQ class' category: #'RISC5-Instructions'!
RV64BEQ class
	instanceVariableNames: ''!

!classDefinition: #RV64BGE category: #'RISC5-Instructions'!
RV64B subclass: #RV64BGE
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64BGE class' category: #'RISC5-Instructions'!
RV64BGE class
	instanceVariableNames: ''!

!classDefinition: #RV64BGEU category: #'RISC5-Instructions'!
RV64B subclass: #RV64BGEU
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64BGEU class' category: #'RISC5-Instructions'!
RV64BGEU class
	instanceVariableNames: ''!

!classDefinition: #RV64BLT category: #'RISC5-Instructions'!
RV64B subclass: #RV64BLT
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64BLT class' category: #'RISC5-Instructions'!
RV64BLT class
	instanceVariableNames: ''!

!classDefinition: #RV64BLTU category: #'RISC5-Instructions'!
RV64B subclass: #RV64BLTU
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64BLTU class' category: #'RISC5-Instructions'!
RV64BLTU class
	instanceVariableNames: ''!

!classDefinition: #RV64BNE category: #'RISC5-Instructions'!
RV64B subclass: #RV64BNE
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64BNE class' category: #'RISC5-Instructions'!
RV64BNE class
	instanceVariableNames: ''!

!classDefinition: #RV64I category: #'RISC5-Instructions'!
RISC5Instructions subclass: #RV64I
	instanceVariableNames: 'sourceReg immediate12'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64I class' category: #'RISC5-Instructions'!
RV64I class
	instanceVariableNames: ''!

!classDefinition: #RV64ADDI category: #'RISC5-Instructions'!
RV64I subclass: #RV64ADDI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64ADDI class' category: #'RISC5-Instructions'!
RV64ADDI class
	instanceVariableNames: ''!

!classDefinition: #RV64ANDI category: #'RISC5-Instructions'!
RV64I subclass: #RV64ANDI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64ANDI class' category: #'RISC5-Instructions'!
RV64ANDI class
	instanceVariableNames: ''!

!classDefinition: #RV64EBREAK category: #'RISC5-Instructions'!
RV64I subclass: #RV64EBREAK
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64EBREAK class' category: #'RISC5-Instructions'!
RV64EBREAK class
	instanceVariableNames: ''!

!classDefinition: #RV64ECALL category: #'RISC5-Instructions'!
RV64I subclass: #RV64ECALL
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64ECALL class' category: #'RISC5-Instructions'!
RV64ECALL class
	instanceVariableNames: ''!

!classDefinition: #RV64ORI category: #'RISC5-Instructions'!
RV64I subclass: #RV64ORI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64ORI class' category: #'RISC5-Instructions'!
RV64ORI class
	instanceVariableNames: ''!

!classDefinition: #RV64SLLI category: #'RISC5-Instructions'!
RV64I subclass: #RV64SLLI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64SLLI class' category: #'RISC5-Instructions'!
RV64SLLI class
	instanceVariableNames: ''!

!classDefinition: #RV64SLTI category: #'RISC5-Instructions'!
RV64I subclass: #RV64SLTI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64SLTI class' category: #'RISC5-Instructions'!
RV64SLTI class
	instanceVariableNames: ''!

!classDefinition: #RV64SLTIU category: #'RISC5-Instructions'!
RV64I subclass: #RV64SLTIU
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64SLTIU class' category: #'RISC5-Instructions'!
RV64SLTIU class
	instanceVariableNames: ''!

!classDefinition: #RV64SRAI category: #'RISC5-Instructions'!
RV64I subclass: #RV64SRAI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64SRAI class' category: #'RISC5-Instructions'!
RV64SRAI class
	instanceVariableNames: ''!

!classDefinition: #RV64SRLI category: #'RISC5-Instructions'!
RV64I subclass: #RV64SRLI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64SRLI class' category: #'RISC5-Instructions'!
RV64SRLI class
	instanceVariableNames: ''!

!classDefinition: #RV64XORI category: #'RISC5-Instructions'!
RV64I subclass: #RV64XORI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64XORI class' category: #'RISC5-Instructions'!
RV64XORI class
	instanceVariableNames: ''!

!classDefinition: #RV64JAL category: #'RISC5-Instructions'!
RISC5Instructions subclass: #RV64JAL
	instanceVariableNames: 'bit31 bits21to30 bit20 bits12to19'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64JAL class' category: #'RISC5-Instructions'!
RV64JAL class
	instanceVariableNames: ''!

!classDefinition: #RV64JALR category: #'RISC5-Instructions'!
RISC5Instructions subclass: #RV64JALR
	instanceVariableNames: 'baseReg immedOffset'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64JALR class' category: #'RISC5-Instructions'!
RV64JALR class
	instanceVariableNames: ''!

!classDefinition: #RV64L category: #'RISC5-Instructions'!
RISC5Instructions subclass: #RV64L
	instanceVariableNames: 'immedOffset baseReg'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64L class' category: #'RISC5-Instructions'!
RV64L class
	instanceVariableNames: ''!

!classDefinition: #RV64LB category: #'RISC5-Instructions'!
RV64L subclass: #RV64LB
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64LB class' category: #'RISC5-Instructions'!
RV64LB class
	instanceVariableNames: ''!

!classDefinition: #RV64LBU category: #'RISC5-Instructions'!
RV64L subclass: #RV64LBU
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64LBU class' category: #'RISC5-Instructions'!
RV64LBU class
	instanceVariableNames: ''!

!classDefinition: #RV64LD category: #'RISC5-Instructions'!
RV64L subclass: #RV64LD
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64LD class' category: #'RISC5-Instructions'!
RV64LD class
	instanceVariableNames: ''!

!classDefinition: #RV64LH category: #'RISC5-Instructions'!
RV64L subclass: #RV64LH
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64LH class' category: #'RISC5-Instructions'!
RV64LH class
	instanceVariableNames: ''!

!classDefinition: #RV64LHU category: #'RISC5-Instructions'!
RV64L subclass: #RV64LHU
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64LHU class' category: #'RISC5-Instructions'!
RV64LHU class
	instanceVariableNames: ''!

!classDefinition: #RV64LW category: #'RISC5-Instructions'!
RV64L subclass: #RV64LW
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64LW class' category: #'RISC5-Instructions'!
RV64LW class
	instanceVariableNames: ''!

!classDefinition: #RV64LWU category: #'RISC5-Instructions'!
RV64L subclass: #RV64LWU
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64LWU class' category: #'RISC5-Instructions'!
RV64LWU class
	instanceVariableNames: ''!

!classDefinition: #RV64R category: #'RISC5-Instructions'!
RISC5Instructions subclass: #RV64R
	instanceVariableNames: 'regA regB'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64R class' category: #'RISC5-Instructions'!
RV64R class
	instanceVariableNames: ''!

!classDefinition: #RV64ADD category: #'RISC5-Instructions'!
RV64R subclass: #RV64ADD
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64ADD class' category: #'RISC5-Instructions'!
RV64ADD class
	instanceVariableNames: ''!

!classDefinition: #RV64AND category: #'RISC5-Instructions'!
RV64R subclass: #RV64AND
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64AND class' category: #'RISC5-Instructions'!
RV64AND class
	instanceVariableNames: ''!

!classDefinition: #RV64OR category: #'RISC5-Instructions'!
RV64R subclass: #RV64OR
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64OR class' category: #'RISC5-Instructions'!
RV64OR class
	instanceVariableNames: ''!

!classDefinition: #RV64SLL category: #'RISC5-Instructions'!
RV64R subclass: #RV64SLL
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64SLL class' category: #'RISC5-Instructions'!
RV64SLL class
	instanceVariableNames: ''!

!classDefinition: #RV64SLT category: #'RISC5-Instructions'!
RV64R subclass: #RV64SLT
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64SLT class' category: #'RISC5-Instructions'!
RV64SLT class
	instanceVariableNames: ''!

!classDefinition: #RV64SLTU category: #'RISC5-Instructions'!
RV64R subclass: #RV64SLTU
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64SLTU class' category: #'RISC5-Instructions'!
RV64SLTU class
	instanceVariableNames: ''!

!classDefinition: #RV64SRA category: #'RISC5-Instructions'!
RV64R subclass: #RV64SRA
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64SRA class' category: #'RISC5-Instructions'!
RV64SRA class
	instanceVariableNames: ''!

!classDefinition: #RV64SRL category: #'RISC5-Instructions'!
RV64R subclass: #RV64SRL
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64SRL class' category: #'RISC5-Instructions'!
RV64SRL class
	instanceVariableNames: ''!

!classDefinition: #RV64SUB category: #'RISC5-Instructions'!
RV64R subclass: #RV64SUB
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64SUB class' category: #'RISC5-Instructions'!
RV64SUB class
	instanceVariableNames: ''!

!classDefinition: #RV64XOR category: #'RISC5-Instructions'!
RV64R subclass: #RV64XOR
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64XOR class' category: #'RISC5-Instructions'!
RV64XOR class
	instanceVariableNames: ''!

!classDefinition: #RV64S category: #'RISC5-Instructions'!
RISC5Instructions subclass: #RV64S
	instanceVariableNames: 'baseReg immLo immHi'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64S class' category: #'RISC5-Instructions'!
RV64S class
	instanceVariableNames: ''!

!classDefinition: #RV64SB category: #'RISC5-Instructions'!
RV64S subclass: #RV64SB
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64SB class' category: #'RISC5-Instructions'!
RV64SB class
	instanceVariableNames: ''!

!classDefinition: #RV64SD category: #'RISC5-Instructions'!
RV64S subclass: #RV64SD
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64SD class' category: #'RISC5-Instructions'!
RV64SD class
	instanceVariableNames: ''!

!classDefinition: #RV64SH category: #'RISC5-Instructions'!
RV64S subclass: #RV64SH
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64SH class' category: #'RISC5-Instructions'!
RV64SH class
	instanceVariableNames: ''!

!classDefinition: #RV64SW category: #'RISC5-Instructions'!
RV64S subclass: #RV64SW
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64SW class' category: #'RISC5-Instructions'!
RV64SW class
	instanceVariableNames: ''!

!classDefinition: #RV64U category: #'RISC5-Instructions'!
RISC5Instructions subclass: #RV64U
	instanceVariableNames: 'immediate20'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64U class' category: #'RISC5-Instructions'!
RV64U class
	instanceVariableNames: ''!

!classDefinition: #RV64AUIPC category: #'RISC5-Instructions'!
RV64U subclass: #RV64AUIPC
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64AUIPC class' category: #'RISC5-Instructions'!
RV64AUIPC class
	instanceVariableNames: ''!

!classDefinition: #RV64LUI category: #'RISC5-Instructions'!
RV64U subclass: #RV64LUI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64LUI class' category: #'RISC5-Instructions'!
RV64LUI class
	instanceVariableNames: ''!

!classDefinition: #RISC5InstructionsTests category: #'RISC5-Instructions'!
TestCase subclass: #RISC5InstructionsTests
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'RISC5Regs'
	category: 'RISC5-Instructions'!
!classDefinition: 'RISC5InstructionsTests class' category: #'RISC5-Instructions'!
RISC5InstructionsTests class
	instanceVariableNames: ''!


!RV64B commentStamp: '<historical>' prior: 0!
Branch 

if (regA OP regB) branch to (PC+(immed12 << 1))

Instruction Pattern:
  [immedHi][regB][regA][func3][immLo][opcode] "regDest unused"!

!RV64BEQ commentStamp: '<historical>' prior: 0!
Branch on equal!

!RV64BGE commentStamp: '<historical>' prior: 0!
Branch if Greater or Equal (i.e. not LT)  Signed!

!RV64BGEU commentStamp: '<historical>' prior: 0!
Branch if Greater or Equal (i.e. not LT) UNSIGNED!

!RV64BLT commentStamp: '<historical>' prior: 0!
Branch if Less Than -- Signed!

!RV64BLTU commentStamp: '<historical>' prior: 0!
Branch if Less Than -- UNSIGNED!

!RV64BNE commentStamp: '<historical>' prior: 0!
Branch if Not Equal!

!RV64I commentStamp: '<historical>' prior: 0!
Immediate instructions

	destReg := regA OP immed12
	
Instruction Pattern:
  [immed12][sourceReg][func3][destReg][opcode]!

!RV64ADDI commentStamp: '<historical>' prior: 0!
Add Immediate
	destReg := sourceReg OP immediate12

Instruction Pattern:
  [immed12][sourceReg][func3][destReg][opcode]!

!RV64EBREAK commentStamp: '<historical>' prior: 0!
Environment Break -- Transfer control to debugger!

!RV64ECALL commentStamp: '<historical>' prior: 0!
Environment Call -- transfer control to OS!

!RV64SRAI commentStamp: '<historical>' prior: 0!
Shift Right Arithmatic Immediate!

!RV64JAL commentStamp: '<historical>' prior: 0!
Jump and Link; immediate

 regDest := PC+4; PC += (sign extended immediate20)

Instruction Pattern:
  [immed20][destReg][opcode]!

!RV64JALR commentStamp: '<historical>' prior: 0!
Jump and Link; Register

 regDest := PC+4; PC := regBase + immediate

Instruction Pattern:
  [immed12][baseReg][destReg][opcode]!

!RV64L commentStamp: '<historical>' prior: 0!
Load

 regDest := mem(size)At: [baseReg + immedOffset]

Instruction Pattern:
  [immedHi][regBase][func3][immLo][regDest][opcode]

Nota Bene: immediate12 value is split:
  immHi is upper 7 bits; immLo is lower 5 bits!

!RV64LB commentStamp: '<historical>' prior: 0!
load signed Byte into register!

!RV64LBU commentStamp: '<historical>' prior: 0!
load UNsigned Byte into register!

!RV64LD commentStamp: '<historical>' prior: 0!
load (8 byte) signed DoubleWord into register!

!RV64LH commentStamp: '<historical>' prior: 0!
load (2 byte) signed HalfWord into register!

!RV64LHU commentStamp: '<historical>' prior: 0!
load (2 byte) UNsigned HalfWord into register!

!RV64LW commentStamp: '<historical>' prior: 0!
load (4 byte) signed Word into register!

!RV64LWU commentStamp: '<historical>' prior: 0!
load (4 byte) UNsigned Word into register!

!RV64R commentStamp: '<historical>' prior: 0!
R => 3 Register opcode; Register to Register

  destReg := regA OP regB

Instruction Pattern:
  [func7][regB][regA][func3][destReg][opcode]!

!RV64OR commentStamp: '<historical>' prior: 0!
Inclusive OR {distinguish XOR)!

!RV64SLL commentStamp: '<historical>' prior: 0!
Shift Left Logical -- destReg := regA << regB
!

!RV64SLT commentStamp: '<historical>' prior: 0!
Set if Less Than (Signed): 
  if regA < regB then destReg := 1 else destReg := 0!

!RV64SLTU commentStamp: '<historical>' prior: 0!
Set if Less Than (Unsigned): 
  if regA < regB then destReg := 1 else destReg := 0!

!RV64SRA commentStamp: '<historical>' prior: 0!
Shift Right Arithmatic -- destReg := regA >> regB; most significant bit duplicated!

!RV64SRL commentStamp: '<historical>' prior: 0!
Shift Right Arithmatic -- destReg := regA >> regB!

!RV64XOR commentStamp: '<historical>' prior: 0!
eXclusive OR {distinguish OR)!

!RV64S commentStamp: '<historical>' prior: 0!
Store  -- "NB: 'destReg' used for 'sourceReg"

 mem(size)At: [baseReg + immedOffset] := regSource(size) 

Instruction Pattern:
  [immedHi][regSource][regBase][func3][immLo][opcode]!

!RV64SB commentStamp: '<historical>' prior: 0!
Store Byte!

!RV64SD commentStamp: '<historical>' prior: 0!
Store (8 Byte) Doubleword!

!RV64SH commentStamp: '<historical>' prior: 0!
Store (2 Byte) Halfword!

!RV64SW commentStamp: '<historical>' prior: 0!
Store (4 byte) Word !

!RV64AUIPC commentStamp: '<historical>' prior: 0!
Add Upper Immediate to PC

  regDest := PC + (immediate20 << 12)

Instruction Pattern:
  [immed20][regDest][opcode]!

!RV64LUI commentStamp: '<historical>' prior: 0!
Load Upper Immediate

  regDest := immediate20 << 12

Instruction Pattern:
  [immed20][regDest][opcode]!

!RISC5Regs class methodsFor: 'class initialization' stamp: 'KenD 5/3/2021 12:07:36'!
initialize
"
	self initialize
"
	"Register Encoding
	 Note the non-uniform name ordering.
	 See #RISC5Instructions class>>initialize"
 	 X0 := Zero := 0.
 	 X1 := ReturnAddr := 1.
	 X2 := StackPtr:= 2.
 	 X3 := GlobalPtr:= 3.
 	 X4 := ThreadPtr := 4.
 	 X5 :=  Tmp0 := 5.
 	 X6 :=  Tmp1 := 6.
 	 X7 :=  Tmp2 := 7.
 	 X8 :=  FramePtr := 8.
 	 X9 :=  Sav0 := 9.
	X10 :=  Arg0 :=  10.
	X11 :=  Arg1 := 11.
	X12 :=  Arg2 := 12.
	X13 :=  Arg3 := 13.
	X14 :=  Arg4 := 14.
	X15 :=  Arg5 := 15.
	X16 :=  Arg6 := 16.
	X17 :=  Arg7 := 17.
	X18 := Sav2 := 18.
	X19 := Sav3 := 19.
	X20 := Sav4 := 20.
	X21 := Sav5 := 21.
	X22 := Sav6 := 22.
	X23 := Sav7 := 23.
	X24 := Sav8 := 24.
	X25 := Sav9 := 25.
	X26 := Sav10 := 26.
	X27 := Sav11 := 27.
	X28 := Tmp3 := 28.
	X29 := Tmp4 := 29.
	X30 := Tmp5 := 30.
	X31 := Tmp6 := 31.
	
	 F0 := FTmp0 := 0.
	 F1 := FTmp1 := 1.
	 F2 := FTmp2 := 2.
	 F3 := FTmp3 := 3.
	 F4 := FTmp4 := 4.
	 F5 := FTmp5 := 5.
	 F6 := FTmp6 := 6.
	 F7 := FTmp7 := 7.
	 F8 := FSav0 := 8.
	 F9 := FSav1 := 9.
	F10 := FArg0 := 10.
	F11 := FArg1 := 11.
	F12 := FArg2 := 12.
	F13 := FArg3 := 13.
	F14 := FArg4 := 14.
	F15 := FArg5 := 15.
	F16 := FArg6 := 16.
	F17 := FArg7 := 17.
	F18 := FSav2 := 18.
	F19 := FSav3 := 19.
	F20 := FSav4 := 20.
	F21 := FSav5 := 21.
	F22 := FSav6 := 22.
	F23 := FSav7 := 23.
	F24 := FSav8 := 24.
	F25 := FSav9 := 25.
	F26 := FSav10 := 26.
	F27 := FSav11 := 27.
	F28 := FTmp8 := 28.
	F29 := FTmp9 := 29.
	F30 := FTmp10 := 30.
	F31 := FTmp11 := 31.
! !

!RISC5Instructions methodsFor: 'initialization' stamp: 'KenD 5/1/2021 08:48:23'!
destReg: regDest

	destReg := regDest ! !

!RISC5Instructions class methodsFor: 'accessing' stamp: 'KenD 5/3/2021 12:03:50'!
floatRegName: regIntEncoding
	"Float register name from 5 bit integer encoding"
	^FRegs at: regIntEncoding + 1! !

!RISC5Instructions class methodsFor: 'accessing' stamp: 'KenD 5/1/2021 08:46:37'!
opcode

	self subclassResponsibility ! !

!RISC5Instructions class methodsFor: 'accessing' stamp: 'KenD 5/3/2021 12:03:17'!
regName: regIntEncoding
	"Integer register name from 5 bit integer encoding"
	^IRegs at: regIntEncoding + 1! !

!RISC5Instructions class methodsFor: 'class initialization' stamp: 'KenD 5/3/2021 12:06:56'!
initialize
"
	self initialize.
"
	"Register Names at index+1; 
	  I.e. #Zero is register 0 at index 1.
	  Note the non-uniform name ordering.
	  See #RISC5Regs class>>initialize"
	IRegs := 
		#(Zero ReturnAddr 
		  StackPtr GlobalPtr ThreadPtr   
		  Tmp0 Tmp1 Tmp2 FramePtr Sav1 "Sav0 is FramePtr"
		  Arg0 Arg1 Arg2 Arg3 Arg4 Arg5 Arg6 Arg7
		  Sav2 Sav3 Sav4 Sav5 Sav6 Sav7 Sav8 Sav9 Sav10 Sav11
		  Tmp3 Tmp4 Tmp5 Tmp6).
	FRegs :=
		#(FTmp0 FTmp1 FTmp2 FTmp3 FTmp4 FTmp5 FTmp6 FTmp7
	 	  FSav0 FSav1  FArg0 FArg1
		  FArg2 FArg3 FArg4 FArg5 FArg6 FArg7 
		  FSav2 FSav3 FSav4 FSav5 FSav6 FSav7 FSav8 FSav9 FSav10 FSav11 
		  FTmp8 FTmp9 FTmp10 FTmp11).! !

!RV64B methodsFor: 'accessing' stamp: 'KenD 5/8/2021 07:11:01'!
func3

	self subclassResponsibility ! !

!RV64B methodsFor: 'accessing' stamp: 'KenD 5/8/2021 07:10:55'!
func7

	self shouldNotImplement ! !

!RV64B methodsFor: 'accessing' stamp: 'KenD 5/8/2021 07:12:58'!
instruction
" [immHi 25:31][baseReg 20:24][destReg 15:19][func3 12:14][immLo 7:11][opcode 6:0]"
	^(immHi << 25) 
	 + (regB << 20) "NB: really Source Reg"
	 + (regA << 15) 
	 + (self func3 << 12) 
	 + (immLo << 7) 
	 + self opcode! !

!RV64B methodsFor: 'accessing' stamp: 'KenD 5/8/2021 07:30:47'!
offset

	"Answer assembled immediate
	  Nota Bene: immed12 multiplied by 2"
	^ ((immHi << 5) + immLo) << 1 ! !

!RV64B methodsFor: 'accessing' stamp: 'KenD 5/8/2021 07:10:48'!
opName

	self subclassResponsibility ! !

!RV64B methodsFor: 'accessing' stamp: 'KenD 5/8/2021 07:11:47'!
opcode
	"Opcode for all S-type instructions"
	^2r1100011! !

!RV64B methodsFor: 'initialization' stamp: 'KenD 5/8/2021 07:08:15'!
regA: reg1 regB: reg2 immLo: lo mmHi: hi

	regA := reg1.
	regB := reg2.
	immLo := lo.
	immHi := hi
! !

!RV64B methodsFor: 'printing' stamp: 'KenD 5/8/2021 07:10:02'!
printString
	"E.g.: 'beq  r1,r2,offset' "
	^ self opName, '  ',
		(self class regName: regA), ', ',  "NB: 'destReg'  unused"
		(self class regName: regB ), ', 16r', 
		(self offset printStringBase: 16)! !

!RV64B class methodsFor: 'instance creation' stamp: 'KenD 5/8/2021 07:32:18'!
regA: reg1 regB: reg2 immediateOffset: immediate12

	"NB: immediate12 will be multiplied by 2 (<< 1)
	 when instruction executed and branch is taken"
	
	(immediate12 bitAnd: 16rFFF) = immediate12 
		ifFalse: [DomainError signal: 'too big for 12 bit immediate'].

	^self new 
			regA: reg1
			regB: reg2
			immLo: (immediate12 bitAnd: 2r000000011111) 
			immHi: ((immediate12 bitAnd: 2r111111100000) >> 5)! !

!RV64BEQ methodsFor: 'accessing' stamp: 'KenD 5/8/2021 07:15:03'!
func3

	^16r0! !

!RV64BEQ methodsFor: 'accessing' stamp: 'KenD 5/8/2021 07:14:45'!
opName

	"Branch if Equal"
	^'beq'! !

!RV64BGE methodsFor: 'accessing' stamp: 'KenD 5/8/2021 07:21:15'!
func3

	^16r5! !

!RV64BGE methodsFor: 'accessing' stamp: 'KenD 5/8/2021 07:21:09'!
opName

	^'bge'! !

!RV64BGEU methodsFor: 'accessing' stamp: 'KenD 5/8/2021 07:24:32'!
func3

	^16r7! !

!RV64BGEU methodsFor: 'accessing' stamp: 'KenD 5/8/2021 07:22:35'!
opName

	^'bgeU'! !

!RV64BLT methodsFor: 'accessing' stamp: 'KenD 5/8/2021 07:19:58'!
func3

	^16r4! !

!RV64BLT methodsFor: 'accessing' stamp: 'KenD 5/8/2021 07:19:33'!
opName

	^'blt'! !

!RV64BLTU methodsFor: 'accessing' stamp: 'KenD 5/8/2021 07:24:02'!
func3

	^16r4! !

!RV64BLTU methodsFor: 'accessing' stamp: 'KenD 5/8/2021 07:24:15'!
opName

	^'bltU'! !

!RV64BNE methodsFor: 'accessing' stamp: 'KenD 5/8/2021 07:17:07'!
func3

	^16r1! !

!RV64BNE methodsFor: 'accessing' stamp: 'KenD 5/8/2021 07:16:51'!
opName

	^'bne'! !

!RV64I methodsFor: 'initialization' stamp: 'KenD 5/3/2021 15:16:54'!
destReg: regDest regSource: reg1 imm12: immediateInt12

	super destReg: regDest .
	sourceReg := reg1.
	immediate12 := immediateInt12 ! !

!RV64I methodsFor: 'accessing' stamp: 'KenD 5/4/2021 11:38:20'!
func3

	self subclassResponsibility ! !

!RV64I methodsFor: 'accessing' stamp: 'KenD 5/4/2021 11:38:44'!
func7

	self subclassResponsibility ! !

!RV64I methodsFor: 'accessing' stamp: 'KenD 5/11/2021 14:15:19'!
instruction
	"[immed12 31:20][rSource1 19:15][func3 14:12][rd 11:7][opcode 6:0]"
	^(immediate12 << 20) 
	 + (sourceReg << 15) 
	 + (self func3 << 12) 
	 + (destReg << 7) 
	 + self opcode! !

!RV64I methodsFor: 'accessing' stamp: 'KenD 5/4/2021 11:30:49'!
opcode
	"Opcode for all I-type instructions"
	^2r0010011! !

!RV64I methodsFor: 'printing' stamp: 'KenD 5/3/2021 15:18:24'!
printString
	"E.g.: 'addi  rd,r1s,36' "
	^ self opName, '  ',
		(self class regName: destReg), ', ', 
		(self class regName: sourceReg), ', ', 
		'16r', (immediate12 printStringBase: 16).  "FIXME: 0x??"! !

!RV64I class methodsFor: 'instance creation' stamp: 'KenD 5/3/2021 15:25:13'!
regDest: destReg regSource: reg1 imm12: immediate12

	(immediate12 bitAnd: 16rFFF) = immediate12 
		ifFalse: [DomainError signal: 'too big for 12 bit immediate'].
		
	^self new destReg: destReg regSource: reg1  imm12: immediate12 ! !

!RV64ADDI methodsFor: 'accessing' stamp: 'KenD 5/3/2021 15:02:11'!
func3

	^16r0! !

!RV64ADDI methodsFor: 'accessing' stamp: 'KenD 5/3/2021 15:00:07'!
opName

	^'addI'! !

!RV64ANDI methodsFor: 'accessing' stamp: 'KenD 5/3/2021 16:15:29'!
func3

	^16r7! !

!RV64ANDI methodsFor: 'accessing' stamp: 'KenD 5/3/2021 16:15:46'!
opName

	^'andI'! !

!RV64EBREAK methodsFor: 'accessing' stamp: 'KenD 5/11/2021 14:01:07'!
func3

	^16r0! !

!RV64EBREAK methodsFor: 'accessing' stamp: 'KenD 5/11/2021 14:17:32'!
instruction
	"[1 :20][000zeros000][opcode 6:0]"
	^(1 << 20) 
	 + self opcode! !

!RV64EBREAK methodsFor: 'accessing' stamp: 'KenD 5/11/2021 14:01:41'!
opName

	^'ebreak'! !

!RV64EBREAK methodsFor: 'accessing' stamp: 'KenD 5/11/2021 14:02:03'!
opcode
	"Opcode for ecall&ebreak"
	^2r1110011! !

!RV64EBREAK methodsFor: 'initialization' stamp: 'KenD 5/11/2021 14:24:33'!
initialize

	super destReg: 0.
	sourceReg := 0.
	immediate12 := 1
! !

!RV64EBREAK methodsFor: 'printing' stamp: 'KenD 5/11/2021 14:25:03'!
printString

	^self opName ! !

!RV64EBREAK class methodsFor: 'instance creation' stamp: 'KenD 5/11/2021 14:18:58'!
regDest: destReg regSource: reg1 imm12: immediate12
		
	^self new destReg: 0 regSource: 0  imm12: 1 ! !

!RV64ECALL methodsFor: 'accessing' stamp: 'KenD 5/11/2021 13:58:49'!
func3

	^16r0! !

!RV64ECALL methodsFor: 'accessing' stamp: 'KenD 5/11/2021 14:16:03'!
instruction
	"[000][opcode 6:0]"
	^self opcode! !

!RV64ECALL methodsFor: 'accessing' stamp: 'KenD 5/11/2021 13:57:41'!
opName

	^'ecall'! !

!RV64ECALL methodsFor: 'accessing' stamp: 'KenD 5/11/2021 14:02:10'!
opcode
	"Opcode for ecall&ebreak"
	^2r1110011! !

!RV64ECALL methodsFor: 'initialization' stamp: 'KenD 5/11/2021 14:24:10'!
initialize

	super destReg: 0.
	sourceReg := 0.
	immediate12 := 0
! !

!RV64ECALL methodsFor: 'printing' stamp: 'KenD 5/11/2021 14:25:22'!
printString

	^self opName ! !

!RV64ECALL class methodsFor: 'instance creation' stamp: 'KenD 5/11/2021 14:19:39'!
regDest: destReg regSource: reg1 imm12: immediate12
		
	^self new destReg: 0 regSource: 0  imm12: 0! !

!RV64ORI methodsFor: 'accessing' stamp: 'KenD 5/3/2021 16:14:06'!
func3

	^16r6! !

!RV64ORI methodsFor: 'accessing' stamp: 'KenD 5/3/2021 16:14:21'!
opName

	^'orI'! !

!RV64SLLI methodsFor: 'accessing' stamp: 'KenD 5/3/2021 16:16:42'!
func3

	^16r1! !

!RV64SLLI methodsFor: 'accessing' stamp: 'KenD 5/3/2021 16:17:02'!
opName

	^'slLI'! !

!RV64SLTI methodsFor: 'accessing' stamp: 'KenD 5/3/2021 16:21:15'!
func3

	^16r2! !

!RV64SLTI methodsFor: 'accessing' stamp: 'KenD 5/3/2021 16:21:41'!
opName

	^'sltI'! !

!RV64SLTIU methodsFor: 'accessing' stamp: 'KenD 5/3/2021 16:28:07'!
func3

	^16r3! !

!RV64SLTIU methodsFor: 'accessing' stamp: 'KenD 5/3/2021 16:28:52'!
opName

	^'sltIU'! !

!RV64SRAI methodsFor: 'accessing' stamp: 'KenD 5/3/2021 16:19:48'!
func3

	^16r5! !

!RV64SRAI methodsFor: 'accessing' stamp: 'KenD 5/3/2021 16:20:07'!
opName

	^'srAI'! !

!RV64SRLI methodsFor: 'accessing' stamp: 'KenD 5/3/2021 16:18:17'!
func3

	^16r5! !

!RV64SRLI methodsFor: 'accessing' stamp: 'KenD 5/3/2021 16:17:49'!
opName

	^'srLI'! !

!RV64XORI methodsFor: 'accessing' stamp: 'KenD 5/3/2021 16:12:13'!
func3

	^16r4! !

!RV64XORI methodsFor: 'accessing' stamp: 'KenD 5/3/2021 16:12:39'!
opName

	^'XorI'! !

!RV64JAL methodsFor: 'accessing' stamp: 'KenD 5/9/2021 15:04:46'!
instruction
" [immOffset 20:31][baseReg 15:19][func3 12:14][destReg 7:11][opcode 6:0]"
	^ (bit31 << 31) 
	 + (bits21to30 << 21) 
	 + (bit20 << 20) 
	 + (bits12to19 << 12)
	 + (destReg << 7) 
	 + self opcode! !

!RV64JAL methodsFor: 'accessing' stamp: 'KenD 5/10/2021 11:17:46'!
offset

	"Answer assembled immediate, unswizzled; 
	  bit0 set to zero"
	^  ((bit31 << 19) "source bit 20"
	  + (bits12to19 << 11) "source bits 12:19"
	  + (bit20 << 10) "source bit 11"
	  + bits21to30 "source bits 1:10"
	    ) << 1! !

!RV64JAL methodsFor: 'accessing' stamp: 'KenD 5/9/2021 15:00:05'!
opName
	"Jump And Link -- immediate"
	^'jal'! !

!RV64JAL methodsFor: 'accessing' stamp: 'KenD 5/9/2021 15:59:44'!
opcode
	"Opcode for JAL instruction"
	^2r1101111! !

!RV64JAL methodsFor: 'initialization' stamp: 'KenD 5/8/2021 13:07:33'!
destReg: rd  bit31:  bit20s bits21to30: bits1to10s bit20: bit11s bits12to19:  bits12to19s

	"Stash immediate20 parts swizzle 
	  'bit*s' ==> Source bits"
	super destReg: rd.
	bit31 := bit20s.
	bits21to30 := bits1to10s.
	bit20 := bit11s.
	bits12to19 :=  bits12to19s! !

!RV64JAL methodsFor: 'printing' stamp: 'KenD 5/9/2021 14:59:33'!
printString
	"E.g.: ''jal rd, offset'"
	^ self opName, '  ',
		(self class regName: destReg), ', ', 
		'16r', (self offset printStringBase: 16).  "FIXME: 0x??"! !

!RV64JAL class methodsFor: 'instance creation' stamp: 'KenD 5/11/2021 08:51:49'!
regDest: destReg offset: immediate20

	"Hmmm.. could be signed"
	   (immediate20 bitAnd: 16rFFFFF) = immediate20 
		ifFalse: [DomainError signal: 'too big for 20 bit immediate'].
	"Bit 0 will be zero"
	^self new 
		destReg: destReg 
		bit31:           (immediate20 bitAnd: 2r10000000000000000000)  >> 19 "source bit 20"
		bits21to30: (immediate20 bitAnd: 2r00000000001111111111) "source bits 1:10"
		bit20:           (immediate20 bitAnd: 2r00000000010000000000) >> 10"source bit 11"
		bits12to19: (immediate20 bitAnd: 2r01111111100000000000) >> 11 "source bits 12:19"! !

!RV64JALR methodsFor: 'accessing' stamp: 'KenD 5/9/2021 16:03:52'!
instruction
	"[immed12][baseReg][srcReg]000[opcode]"
	^(immedOffset << 20)
	 + (baseReg << 15) 
	 "+ (self func3 << 12)  == zero"
	 + (destReg << 7) 
	 + self opcode! !

!RV64JALR methodsFor: 'accessing' stamp: 'KenD 5/10/2021 11:18:02'!
offset

	"Answer assembled immediate"
	^immedOffset << 1! !

!RV64JALR methodsFor: 'accessing' stamp: 'KenD 5/9/2021 15:59:21'!
opName
	"Jump And Link -- Register"
	^'jalR'! !

!RV64JALR methodsFor: 'accessing' stamp: 'KenD 5/9/2021 16:00:13'!
opcode
	"Opcode for JALR instruction"
	^2r1100111! !

!RV64JALR methodsFor: 'initialization' stamp: 'KenD 5/9/2021 15:56:34'!
destReg: regDest baseReg: reg1 immedOffset: immed12

	super destReg: regDest .
	baseReg := reg1.
	immedOffset := immed12 ! !

!RV64JALR methodsFor: 'printing' stamp: 'KenD 5/10/2021 11:16:04'!
printString
	"E.g.: ''jalR rDest, rBase, offset'"
	^ self opName, '  ',
		(self class regName: destReg), ', ', 
		(self class regName: baseReg), ', ', 
		'16r', (self offset printStringBase: 16).  ! !

!RV64JALR class methodsFor: 'instance creation' stamp: 'KenD 5/9/2021 15:56:56'!
regDest: rd regBase: rb immediateOffset: immediate12

	(immediate12 bitAnd: 16rFFF) = immediate12 
		ifFalse: [DomainError signal: 'too big for 12 bit immediate'].
		
	^self new 
			destReg: rd 
			baseReg: rb 
			immedOffset: immediate12 	! !

!RV64JALR class methodsFor: 'instance creation' stamp: 'KenD 5/9/2021 15:53:56'!
regDest: rd regBase: rb offset: immediate12

	(immediate12 bitAnd: 16rFFF) = immediate12 
		ifFalse: [DomainError signal: 'too big for 12 bit immediate'].
		
	^self new 
			destReg: rd 
			baseReg: rb 
			immedOffset: immediate12 	! !

!RV64L methodsFor: 'accessing' stamp: 'KenD 5/4/2021 08:06:50'!
func3

	self subclassResponsibility ! !

!RV64L methodsFor: 'accessing' stamp: 'KenD 5/4/2021 11:54:28'!
func7

	self shouldNotImplement ! !

!RV64L methodsFor: 'accessing' stamp: 'KenD 5/7/2021 16:11:51'!
instruction
" [immOffset 20:31][baseReg 15:19][func3 12:14][destReg 7:11][opcode 6:0]"
	^ (immedOffset << 20) 
	 + (baseReg << 15) 
	 + (self func3 << 12) 
	 + (destReg << 7) 
	 + self opcode! !

!RV64L methodsFor: 'accessing' stamp: 'KenD 5/7/2021 16:09:37'!
offset

	"Answer assembled immediate"
	^immedOffset ! !

!RV64L methodsFor: 'accessing' stamp: 'KenD 5/4/2021 08:07:03'!
opName

	self subclassResponsibility ! !

!RV64L methodsFor: 'accessing' stamp: 'KenD 5/4/2021 12:34:51'!
opcode
	"Opcode for all L-type instructions"
	^2r0000011! !

!RV64L methodsFor: 'initialization' stamp: 'KenD 5/7/2021 16:07:32'!
destReg: regDest baseReg: reg1 immedOffset: immed12

	super destReg: regDest .
	baseReg := reg1.
	immedOffset := immed12 ! !

!RV64L methodsFor: 'printing' stamp: 'KenD 5/9/2021 16:04:53'!
printString
	"E.g.: 'lb  rDest,rBase,offset' "
	^ self opName, '  ',
		(self class regName: destReg), ', ', 
		(self class regName: baseReg ), ', 16r', 
		(self offset printStringBase: 16)! !

!RV64L class methodsFor: 'instance creation' stamp: 'KenD 5/7/2021 16:05:43'!
regDest: rd regBase: rb immediateOffset: immediate12
	
	(immediate12 bitAnd: 16rFFF) = immediate12 
		ifFalse: [DomainError signal: 'too big for 12 bit immediate'].

	^self new 
			destReg: rd 
			baseReg: rb 
			immedOffset: immediate12 ! !

!RV64LB methodsFor: 'accessing' stamp: 'KenD 5/4/2021 11:59:59'!
func3

	^16r0! !

!RV64LB methodsFor: 'accessing' stamp: 'KenD 5/4/2021 11:59:36'!
opName
	"loadByte"
	^'lb'! !

!RV64LBU methodsFor: 'accessing' stamp: 'KenD 5/4/2021 12:56:29'!
func3

	^16r4! !

!RV64LBU methodsFor: 'accessing' stamp: 'KenD 5/4/2021 12:56:04'!
opName

	^'lbU'! !

!RV64LD methodsFor: 'accessing' stamp: 'KenD 5/4/2021 12:24:44'!
func3

	^16r3! !

!RV64LD methodsFor: 'accessing' stamp: 'KenD 5/4/2021 12:23:41'!
opName
	"loadDouble"
	^'ld'! !

!RV64LH methodsFor: 'accessing' stamp: 'KenD 5/4/2021 12:19:25'!
func3

	^16r1! !

!RV64LH methodsFor: 'accessing' stamp: 'KenD 5/4/2021 12:23:53'!
opName
	"loadHalf"
	^'lh'! !

!RV64LHU methodsFor: 'accessing' stamp: 'KenD 5/4/2021 12:58:06'!
func3

	^16r5! !

!RV64LHU methodsFor: 'accessing' stamp: 'KenD 5/4/2021 12:57:22'!
opName

	^'lhU'! !

!RV64LW methodsFor: 'accessing' stamp: 'KenD 5/4/2021 12:17:46'!
func3

	^16r2! !

!RV64LW methodsFor: 'accessing' stamp: 'KenD 5/4/2021 12:24:11'!
opName
	"loadWord"
	^'lw'! !

!RV64LWU methodsFor: 'accessing' stamp: 'KenD 5/4/2021 12:59:12'!
func3

	^16r6! !

!RV64LWU methodsFor: 'accessing' stamp: 'KenD 5/4/2021 12:58:51'!
opName

	^'lwU'! !

!RV64R methodsFor: 'printing' stamp: 'KenD 5/3/2021 12:00:09'!
printString
	"E.g.: 'add  rd,r1,r2' "
	^ self opName, '  ',
		(self class regName: destReg), ', ', 
		(self class regName: regA), ',', 
		(self class regName: regB)! !

!RV64R methodsFor: 'accessing' stamp: 'KenD 5/3/2021 12:14:26'!
func3

	self subclassResponsibility ! !

!RV64R methodsFor: 'accessing' stamp: 'KenD 5/3/2021 12:14:30'!
func7

	self subclassResponsibility ! !

!RV64R methodsFor: 'accessing' stamp: 'KenD 5/3/2021 12:12:43'!
instruction
	
	^self class
		assembleFunc7: self func7 
		r2: regB
		r1: regA
		func3: self func3 
		rd: destReg 
		op: self class opcode! !

!RV64R methodsFor: 'accessing' stamp: 'KenD 5/3/2021 12:01:13'!
opName

	self subclassResponsibility ! !

!RV64R methodsFor: 'initialization' stamp: 'KenD 5/1/2021 08:48:48'!
destReg: regDest regA: reg1 regB: reg2

	super destReg: regDest .
	regA := reg1.
	regB := reg2! !

!RV64R class methodsFor: 'accessing' stamp: 'KenD 5/1/2021 16:10:11'!
opcode
	"Opcode for all R-type instructions"
	^2r0110011! !

!RV64R class methodsFor: 'instance creation' stamp: 'KenD 5/1/2021 16:07:42'!
regDest: destReg regA: reg1 regB: reg2

	^self new destReg: destReg regA: reg1 regB: reg2! !

!RV64R class methodsFor: 'instruction assembly' stamp: 'KenD 5/1/2021 09:21:51'!
assembleFunc7: f7 r2: reg2 r1: reg1 func3: f3 rd: destReg op: opcode
	"[func7 31:25][rs2 24:20][rs1 19:15][func3 14:12][rd 11:7][opcode 6:0]"
	^(f7 << 25) + (reg2 << 20) + (reg1 << 15) + (f3 << 12) + (destReg << 7) + opcode! !

!RV64ADD methodsFor: 'accessing' stamp: 'KenD 5/3/2021 12:11:48'!
func3

	^16r0! !

!RV64ADD methodsFor: 'accessing' stamp: 'KenD 5/3/2021 12:13:28'!
func7

	^16r00! !

!RV64ADD methodsFor: 'accessing' stamp: 'KenD 5/3/2021 11:50:46'!
opName

	^'add'! !

!RV64AND methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:15:47'!
func3

	^16r7! !

!RV64AND methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:15:35'!
func7

	^16r00! !

!RV64AND methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:15:14'!
opName

	^'and'! !

!RV64OR methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:13:29'!
func3

	^16r6! !

!RV64OR methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:13:12'!
func7

	^16r00! !

!RV64OR methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:14:18'!
opName
	" 'ior' ?"
	^'or'! !

!RV64SLL methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:20:55'!
func3

	^16r1! !

!RV64SLL methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:21:10'!
func7

	^16r00! !

!RV64SLL methodsFor: 'accessing' stamp: 'KenD 5/3/2021 15:01:27'!
opName

	^'slL'! !

!RV64SLT methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:30:02'!
func3

	^16r2! !

!RV64SLT methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:29:48'!
func7

	^16r00! !

!RV64SLT methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:29:27'!
opName

	^'slt'! !

!RV64SLTU methodsFor: 'accessing' stamp: 'KenD 5/3/2021 16:28:20'!
func3

	^16r3! !

!RV64SLTU methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:33:32'!
func7

	^16r00! !

!RV64SLTU methodsFor: 'accessing' stamp: 'KenD 5/3/2021 15:01:12'!
opName

	^'sltU'! !

!RV64SRA methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:26:54'!
func3

	^16r5! !

!RV64SRA methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:26:36'!
func7

	^16r20! !

!RV64SRA methodsFor: 'accessing' stamp: 'KenD 5/3/2021 15:01:00'!
opName

	^'srA'! !

!RV64SRL methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:23:23'!
func3

	^16r5! !

!RV64SRL methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:23:03'!
func7

	^16r00! !

!RV64SRL methodsFor: 'accessing' stamp: 'KenD 5/3/2021 15:00:52'!
opName

	^'srL'! !

!RV64SUB methodsFor: 'accessing' stamp: 'KenD 5/3/2021 12:12:07'!
func3

	^16r0! !

!RV64SUB methodsFor: 'accessing' stamp: 'KenD 5/3/2021 12:12:21'!
func7

	^16r20! !

!RV64SUB methodsFor: 'accessing' stamp: 'KenD 5/3/2021 11:57:50'!
opName

	^'sub'! !

!RV64XOR methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:11:09'!
func3

	^16r4! !

!RV64XOR methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:11:38'!
func7

	^16r00! !

!RV64XOR methodsFor: 'accessing' stamp: 'KenD 5/3/2021 15:00:33'!
opName

	^'Xor'! !

!RV64S methodsFor: 'accessing' stamp: 'KenD 5/7/2021 15:40:20'!
func3

	self subclassResponsibility ! !

!RV64S methodsFor: 'accessing' stamp: 'KenD 5/7/2021 15:40:12'!
func7

	self shouldNotImplement ! !

!RV64S methodsFor: 'accessing' stamp: 'KenD 5/7/2021 16:04:11'!
instruction
" [immHi 25:31][baseReg 20:24][destReg 15:19][func3 12:14][immLo 7:11][opcode 6:0]"
	^(immHi << 25) 
	 + (destReg << 20) "NB: really Source Reg"
	 + (baseReg << 15) 
	 + (self func3 << 12) 
	 + (immLo << 7) 
	 + self opcode! !

!RV64S methodsFor: 'accessing' stamp: 'KenD 5/7/2021 15:40:54'!
offset

	"Answer assembled immediate"
	^ (immHi << 5) + immLo ! !

!RV64S methodsFor: 'accessing' stamp: 'KenD 5/7/2021 15:41:02'!
opName

	self subclassResponsibility ! !

!RV64S methodsFor: 'accessing' stamp: 'KenD 5/7/2021 15:41:26'!
opcode
	"Opcode for all S-type instructions"
	^2r0100011! !

!RV64S methodsFor: 'initialization' stamp: 'KenD 5/7/2021 15:58:53'!
srcReg: rs baseReg: rb  immLo: lo mmHi: hi

	super destReg: rs.
	baseReg := rb.
	immLo := lo.
	immHi := hi! !

!RV64S methodsFor: 'printing' stamp: 'KenD 5/7/2021 15:42:32'!
printString
	"E.g.: 'lb  rd,rBase,offset' "
	^ self opName, '  ',
		(self class regName: destReg), ', ',  "NB: 'destReg' used for 'sourceReg"
		(self class regName: baseReg ), ', 16r', 
		(self offset printStringBase: 16)! !

!RV64S class methodsFor: 'instance creation' stamp: 'KenD 5/7/2021 15:38:48'!
regSource: rs regBase: rb immediateOffset: immediate12
	
	(immediate12 bitAnd: 16rFFF) = immediate12 
		ifFalse: [DomainError signal: 'too big for 12 bit immediate'].

	^self new 
			srcReg: rs
			baseReg: rb 
			immLo: (immediate12 bitAnd: 2r000000011111) 
			immHi: ((immediate12 bitAnd: 2r111111100000) >> 5)! !

!RV64SB methodsFor: 'accessing' stamp: 'KenD 5/7/2021 15:50:00'!
func3

	^16r0! !

!RV64SB methodsFor: 'accessing' stamp: 'KenD 5/7/2021 15:50:22'!
opName
	"StoreByte"
	^'sb'! !

!RV64SD methodsFor: 'accessing' stamp: 'KenD 5/7/2021 15:56:08'!
func3

	^16r3! !

!RV64SD methodsFor: 'accessing' stamp: 'KenD 5/7/2021 15:55:58'!
opName
	"StoreDouble"
	^'sd'! !

!RV64SH methodsFor: 'accessing' stamp: 'KenD 5/7/2021 15:51:58'!
func3

	^16r1! !

!RV64SH methodsFor: 'accessing' stamp: 'KenD 5/7/2021 15:51:43'!
opName
	"StoreHalfword"
	^'sh'! !

!RV64SW methodsFor: 'accessing' stamp: 'KenD 5/7/2021 15:53:33'!
func3

	^16r2! !

!RV64SW methodsFor: 'accessing' stamp: 'KenD 5/7/2021 15:54:06'!
opName
	"StoreWord"
	^'sw'! !

!RV64U methodsFor: 'initialization' stamp: 'KenD 5/11/2021 09:03:52'!
destReg: rd immediate: imm20

	super destReg: rd.
	immediate20 := imm20 ! !

!RV64U methodsFor: 'accessing' stamp: 'KenD 5/11/2021 09:06:44'!
instruction
" [imm20 12:31][destReg 7:11][opcode 6:0]"
	^ (immediate20 << 12) 
	 + (destReg << 7) 
	 + self opcode! !

!RV64U methodsFor: 'accessing' stamp: 'KenD 5/11/2021 09:07:40'!
opCode

	self subclassResponsibility ! !

!RV64U methodsFor: 'accessing' stamp: 'KenD 5/11/2021 09:06:19'!
upperBits
" [imm20 12:31][destReg 7:11][opcode 6:0]"
	^ (immediate20 << 12) ! !

!RV64U methodsFor: 'printing' stamp: 'KenD 5/11/2021 09:06:29'!
printString
	"E.g.: 'lui  rDest,immediate "
	^ self opName, '  ',
		(self class regName: destReg), ',  16r', 
		(immediate20 printStringBase: 16)! !

!RV64U class methodsFor: 'instance creation' stamp: 'KenD 5/11/2021 09:04:20'!
regDest: rd immediate: imm20

 	(imm20 bitAnd: 16rFFFFF) = imm20 
		ifFalse: [DomainError signal: 'too big for 20 bit immediate'].
		
	^self new
		destReg: rd immediate: imm20
! !

!RV64AUIPC class methodsFor: 'accessing' stamp: 'KenD 5/11/2021 09:05:29'!
opName

	"Add Upper Immediate to PC"
	^'auIpc'! !

!RV64AUIPC class methodsFor: 'accessing' stamp: 'KenD 5/11/2021 09:05:56'!
opcode
	"Opcode for AUIPC"
	^2r0010111! !

!RV64LUI methodsFor: 'accessing' stamp: 'KenD 5/11/2021 08:56:27'!
opName

	"Load Upper Immediate"
	^'luI'! !

!RV64LUI methodsFor: 'accessing' stamp: 'KenD 5/11/2021 08:46:05'!
opcode
	"Opcode for LUI"
	^2r0110111! !

!RISC5InstructionsTests methodsFor: 'tests - RV64I' stamp: 'KenD 5/11/2021 08:57:57'!
testRV64I

	self assert: (RV64ADD regDest: X3 regA: X1 regB: X2) instruction 
		= 2r0000000001000001000000110110011.
	self assert: (RV64SUB regDest: 3 regA: 1 regB: 2) instruction
		= 2r1000000001000001000000110110011.
	self assert: (RV64SUB regDest: 3 regA: 1 regB: 2) printString 
		= 'sub  GlobalPtr, ReturnAddr,StackPtr' .
	"... ... ..."
	self assert: 
	  (RV64LD regDest: 1 regBase: 3 immediateOffset: 16rFFF) 
		instruction 
		= 2r11111111111100011011000010000011.
		    "10987654321098765432109876543210"
	"iimmOffset 20:31][baseReg 15:19][func3 12:14][destReg 7:11][opcode 6:0]"
	self assert: ((RV64LB regDest: 10 regBase: 12 immediateOffset: 16rFFF) 
				offset printStringBase: 16)
				= 'FFF'.
	self assert: 
		((RV64LB regDest: 10 regBase: 12 immediateOffset: 16rA5A) 
			printString )
			=  'lb  Arg0, Arg2, 16rA5A' .
	self assert:
		(RV64JAL regDest: 1 offset: 2r11000000111000000001) instruction
		= 2r11000000001110000001000011101111.
		
	self assert:
		(RV64JAL regDest: 1 offset: 2r11000000111000000011)  offset
		= 2r110000001110000000110.
	
	self assert: 
		(RV64JAL regDest: 1 offset: 2r11000000111000000001)  printString
		= 'jal  ReturnAddr, 16r181C02' .
	self assert:
		(RV64LUI regDest: 1 immediate: 16rC0E03)  printString 
		 = 'luI  ReturnAddr,  16rC0E03' 
		! !
RISC5Instructions initialize!
RISC5Regs initialize!
