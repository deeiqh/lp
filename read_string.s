# PROGRAM: Hello, World!
	.data # Data declaration section
buffer: .space 20

	.text # Assembly language instructions

main: # Start of code section
	$li $a1, 10		#maximo numero de caracteres a leer
	li $v0, 8			#para leer un string
	la $a0, buffer
	syscall
	
	li $v0, 4			#para mostrar un string
	syscall
	
	jr $ra          	#retrun to caller