.data
a:  .word 5
bb: .word 6
newline: .asciiz "\n"
.text
main:
    la $s0, a
    la $s1, bb
    jal setvalues

    la $a0, newline
    li $v0, 4
    syscall

    lw $a0, a
    li $v0, 1
    syscall

    lw $a0, bb
    li $v0, 1
    syscall

    li $v0, 10
    syscall

setvalues:
    addi $sp, $sp, -12
    sw $s0, 0($sp)
    sw $s1, 4($sp)
    sw $s2, 8($sp)

    lw $s0, a
    addi $a0, $s0, 10
    li $v0, 1
    syscall

    lw $s1, bb
    addi $a0, $s1, 20
    li $v0, 1
    syscall

	lw $s2, 8($sp)
	lw $s1, 4($sp)
	lw $s0, 0($sp)
    addi $sp, $sp, 12

    jr $ra
