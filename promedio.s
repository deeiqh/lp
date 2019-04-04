	.data
	.text
main:
	
	li $v0, 6
	syscall
	li.s $f2, 0.0  
	add.s $f1, $f0, $f2 #al leer float se guarda en $f0
	
	li $v0, 6
	syscall
	add.s $f1, $f1, $f0
	
	li.s $f3, 2.0
	div.s $f1, $f1, $f3
	
	li $v0, 2
	mov.s $f12, $f1 #para imprimir un float lee de $f12
	syscall	
	
	jr $ra 