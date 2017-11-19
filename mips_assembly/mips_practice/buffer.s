.data
a: .space 100

.text
main:
	li $v0, 8
	la $a0, a
	la $a1, 100
	syscall
	li $v0, 4
	syscall
	li $v0, 10
	syscall
