	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"interrupt.c"
	.text
	.align	2
	.global	displayTime
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	displayTime, %function
displayTime:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L4
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r2, .L4+4
	ldr	r7, [r3]
	smull	r3, r9, r2, r7
	mov	r0, #400
	mov	r6, #196
	mov	r5, #204
	mov	r4, #212
	ldr	r3, .L4+8
	mov	lr, #220
	mov	ip, #228
	ldr	r1, [r3]
	smull	r3, r8, r2, r1
	asr	r3, r7, #31
	rsb	r3, r3, r9, asr #2
	add	r2, r3, r3, lsl #2
	lsl	r3, r3, #16
	sub	r2, r7, r2, lsl #1
	asr	r3, r3, #16
	ldr	r7, .L4+12
	lsl	r3, r3, #1
	ldrh	r10, [r7, r3]
	ldr	r3, .L4+16
	lsl	r2, r2, #1
	ldrh	r9, [r7, r2]
	add	r2, r10, #896
	add	r10, r3, #324
	strh	r2, [r10]	@ movhi
	asr	r2, r1, #31
	rsb	r2, r2, r8, asr #2
	add	r9, r9, #896
	add	r8, r3, #332
	strh	r9, [r8]	@ movhi
	add	r8, r2, r2, lsl #2
	lsl	r2, r2, #16
	sub	r1, r1, r8, lsl #1
	asr	r2, r2, #16
	lsl	r2, r2, #1
	lsl	r1, r1, #1
	ldrh	r1, [r7, r1]
	ldrh	r7, [r7, r2]
	add	r2, r1, #896
	add	r1, r7, #896
	add	r7, r3, #348
	strh	r1, [r7]	@ movhi
	add	r1, r3, #356
	strh	r2, [r1]	@ movhi
	add	r2, r3, #320
	strh	r6, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	add	r2, r3, #328
	strh	r5, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	ldr	r5, .L4+20
	add	r2, r3, #336
	strh	r4, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	add	r1, r3, #340
	add	r2, r3, #344
	add	r3, r3, #352
	strh	r5, [r1]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	lr, [r2, #2]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	time_m
	.word	1717986919
	.word	time_s
	.word	.LANCHOR0
	.word	shadowOAM
	.word	906
	.size	displayTime, .-displayTime
	.align	2
	.global	setupSounds
	.syntax unified
	.arm
	.fpu softvfp
	.type	setupSounds, %function
setupSounds:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	mov	r0, #128
	mov	r1, #0
	ldr	r2, .L7
	strh	r0, [r3, #132]	@ movhi
	strh	r1, [r3, #128]	@ movhi
	strh	r2, [r3, #130]	@ movhi
	bx	lr
.L8:
	.align	2
.L7:
	.word	-1266
	.size	setupSounds, .-setupSounds
	.align	2
	.global	enableTimerInterrupts
	.syntax unified
	.arm
	.fpu softvfp
	.type	enableTimerInterrupts, %function
enableTimerInterrupts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r1, #0
	mov	r5, #49152
	mov	r4, #195
	mvn	lr, #59
	mov	ip, #196
	ldr	r0, .L11
	ldrh	r2, [r0]
	ldr	r3, .L11+4
	orr	r2, r2, #96
	strh	r1, [r3, #10]	@ movhi
	strh	r2, [r0]	@ movhi
	strh	r5, [r3, #8]	@ movhi
	strh	r4, [r3, #10]	@ movhi
	strh	r1, [r3, #14]	@ movhi
	strh	lr, [r3, #12]	@ movhi
	strh	ip, [r3, #14]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L12:
	.align	2
.L11:
	.word	67109376
	.word	67109120
	.size	enableTimerInterrupts, .-enableTimerInterrupts
	.global	__aeabi_i2d
	.global	__aeabi_dmul
	.global	__aeabi_ddiv
	.global	__aeabi_d2iz
	.align	2
	.global	playSoundA
	.syntax unified
	.arm
	.fpu softvfp
	.type	playSoundA, %function
playSoundA:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r7, #0
	ldr	r3, .L15+8
	ldr	r3, [r3]
	mov	r5, r1
	mov	r6, r0
	mov	r8, r2
	mov	r1, r0
	str	r7, [r3, #20]
	mov	r0, #1
	mov	r3, #910163968
	ldr	r2, .L15+12
	ldr	r4, .L15+16
	mov	lr, pc
	bx	r4
	mvn	ip, #1520
	mov	r2, #1
	mov	r0, #128
	ldr	r4, .L15+20
	ldr	r3, .L15+24
	ldr	r1, .L15+28
	strh	r7, [r3, #2]	@ movhi
	strh	ip, [r3]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	str	r5, [r4, #4]
	str	r2, [r4, #12]
	mov	r0, r5
	str	r6, [r4]
	ldr	r3, .L15+32
	str	r8, [r4, #16]
	str	r1, [r4, #8]
	mov	lr, pc
	bx	r3
	ldr	r5, .L15+36
	adr	r3, .L15
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r5
	mov	r2, #0
	ldr	r5, .L15+40
	ldr	r3, .L15+44
	mov	lr, pc
	bx	r5
	ldr	r3, .L15+48
	mov	lr, pc
	bx	r3
	str	r7, [r4, #28]
	str	r0, [r4, #20]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L16:
	.align	3
.L15:
	.word	1443109011
	.word	1078844686
	.word	dma
	.word	67109024
	.word	DMANow
	.word	soundA
	.word	67109120
	.word	11025
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	__aeabi_ddiv
	.word	1086687360
	.word	__aeabi_d2iz
	.size	playSoundA, .-playSoundA
	.align	2
	.global	playSoundB
	.syntax unified
	.arm
	.fpu softvfp
	.type	playSoundB, %function
playSoundB:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r7, #0
	ldr	r3, .L19+8
	ldr	r3, [r3]
	mov	r5, r1
	mov	r6, r0
	mov	r8, r2
	mov	r1, r0
	str	r7, [r3, #32]
	mov	r0, #2
	mov	r3, #910163968
	ldr	r2, .L19+12
	ldr	r4, .L19+16
	mov	lr, pc
	bx	r4
	mvn	ip, #1520
	mov	r2, #1
	mov	r0, #128
	ldr	r4, .L19+20
	ldr	r3, .L19+24
	ldr	r1, .L19+28
	strh	r7, [r3, #6]	@ movhi
	strh	ip, [r3, #4]	@ movhi
	strh	r0, [r3, #6]	@ movhi
	str	r5, [r4, #4]
	str	r2, [r4, #12]
	mov	r0, r5
	str	r6, [r4]
	ldr	r3, .L19+32
	str	r8, [r4, #16]
	str	r1, [r4, #8]
	mov	lr, pc
	bx	r3
	ldr	r5, .L19+36
	adr	r3, .L19
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r5
	mov	r2, #0
	ldr	r5, .L19+40
	ldr	r3, .L19+44
	mov	lr, pc
	bx	r5
	ldr	r3, .L19+48
	mov	lr, pc
	bx	r3
	str	r7, [r4, #28]
	str	r0, [r4, #20]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L20:
	.align	3
.L19:
	.word	1443109011
	.word	1078844686
	.word	dma
	.word	67109028
	.word	DMANow
	.word	soundB
	.word	67109120
	.word	11025
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	__aeabi_ddiv
	.word	1086687360
	.word	__aeabi_d2iz
	.size	playSoundB, .-playSoundB
	.align	2
	.global	interruptHandler
	.syntax unified
	.arm
	.fpu softvfp
	.type	interruptHandler, %function
interruptHandler:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	ldr	r3, .L47
	ldrh	r1, [r3, #2]
	tst	r1, #32
	push	{r4, lr}
	strh	r2, [r3, #8]	@ movhi
	beq	.L23
	ldr	r2, .L47+4
	ldr	r3, [r2]
	add	r1, r3, #1
	cmp	r1, #59
	ldrgt	r0, .L47+8
	ldrgt	r1, [r0]
	subgt	r3, r3, #59
	addgt	r1, r1, #1
	strle	r1, [r2]
	strgt	r3, [r2]
	strgt	r1, [r0]
.L23:
	ldr	r3, .L47
	ldrh	r3, [r3, #2]
	tst	r3, #1
	bne	.L43
.L26:
	ldr	r2, .L47+12
	ldrh	r3, [r2]
	cmp	r3, #0
	bne	.L35
	mov	ip, #195
	mov	r0, #196
	ldr	r1, .L47+16
	ldr	r4, .L47+8
	ldr	lr, .L47+4
	strh	r3, [r1, #10]	@ movhi
	strh	r3, [r1, #14]	@ movhi
	str	r3, [r4]
	str	r3, [lr]
	strh	ip, [r1, #10]	@ movhi
	strh	r0, [r1, #14]	@ movhi
	ldrh	r3, [r2]
.L35:
	ldr	r2, .L47+20
	and	r2, r2, r3
	cmp	r3, #5
	cmpne	r2, #1
	bne	.L44
.L36:
	mov	r2, #0
	ldr	r3, .L47+16
	strh	r2, [r3, #10]	@ movhi
	strh	r2, [r3, #14]	@ movhi
.L38:
	mov	r1, #1
	ldr	r3, .L47
	ldrh	r2, [r3, #2]
	strh	r1, [r3, #8]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	pop	{r4, lr}
	bx	lr
.L43:
	bl	displayTime
	ldr	r4, .L47+24
	mov	r3, #32
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L47+28
	mov	lr, pc
	bx	r4
	ldr	r3, .L47+32
	ldr	r2, [r3, #12]
	cmp	r2, #0
	beq	.L28
	ldr	r2, [r3, #28]
	ldr	r1, [r3, #20]
	add	r2, r2, #1
	cmp	r2, r1
	str	r2, [r3, #28]
	ble	.L28
	ldr	r2, [r3, #16]
	cmp	r2, #0
	bne	.L45
	ldr	r0, .L47+36
	ldr	r1, .L47+16
	ldr	r0, [r0]
	str	r2, [r3, #12]
	str	r2, [r0, #20]
	strh	r2, [r1, #2]	@ movhi
.L28:
	ldr	r3, .L47+40
	ldr	r2, [r3, #12]
	cmp	r2, #0
	beq	.L32
	ldr	r2, [r3, #28]
	ldr	r1, [r3, #20]
	add	r2, r2, #1
	cmp	r2, r1
	str	r2, [r3, #28]
	ble	.L32
	ldr	r2, [r3, #16]
	cmp	r2, #0
	bne	.L46
	ldr	r0, .L47+36
	ldr	r1, .L47+16
	ldr	r0, [r0]
	str	r2, [r3, #12]
	str	r2, [r0, #32]
	strh	r2, [r1, #6]	@ movhi
.L32:
	mov	r2, #1
	ldr	r3, .L47
	strh	r2, [r3, #2]	@ movhi
	b	.L26
.L44:
	ldr	r3, .L47+44
	ldrh	r3, [r3]
	cmp	r3, #1
	beq	.L36
	mov	r1, #195
	mov	r2, #196
	ldr	r3, .L47+16
	strh	r1, [r3, #10]	@ movhi
	strh	r2, [r3, #14]	@ movhi
	b	.L38
.L46:
	ldm	r3, {r0, r1}
	bl	playSoundB
	b	.L32
.L45:
	ldm	r3, {r0, r1}
	bl	playSoundA
	b	.L28
.L48:
	.align	2
.L47:
	.word	67109376
	.word	time_s
	.word	time_m
	.word	level
	.word	67109120
	.word	65533
	.word	DMANow
	.word	shadowOAM
	.word	soundA
	.word	dma
	.word	soundB
	.word	paused
	.size	interruptHandler, .-interruptHandler
	.align	2
	.global	setupInterrupts
	.syntax unified
	.arm
	.fpu softvfp
	.type	setupInterrupts, %function
setupInterrupts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r1, #0
	mov	r5, #49152
	mov	r0, #195
	mov	r6, #1
	mov	ip, #67108864
	mvn	r4, #59
	mov	lr, #196
	ldr	r3, .L51
	ldr	r2, .L51+4
	strh	r1, [r3, #10]	@ movhi
	strh	r6, [r2, #8]	@ movhi
	strh	r5, [r3, #8]	@ movhi
	strh	r0, [r3, #10]	@ movhi
	ldrh	r0, [ip, #4]
	strh	r1, [r3, #14]	@ movhi
	orr	r0, r0, #8
	ldrh	r1, [r2]
	strh	r4, [r3, #12]	@ movhi
	strh	r0, [ip, #4]	@ movhi
	ldr	r0, .L51+8
	ldr	ip, .L51+12
	orr	r1, r1, #97
	strh	lr, [r3, #14]	@ movhi
	strh	r1, [r2]	@ movhi
	pop	{r4, r5, r6, lr}
	str	ip, [r0, #4092]
	bx	lr
.L52:
	.align	2
.L51:
	.word	67109120
	.word	67109376
	.word	50360320
	.word	interruptHandler
	.size	setupInterrupts, .-setupInterrupts
	.align	2
	.global	pauseSound
	.syntax unified
	.arm
	.fpu softvfp
	.type	pauseSound, %function
pauseSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	ldr	r2, .L54
	ldr	r0, .L54+4
	ldr	r1, .L54+8
	str	r3, [r0, #12]
	str	r3, [r1, #12]
	strh	r3, [r2, #2]	@ movhi
	strh	r3, [r2, #6]	@ movhi
	bx	lr
.L55:
	.align	2
.L54:
	.word	67109120
	.word	soundA
	.word	soundB
	.size	pauseSound, .-pauseSound
	.align	2
	.global	unpauseSound
	.syntax unified
	.arm
	.fpu softvfp
	.type	unpauseSound, %function
unpauseSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #128
	mov	r3, #1
	ldr	r2, .L57
	ldr	ip, .L57+4
	ldr	r0, .L57+8
	strh	r1, [r2, #2]	@ movhi
	str	r3, [ip, #12]
	strh	r1, [r2, #6]	@ movhi
	str	r3, [r0, #12]
	bx	lr
.L58:
	.align	2
.L57:
	.word	67109120
	.word	soundA
	.word	soundB
	.size	unpauseSound, .-unpauseSound
	.align	2
	.global	stopSound
	.syntax unified
	.arm
	.fpu softvfp
	.type	stopSound, %function
stopSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	ldr	r1, .L60
	ldr	r2, .L60+4
	ldr	r1, [r1]
	ldr	ip, .L60+8
	ldr	r0, .L60+12
	str	r3, [r1, #20]
	str	r3, [ip, #12]
	strh	r3, [r2, #2]	@ movhi
	str	r3, [r0, #12]
	str	r3, [r1, #32]
	strh	r3, [r2, #6]	@ movhi
	bx	lr
.L61:
	.align	2
.L60:
	.word	dma
	.word	67109120
	.word	soundA
	.word	soundB
	.size	stopSound, .-stopSound
	.global	digit_to_sprite_tile_index
	.comm	time_cs,4,4
	.comm	time_s,4,4
	.comm	time_m,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	digit_to_sprite_tile_index, %object
	.size	digit_to_sprite_tile_index, 20
digit_to_sprite_tile_index:
	.short	9
	.short	0
	.short	1
	.short	2
	.short	3
	.short	4
	.short	5
	.short	6
	.short	7
	.short	8
	.ident	"GCC: (devkitARM release 53) 9.1.0"
