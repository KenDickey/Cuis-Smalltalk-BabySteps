'From Cuis 6.0 [latest update: #5494] on 2 November 2022 at 12:53:16 pm'!
'Description RISC-V 32 bit Instruction opcodes for RV64G

NB: Not all instructions supported
 - No Compressed Instruction Format (all instructions 32 bits wide)
 - No binary disassembly (but instructions can print themselves)
 - Assumption of 8 byte Integers and DoubleFloats 
 - Some mnemonics changed for clarification
     E.g. Move value from DoubleFloat register into Integer register
	is ''FmvD2I'' not ''FMV.X.D'''!
!provides: 'RISC5-Instructions' 1 51!
SystemOrganization addCategory: 'RISC5-Instructions'!


!classDefinition: #RISC5Regs category: 'RISC5-Instructions'!
SharedPool subclass: #RISC5Regs
	instanceVariableNames: ''
	classVariableNames: 'Arg0 Arg1 Arg2 Arg3 Arg4 Arg5 Arg6 Arg7 DYNamic F0 F1 F10 F11 F12 F13 F14 F15 F16 F17 F18 F19 F2 F20 F21 F22 F23 F24 F25 F26 F27 F28 F29 F3 F30 F31 F4 F5 F6 F7 F8 F9 FArg0 FArg1 FArg2 FArg3 FArg4 FArg5 FArg6 FArg7 FSav0 FSav1 FSav10 FSav11 FSav2 FSav3 FSav4 FSav5 FSav6 FSav7 FSav8 FSav9 FTmp0 FTmp1 FTmp10 FTmp11 FTmp2 FTmp3 FTmp4 FTmp5 FTmp6 FTmp7 FTmp8 FTmp9 FramePtr GlobalPtr ReturnAddr RoundDown RoundNearestToEven RoundNearestToMax RoundTwordZero RoundUp Sav0 Sav1 Sav10 Sav11 Sav2 Sav3 Sav4 Sav5 Sav6 Sav7 Sav8 Sav9 SizeDouble SizeHalf SizeQuad SizeSingle StackPtr ThreadPtr Tmp0 Tmp1 Tmp2 Tmp3 Tmp4 Tmp5 Tmp6 X0 X1 X10 X11 X12 X13 X14 X15 X16 X17 X18 X19 X2 X20 X21 X22 X23 X24 X25 X26 X27 X28 X29 X3 X30 X31 X4 X5 X6 X7 X8 X9 Zero'
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RISC5Regs class' category: 'RISC5-Instructions'!
RISC5Regs class
	instanceVariableNames: ''!

!classDefinition: #RISC5InstructionsTests category: 'RISC5-Instructions'!
TestCase subclass: #RISC5InstructionsTests
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'RISC5Regs'
	category: 'RISC5-Instructions'!
!classDefinition: 'RISC5InstructionsTests class' category: 'RISC5-Instructions'!
RISC5InstructionsTests class
	instanceVariableNames: ''!

!classDefinition: #RISC5Instructions category: 'RISC5-Instructions'!
Object subclass: #RISC5Instructions
	instanceVariableNames: 'destReg'
	classVariableNames: 'FRegs IRegs'
	poolDictionaries: 'RISC5Regs'
	category: 'RISC5-Instructions'!
!classDefinition: 'RISC5Instructions class' category: 'RISC5-Instructions'!
RISC5Instructions class
	instanceVariableNames: ''!

!classDefinition: #RV64Branch category: 'RISC5-Instructions'!
RISC5Instructions subclass: #RV64Branch
	instanceVariableNames: 'regA regB immHi immLo'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64Branch class' category: 'RISC5-Instructions'!
RV64Branch class
	instanceVariableNames: ''!

!classDefinition: #RV64BEQ category: 'RISC5-Instructions'!
RV64Branch subclass: #RV64BEQ
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64BEQ class' category: 'RISC5-Instructions'!
RV64BEQ class
	instanceVariableNames: ''!

!classDefinition: #RV64BGE category: 'RISC5-Instructions'!
RV64Branch subclass: #RV64BGE
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64BGE class' category: 'RISC5-Instructions'!
RV64BGE class
	instanceVariableNames: ''!

!classDefinition: #RV64BGEU category: 'RISC5-Instructions'!
RV64Branch subclass: #RV64BGEU
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64BGEU class' category: 'RISC5-Instructions'!
RV64BGEU class
	instanceVariableNames: ''!

!classDefinition: #RV64BLT category: 'RISC5-Instructions'!
RV64Branch subclass: #RV64BLT
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64BLT class' category: 'RISC5-Instructions'!
RV64BLT class
	instanceVariableNames: ''!

!classDefinition: #RV64BLTU category: 'RISC5-Instructions'!
RV64Branch subclass: #RV64BLTU
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64BLTU class' category: 'RISC5-Instructions'!
RV64BLTU class
	instanceVariableNames: ''!

!classDefinition: #RV64BNE category: 'RISC5-Instructions'!
RV64Branch subclass: #RV64BNE
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64BNE class' category: 'RISC5-Instructions'!
RV64BNE class
	instanceVariableNames: ''!

!classDefinition: #RV64Immediate category: 'RISC5-Instructions'!
RISC5Instructions subclass: #RV64Immediate
	instanceVariableNames: 'sourceReg immediate12'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64Immediate class' category: 'RISC5-Instructions'!
RV64Immediate class
	instanceVariableNames: ''!

!classDefinition: #RV64ADDI category: 'RISC5-Instructions'!
RV64Immediate subclass: #RV64ADDI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64ADDI class' category: 'RISC5-Instructions'!
RV64ADDI class
	instanceVariableNames: ''!

!classDefinition: #RV64ANDI category: 'RISC5-Instructions'!
RV64Immediate subclass: #RV64ANDI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64ANDI class' category: 'RISC5-Instructions'!
RV64ANDI class
	instanceVariableNames: ''!

!classDefinition: #RV64EBREAK category: 'RISC5-Instructions'!
RV64Immediate subclass: #RV64EBREAK
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64EBREAK class' category: 'RISC5-Instructions'!
RV64EBREAK class
	instanceVariableNames: ''!

!classDefinition: #RV64ECALL category: 'RISC5-Instructions'!
RV64Immediate subclass: #RV64ECALL
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64ECALL class' category: 'RISC5-Instructions'!
RV64ECALL class
	instanceVariableNames: ''!

!classDefinition: #RV64ORI category: 'RISC5-Instructions'!
RV64Immediate subclass: #RV64ORI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64ORI class' category: 'RISC5-Instructions'!
RV64ORI class
	instanceVariableNames: ''!

!classDefinition: #RV64SLLI category: 'RISC5-Instructions'!
RV64Immediate subclass: #RV64SLLI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64SLLI class' category: 'RISC5-Instructions'!
RV64SLLI class
	instanceVariableNames: ''!

!classDefinition: #RV64SLTI category: 'RISC5-Instructions'!
RV64Immediate subclass: #RV64SLTI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64SLTI class' category: 'RISC5-Instructions'!
RV64SLTI class
	instanceVariableNames: ''!

!classDefinition: #RV64SLTIU category: 'RISC5-Instructions'!
RV64Immediate subclass: #RV64SLTIU
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64SLTIU class' category: 'RISC5-Instructions'!
RV64SLTIU class
	instanceVariableNames: ''!

!classDefinition: #RV64SRAI category: 'RISC5-Instructions'!
RV64Immediate subclass: #RV64SRAI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64SRAI class' category: 'RISC5-Instructions'!
RV64SRAI class
	instanceVariableNames: ''!

!classDefinition: #RV64SRLI category: 'RISC5-Instructions'!
RV64Immediate subclass: #RV64SRLI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64SRLI class' category: 'RISC5-Instructions'!
RV64SRLI class
	instanceVariableNames: ''!

!classDefinition: #RV64XORI category: 'RISC5-Instructions'!
RV64Immediate subclass: #RV64XORI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64XORI class' category: 'RISC5-Instructions'!
RV64XORI class
	instanceVariableNames: ''!

!classDefinition: #RV64JAL category: 'RISC5-Instructions'!
RISC5Instructions subclass: #RV64JAL
	instanceVariableNames: 'bit31 bits21to30 bit20 bits12to19'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64JAL class' category: 'RISC5-Instructions'!
RV64JAL class
	instanceVariableNames: ''!

!classDefinition: #RV64JALR category: 'RISC5-Instructions'!
RISC5Instructions subclass: #RV64JALR
	instanceVariableNames: 'baseReg immedOffset'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64JALR class' category: 'RISC5-Instructions'!
RV64JALR class
	instanceVariableNames: ''!

!classDefinition: #RV64Load category: 'RISC5-Instructions'!
RISC5Instructions subclass: #RV64Load
	instanceVariableNames: 'immedOffset baseReg'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64Load class' category: 'RISC5-Instructions'!
RV64Load class
	instanceVariableNames: ''!

!classDefinition: #RV64FLD category: 'RISC5-Instructions'!
RV64Load subclass: #RV64FLD
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64FLD class' category: 'RISC5-Instructions'!
RV64FLD class
	instanceVariableNames: ''!

!classDefinition: #RV64LB category: 'RISC5-Instructions'!
RV64Load subclass: #RV64LB
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64LB class' category: 'RISC5-Instructions'!
RV64LB class
	instanceVariableNames: ''!

!classDefinition: #RV64LBU category: 'RISC5-Instructions'!
RV64Load subclass: #RV64LBU
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64LBU class' category: 'RISC5-Instructions'!
RV64LBU class
	instanceVariableNames: ''!

!classDefinition: #RV64LD category: 'RISC5-Instructions'!
RV64Load subclass: #RV64LD
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64LD class' category: 'RISC5-Instructions'!
RV64LD class
	instanceVariableNames: ''!

!classDefinition: #RV64LH category: 'RISC5-Instructions'!
RV64Load subclass: #RV64LH
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64LH class' category: 'RISC5-Instructions'!
RV64LH class
	instanceVariableNames: ''!

!classDefinition: #RV64LHU category: 'RISC5-Instructions'!
RV64Load subclass: #RV64LHU
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64LHU class' category: 'RISC5-Instructions'!
RV64LHU class
	instanceVariableNames: ''!

!classDefinition: #RV64LW category: 'RISC5-Instructions'!
RV64Load subclass: #RV64LW
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64LW class' category: 'RISC5-Instructions'!
RV64LW class
	instanceVariableNames: ''!

!classDefinition: #RV64LWU category: 'RISC5-Instructions'!
RV64Load subclass: #RV64LWU
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64LWU class' category: 'RISC5-Instructions'!
RV64LWU class
	instanceVariableNames: ''!

!classDefinition: #RV64Reg3Reg category: 'RISC5-Instructions'!
RISC5Instructions subclass: #RV64Reg3Reg
	instanceVariableNames: 'regA regB'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64Reg3Reg class' category: 'RISC5-Instructions'!
RV64Reg3Reg class
	instanceVariableNames: ''!

!classDefinition: #RV64ADD category: 'RISC5-Instructions'!
RV64Reg3Reg subclass: #RV64ADD
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64ADD class' category: 'RISC5-Instructions'!
RV64ADD class
	instanceVariableNames: ''!

!classDefinition: #RV64NOOP category: 'RISC5-Instructions'!
RV64ADD subclass: #RV64NOOP
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64NOOP class' category: 'RISC5-Instructions'!
RV64NOOP class
	instanceVariableNames: ''!

!classDefinition: #RV64AND category: 'RISC5-Instructions'!
RV64Reg3Reg subclass: #RV64AND
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64AND class' category: 'RISC5-Instructions'!
RV64AND class
	instanceVariableNames: ''!

!classDefinition: #RV64DFloatReg2Reg category: 'RISC5-Instructions'!
RV64Reg3Reg subclass: #RV64DFloatReg2Reg
	instanceVariableNames: 'roundingMode'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64DFloatReg2Reg class' category: 'RISC5-Instructions'!
RV64DFloatReg2Reg class
	instanceVariableNames: ''!

!classDefinition: #RV64FCVTD2I category: 'RISC5-Instructions'!
RV64DFloatReg2Reg subclass: #RV64FCVTD2I
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64FCVTD2I class' category: 'RISC5-Instructions'!
RV64FCVTD2I class
	instanceVariableNames: ''!

!classDefinition: #RV64FCVTD2UI category: 'RISC5-Instructions'!
RV64DFloatReg2Reg subclass: #RV64FCVTD2UI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64FCVTD2UI class' category: 'RISC5-Instructions'!
RV64FCVTD2UI class
	instanceVariableNames: ''!

!classDefinition: #RV64FCVTI2D category: 'RISC5-Instructions'!
RV64DFloatReg2Reg subclass: #RV64FCVTI2D
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64FCVTI2D class' category: 'RISC5-Instructions'!
RV64FCVTI2D class
	instanceVariableNames: ''!

!classDefinition: #RV64FCVTUI2D category: 'RISC5-Instructions'!
RV64DFloatReg2Reg subclass: #RV64FCVTUI2D
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64FCVTUI2D class' category: 'RISC5-Instructions'!
RV64FCVTUI2D class
	instanceVariableNames: ''!

!classDefinition: #RV64FMVD2IR category: 'RISC5-Instructions'!
RV64DFloatReg2Reg subclass: #RV64FMVD2IR
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64FMVD2IR class' category: 'RISC5-Instructions'!
RV64FMVD2IR class
	instanceVariableNames: ''!

!classDefinition: #RV64FMVI2DR category: 'RISC5-Instructions'!
RV64DFloatReg2Reg subclass: #RV64FMVI2DR
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64FMVI2DR class' category: 'RISC5-Instructions'!
RV64FMVI2DR class
	instanceVariableNames: ''!

!classDefinition: #RV64FSQRT category: 'RISC5-Instructions'!
RV64DFloatReg2Reg subclass: #RV64FSQRT
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64FSQRT class' category: 'RISC5-Instructions'!
RV64FSQRT class
	instanceVariableNames: ''!

!classDefinition: #RV64DFloatReg3Reg category: 'RISC5-Instructions'!
RV64Reg3Reg subclass: #RV64DFloatReg3Reg
	instanceVariableNames: 'roundingMode'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64DFloatReg3Reg class' category: 'RISC5-Instructions'!
RV64DFloatReg3Reg class
	instanceVariableNames: ''!

!classDefinition: #RV64FADD category: 'RISC5-Instructions'!
RV64DFloatReg3Reg subclass: #RV64FADD
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64FADD class' category: 'RISC5-Instructions'!
RV64FADD class
	instanceVariableNames: ''!

!classDefinition: #RV64FDIV category: 'RISC5-Instructions'!
RV64DFloatReg3Reg subclass: #RV64FDIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64FDIV class' category: 'RISC5-Instructions'!
RV64FDIV class
	instanceVariableNames: ''!

!classDefinition: #RV64FEQ category: 'RISC5-Instructions'!
RV64DFloatReg3Reg subclass: #RV64FEQ
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64FEQ class' category: 'RISC5-Instructions'!
RV64FEQ class
	instanceVariableNames: ''!

!classDefinition: #RV64FLE category: 'RISC5-Instructions'!
RV64DFloatReg3Reg subclass: #RV64FLE
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64FLE class' category: 'RISC5-Instructions'!
RV64FLE class
	instanceVariableNames: ''!

!classDefinition: #RV64FLT category: 'RISC5-Instructions'!
RV64DFloatReg3Reg subclass: #RV64FLT
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64FLT class' category: 'RISC5-Instructions'!
RV64FLT class
	instanceVariableNames: ''!

!classDefinition: #RV64FMAX category: 'RISC5-Instructions'!
RV64DFloatReg3Reg subclass: #RV64FMAX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64FMAX class' category: 'RISC5-Instructions'!
RV64FMAX class
	instanceVariableNames: ''!

!classDefinition: #RV64FMIN category: 'RISC5-Instructions'!
RV64DFloatReg3Reg subclass: #RV64FMIN
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64FMIN class' category: 'RISC5-Instructions'!
RV64FMIN class
	instanceVariableNames: ''!

!classDefinition: #RV64FMUL category: 'RISC5-Instructions'!
RV64DFloatReg3Reg subclass: #RV64FMUL
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64FMUL class' category: 'RISC5-Instructions'!
RV64FMUL class
	instanceVariableNames: ''!

!classDefinition: #RV64FSUB category: 'RISC5-Instructions'!
RV64DFloatReg3Reg subclass: #RV64FSUB
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64FSUB class' category: 'RISC5-Instructions'!
RV64FSUB class
	instanceVariableNames: ''!

!classDefinition: #RV64DIV category: 'RISC5-Instructions'!
RV64Reg3Reg subclass: #RV64DIV
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64DIV class' category: 'RISC5-Instructions'!
RV64DIV class
	instanceVariableNames: ''!

!classDefinition: #RV64DIVU category: 'RISC5-Instructions'!
RV64Reg3Reg subclass: #RV64DIVU
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64DIVU class' category: 'RISC5-Instructions'!
RV64DIVU class
	instanceVariableNames: ''!

!classDefinition: #RV64MUL category: 'RISC5-Instructions'!
RV64Reg3Reg subclass: #RV64MUL
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64MUL class' category: 'RISC5-Instructions'!
RV64MUL class
	instanceVariableNames: ''!

!classDefinition: #RV64OR category: 'RISC5-Instructions'!
RV64Reg3Reg subclass: #RV64OR
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64OR class' category: 'RISC5-Instructions'!
RV64OR class
	instanceVariableNames: ''!

!classDefinition: #RV64REM category: 'RISC5-Instructions'!
RV64Reg3Reg subclass: #RV64REM
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64REM class' category: 'RISC5-Instructions'!
RV64REM class
	instanceVariableNames: ''!

!classDefinition: #RV64REMU category: 'RISC5-Instructions'!
RV64Reg3Reg subclass: #RV64REMU
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64REMU class' category: 'RISC5-Instructions'!
RV64REMU class
	instanceVariableNames: ''!

!classDefinition: #RV64SLL category: 'RISC5-Instructions'!
RV64Reg3Reg subclass: #RV64SLL
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64SLL class' category: 'RISC5-Instructions'!
RV64SLL class
	instanceVariableNames: ''!

!classDefinition: #RV64SLT category: 'RISC5-Instructions'!
RV64Reg3Reg subclass: #RV64SLT
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64SLT class' category: 'RISC5-Instructions'!
RV64SLT class
	instanceVariableNames: ''!

!classDefinition: #RV64SLTU category: 'RISC5-Instructions'!
RV64Reg3Reg subclass: #RV64SLTU
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64SLTU class' category: 'RISC5-Instructions'!
RV64SLTU class
	instanceVariableNames: ''!

!classDefinition: #RV64SRA category: 'RISC5-Instructions'!
RV64Reg3Reg subclass: #RV64SRA
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64SRA class' category: 'RISC5-Instructions'!
RV64SRA class
	instanceVariableNames: ''!

!classDefinition: #RV64SRL category: 'RISC5-Instructions'!
RV64Reg3Reg subclass: #RV64SRL
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64SRL class' category: 'RISC5-Instructions'!
RV64SRL class
	instanceVariableNames: ''!

!classDefinition: #RV64SUB category: 'RISC5-Instructions'!
RV64Reg3Reg subclass: #RV64SUB
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64SUB class' category: 'RISC5-Instructions'!
RV64SUB class
	instanceVariableNames: ''!

!classDefinition: #RV64XOR category: 'RISC5-Instructions'!
RV64Reg3Reg subclass: #RV64XOR
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64XOR class' category: 'RISC5-Instructions'!
RV64XOR class
	instanceVariableNames: ''!

!classDefinition: #RV64Reg4Reg category: 'RISC5-Instructions'!
RISC5Instructions subclass: #RV64Reg4Reg
	instanceVariableNames: 'regA regB regC roundMode precision'
	classVariableNames: 'DYN Dfmt Hfmt Qfmr RDN RME RMM RTZ RUP Sfmt'
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64Reg4Reg class' category: 'RISC5-Instructions'!
RV64Reg4Reg class
	instanceVariableNames: ''!

!classDefinition: #RV64FMADD category: 'RISC5-Instructions'!
RV64Reg4Reg subclass: #RV64FMADD
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64FMADD class' category: 'RISC5-Instructions'!
RV64FMADD class
	instanceVariableNames: ''!

!classDefinition: #RV64FMSUB category: 'RISC5-Instructions'!
RV64Reg4Reg subclass: #RV64FMSUB
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64FMSUB class' category: 'RISC5-Instructions'!
RV64FMSUB class
	instanceVariableNames: ''!

!classDefinition: #RV64FNMADD category: 'RISC5-Instructions'!
RV64Reg4Reg subclass: #RV64FNMADD
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64FNMADD class' category: 'RISC5-Instructions'!
RV64FNMADD class
	instanceVariableNames: ''!

!classDefinition: #RV64FNMSUB category: 'RISC5-Instructions'!
RV64Reg4Reg subclass: #RV64FNMSUB
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64FNMSUB class' category: 'RISC5-Instructions'!
RV64FNMSUB class
	instanceVariableNames: ''!

!classDefinition: #RV64Store category: 'RISC5-Instructions'!
RISC5Instructions subclass: #RV64Store
	instanceVariableNames: 'baseReg immLo immHi'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64Store class' category: 'RISC5-Instructions'!
RV64Store class
	instanceVariableNames: ''!

!classDefinition: #RV64FSD category: 'RISC5-Instructions'!
RV64Store subclass: #RV64FSD
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64FSD class' category: 'RISC5-Instructions'!
RV64FSD class
	instanceVariableNames: ''!

!classDefinition: #RV64SB category: 'RISC5-Instructions'!
RV64Store subclass: #RV64SB
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64SB class' category: 'RISC5-Instructions'!
RV64SB class
	instanceVariableNames: ''!

!classDefinition: #RV64SD category: 'RISC5-Instructions'!
RV64Store subclass: #RV64SD
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64SD class' category: 'RISC5-Instructions'!
RV64SD class
	instanceVariableNames: ''!

!classDefinition: #RV64SH category: 'RISC5-Instructions'!
RV64Store subclass: #RV64SH
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64SH class' category: 'RISC5-Instructions'!
RV64SH class
	instanceVariableNames: ''!

!classDefinition: #RV64SW category: 'RISC5-Instructions'!
RV64Store subclass: #RV64SW
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64SW class' category: 'RISC5-Instructions'!
RV64SW class
	instanceVariableNames: ''!

!classDefinition: #RV64UpperAddr category: 'RISC5-Instructions'!
RISC5Instructions subclass: #RV64UpperAddr
	instanceVariableNames: 'immediate20'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64UpperAddr class' category: 'RISC5-Instructions'!
RV64UpperAddr class
	instanceVariableNames: ''!

!classDefinition: #RV64AUIPC category: 'RISC5-Instructions'!
RV64UpperAddr subclass: #RV64AUIPC
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64AUIPC class' category: 'RISC5-Instructions'!
RV64AUIPC class
	instanceVariableNames: ''!

!classDefinition: #RV64LUI category: 'RISC5-Instructions'!
RV64UpperAddr subclass: #RV64LUI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'RISC5-Instructions'!
!classDefinition: 'RV64LUI class' category: 'RISC5-Instructions'!
RV64LUI class
	instanceVariableNames: ''!


!RV64Branch commentStamp: '<historical>' prior: 0!
Branch 

if (regA OP regB) branch to (PC+(immed12 << 1))

Instruction Pattern:
  [immedHi][regB][regA][func3][immLo][opcode] "regDest unused"!

!RV64BEQ commentStamp: '<historical>' prior: 0!
Branch if Equal!

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

!RV64Immediate commentStamp: '<historical>' prior: 0!
Immediate instructions

	destReg := regA OP immed12
	
Instruction Pattern:
  [immed12][sourceReg][func3][destReg][opcode]!

!RV64ADDI commentStamp: '<historical>' prior: 0!
Add Immediate
	destReg := sourceReg OP immediate12

Instruction Pattern:
  [immed12][sourceReg][func3][destReg][opcode]!

!RV64ANDI commentStamp: '<historical>' prior: 0!
And, Immediate!

!RV64EBREAK commentStamp: '<historical>' prior: 0!
Environment Break -- Transfer control to debugger!

!RV64ECALL commentStamp: '<historical>' prior: 0!
Environment Call -- transfer control to OS!

!RV64ORI commentStamp: '<historical>' prior: 0!
Or, Immediate!

!RV64SLLI commentStamp: '<historical>' prior: 0!
Shift Left Logical Immediate!

!RV64SLTI commentStamp: '<historical>' prior: 0!
Set if Less Than, Immediate!

!RV64SLTIU commentStamp: '<historical>' prior: 0!
Set if Less Than, Unsigned Immediate!

!RV64SRAI commentStamp: '<historical>' prior: 0!
Shift Right Arithmatic, Immediate!

!RV64SRLI commentStamp: '<historical>' prior: 0!
Shift Right Logical, Immediate!

!RV64XORI commentStamp: '<historical>' prior: 0!
XOr Immediate!

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

!RV64Load commentStamp: '<historical>' prior: 0!
Load

 regDest := mem(size)At: [baseReg + immedOffset]

Instruction Pattern:
  [immedHi][regBase][func3][immLo][regDest][opcode]

Nota Bene: immediate12 value is split:
  immHi is upper 7 bits; immLo is lower 5 bits!

!RV64FLD commentStamp: '<historical>' prior: 0!
load (8 byte) Floatingpoint Double into register!

!RV64LB commentStamp: '<historical>' prior: 0!
load signed Byte into register!

!RV64LBU commentStamp: '<historical>' prior: 0!
load UNsigned Byte into register!

!RV64LD commentStamp: '<historical>' prior: 0!
load double-width (8 byte) Integer into register!

!RV64LH commentStamp: '<historical>' prior: 0!
load (2 byte) signed HalfWord into register!

!RV64LHU commentStamp: '<historical>' prior: 0!
load (2 byte) UNsigned HalfWord into register!

!RV64LW commentStamp: '<historical>' prior: 0!
load (4 byte) signed Word into register!

!RV64LWU commentStamp: '<historical>' prior: 0!
load (4 byte) UNsigned Word into register!

!RV64Reg3Reg commentStamp: '<historical>' prior: 0!
R => 4 Register opcode; Register to Register

  destReg := regA OP regB



Instruction Pattern:
  [regC][fomat][regB][regA][roundMode][destReg][opcode]!

!RV64ADD commentStamp: '<historical>' prior: 0!
Add registers!

!RV64NOOP commentStamp: '<historical>' prior: 0!
No Operation [a 32 bit instruction useful in padding code for 64bit alignment]!

!RV64AND commentStamp: '<historical>' prior: 0!
AND registers!

!RV64DFloatReg2Reg commentStamp: '<historical>' prior: 0!
dest := Operation( regA )!

!RV64FCVTD2I commentStamp: '<historical>' prior: 0!
Convert a DoubleFloat to a signed Integer

Official opcode is FCVT.L.D which is confusing

Nota Bene: Does NOT copy bits into register (See FMV)!

!RV64FCVTD2UI commentStamp: '<historical>' prior: 0!
Convert a DoubleFloat to an UNsigned Integer

Official opcode is FCVT.LU.D which is confusing

Nota Bene: Does NOT copy bits into register (See FMV)!

!RV64FCVTI2D commentStamp: '<historical>' prior: 0!
Convert a signed Integer into a DoubleFloat

Official opcode is FCVT.D.L which is confusing

Nota Bene: Does NOT copy bits into register (See FMV)!

!RV64FCVTUI2D commentStamp: '<historical>' prior: 0!
Convert an Long UNsigned Integer into a DoubleFloat

Official opcode is FCVT.D.LU which is confusing

Nota Bene: Does NOT copy bits into register (See FMV)!

!RV64FMVD2IR commentStamp: '<historical>' prior: 0!
MoVe an UNCHANGED bit value 
  from DoubleFloat register regA 
  into Integer register regDest

Official opcode is FMV.X.D which is confusing.

Nota Bene: NOT A CONVERSION (See FCVT*)!

!RV64FMVI2DR commentStamp: '<historical>' prior: 0!
MoVe an UNCHANGED bit value 
  from Integer register regA 
  into DoubleFloat register regDest

Official opcode is FMV.D.X which is confusing

Nota Bene: NOT A CONVERSION (See FCVT*)!

!RV64FSQRT commentStamp: '<historical>' prior: 0!
Floating point square root!

!RV64DFloatReg3Reg commentStamp: '<historical>' prior: 0!
destReg := regA OP regB!

!RV64FADD commentStamp: '<historical>' prior: 0!
add FloatingPoint Numbers!

!RV64FDIV commentStamp: '<historical>' prior: 0!
Divide FloatingPoint Numbers!

!RV64FEQ commentStamp: '<historical>' prior: 0!
If Floatings in RegA and RegB compare EQual
  write 1 into integer destReg,
  else 0.
Result is 0 is either regA or regB contains a NAN!

!RV64FLE commentStamp: '<historical>' prior: 0!
If float in RegA is Less than or Equal to float in RegB
  write 1 into integer destReg,
  else 0.
Result is 0 is either regA or regB contains a NAN!

!RV64FLT commentStamp: '<historical>' prior: 0!
If float in RegA is Less Than to float in RegB
  write 1 into integer destReg,
  else 0.
Result is 0 is either regA or regB contains a NAN!

!RV64FMAX commentStamp: '<historical>' prior: 0!
Floats: Result is max( regA,  regB )!

!RV64FMIN commentStamp: '<historical>' prior: 0!
Floats: Result is min( regA,  regB )!

!RV64FMUL commentStamp: '<historical>' prior: 0!
Multiply FloatingPoint Numbers!

!RV64FSUB commentStamp: '<historical>' prior: 0!
subtract FloatingPoint Numbers!

!RV64DIV commentStamp: '<historical>' prior: 0!
Divide registers

  dstReg := regA / regB!

!RV64DIVU commentStamp: '<historical>' prior: 0!
Register UNSIGNED DIVide, rounds toward zero!

!RV64MUL commentStamp: '<historical>' prior: 0!
MULtiply registers!

!RV64OR commentStamp: '<historical>' prior: 0!
Inclusive OR registers {distinguish XOR)!

!RV64REM commentStamp: '<historical>' prior: 0!
REMainder

	destReg := regA % regB!

!RV64REMU commentStamp: '<historical>' prior: 0!
UNSIGNED REMainder!

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
Shift Right, Arithmatic -- destReg := regA >> regB; most significant bit duplicated!

!RV64SRL commentStamp: '<historical>' prior: 0!
Shift Right, Logical -- destReg := regA >> regB!

!RV64SUB commentStamp: '<historical>' prior: 0!
SUBtract registers

destReg := regA - regB!

!RV64XOR commentStamp: '<historical>' prior: 0!
eXclusive OR registers {distinguish OR)!

!RV64Reg4Reg commentStamp: '<historical>' prior: 0!
R => 4 Register opcode; Register to Register

  destReg := regA MulOP regB ArithOp regC

E.g. for "fused multiply-add"

Instruction Pattern:
  [regC][fomat][regB][regA][roundMode][destReg][opcode]!

!RV64FMADD commentStamp: '<historical>' prior: 0!
Fused Multiply-Add!

!RV64FMSUB commentStamp: '<historical>' prior: 0!
Fused Multiply-Subtract!

!RV64FNMADD commentStamp: '<historical>' prior: 0!
Fused Negative-Multiply-Add!

!RV64FNMSUB commentStamp: '<historical>' prior: 0!
Fused Negative-Multiply-Subtract!

!RV64Store commentStamp: '<historical>' prior: 0!
Store  -- "NB: 'destReg' used for 'sourceReg"

 mem(size)At: [baseReg + immedOffset] := regSource(size) 

Instruction Pattern:
  [immedHi][regSource][regBase][func3][immLo][opcode]!

!RV64FSD commentStamp: '<historical>' prior: 0!
Store 8 byte DoubleFloat into memory!

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

!RISC5Regs class methodsFor: 'class initialization' stamp: 'KenD 10/7/2022 14:18:25'!
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
 	 X8 :=  FramePtr := Sav0 := 8.
 	 X9 :=  Sav1 := 9.
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
	
	"Float Rounding Modes"
	RoundNearestToEven := 2r000. "RME Round to Nearest, ties to Even"
	RoundTwordZero := 2r001. "RTZ Round Towards Zero"
	RoundDown := 2r010. "RDN Round DowN (toward -infinity)"
	RoundUp := 2r011. "RUP Round UP (towards +infinity)"
	RoundNearestToMax := 2r100. "RMM Round to nearest, ties to Max Magnitude"
	DYNamic := 2r111. "DYN In instruction's #rm field, select dynamic; else illegal"
	"2r101 & 2r110 reserved for future use"
	
	"Float Data Formats"
	SizeSingle  := 2r00. "Single Precision"
	SizeDouble := 2r01. "Double Precision"
	SizeHalf := 2r10. "Half Precision"
	SizeQuad := 2r11. "Quad Precision"
! !

!RISC5InstructionsTests methodsFor: 'tests - RV64I' stamp: 'KenD 9/9/2022 12:22:21'!
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
		 = 'lui  ReturnAddr, 16rC0E03' 
		! !

!RISC5Instructions methodsFor: 'initialization' stamp: 'KenD 10/5/2022 11:37:08'!
destReg: regDest
	"Common to all instruction variants"
	destReg := regDest ! !

!RISC5Instructions methodsFor: 'accessing' stamp: 'KenD 10/4/2022 16:00:39'!
instruction
	"Answer an assembled 32 bit instruction"
	self subclassResponsibility ! !

!RISC5Instructions class methodsFor: 'accessing' stamp: 'KenD 10/5/2022 11:57:42'!
floatRegName: regIntEncoding
	"Float register name from 5 bit integer encoding"
	^ FRegs at: regIntEncoding + 1! !

!RISC5Instructions class methodsFor: 'accessing' stamp: 'KenD 10/5/2022 11:57:37'!
intRegName: regIntEncoding
	"Integer register name from 5 bit integer encoding"
	^ IRegs at: regIntEncoding + 1! !

!RISC5Instructions class methodsFor: 'accessing' stamp: 'KenD 5/1/2021 08:46:37'!
opcode

	self subclassResponsibility ! !

!RISC5Instructions class methodsFor: 'accessing' stamp: 'KenD 10/5/2022 11:58:20'!
regName: regIntEncoding
	"Assume integer register"
	^ self intRegName: regIntEncoding! !

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

!RISC5Instructions class methodsFor: 'testing' stamp: 'KenD 11/2/2022 07:57:44'!
fitsIn12bits: anInteger
	"Signed integer `anInteger` fits in immediate12 ?"
	^ (anInteger between: -16r800 and: 16r7FF) ! !

!RISC5Instructions class methodsFor: 'testing' stamp: 'KenD 9/5/2022 12:41:40'!
helloCodeInto: byteStream
"
| strm |
strm := (RWBinaryOrTextStream on: '') useBytes.
RISC5Instructions helloCodeInto: strm.
strm contents asHex.
"
	| instructionObjects instructionWords |
	
"msg:
	.ascii "	"Hello RISCV World!!\n""
"
	instructionObjects := {
		"LI A0, STDERR" 
		RV64ADDI regDest: Arg0 regSource: Zero imm12: 0. "StdError"
		"LA a1, msg -- where 'msg' is the address added by the linker"
		RV64AUIPC regDest: Arg1 immediate: 0. "msg[31:12]"
		RV64ADDI regDest: Arg1 regSource: Arg1 imm12: 0. "msg[11:0] "
		"LI a2,20"
		RV64ADDI regDest: Arg2 regSource: Zero imm12: 20. "str len"
		"LI a7, SYS_WRITE"
		RV64ADDI regDest: Arg7 regSource: Zero imm12: 64. "kernel call#"
		"ECALL"
		RV64ECALL new.
		"LI	a0, 0"
		RV64ADDI regDest: Arg0 regSource: Zero imm12: 0. "no error"
		"LI	a7, SYS_EXIT"
		RV64ADDI regDest: Arg7 regSource: Zero imm12: 93. "kernel call#"
		"ECALL"
		RV64ECALL new.
		"Keep prefetch happy."
		RV64NOOP new.
		RV64NOOP new.
		RV64NOOP new.
		RV64NOOP new.
	}.
	instructionWords := (instructionObjects collect: [ :i | i instruction ]) asWordArray.
	1 to: instructionWords size do: [ :index | | fourByteArray |
		fourByteArray := instructionWords bytesAt: index.
		1 to: 4 do: [ :bytePos | byteStream nextPut: (fourByteArray at: bytePos)]
	].
		
		
		
	! !

!RISC5Instructions class methodsFor: 'testing' stamp: 'KenD 9/5/2022 12:48:56'!
helloCodeToTranscript
"
  self helloCodeToTranscript.
"
{
		"LI A0, STDERR" 
		RV64ADDI regDest: Arg0 regSource: Zero imm12: 0. "StdError"
		"LA a1, msg -- where 'msg' is the address added by the linker"
		RV64AUIPC regDest: Arg1 immediate: 0. "msg[31:12]"
		RV64ADDI regDest: Arg1 regSource: Arg1 imm12: 0. "msg[11:0] "
		"LI a2,20"
		RV64ADDI regDest: Arg2 regSource: Zero imm12: 20. "str len"
		"LI a7, SYS_WRITE"
		RV64ADDI regDest: Arg7 regSource: Zero imm12: 64. "kernel call#"
		"ECALL"
		RV64ECALL new.
		"LI	a0, 0"
		RV64ADDI regDest: Arg0 regSource: Zero imm12: 0. "no error"
		"LI	a7, SYS_EXIT"
		RV64ADDI regDest: Arg7 regSource: Zero imm12: 93. "kernel call#"
		"ECALL"
		RV64ECALL new.
		"Keep prefetch happy."
		RV64NOOP new.
		RV64NOOP new.
		RV64NOOP new.
		RV64NOOP new.
	} do: [ :op | Transcript log: op printString; newLine ].! !

!RISC5Instructions class methodsFor: 'testing' stamp: 'KenD 9/5/2022 11:44:04'!
helloDataInto: byteStream
"
| strm |
strm := (RWBinaryOrTextStream on: '') useBytes.
RISC5Instructions helloDataInto: strm.
strm contents. ""a ByteString""
strm contents asString.
"
	'Hello RISCV World!!\n' asByteString do: [ :byte | byteStream nextPut: byte ].! !

!RV64Branch methodsFor: 'accessing' stamp: 'KenD 5/8/2021 07:11:01'!
func3

	self subclassResponsibility ! !

!RV64Branch methodsFor: 'accessing' stamp: 'KenD 5/8/2021 07:10:55'!
func7

	self shouldNotImplement ! !

!RV64Branch methodsFor: 'accessing' stamp: 'KenD 5/8/2021 07:12:58'!
instruction
" [immHi 25:31][baseReg 20:24][destReg 15:19][func3 12:14][immLo 7:11][opcode 6:0]"
	^(immHi << 25) 
	 + (regB << 20) "NB: really Source Reg"
	 + (regA << 15) 
	 + (self func3 << 12) 
	 + (immLo << 7) 
	 + self opcode! !

!RV64Branch methodsFor: 'accessing' stamp: 'KenD 5/8/2021 07:30:47'!
offset

	"Answer assembled immediate
	  Nota Bene: immed12 multiplied by 2"
	^ ((immHi << 5) + immLo) << 1 ! !

!RV64Branch methodsFor: 'accessing' stamp: 'KenD 5/8/2021 07:10:48'!
opName

	self subclassResponsibility ! !

!RV64Branch methodsFor: 'accessing' stamp: 'KenD 5/8/2021 07:11:47'!
opcode
	"Opcode for all S-type instructions"
	^2r1100011! !

!RV64Branch methodsFor: 'initialization' stamp: 'KenD 5/8/2021 07:08:15'!
regA: reg1 regB: reg2 immLo: lo mmHi: hi

	regA := reg1.
	regB := reg2.
	immLo := lo.
	immHi := hi
! !

!RV64Branch methodsFor: 'printing' stamp: 'KenD 5/8/2021 07:10:02'!
printString
	"E.g.: 'beq  r1,r2,offset' "
	^ self opName, '  ',
		(self class regName: regA), ', ',  "NB: 'destReg'  unused"
		(self class regName: regB ), ', 16r', 
		(self offset printStringBase: 16)! !

!RV64Branch class methodsFor: 'instance creation' stamp: 'KenD 5/8/2021 07:32:18'!
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

!RV64Immediate methodsFor: 'initialization' stamp: 'KenD 5/3/2021 15:16:54'!
destReg: regDest regSource: reg1 imm12: immediateInt12

	super destReg: regDest .
	sourceReg := reg1.
	immediate12 := immediateInt12 ! !

!RV64Immediate methodsFor: 'accessing' stamp: 'KenD 5/4/2021 11:38:20'!
func3

	self subclassResponsibility ! !

!RV64Immediate methodsFor: 'accessing' stamp: 'KenD 5/4/2021 11:38:44'!
func7

	self subclassResponsibility ! !

!RV64Immediate methodsFor: 'accessing' stamp: 'KenD 5/11/2021 14:15:19'!
instruction
	"[immed12 31:20][rSource1 19:15][func3 14:12][rd 11:7][opcode 6:0]"
	^(immediate12 << 20) 
	 + (sourceReg << 15) 
	 + (self func3 << 12) 
	 + (destReg << 7) 
	 + self opcode! !

!RV64Immediate methodsFor: 'accessing' stamp: 'KenD 5/4/2021 11:30:49'!
opcode
	"Opcode for all I-type instructions"
	^2r0010011! !

!RV64Immediate methodsFor: 'printing' stamp: 'KenD 5/3/2021 15:18:24'!
printString
	"E.g.: 'addi  rd,r1s,36' "
	^ self opName, '  ',
		(self class regName: destReg), ', ', 
		(self class regName: sourceReg), ', ', 
		'16r', (immediate12 printStringBase: 16).  "FIXME: 0x??"! !

!RV64Immediate class methodsFor: 'instance creation' stamp: 'KenD 11/2/2022 07:58:09'!
regDest: destReg regSource: reg1 imm12: immediate12

	(self fitsIn12bits: immediate12) 
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

!RV64Load methodsFor: 'accessing' stamp: 'KenD 5/4/2021 08:06:50'!
func3

	self subclassResponsibility ! !

!RV64Load methodsFor: 'accessing' stamp: 'KenD 5/4/2021 11:54:28'!
func7

	self shouldNotImplement ! !

!RV64Load methodsFor: 'accessing' stamp: 'KenD 5/7/2021 16:11:51'!
instruction
" [immOffset 20:31][baseReg 15:19][func3 12:14][destReg 7:11][opcode 6:0]"
	^ (immedOffset << 20) 
	 + (baseReg << 15) 
	 + (self func3 << 12) 
	 + (destReg << 7) 
	 + self opcode! !

!RV64Load methodsFor: 'accessing' stamp: 'KenD 5/7/2021 16:09:37'!
offset

	"Answer assembled immediate"
	^immedOffset ! !

!RV64Load methodsFor: 'accessing' stamp: 'KenD 5/4/2021 08:07:03'!
opName

	self subclassResponsibility ! !

!RV64Load methodsFor: 'accessing' stamp: 'KenD 5/4/2021 12:34:51'!
opcode
	"Opcode for all L-type instructions"
	^2r0000011! !

!RV64Load methodsFor: 'initialization' stamp: 'KenD 5/7/2021 16:07:32'!
destReg: regDest baseReg: reg1 immedOffset: immed12

	super destReg: regDest .
	baseReg := reg1.
	immedOffset := immed12 ! !

!RV64Load methodsFor: 'printing' stamp: 'KenD 5/9/2021 16:04:53'!
printString
	"E.g.: 'lb  rDest,rBase,offset' "
	^ self opName, '  ',
		(self class regName: destReg), ', ', 
		(self class regName: baseReg ), ', 16r', 
		(self offset printStringBase: 16)! !

!RV64Load class methodsFor: 'instance creation' stamp: 'KenD 5/7/2021 16:05:43'!
regDest: rd regBase: rb immediateOffset: immediate12
	
	(immediate12 bitAnd: 16rFFF) = immediate12 
		ifFalse: [DomainError signal: 'too big for 12 bit immediate'].

	^self new 
			destReg: rd 
			baseReg: rb 
			immedOffset: immediate12 ! !

!RV64FLD methodsFor: 'accessing' stamp: 'KenD 10/13/2022 09:55:40'!
func3

	^ 2r011! !

!RV64FLD methodsFor: 'accessing' stamp: 'KenD 10/7/2022 13:48:31'!
opName

	^'Fld'! !

!RV64FLD methodsFor: 'accessing' stamp: 'KenD 10/7/2022 13:49:25'!
opcode

	^ 2r0000111! !

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

!RV64LD methodsFor: 'accessing' stamp: 'KenD 10/16/2022 14:26:09'!
opName
	"load double-width Integer -> 8 bytes"
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

!RV64Reg3Reg methodsFor: 'printing' stamp: 'KenD 5/3/2021 12:00:09'!
printString
	"E.g.: 'add  rd,r1,r2' "
	^ self opName, '  ',
		(self class regName: destReg), ', ', 
		(self class regName: regA), ',', 
		(self class regName: regB)! !

!RV64Reg3Reg methodsFor: 'accessing' stamp: 'KenD 5/3/2021 12:14:26'!
func3

	self subclassResponsibility ! !

!RV64Reg3Reg methodsFor: 'accessing' stamp: 'KenD 5/3/2021 12:14:30'!
func7

	self subclassResponsibility ! !

!RV64Reg3Reg methodsFor: 'accessing' stamp: 'KenD 5/3/2021 12:12:43'!
instruction
	
	^self class
		assembleFunc7: self func7 
		r2: regB
		r1: regA
		func3: self func3 
		rd: destReg 
		op: self class opcode! !

!RV64Reg3Reg methodsFor: 'accessing' stamp: 'KenD 5/3/2021 12:01:13'!
opName

	self subclassResponsibility ! !

!RV64Reg3Reg methodsFor: 'initialization' stamp: 'KenD 5/1/2021 08:48:48'!
destReg: regDest regA: reg1 regB: reg2

	super destReg: regDest .
	regA := reg1.
	regB := reg2! !

!RV64Reg3Reg class methodsFor: 'accessing' stamp: 'KenD 5/1/2021 16:10:11'!
opcode
	"Opcode for all R-type instructions"
	^2r0110011! !

!RV64Reg3Reg class methodsFor: 'instance creation' stamp: 'KenD 5/1/2021 16:07:42'!
regDest: destReg regA: reg1 regB: reg2

	^self new destReg: destReg regA: reg1 regB: reg2! !

!RV64Reg3Reg class methodsFor: 'instruction assembly' stamp: 'KenD 5/1/2021 09:21:51'!
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

!RV64NOOP methodsFor: 'printing' stamp: 'KenD 9/5/2022 13:01:53'!
printString

	^self opName! !

!RV64NOOP methodsFor: 'accessing' stamp: 'KenD 9/5/2022 12:12:20'!
opName

	^'noop'! !

!RV64NOOP methodsFor: 'initialization' stamp: 'KenD 9/5/2022 12:16:20'!
destReg: regDest regA: reg1 regB: reg2

	self error: 'NoOp (NoOperation) takes zero arguments'.! !

!RV64NOOP methodsFor: 'initialization' stamp: 'KenD 9/5/2022 12:43:36'!
initialize
	"ADD Zero to Zero, and put in register Zero"
	super destReg: Zero.
	regA := regB := Zero.! !

!RV64AND methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:15:47'!
func3

	^16r7! !

!RV64AND methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:15:35'!
func7

	^16r00! !

!RV64AND methodsFor: 'accessing' stamp: 'KenD 5/3/2021 14:15:14'!
opName

	^'and'! !

!RV64DFloatReg2Reg class methodsFor: 'accessing' stamp: 'KenD 10/8/2022 13:38:57'!
defaultRoundingMode

	^ RoundNearestToEven "IEEE spec default"! !

!RV64FCVTD2I methodsFor: 'accessing' stamp: 'KenD 10/8/2022 14:35:42'!
func3

	^ roundingMode ! !

!RV64FCVTD2I methodsFor: 'accessing' stamp: 'KenD 10/8/2022 14:36:41'!
func7

	^ 2r1100001! !

!RV64FCVTD2I methodsFor: 'accessing' stamp: 'KenD 10/8/2022 14:35:26'!
opName

	^ 'FcvtD2I'! !

!RV64FCVTD2I class methodsFor: 'instance creation' stamp: 'KenD 10/8/2022 14:39:55'!
regDest: destReg regA: reg1 roundingMode: rm

	^self new destReg: destReg regA: reg1 
		regB: 2r00010 
		roundingMode: rm! !

!RV64FCVTD2UI methodsFor: 'accessing' stamp: 'KenD 10/8/2022 14:38:24'!
func3

	^ roundingMode ! !

!RV64FCVTD2UI methodsFor: 'accessing' stamp: 'KenD 10/8/2022 14:38:17'!
func7

	^ 2r1100001! !

!RV64FCVTD2UI methodsFor: 'accessing' stamp: 'KenD 10/8/2022 14:38:07'!
opName

	^ 'FcvtD2UI'! !

!RV64FCVTD2UI class methodsFor: 'instance creation' stamp: 'KenD 10/8/2022 14:40:26'!
regDest: destReg regA: reg1 roundingMode: rm

	^self new destReg: destReg regA: reg1 
		regB: 2r00011 
		roundingMode: rm! !

!RV64FCVTI2D methodsFor: 'accessing' stamp: 'KenD 10/8/2022 14:04:08'!
func3

	^ roundingMode ! !

!RV64FCVTI2D methodsFor: 'accessing' stamp: 'KenD 10/8/2022 14:30:35'!
func7

	^ 2r1101001! !

!RV64FCVTI2D methodsFor: 'accessing' stamp: 'KenD 10/8/2022 14:33:38'!
opName

	^ 'FcvtI2D' "Integer 2 DoubleFloat"! !

!RV64FCVTI2D class methodsFor: 'instance creation' stamp: 'KenD 10/8/2022 14:09:28'!
regDest: destReg regA: reg1 roundingMode: rm

	^self new destReg: destReg regA: reg1 
		regB: 2r00010 
		roundingMode: rm! !

!RV64FCVTUI2D methodsFor: 'accessing' stamp: 'KenD 10/8/2022 14:03:59'!
func3

	^ roundingMode ! !

!RV64FCVTUI2D methodsFor: 'accessing' stamp: 'KenD 10/8/2022 14:30:28'!
func7

	^ 2r1101001! !

!RV64FCVTUI2D methodsFor: 'accessing' stamp: 'KenD 10/8/2022 14:33:30'!
opName

	^ 'FcvtUI2D' "Unsigned Integer 2 DoubleFloat"! !

!RV64FCVTUI2D class methodsFor: 'instance creation' stamp: 'KenD 10/8/2022 14:09:10'!
regDest: destReg regA: reg1 roundingMode: rm

	^self new destReg: destReg regA: reg1 
		regB: 2r00011 
		roundingMode: rm! !

!RV64FMVD2IR methodsFor: 'accessing' stamp: 'KenD 10/8/2022 14:21:08'!
func3

	^ 2r000! !

!RV64FMVD2IR methodsFor: 'accessing' stamp: 'KenD 10/8/2022 14:22:15'!
func7

	^ 2r1110001! !

!RV64FMVD2IR methodsFor: 'accessing' stamp: 'KenD 10/8/2022 14:53:39'!
opName

	^ 'FmvD2I' "Copy bits from DoubleFloat src to Integer dest register"! !

!RV64FMVD2IR class methodsFor: 'instance creation' stamp: 'KenD 10/8/2022 14:58:48'!
regDest: destReg regA: reg1

	^self new destReg: destReg regA: reg1 
		regB: Zero
		roundingMode: 2r000! !

!RV64FMVI2DR methodsFor: 'initialization' stamp: 'KenD 10/8/2022 13:32:17'!
destReg: destR regA: reg1

	"Nota Bene: reg2 specifier MUST BE ZERO"
	super destReg: destR regA: reg1 regB: Zero.
	roundingMode := 0.! !

!RV64FMVI2DR methodsFor: 'initialization' stamp: 'KenD 10/8/2022 14:56:50'!
destReg: destR regA: reg1 regB: reg2

	"Nota Bene: reg2 specifier MUST BE ZERO"
	super destReg: destR regA: reg1 regB: Zero.
	roundingMode := 0.! !

!RV64FMVI2DR methodsFor: 'accessing' stamp: 'KenD 10/8/2022 13:29:16'!
func3

	^ 2r000! !

!RV64FMVI2DR methodsFor: 'accessing' stamp: 'KenD 10/8/2022 14:21:42'!
func7

	^ 2r1111001! !

!RV64FMVI2DR methodsFor: 'accessing' stamp: 'KenD 10/8/2022 14:52:19'!
opName

	^ 'FmvI2D' "Copy Integer Reg bits into DoubleFloat destination register"! !

!RV64FMVI2DR class methodsFor: 'instance creation' stamp: 'KenD 10/8/2022 14:59:24'!
regDest: destReg regA: reg1

	^self new destReg: destReg regA: reg1 
		regB: Zero
		roundingMode: 2r000! !

!RV64FSQRT methodsFor: 'accessing' stamp: 'KenD 10/8/2022 08:45:45'!
func3

	^ roundingMode ! !

!RV64FSQRT methodsFor: 'accessing' stamp: 'KenD 10/13/2022 07:33:42'!
func7

	^ 2r0101101! !

!RV64FSQRT methodsFor: 'initialization' stamp: 'KenD 10/8/2022 13:37:53'!
destReg: destR regA: reg1

	"Nota Bene: reg2 specifier MUST BE ZERO"
	super destReg: destR regA: reg1 regB: Zero.
	roundingMode := self class defaultRoundingMode.! !

!RV64FSQRT methodsFor: 'initialization' stamp: 'KenD 10/8/2022 08:51:13'!
destReg: destR regA: reg1 regB: reg2 roundingMode: rm

	"Nota Bene: reg2 specifier MUST BE ZERO"
	super destReg: destR regA: reg1 regB: reg2.
	roundingMode := rm.! !

!RV64FSQRT class methodsFor: 'instance creation' stamp: 'KenD 10/8/2022 14:07:36'!
regDest: destReg regA: reg1

	^self regDest: destReg regA: reg1 
		regB: Zero 
		roundingMode: self class defaultRoundingMode ! !

!RV64FSQRT class methodsFor: 'instance creation' stamp: 'KenD 10/8/2022 08:49:37'!
regDest: destReg regA: reg1 regB: reg2 roundingMode: rm

	(reg2 isZero) ifFalse: [self error: 'FSQRT has only source and dest registers'].
	^self new destReg: destReg regA: reg1 regB: reg2 roundingMode: rm! !

!RV64FSQRT class methodsFor: 'instance creation' stamp: 'KenD 10/8/2022 08:48:05'!
regDest: destReg regA: reg1 roundingMode: rm

	^self new destReg: destReg regA: reg1 regB: Zero roundingMode: rm! !

!RV64FSQRT class methodsFor: 'accessing' stamp: 'KenD 10/8/2022 08:47:09'!
opcode
	"Opcode for all floating point R-format instructions"
	^ 2r1010011! !

!RV64DFloatReg3Reg methodsFor: 'initialization' stamp: 'KenD 10/9/2022 10:52:50'!
destReg: destR regA: reg1 regB: reg2

	super destReg: destR regA: reg1 regB: reg2.
	roundingMode := self class defaultRoundingMode.! !

!RV64DFloatReg3Reg methodsFor: 'initialization' stamp: 'KenD 10/7/2022 14:27:32'!
destReg: destR regA: reg1 regB: reg2 roundingMode: rm

	super destReg: destR regA: reg1 regB: reg2.
	roundingMode := rm.! !

!RV64DFloatReg3Reg methodsFor: 'accessing' stamp: 'KenD 10/7/2022 14:44:05'!
func3

	^ roundingMode! !

!RV64DFloatReg3Reg class methodsFor: 'instance creation' stamp: 'KenD 10/8/2022 13:42:49'!
regDest: destReg regA: reg1 regB: reg2

	^self regDest: destReg regA: reg1 regB: reg2 roundingMode: self class defaultRoundingMode! !

!RV64DFloatReg3Reg class methodsFor: 'instance creation' stamp: 'KenD 10/7/2022 14:38:12'!
regDest: destReg regA: reg1 regB: reg2 roundingMode: rm

	^self new destReg: destReg regA: reg1 regB: reg2 roundingMode: rm! !

!RV64DFloatReg3Reg class methodsFor: 'accessing' stamp: 'KenD 10/7/2022 14:50:44'!
opcode
	"Opcode for all floating point R-format instructions"
	^ 2r1010011! !

!RV64FADD methodsFor: 'accessing' stamp: 'KenD 10/7/2022 14:46:32'!
func7

	^ 2r0000001! !

!RV64FADD methodsFor: 'accessing' stamp: 'KenD 10/7/2022 14:28:40'!
opName

	^'Fadd'! !

!RV64FDIV methodsFor: 'accessing' stamp: 'KenD 10/7/2022 14:47:50'!
func7

	^ 2r0001101! !

!RV64FDIV methodsFor: 'accessing' stamp: 'KenD 10/7/2022 14:42:50'!
opName

	^'Fdiv'! !

!RV64FEQ methodsFor: 'accessing' stamp: 'KenD 10/8/2022 08:37:30'!
func3

	^ 2r010! !

!RV64FEQ methodsFor: 'accessing' stamp: 'KenD 10/13/2022 07:37:25'!
func7

	^ 2r1010001! !

!RV64FEQ methodsFor: 'accessing' stamp: 'KenD 10/8/2022 08:36:13'!
opName

	^ 'Feq'! !

!RV64FLE methodsFor: 'accessing' stamp: 'KenD 10/13/2022 07:36:47'!
func3

	^ 2r000! !

!RV64FLE methodsFor: 'accessing' stamp: 'KenD 10/13/2022 07:37:31'!
func7

	^ 2r1010001! !

!RV64FLE methodsFor: 'accessing' stamp: 'KenD 10/8/2022 08:38:06'!
opName

	^ 'Flt'! !

!RV64FLT methodsFor: 'accessing' stamp: 'KenD 10/13/2022 07:36:36'!
func3

	^ 2r001! !

!RV64FLT methodsFor: 'accessing' stamp: 'KenD 10/13/2022 07:37:39'!
func7

	^ 2r1010001! !

!RV64FLT methodsFor: 'accessing' stamp: 'KenD 10/8/2022 08:39:38'!
opName

	^ 'Flt'! !

!RV64FMAX methodsFor: 'accessing' stamp: 'KenD 10/8/2022 13:51:40'!
func3

	^ 2r001! !

!RV64FMAX methodsFor: 'accessing' stamp: 'KenD 10/8/2022 13:52:24'!
func7

	^ 2r0010101! !

!RV64FMAX methodsFor: 'accessing' stamp: 'KenD 10/8/2022 13:50:24'!
opName
	
	^ 'Fmax'! !

!RV64FMIN methodsFor: 'accessing' stamp: 'KenD 10/8/2022 13:51:19'!
func3

	^ 2r000! !

!RV64FMIN methodsFor: 'accessing' stamp: 'KenD 10/8/2022 13:52:33'!
func7

	^ 2r0010101! !

!RV64FMIN methodsFor: 'accessing' stamp: 'KenD 10/8/2022 13:50:42'!
opName
	
	^ 'Fmin'! !

!RV64FMUL methodsFor: 'accessing' stamp: 'KenD 10/7/2022 14:47:28'!
func7

	^ 2r0001001! !

!RV64FMUL methodsFor: 'accessing' stamp: 'KenD 10/7/2022 14:34:37'!
opName

	^'Fmul'! !

!RV64FSUB methodsFor: 'accessing' stamp: 'KenD 10/7/2022 14:46:52'!
func7

	^ 2r0000101! !

!RV64FSUB methodsFor: 'accessing' stamp: 'KenD 10/7/2022 14:32:27'!
opName

	^'Fsub'! !

!RV64DIV methodsFor: 'accessing' stamp: 'KenD 10/16/2022 12:24:53'!
func3

	^ 2r100! !

!RV64DIV methodsFor: 'accessing' stamp: 'KenD 10/16/2022 12:25:08'!
func7

	^ 2r0000001! !

!RV64DIV methodsFor: 'accessing' stamp: 'KenD 10/16/2022 12:23:51'!
opName

	^ 'Div'! !

!RV64DIVU methodsFor: 'accessing' stamp: 'KenD 10/16/2022 12:26:36'!
func3

	^ 2r101! !

!RV64DIVU methodsFor: 'accessing' stamp: 'KenD 10/16/2022 12:26:51'!
func7

	^ 2r0000001! !

!RV64DIVU methodsFor: 'accessing' stamp: 'KenD 10/16/2022 12:26:19'!
opName

	^ 'DivU'! !

!RV64MUL methodsFor: 'accessing' stamp: 'KenD 10/16/2022 12:21:23'!
func3

	^ 2r000! !

!RV64MUL methodsFor: 'accessing' stamp: 'KenD 10/16/2022 12:21:11'!
func7

	^ 2r0000001! !

!RV64MUL methodsFor: 'accessing' stamp: 'KenD 10/16/2022 12:19:38'!
opName

	^ 'Mul'! !

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

!RV64REM methodsFor: 'accessing' stamp: 'KenD 10/16/2022 12:28:28'!
func3

	^ 2r110! !

!RV64REM methodsFor: 'accessing' stamp: 'KenD 10/16/2022 12:28:50'!
func7

	^ 2r0000001! !

!RV64REM methodsFor: 'accessing' stamp: 'KenD 10/16/2022 12:28:10'!
opName

	^ 'Rem'! !

!RV64REMU methodsFor: 'accessing' stamp: 'KenD 10/16/2022 12:29:35'!
func3

	^ 2r111! !

!RV64REMU methodsFor: 'accessing' stamp: 'KenD 10/16/2022 12:29:24'!
func7

	^ 2r0000001! !

!RV64REMU methodsFor: 'accessing' stamp: 'KenD 10/16/2022 12:29:46'!
opName

	^ 'RemU'! !

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

!RV64Reg4Reg methodsFor: 'accessing' stamp: 'KenD 10/7/2022 13:19:54'!
instruction
" [regC31:27][fomat26:25][regB24:20][regA19:15][roundMode14:12][destReg11:7][opcode6:0]"
	^  (regC << 27)
	 + (precision << 25) 
	 + (regB << 20)
	 + (regA << 15) 
	 + (roundMode << 12) 
	 + (destReg << 7) 
	 + self opcode! !

!RV64Reg4Reg methodsFor: 'initialization' stamp: 'KenD 10/7/2022 12:10:24'!
destReg: destR regA: reg1 regB: reg2 regC: reg3 roundMode: rm format: fmt

	destReg := destR.
	regA := reg1.
	regB := reg2.
	regC := reg3.
	roundMode := rm.
	precision := fmt.! !

!RV64Reg4Reg class methodsFor: 'accessing' stamp: 'KenD 10/7/2022 11:43:29'!
opcode

	self subclassResponsibility ! !

!RV64Reg4Reg class methodsFor: 'instance creation' stamp: 'KenD 10/8/2022 13:40:35'!
regDest: destReg regA: reg1 regB: reg2 regC: reg3

	^self new regDest: destReg regA: reg1 regB: reg2 regC: reg3 
		roundMode: self class defaultRoundingMode format: SizeDouble! !

!RV64Reg4Reg class methodsFor: 'instance creation' stamp: 'KenD 10/7/2022 14:20:05'!
regDest: destReg regA: reg1 regB: reg2 regC: reg3 roundMode: rm

	^self new regDest: destReg regA: reg1 regB: reg2 regC: reg3 
		roundMode: rm format: SizeDouble! !

!RV64Reg4Reg class methodsFor: 'instance creation' stamp: 'KenD 10/7/2022 14:20:15'!
regDest: destReg regA: reg1 regB: reg2 regC: reg3 roundMode: rm format: fmt

	^self new destReg: destReg regA: reg1 regB: reg2 regC: reg3 
		roundMode: rm format: fmt! !

!RV64FMADD methodsFor: 'accessing' stamp: 'KenD 10/7/2022 13:23:04'!
opName

	^'FMulAdd'! !

!RV64FMADD methodsFor: 'accessing' stamp: 'KenD 10/7/2022 13:23:57'!
opcode

	^ 2r100011! !

!RV64FMSUB methodsFor: 'accessing' stamp: 'KenD 10/7/2022 13:29:22'!
opName

	^ 'FMulSub'! !

!RV64FMSUB methodsFor: 'accessing' stamp: 'KenD 10/7/2022 13:29:07'!
opcode

	^ 2r1001011! !

!RV64FNMADD methodsFor: 'accessing' stamp: 'KenD 10/7/2022 13:31:06'!
opName

	^'FNegMulAdd'! !

!RV64FNMADD methodsFor: 'accessing' stamp: 'KenD 10/7/2022 13:31:56'!
opcode

	^ 2r100111! !

!RV64FNMSUB methodsFor: 'accessing' stamp: 'KenD 10/7/2022 13:33:07'!
opName

	^'FNegMulSub'! !

!RV64FNMSUB methodsFor: 'accessing' stamp: 'KenD 10/7/2022 13:33:38'!
opcode

	^ 2r1001011! !

!RV64Store methodsFor: 'accessing' stamp: 'KenD 5/7/2021 15:40:20'!
func3

	self subclassResponsibility ! !

!RV64Store methodsFor: 'accessing' stamp: 'KenD 5/7/2021 15:40:12'!
func7

	self shouldNotImplement ! !

!RV64Store methodsFor: 'accessing' stamp: 'KenD 5/7/2021 16:04:11'!
instruction
" [immHi 25:31][baseReg 20:24][destReg 15:19][func3 12:14][immLo 7:11][opcode 6:0]"
	^(immHi << 25) 
	 + (destReg << 20) "NB: really Source Reg"
	 + (baseReg << 15) 
	 + (self func3 << 12) 
	 + (immLo << 7) 
	 + self opcode! !

!RV64Store methodsFor: 'accessing' stamp: 'KenD 5/7/2021 15:40:54'!
offset

	"Answer assembled immediate"
	^ (immHi << 5) + immLo ! !

!RV64Store methodsFor: 'accessing' stamp: 'KenD 5/7/2021 15:41:02'!
opName

	self subclassResponsibility ! !

!RV64Store methodsFor: 'accessing' stamp: 'KenD 5/7/2021 15:41:26'!
opcode
	"Opcode for all S-type instructions"
	^2r0100011! !

!RV64Store methodsFor: 'initialization' stamp: 'KenD 11/2/2022 12:22:35'!
srcReg: rs baseReg: rb  immLo: lo immHi: hi

	super destReg: rs.
	baseReg := rb.
	immLo := lo.
	immHi := hi! !

!RV64Store methodsFor: 'printing' stamp: 'KenD 5/7/2021 15:42:32'!
printString
	"E.g.: 'lb  rd,rBase,offset' "
	^ self opName, '  ',
		(self class regName: destReg), ', ',  "NB: 'destReg' used for 'sourceReg"
		(self class regName: baseReg ), ', 16r', 
		(self offset printStringBase: 16)! !

!RV64Store class methodsFor: 'instance creation' stamp: 'KenD 5/7/2021 15:38:48'!
regSource: rs regBase: rb immediateOffset: immediate12
	
	(immediate12 bitAnd: 16rFFF) = immediate12 
		ifFalse: [DomainError signal: 'too big for 12 bit immediate'].

	^self new 
			srcReg: rs
			baseReg: rb 
			immLo: (immediate12 bitAnd: 2r000000011111) 
			immHi: ((immediate12 bitAnd: 2r111111100000) >> 5)! !

!RV64FSD methodsFor: 'accessing' stamp: 'KenD 10/13/2022 09:54:51'!
func3

	^ 2r011! !

!RV64FSD methodsFor: 'accessing' stamp: 'KenD 10/7/2022 13:52:22'!
opName

	^ 'Fsd'! !

!RV64FSD methodsFor: 'accessing' stamp: 'KenD 10/7/2022 13:53:05'!
opcode

	^ 2r0100111! !

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

!RV64UpperAddr methodsFor: 'initialization' stamp: 'KenD 5/11/2021 09:03:52'!
destReg: rd immediate: imm20

	super destReg: rd.
	immediate20 := imm20 ! !

!RV64UpperAddr methodsFor: 'accessing' stamp: 'KenD 9/5/2022 12:57:19'!
instruction
" [imm20 12:31][destReg 7:11][opcode 6:0]"
	^ (immediate20 << 12) 
	 + (destReg << 7) 
	 + self opcode! !

!RV64UpperAddr methodsFor: 'accessing' stamp: 'KenD 5/11/2021 09:07:40'!
opCode

	self subclassResponsibility ! !

!RV64UpperAddr methodsFor: 'accessing' stamp: 'KenD 5/11/2021 09:06:19'!
upperBits
" [imm20 12:31][destReg 7:11][opcode 6:0]"
	^ (immediate20 << 12) ! !

!RV64UpperAddr methodsFor: 'printing' stamp: 'KenD 9/5/2022 13:03:37'!
printString
	"E.g.: 'lui  rDest,immediate "
	^ self opName, '  ',
		(self class regName: destReg), ', 16r', 
		(immediate20 printStringBase: 16)! !

!RV64UpperAddr class methodsFor: 'instance creation' stamp: 'KenD 5/11/2021 09:04:20'!
regDest: rd immediate: imm20

 	(imm20 bitAnd: 16rFFFFF) = imm20 
		ifFalse: [DomainError signal: 'too big for 20 bit immediate'].
		
	^self new
		destReg: rd immediate: imm20
! !

!RV64AUIPC methodsFor: 'accessing' stamp: 'KenD 9/5/2022 13:00:03'!
opName

	"Add Upper Immediate to PC"
	^'auIpc'! !

!RV64AUIPC methodsFor: 'accessing' stamp: 'KenD 9/5/2022 13:00:24'!
opcode
	"Opcode for AUIPC"
	^2r0010111! !

!RV64LUI methodsFor: 'accessing' stamp: 'KenD 9/5/2022 12:59:17'!
opName

	"Load Upper Immediate"
	^'lui'! !

!RV64LUI methodsFor: 'accessing' stamp: 'KenD 9/5/2022 12:59:35'!
opcode
	"Opcode for LUI"
	^2r0110111! !
RISC5Regs initialize!
RISC5Instructions initialize!
