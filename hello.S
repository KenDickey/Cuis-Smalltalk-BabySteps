# RISCV RV64G
# gcc -g  -o hello -O2 -mriscv-attribute -march=rv64g -mabi=lp64d -nostartfiles -nostdlib hello.S

	.equ SYS_WRITE, 64
	.equ SYS_EXIT,  93
	.equ STDERR,     0

	.section .rodata
	.align 2
msg:
	.ascii	"Hello RISCV World!\n"

	.section .text
	.align 2
	.global _start
_start:
	LI	a0, STDERR
	LA	a1, msg
	LI	a2, 20		# len= 20 chars
	LI	a7, SYS_WRITE
	ECALL	
	LI	a0, 0
	LI	a7, SYS_EXIT
	ECALL
