	.data
menor: .asciiz "MENOR\n"
mayor: .asciiz "MAYOR\n"
	.text
main:
	li $v0, 5 #leer int
	syscall

	beq $v0, 10, Fin
	
	bgt $v0, 10, MAYOR			
	li $v0, 4
	la $a0, menor
	syscall
	b Fin
	
	MAYOR:
		li $v0, 4 #print string
		la $a0, mayor
		syscall	
	
	Fin:
		#
	
	
	jr $ra