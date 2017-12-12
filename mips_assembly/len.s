.data
string:	.asciiz "kevin yin"

.text
main:	li $a0, 0
	la $a1, string
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal strlen
	lw $ra, 0($sp)
	addi $sp, $sp, 4

	li $v0, 1
	syscall

	li $v0, 10
	syscall
	jr $ra

strlen:	lb $t0, 0($a1)
	beq $t0, $0, done
	addi $a1, $a1, 1
	addi $a0, $a0, 1
	j strlen
	
done:	jr $ra
