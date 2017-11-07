.data
buffer:	.space 100
message:	.asciiz "Type in a string > "
	
.text
main:	la $a0, message
	li $v0, 4
	syscall

	
	# Read in the string
	la $a0, buffer
	li $a1, 100
	li $v0, 8
	syscall

	la $a0, buffer
	jal toupper

	#la $a0, buffer
	li $v0, 4
	syscall

    la $a0, buffer
	jal tolower

	#la $a0, buffer
	li $v0, 4
	syscall
    

	li $v0, 10
	syscall


toupper:
	# Save registers
	addi $sp, $sp, -16
	sw $s0, 0($sp)
	sw $s1, 4($sp)
	sw $s2, 8($sp)
	sw $ra, 12($sp)
	
	move $s0, $a0
loop:	lb $s1, 0($s0)
	beq $s1, $0, done

	# Check to see if it's below 'a'
	li $s2, 'a'
	blt $s1, $s2, skip

	li $s2, 'z'
	bgt $s1, $s2, skip

	# Add so that it's uppercase
	addi $s1, $s1, -32
	sb $s1, 0($s0)

skip:	addi $s0, $s0, 1
	j loop

done:	# Restore the registers
	lw $ra, 12($sp)
	lw $s2, 8($sp)
	lw $s1, 4($sp)
	lw $s0, 0($sp)
	addi $sp, $sp, 16
    jr $ra
	
tolower:
	# Save registers
	addi $sp, $sp, -16
	sw $s0, 0($sp)
	sw $s1, 4($sp)
	sw $s2, 8($sp)
	sw $ra, 12($sp)
	
	move $s0, $a0
loop1:	lb $s1, 0($s0)
	beq $s1, $0, done1

	# Check to see if it's below 'a'
	li $s2, 'A'
	blt $s1, $s2, skip1

	li $s2, 'Z'
	bgt $s1, $s2, skip1

	# Add so that it's lowercase
	addi $s1, $s1, 32
	sb $s1, 0($s0)

skip1:	addi $s0, $s0, 1
	j loop1

done1:	# Restore the registers
	lw $ra, 12($sp)
	lw $s2, 8($sp)
	lw $s1, 4($sp)
	lw $s0, 0($sp)
	addi $sp, $sp, 16
	jr $ra
	