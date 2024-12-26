	.arch armv6
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"gdbExample.c"
	.text
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Enter an integer: \000"
	.align	2
.LC1:
	.ascii	"%i\000"
	.align	2
.LC2:
	.ascii	"The result is %i\012\000"
	.text
	.align	2
	.global	main
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #12
	sub	r3, fp, #20
	str	r3, [fp, #-16]
	ldr	r3, .L3
	str	r3, [fp, #-20]
	mvn	r4, #0
	ldr	r0, .L3+4
	bl	printf
	ldr	r1, [fp, #-16]
	ldr	r0, .L3+8
	bl	__isoc99_scanf
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	add	r4, r4, r3
	mov	r1, r4
	ldr	r0, .L3+12
	bl	printf
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
.L4:
	.align	2
.L3:
	.word	305441741
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.size	main, .-main
	.ident	"GCC: (Raspbian 10.2.1-6+rpi1) 10.2.1 20210110"
	.section	.note.GNU-stack,"",%progbits
