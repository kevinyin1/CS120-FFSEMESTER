.data
space: .asciiz " "
newline: .asciiz "\n"
number: .asciiz "Enter a number"

.text
main:

	li $s2, 11
	li $s0, 0

l_out:
	beq $s0, $s2, done_outer
	li $s1, 0

l_in:
	beq $s1, $s2, done_inner
	addi $a0, $s0, 1
    addi $a1, $s1, 1
    jal f1
	li $v0, 1
	syscall

    la $a0, space
    li $v0, 4
    syscall
    
	addi $s1, $s1, 1
	j l_in

f1: addi $a0, $a0, 5
    addi $a1, $a1, 6
    mul $a0, $a0, $a1
    
    addi $sp, $sp, -4
    sw $ra, 0($sp)

    jal f2
    
    lw $ra, 0($sp)
    addi $sp, $sp, 4
    
    jr $ra

f2: mul $v0, $a0, $a0
    jr $ra

done_inner: 
	la $a0, newline
	li $v0, 4
	syscall
	
	addi $s0, $s0, 1
	j l_out
done_outer:
	li $v0, 10
	syscall
 
