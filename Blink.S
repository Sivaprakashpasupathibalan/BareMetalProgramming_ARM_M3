	.cpu cortex-m3
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"Blink.c"
	.text
	.global	hello
	.section	.rodata
	.align	2
	.type	hello, %object
	.size	hello, 4
hello:
	.word	40
	.global	var
	.data
	.align	2
	.type	var, %object
	.size	var, 4
var:
	.word	10
	.text
	.align	1
	.global	main
	.arch armv7-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	ldr	r3, .L7
	ldr	r3, [r3]
	ldr	r2, .L7
	orr	r3, r3, #16
	str	r3, [r2]
	ldr	r3, .L7+4
	ldr	r3, [r3]
	ldr	r2, .L7+4
	orr	r3, r3, #1048576
	str	r3, [r2]
	ldr	r3, .L7+4
	ldr	r2, .L7+4
	ldr	r3, [r3]
	str	r3, [r2]
	ldr	r3, .L7+4
	ldr	r2, .L7+4
	ldr	r3, [r3]
	str	r3, [r2]
	ldr	r3, .L7+4
	ldr	r2, .L7+4
	ldr	r3, [r3]
	str	r3, [r2]
	ldr	r3, .L7+8
	ldr	r2, .L7+8
	ldr	r3, [r3]
	str	r3, [r2]
.L6:
	ldr	r3, .L7+8
	ldr	r2, .L7+8
	ldr	r3, [r3]
	str	r3, [r2]
	movs	r3, #0
	str	r3, [r7, #4]
	b	.L2
.L3:
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L2:
	ldr	r3, [r7, #4]
	ldr	r2, .L7+12
	cmp	r3, r2
	ble	.L3
	ldr	r3, .L7+8
	ldr	r3, [r3]
	ldr	r2, .L7+8
	eor	r3, r3, #8192
	str	r3, [r2]
	movs	r3, #0
	str	r3, [r7]
	b	.L4
.L5:
	ldr	r3, [r7]
	adds	r3, r3, #1
	str	r3, [r7]
.L4:
	ldr	r3, [r7]
	ldr	r2, .L7+12
	cmp	r3, r2
	ble	.L5
	b	.L6
.L8:
	.align	2
.L7:
	.word	1073877016
	.word	1073811460
	.word	1073811468
	.word	99999
	.size	main, .-main
	.ident	"GCC: (GNU Arm Embedded Toolchain 9-2020-q2-update) 9.3.1 20200408 (release)"
