	.data
	.text
	
main:

	#leer el primer int, muestra lo leido
	li $v0, 5
	syscall
	move $a0, $v0
	#li $v0, 1
	#syscall	
	move $t0, $a0
	
	#lee el segundo int, ya no lo muestra
	li $v0, 5
	syscall
	move $t1, $v0
	
	add $t2, $t0, $t1
	
	#muestra la suma
	move $a0, $t2
	li $v0, 1
	syscall
	
	jr $ra
	