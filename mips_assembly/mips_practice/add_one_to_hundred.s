.text
main:	addi $sp, $sp, -4 # start stack
	sw $s0 ,0($sp)
	li $s0, 100
	li $v0, 0

loop:	beq $s0, $0, done
	add $v0, $v0, $s0
	addi $s0, $s0, -1
	j loop

done:	lw $s0, 0($sp)
	addi $sp, $sp, 4 # close stack
	addi $a0, $v0, 0 # move value in $v0 into $a0
	
	li $v0, 1
	syscall
	
	li $v0, 10
	syscall
