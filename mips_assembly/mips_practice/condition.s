main: 	li $s0, 1
	li $s1, 3
	bne $s0, $s1, done
	add $a0, $s0, $s0


done:	li $v0, 1
	syscall

	li $v0, 10
	syscall
