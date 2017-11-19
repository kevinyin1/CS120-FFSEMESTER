main:	li $s0, 20
	li $s1, 10
	bgt $s0, $s0, done
	add $a0, $s0, $s1

done:	li $v0, 1
	syscall
	
	li $v0, 10
	syscall
