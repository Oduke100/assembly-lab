	## this as you may know is my first writting of assembly code

	##  syntax shout: (#) for single line comments and (/*.........*/) for multiple line comments
	##  the file is wierd, lemme say the language generally as I have to set first what I wanna print before giving instructions on how I want it printed, as shown below

	.data
output:
	.ascii "Hello world!\n"

	##  next we do the instructions segment that tells the CPU what to do with the data we just gave it

	.text
	.global _start
_start:
	## syntax shout: mov <source>, <destination>
	##  in python we do variable = data in assembly we do mov(copy) source(data), destination(where to be saved)
	##  so mov $5(numbers take '$' and registers takes '%' in front of rax, this we would do mov $5, %rax

	mov $13, %rdx
	mov $1, %rdi
	mov $output, %rsi
	mov $1, %rax

	syscall

	mov $0, %rdi
	mov $60, %rax

	syscall

	## just completed my first assembly programme, wth
