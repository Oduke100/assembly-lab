	##  excersise 1; learning assembly.
	##  the syntax = . - <name> fills the byte count automatically so you don't have to count all the time
	##  you have to write the multiple addresses x number of times for it to print x number of times
	##  label names can only be used one, ie _name can only be used once
	##  label names do not have to always start with "_"
	##  Label names start with "_start" but may not, although this will include some altering of the run command, simpler way is _start for amateurs

	.data
name:
	.ascii "Name: Michael Gilbert Oduke\n"
	len_name = . - name

origin:
	.ascii "From: Kisumu, Kenya\n"
	len_origin = . - origin

purpose:
	.ascii "Learning Assembly alone!!\n"
	len_purpose = . - purpose

	
	.text
	.global _start
_start:

	mov $len_name, %rdx

	mov $1, %rdi 		# where to write

	mov $name, %rsi
	
	mov $1, %rax 		# which syscall

	syscall

_origin:
	mov $len_origin, %rdx

	mov $1, %rdi 		# where to write

	mov $origin, %rsi
	
	mov $1, %rax 		# which syscall

	syscall

_purpose:	
	mov $len_purpose, %rdx

	mov $1, %rdi 		# where to write

	mov $purpose, %rsi
	
	mov $1, %rax 		# which syscall

	syscall
	
	mov $0, %rdi
	mov $60, %rax

	syscall
