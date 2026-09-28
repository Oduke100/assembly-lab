	##  this is to subtract, the idea is same to the add programm

	.text
	.global _start
_start:

	mov $20, %rdi

	sub $6, %rdi

	mov $60, %rax

	syscall
