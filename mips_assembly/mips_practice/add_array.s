.data
a:	.word 5
bb:	.word 5
c:	.word 5
d:	.word 5
	.word 0

.text
main:   li $v0, 0
	la $a0, a
	
jesus:  lw $s1, 0($a0)
	beq $s1, $0, done
	add $v0, $v0, $s1
	addi $a0, $a0, 4
	j jesus

done:	addi $a0, $v0, 0
	li $v0, 1
	syscall
	
	li $v0, 10
	syscall
