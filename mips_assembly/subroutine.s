.data
name1:  .asciiz "First Name"
name2:  .asciiz "Second Name"
name3:  .asciiz "And one more"
space:  .asciiz " "
newline: .asciiz "\n"

.text
main: 	 la $a0, name1
	 jal subroutine
	 la $a0, name2
	 jal subroutine
	 la $a0, name3
	 jal subroutine
	 
	 li $v0, 10
	 syscall

subroutine:
	 li $v0, 4
	 syscall	
 
	 addi $sp, $sp, -4
	 sw $a0, 0($sp)
	 la $a0, space
	 li $v0, 4
	 syscall
	 lw $a0, 0($sp) 

	 sw $ra, 0($sp)
	 addi $s0, $a0, 0
	 li $s1, 0
	 jal loop
 	
	 la $a0, newline
	 li $v0, 4
	 syscall	
	
	 lw $ra, 0($sp)
	 addi $sp, $sp, 4
	 jr $ra

loop:	  
	 lb $s2, 0($s0)
	 beq $s2, $0, loop_end
	 add $s1, $s1, $s2
	 addi $s0, $s0, 1
	 j loop

loop_end:
	 move $a0, $s1
	 li $v0, 1
	 syscall
	 	
	 jr $ra
