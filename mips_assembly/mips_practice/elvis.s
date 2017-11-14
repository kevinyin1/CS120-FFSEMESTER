main:	li $a0, 31
	li $a1, 29
	jal elvis
	addi $a0, $v0, 0
	
	li $v0, 1
	syscall

	li $v0, 10
	syscall

elvis: 	mul $v0, $a0, 2
	add $v0, $v0, $a1
	jr $ra
