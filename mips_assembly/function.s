	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_setvalues
	.p2align	4, 0x90
_setvalues:                             ## @setvalues
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi2:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	L_.str(%rip), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	(%rsi), %ecx
	addl	$10, %ecx
	movq	-8(%rbp), %rsi
	movl	%ecx, (%rsi)
	movq	-16(%rbp), %rsi
	movl	(%rsi), %ecx
	addl	$20, %ecx
	movq	-16(%rbp), %rsi
	movl	%ecx, (%rsi)
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.1(%rip), %rdi
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %r8
	movl	(%r8), %edx
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi3:
	.cfi_def_cfa_offset 16
Lcfi4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi5:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	-4(%rbp), %rdi
	leaq	-8(%rbp), %rsi
	movl	$5, -4(%rbp)
	movl	$6, -8(%rbp)
	callq	_setvalues
	leaq	L_.str.2(%rip), %rdi
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	movb	$0, %al
	callq	_printf
	xorl	%edx, %edx
	movl	%eax, -12(%rbp)         ## 4-byte Spill
	movl	%edx, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"A is at %p, and contains %d\n"

L_.str.1:                               ## @.str.1
	.asciz	"B is at %p, and contains %d\n"

L_.str.2:                               ## @.str.2
	.asciz	"A is %d and B is %d\n"


.subsections_via_symbols
