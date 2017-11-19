.data
a:	.word 5
bb:	.word 4
c:	.word 10
	.word 0

.text
main:	lui $s0, 0x1001 # these two commands are the simple instrucitons for load address.
	ori $s0, $s0, 4 # ^ it is better to use or immediate than add immediate because it will ori immediate will not do sign extensions. 
	lw $a0, 0($s0)
	
	li $v0, 1
	syscall
	
	li $v0, 10
	syscall
