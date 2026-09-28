	##  this happens to be one of the big dogs, what do you mean in this language, we have a whole language-conversion topic so we can convert the answer to an arithmetic problem to output
	## fuck, so now rax takes a syscall-code and 60 tells it to exit, this is different from rdi which holds the exit code, the exit code here being the code that I think is output by our baby brain the CPU, actually its the value returned by the program, kind of like return 0 in cpp

	.text
	.global _start
_start:
	mov $5, %rdi

	add $3, %rdi 		# this is the addition component(the "+" in python)

	mov $60, %rax

	syscall
