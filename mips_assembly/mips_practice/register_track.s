.data
a:	.word 10
bb:	.word 5
c:	.word 8
d:	.word 3
	.word 0
.text
main:   la $a1, c
	addi $a1, $a1, -8
	lw $t1, 4($a1)
	addi $a0, $t1, 0
	li $v0, 1
	syscall

	li $v0, 10
	syscall

