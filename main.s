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
	.file	"main.c"
	.text
	.align	2
	.global	goToIntro
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToIntro, %function
goToIntro:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #512
	ldr	r3, .L4
	push	{r4, lr}
	ldr	r0, .L4+4
	strh	r1, [r2]	@ movhi
	ldr	r1, [r3]
	mov	r2, #1
	ldr	r3, .L4+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L4+12
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+16
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L4+20
	ldr	r1, .L4+24
	mov	lr, pc
	bx	r4
	ldr	r2, .L4+28
	mov	r3, #1024
	mov	r0, #3
	ldr	r1, .L4+32
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+36
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L4+40
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L5:
	.align	2
.L4:
	.word	openingMusic_length
	.word	openingMusic_data
	.word	playSoundA
	.word	DMANow
	.word	backgroundINTROPal
	.word	4656
	.word	backgroundINTROTiles
	.word	100718592
	.word	backgroundINTROMap
	.word	waitForVBlank
	.word	state
	.size	goToIntro, .-goToIntro
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #67108864
	mov	r4, #4864
	mov	lr, #23552
	mov	r0, #6912
	mov	r3, #0
	mov	r1, #256
	mov	ip, #28
	strh	r4, [r2]	@ movhi
	strh	lr, [r2, #8]	@ movhi
	strh	r0, [r2, #10]	@ movhi
	ldr	r0, .L8
	ldr	r2, .L8+4
	ldrh	r0, [r0, #48]
	ldr	lr, .L8+8
	strh	r0, [r2]	@ movhi
	ldr	r2, .L8+12
	ldr	r0, .L8+16
	strh	r3, [lr]	@ movhi
	strh	r3, [r2]	@ movhi
	ldr	lr, .L8+20
	ldr	r2, .L8+24
	strh	r3, [r0]	@ movhi
	ldr	r0, .L8+28
	strh	r3, [lr]	@ movhi
	strh	r1, [r2, #6]	@ movhi
	strh	r1, [r2, #30]	@ movhi
	ldr	r3, .L8+32
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+36
	mov	lr, pc
	bx	r3
	.syntax divided
@ 62 "main.c" 1
	swi 0x04 << 15
@ 0 "" 2
	.arm
	.syntax unified
	pop	{r4, lr}
	b	goToIntro
.L9:
	.align	2
.L8:
	.word	67109120
	.word	buttons
	.word	oldButtons
	.word	vOff
	.word	hOff
	.word	playerhOff
	.word	shadowOAM
	.word	screenBlock
	.word	setupSounds
	.word	setupInterrupts
	.size	initialize, .-initialize
	.align	2
	.global	goToStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	ip, #67108864
	mov	r5, #512
	mov	r1, #0
	mov	lr, #28
	ldr	r3, .L12
	ldr	r2, .L12+4
	ldr	r0, .L12+8
	strh	r5, [ip]	@ movhi
	ldr	ip, .L12+12
	ldr	r4, .L12+16
	strh	r1, [r3]	@ movhi
	strh	r1, [r2]	@ movhi
	strh	r1, [r0]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L12+20
	strh	lr, [ip]	@ movhi
	mov	lr, pc
	bx	r4
	mov	r3, #1632
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L12+24
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L12+28
	ldr	r1, .L12+32
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L12+36
	ldr	r1, .L12+40
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L12+44
	ldr	r1, .L12+48
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L12+52
	mov	lr, pc
	bx	r3
	mov	r3, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L12+56
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L12+60
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L13:
	.align	2
.L12:
	.word	hOff
	.word	vOff
	.word	playerhOff
	.word	screenBlock
	.word	DMANow
	.word	backgroundSTARTPal
	.word	backgroundSTARTTiles
	.word	100718592
	.word	backgroundSTARTMap
	.word	83886592
	.word	spritesheetPal
	.word	100728832
	.word	spritesheetTiles
	.word	waitForVBlank
	.word	shadowOAM
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	goToInstruction
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstruction, %function
goToInstruction:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #512
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L16
	strh	r1, [r2]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L16+4
	mov	lr, pc
	bx	r4
	mov	r3, #3152
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L16+8
	mov	lr, pc
	bx	r4
	ldr	r2, .L16+12
	mov	r3, #1024
	mov	r0, #3
	ldr	r1, .L16+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L16+20
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L16+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L17:
	.align	2
.L16:
	.word	DMANow
	.word	backgroundINSTRUCTIONPal
	.word	backgroundINSTRUCTIONTiles
	.word	100718592
	.word	backgroundINSTRUCTIONMap
	.word	waitForVBlank
	.word	state
	.size	goToInstruction, .-goToInstruction
	.align	2
	.global	intro
	.syntax unified
	.arm
	.fpu softvfp
	.type	intro, %function
intro:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L30
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	ip, #28
	mov	r1, #250
	ldr	r0, .L30+4
	ldr	lr, .L30+8
	ldr	r2, .L30+12
	strh	r3, [r0]	@ movhi
	strh	r3, [lr]	@ movhi
	ldr	r0, .L30+16
	ldr	lr, .L30+20
	ldrh	r2, [r2]
	strh	r3, [r0]	@ movhi
	strh	r3, [lr]	@ movhi
	ldr	r0, .L30+24
	ldr	r3, .L30+28
	tst	r2, #8
	strh	ip, [r0]	@ movhi
	str	r1, [r3]
	beq	.L19
	ldr	r3, .L30+32
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L28
.L19:
	tst	r2, #4
	beq	.L18
	ldr	r3, .L30+32
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L29
.L18:
	pop	{r4, lr}
	bx	lr
.L28:
	pop	{r4, lr}
	b	goToStart
.L29:
	pop	{r4, lr}
	b	goToInstruction
.L31:
	.align	2
.L30:
	.word	waitForVBlank
	.word	hOff
	.word	vOff
	.word	oldButtons
	.word	playerhOff
	.word	level
	.word	screenBlock
	.word	iq
	.word	buttons
	.size	intro, .-intro
	.align	2
	.global	instruction
	.syntax unified
	.arm
	.fpu softvfp
	.type	instruction, %function
instruction:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L39
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	r1, #28
	ldr	r2, .L39+4
	ldrh	r2, [r2]
	ldr	lr, .L39+8
	ldr	ip, .L39+12
	ldr	r0, .L39+16
	tst	r2, #4
	ldr	r2, .L39+20
	strh	r3, [lr]	@ movhi
	strh	r3, [ip]	@ movhi
	strh	r3, [r0]	@ movhi
	strh	r1, [r2]	@ movhi
	beq	.L32
	ldr	r3, .L39+24
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L38
.L32:
	pop	{r4, lr}
	bx	lr
.L38:
	pop	{r4, lr}
	b	goToStart
.L40:
	.align	2
.L39:
	.word	waitForVBlank
	.word	oldButtons
	.word	hOff
	.word	vOff
	.word	playerhOff
	.word	screenBlock
	.word	buttons
	.size	instruction, .-instruction
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r2, #4352
	mov	r1, #23552
	push	{r4, lr}
	strh	r2, [r3]	@ movhi
	ldr	r2, .L45
	strh	r1, [r3, #8]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L45+4
	ldrh	r3, [r3]
	cmp	r3, #2
	mov	r2, #83886080
	mov	r3, #256
	bhi	.L42
	mov	r0, #3
	ldr	r1, .L45+8
	ldr	r4, .L45+12
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L45+16
	ldr	r1, .L45+20
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L45+24
	ldr	r1, .L45+28
	mov	lr, pc
	bx	r4
.L43:
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L45+32
	ldr	r1, .L45+36
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L45+40
	ldr	r1, .L45+44
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L45+48
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L45+52
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L45+56
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L42:
	ldr	r4, .L45+12
	mov	r0, #3
	ldr	r1, .L45+60
	mov	lr, pc
	bx	r4
	mov	r3, #3200
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L45+64
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L45+24
	ldr	r1, .L45+68
	mov	lr, pc
	bx	r4
	b	.L43
.L46:
	.align	2
.L45:
	.word	waitForVBlank
	.word	level
	.word	background1Pal
	.word	DMANow
	.word	4240
	.word	background1Tiles
	.word	100720640
	.word	background1Map
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.word	background2Pal
	.word	background2Tiles
	.word	background2Map
	.size	goToGame, .-goToGame
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L56
	ldr	r3, [r4]
	ldr	r2, .L56+4
	add	r3, r3, #1
	str	r3, [r4]
	mov	lr, pc
	bx	r2
	ldr	r1, .L56+8
	ldrh	r3, [r1]
	cmp	r3, #3
	movcc	r2, #1
	movcs	r2, #3
	mov	r3, #0
	mov	r0, #28
	mov	r5, #1
	strh	r2, [r1]	@ movhi
	ldr	r2, .L56+12
	ldr	r1, .L56+16
	ldr	ip, .L56+20
	strh	r3, [r2]	@ movhi
	strh	r3, [r1]	@ movhi
	ldr	r2, .L56+24
	ldr	r1, .L56+28
	ldrh	ip, [ip]
	strh	r3, [r2]	@ movhi
	strh	r3, [r1]	@ movhi
	ldr	r2, .L56+32
	ldr	r3, .L56+36
	tst	ip, #8
	strh	r0, [r2]	@ movhi
	strh	r5, [r3]	@ movhi
	beq	.L47
	ldr	r3, .L56+40
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L55
.L47:
	pop	{r4, r5, r6, lr}
	bx	lr
.L55:
	ldr	r0, [r4]
	ldr	r3, .L56+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L56+48
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldr	r3, .L56+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L56+56
	mov	r2, r5
	ldr	r1, [r3]
	ldr	r0, .L56+60
	ldr	r3, .L56+64
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L57:
	.align	2
.L56:
	.word	seed
	.word	waitForVBlank
	.word	level
	.word	hOff
	.word	vOff
	.word	oldButtons
	.word	playerhOff
	.word	paused
	.word	screenBlock
	.word	life
	.word	buttons
	.word	srand
	.word	initGame
	.word	stopSound
	.word	gameMusic_length
	.word	gameMusic_data
	.word	playSoundA
	.size	start, .-start
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #512
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L60
	strh	r1, [r2]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L60+4
	mov	lr, pc
	bx	r4
	mov	r3, #912
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L60+8
	mov	lr, pc
	bx	r4
	ldr	r2, .L60+12
	mov	r3, #1024
	mov	r0, #3
	ldr	r1, .L60+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L60+20
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L60+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L61:
	.align	2
.L60:
	.word	DMANow
	.word	backgroundPAUSEPal
	.word	backgroundPAUSETiles
	.word	100718592
	.word	backgroundPAUSEMap
	.word	waitForVBlank
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L74
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L74+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L63
	ldr	r2, .L74+8
	ldrh	r2, [r2]
	ands	r4, r2, #4
	beq	.L72
.L63:
	tst	r3, #8
	beq	.L62
	ldr	r3, .L74+8
	ldrh	r3, [r3]
	ands	r4, r3, #8
	beq	.L73
.L62:
	pop	{r4, lr}
	bx	lr
.L72:
	bl	goToGame
	ldr	r3, .L74+12
	strh	r4, [r3]	@ movhi
	pop	{r4, lr}
	bx	lr
.L73:
	bl	goToStart
	ldr	r3, .L74+12
	strh	r4, [r3]	@ movhi
	pop	{r4, lr}
	bx	lr
.L75:
	.align	2
.L74:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	paused
	.size	pause, .-pause
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r2, #4608
	mov	r4, #67108864
	ldr	r3, .L80
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r1, #0
	mov	r9, #16
	ldr	r5, .L80+4
	strh	r1, [r4, #18]	@ movhi
	mov	r3, #256
	strh	r1, [r4, #16]	@ movhi
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L80+8
	ldr	r4, .L80+12
	mov	lr, pc
	bx	r5
	mov	r3, #3456
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L80+16
	mov	lr, pc
	bx	r5
	mov	r6, #32
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L80+20
	ldr	r1, .L80+24
	mov	lr, pc
	bx	r5
	mov	r1, r4
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, .L80+28
	mov	r1, #88
	ldr	r0, [r3]
	ldr	r2, .L80+32
	smull	r3, fp, r2, r0
	ldr	r3, .L80+36
	ldr	r3, [r3]
	smull	r8, r10, r2, r3
	asr	r8, r0, #31
	rsb	r8, r8, fp, asr #2
	lsl	r2, r8, r9
	add	r8, r8, r8, lsl #2
	asr	r2, r2, r9
	sub	r8, r0, r8, lsl #1
	ldr	r0, .L80+40
	lsl	r2, r2, #1
	ldrh	r2, [r0, r2]
	lsl	r8, r8, #1
	ldrh	r8, [r0, r8]
	add	r2, r2, #896
	strh	r2, [r4, #220]	@ movhi
	asr	r2, r3, #31
	rsb	r2, r2, r10, asr #2
	add	r8, r8, #896
	strh	r8, [r4, #228]	@ movhi
	lsl	r8, r2, r9
	strh	r6, [r4, #242]	@ movhi
	asr	r8, r8, r9
	ldr	r6, .L80+44
	mov	r7, #24
	add	r2, r2, r2, lsl #2
	lsl	r8, r8, #1
	ldr	r6, [r6]
	sub	r3, r3, r2, lsl #1
	ldrh	r2, [r0, r8]
	strh	r1, [r4, #216]	@ movhi
	strh	r1, [r4, #224]	@ movhi
	strh	r1, [r4, #232]	@ movhi
	strh	r1, [r4, #240]	@ movhi
	strh	r1, [r4, #248]	@ movhi
	mov	ip, #8
	mov	lr, #40
	mov	r1, #124
	cmp	r6, #0
	add	r2, r2, #896
	strh	r2, [r4, #244]	@ movhi
	movge	r2, #908
	lsl	r3, r3, #1
	ldrh	r3, [r0, r3]
	strh	r7, [r4, #234]	@ movhi
	add	r3, r3, #896
	ldr	r7, .L80+48
	strh	r3, [r4, #252]	@ movhi
	addge	r3, r4, #256
	addlt	r3, r4, #264
	strh	r9, [r4, #226]	@ movhi
	strh	r7, [r4, #236]	@ movhi
	strh	lr, [r4, #250]	@ movhi
	strh	ip, [r4, #218]	@ movhi
	ldrlt	r2, .L80+52
	strh	r1, [r3]	@ movhi
	ldr	r1, .L80+56
	addge	r4, r4, #260
	addlt	r4, r4, #268
	strh	ip, [r3, #2]	@ movhi
	mov	r8, #16
	mov	ip, r1
	strh	r2, [r4]	@ movhi
	mov	r3, r1
	mov	r2, #124
	mov	r7, #24
	mov	r4, #32
	ldr	lr, .L80+60
	ldr	r6, .L80+64
	ldr	lr, [lr]
	ldr	r6, [r6]
	lsl	lr, lr, #1
	lsl	r6, r6, #1
	ldrh	lr, [r0, lr]
	ldrh	r0, [r0, r6]
	add	lr, lr, #896
	add	r0, r0, #896
	strh	r2, [ip, #16]!	@ movhi
	strh	lr, [r1, #4]	@ movhi
	strh	r2, [r3, #8]!	@ movhi
	strh	r8, [r1, #2]	@ movhi
	strh	r0, [r1, #12]	@ movhi
	ldr	r0, .L80+68
	strh	r4, [ip, #2]	@ movhi
	strh	r2, [r1]	@ movhi
	strh	r0, [r1, #20]	@ movhi
	mov	r2, #117440512
	mov	r0, #3
	strh	r7, [r3, #2]	@ movhi
	sub	r1, r1, #272
	mov	r3, #512
	mov	lr, pc
	bx	r5
	ldr	r3, .L80+72
	mov	lr, pc
	bx	r3
	ldr	r3, .L80+76
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L80+80
	ldr	r3, .L80+84
	mov	lr, pc
	bx	r3
	ldr	r3, .L80+88
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L80+92
	ldr	r3, .L80+96
	mov	lr, pc
	bx	r3
	ldr	r3, .L80+100
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L80+104
	str	r2, [r3]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L81:
	.align	2
.L80:
	.word	hideSprites
	.word	DMANow
	.word	backgroundWINPal
	.word	shadowOAM
	.word	backgroundWINTiles
	.word	100718592
	.word	backgroundWINMap
	.word	time_m
	.word	1717986919
	.word	time_s
	.word	digit_to_sprite_tile_index
	.word	iq
	.word	906
	.word	907
	.word	shadowOAM+272
	.word	hundreds
	.word	tens
	.word	905
	.word	stopSound
	.word	win_length
	.word	win_data
	.word	playSoundB
	.word	winMusic_length
	.word	winMusic_data
	.word	playSoundA
	.word	waitForVBlank
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L89
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	r1, #28
	ldr	r2, .L89+4
	ldrh	r2, [r2]
	ldr	lr, .L89+8
	ldr	ip, .L89+12
	ldr	r0, .L89+16
	tst	r2, #8
	ldr	r2, .L89+20
	strh	r3, [lr]	@ movhi
	strh	r3, [ip]	@ movhi
	strh	r3, [r0]	@ movhi
	strh	r1, [r2]	@ movhi
	beq	.L82
	ldr	r3, .L89+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L88
.L82:
	pop	{r4, lr}
	bx	lr
.L88:
	pop	{r4, lr}
	b	goToIntro
.L90:
	.align	2
.L89:
	.word	waitForVBlank
	.word	oldButtons
	.word	hOff
	.word	vOff
	.word	playerhOff
	.word	screenBlock
	.word	buttons
	.size	win, .-win
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #4608
	mov	r4, #67108864
	ldr	r3, .L107
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r1, #0
	mov	r3, #256
	strh	r1, [r4, #18]	@ movhi
	mov	r2, #83886080
	strh	r1, [r4, #16]	@ movhi
	mov	r0, #3
	ldr	r4, .L107+4
	ldr	r1, .L107+8
	mov	lr, pc
	bx	r4
	ldr	r5, .L107+12
	mov	r3, #2560
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L107+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L107+20
	ldr	r1, .L107+24
	mov	lr, pc
	bx	r4
	mov	r3, #512
	mov	r1, r5
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L107+28
	ldr	r3, [r3]
	cmp	r3, #0
	blt	.L92
	ldr	r3, .L107+32
	ldr	r2, [r3]
	ldr	r3, .L107+36
	cmp	r2, #0
	ldr	r3, [r3]
	bne	.L93
	cmp	r3, #0
	beq	.L99
	mov	r2, #1
	lsl	r3, r3, #16
	ldr	r1, .L107+40
	lsr	r3, r3, #16
	ldr	ip, .L107+44
	ldr	r0, .L107+48
	add	lr, r3, #2
	add	r3, r3, #8
	strh	lr, [r1, #2]	@ movhi
	strh	r3, [ip, #2]	@ movhi
	strh	r2, [r0, #2]	@ movhi
	strh	r2, [r1, #62]	@ movhi
.L95:
	mov	r3, #0
	mov	r1, r3
	ldr	r0, .L107+20
.L100:
	lsl	ip, r3, #1
	add	r2, r3, #32
	add	r3, r3, #1
	lsl	r2, r2, #1
	cmp	r3, #7
	strh	r1, [r0, ip]	@ movhi
	strh	r1, [r0, r2]	@ movhi
	bne	.L100
	ldr	r3, .L107+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L107+56
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L107+60
	ldr	r3, .L107+64
	mov	lr, pc
	bx	r3
	ldr	r3, .L107+68
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L107+72
	ldr	r3, .L107+76
	mov	lr, pc
	bx	r3
	ldr	r3, .L107+80
	mov	lr, pc
	bx	r3
	mov	r2, #6
	ldr	r3, .L107+84
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L93:
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	add	r1, r2, #2
	add	r2, r2, #8
	lsl	r1, r1, #16
	lsl	r2, r2, #16
	cmp	r3, #0
	lsr	r1, r1, #16
	lsr	r2, r2, #16
	bne	.L96
	mov	r3, #1
	ldr	r0, .L107+48
	ldr	lr, .L107+88
	ldr	ip, .L107+40
	strh	r3, [r0, #2]	@ movhi
	strh	r3, [lr, #2]	@ movhi
	strh	r1, [ip]	@ movhi
	strh	r2, [r0, #68]	@ movhi
	b	.L95
.L99:
	mov	r3, #1
	ldr	r1, .L107+48
	ldr	r2, .L107+88
	strh	r3, [r1, #2]	@ movhi
	strh	r3, [r2, #2]	@ movhi
	b	.L95
.L92:
	ldr	r2, .L107+92
	cmp	r3, r2
	blt	.L97
	ldr	r3, .L107+32
	ldr	r2, [r3]
	ldr	r3, .L107+36
	cmp	r2, #0
	ldr	r3, [r3]
	bne	.L98
	cmp	r3, #0
	beq	.L99
	mov	r1, #8
	mov	ip, #1
	lsl	r3, r3, #16
	ldr	r2, .L107+40
	lsr	r3, r3, #16
	add	r0, r3, #2
	strh	r0, [r2, #2]	@ movhi
	ldr	lr, .L107+44
	ldr	r0, .L107+48
	add	r3, r3, r1
	strh	r3, [lr, #2]	@ movhi
	strh	ip, [r0, #2]	@ movhi
	strh	r1, [r2, #62]	@ movhi
	b	.L95
.L98:
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	add	r1, r2, #2
	add	r2, r2, #8
	lsl	r1, r1, #16
	lsl	r2, r2, #16
	cmp	r3, #0
	lsr	r1, r1, #16
	lsr	r2, r2, #16
	bne	.L101
	mov	r0, #1
	mov	lr, #8
	ldr	r3, .L107+48
	ldr	ip, .L107+88
	strh	r0, [r3, #2]	@ movhi
	ldr	r0, .L107+40
	strh	lr, [ip, #2]	@ movhi
	strh	r1, [r0]	@ movhi
	strh	r2, [r3, #68]	@ movhi
	b	.L95
.L96:
	mov	r0, #1
	lsl	r3, r3, #16
	ldr	lr, .L107+40
	lsr	r3, r3, #16
	add	ip, r3, #2
	strh	ip, [lr, #2]	@ movhi
	strh	r1, [lr]	@ movhi
	ldr	ip, .L107+44
	ldr	r1, .L107+88
	add	r3, r3, #8
	strh	r3, [ip, #2]	@ movhi
	strh	r2, [ip]	@ movhi
	strh	r0, [lr, #-2]	@ movhi
	strh	r0, [r1, #2]	@ movhi
	b	.L95
.L97:
	ldr	r3, .L107+96
	ldr	r2, .L107+100
	ldr	r0, .L107+104
	strh	r3, [r5, #208]	@ movhi
	strh	r2, [r5, #210]	@ movhi
	strh	r0, [r5, #212]	@ movhi
	mov	r1, r5
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	b	.L95
.L101:
	mov	ip, #8
	mov	lr, #1
	ldr	r0, .L107+40
	lsl	r3, r3, #16
	strh	r1, [r0]	@ movhi
	lsr	r3, r3, #16
	ldr	r1, .L107+44
	add	r4, r3, #2
	add	r3, r3, ip
	strh	r4, [r0, #2]	@ movhi
	strh	r3, [r1, #2]	@ movhi
	ldr	r3, .L107+88
	strh	r2, [r1]	@ movhi
	strh	lr, [r0, #-2]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	b	.L95
.L108:
	.align	2
.L107:
	.word	hideSprites
	.word	DMANow
	.word	backgroundLOSEPal
	.word	shadowOAM
	.word	backgroundLOSETiles
	.word	100718592
	.word	backgroundLOSEMap
	.word	iq
	.word	hundreds
	.word	tens
	.word	100719132
	.word	100719196
	.word	100719128
	.word	stopSound
	.word	gameOver_length
	.word	gameOver_data
	.word	playSoundB
	.word	loseMusic_length
	.word	loseMusic_data
	.word	playSoundA
	.word	waitForVBlank
	.word	state
	.word	100719192
	.word	-550
	.word	16448
	.word	-32660
	.word	17344
	.size	goToLose, .-goToLose
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L124
	ldr	r3, [r2]
	push	{r4, lr}
	ldr	r1, .L124+4
	add	r3, r3, #1
	str	r3, [r2]
	mov	lr, pc
	bx	r1
	ldr	r3, .L124+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L124+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L124+16
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L124+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L124+24
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L110
	ldr	r3, .L124+28
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L119
.L110:
	ldr	r4, .L124+32
	ldrh	r3, [r4]
	cmp	r3, #1
	beq	.L120
	cmp	r3, #3
	beq	.L121
	cmp	r3, #5
	beq	.L122
.L112:
	ldr	r3, .L124+36
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.L123
	pop	{r4, lr}
	bx	lr
.L123:
	pop	{r4, lr}
	b	goToLose
.L120:
	ldr	r3, .L124+40
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r2, .L124+44
	ldr	ip, .L124+48
	str	r3, [r2, #16]
	ldr	r0, .L124+52
	ldr	r1, .L124+56
	ldr	r2, .L124+60
	str	r3, [r0, #16]
	str	r3, [r1, #16]
	str	r3, [ip, #44]
	str	r3, [r2, #16]
	ldr	ip, .L124+64
	ldr	r0, .L124+68
	ldr	r1, .L124+72
	ldr	r2, .L124+76
	str	r3, [ip, #16]
	str	r3, [r0, #16]
	str	r3, [r1, #16]
	str	r3, [r2, #24]
	ldr	r1, .L124+80
	ldr	r2, .L124+84
	ldr	ip, .L124+88
	ldr	r0, .L124+92
	str	r3, [r1, #24]
	str	r3, [r2, #44]
	str	r3, [ip, #24]
	str	r3, [r0, #24]
	bl	goToGame
	mov	r1, #2
	ldr	r3, .L124+96
	ldr	r2, .L124+100
	strh	r1, [r4]	@ movhi
	str	r2, [r3]
	b	.L112
.L119:
	bl	goToPause
	mov	r2, #1
	ldr	r3, .L124+104
	strh	r2, [r3]	@ movhi
	b	.L110
.L121:
	ldr	r3, .L124+40
	mov	lr, pc
	bx	r3
	mov	r0, #88
	mov	r1, #72
	mov	r3, #0
	ldr	r2, .L124+108
	ldr	ip, .L124+112
	str	r0, [r2]
	str	r1, [r2, #4]
	ldr	r0, .L124+116
	ldr	r1, .L124+120
	ldr	r2, .L124+124
	str	r3, [ip, #44]
	str	r3, [r0, #16]
	str	r3, [r1, #16]
	str	r3, [r2, #16]
	ldr	r1, .L124+128
	ldr	r2, .L124+132
	ldr	ip, .L124+136
	ldr	r0, .L124+140
	str	r3, [r1, #24]
	str	r3, [r2, #24]
	str	r3, [ip, #24]
	str	r3, [r0, #24]
	bl	goToGame
	mov	r1, #4
	ldr	r3, .L124+96
	ldr	r2, .L124+144
	strh	r1, [r4]	@ movhi
	str	r2, [r3]
	b	.L112
.L122:
	bl	goToWin
	mov	r3, #1
	strh	r3, [r4]	@ movhi
	b	.L112
.L125:
	.align	2
.L124:
	.word	time
	.word	updateGame
	.word	drawGame
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.word	level
	.word	life
	.word	initGame
	.word	blockMain
	.word	honey
	.word	noZuoNoDie
	.word	blankBlocksONE
	.word	blankBlocksTWO
	.word	blankBlock1
	.word	blankBlock2
	.word	blankBlock3
	.word	movingCloud1
	.word	movingCloud4
	.word	rocket
	.word	movingCloud2
	.word	movingCloud3
	.word	COLLISIONMAP
	.word	collisionMapBitmap
	.word	paused
	.word	player
	.word	fish
	.word	block1
	.word	block2
	.word	block3
	.word	bridge
	.word	cloud
	.word	guillotine
	.word	brokenGround
	.word	collisionMap2Bitmap
	.size	game, .-game
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L133
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	r1, #28
	ldr	r2, .L133+4
	ldrh	r2, [r2]
	ldr	lr, .L133+8
	ldr	ip, .L133+12
	ldr	r0, .L133+16
	tst	r2, #8
	ldr	r2, .L133+20
	strh	r3, [lr]	@ movhi
	strh	r3, [ip]	@ movhi
	strh	r3, [r0]	@ movhi
	strh	r1, [r2]	@ movhi
	beq	.L126
	ldr	r3, .L133+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L132
.L126:
	pop	{r4, lr}
	bx	lr
.L132:
	pop	{r4, lr}
	b	goToStart
.L134:
	.align	2
.L133:
	.word	waitForVBlank
	.word	oldButtons
	.word	hOff
	.word	vOff
	.word	playerhOff
	.word	screenBlock
	.word	buttons
	.size	lose, .-lose
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r3, .L149
	mov	lr, pc
	bx	r3
	ldr	r6, .L149+4
	ldr	r7, .L149+8
	ldr	r5, .L149+12
	ldr	fp, .L149+16
	ldr	r10, .L149+20
	ldr	r9, .L149+24
	ldr	r8, .L149+28
	ldr	r4, .L149+32
.L136:
	ldr	r2, [r6]
	ldrh	r3, [r7]
.L137:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #6
	ldrls	pc, [pc, r2, asl #2]
	b	.L137
.L139:
	.word	.L145
	.word	.L144
	.word	.L143
	.word	.L142
	.word	.L141
	.word	.L140
	.word	.L138
.L138:
	ldr	r3, .L149+36
	mov	lr, pc
	bx	r3
	b	.L136
.L140:
	ldr	r3, .L149+40
	mov	lr, pc
	bx	r3
	b	.L136
.L141:
	ldr	r3, .L149+44
	mov	lr, pc
	bx	r3
	b	.L136
.L142:
	mov	lr, pc
	bx	r8
	b	.L136
.L143:
	mov	lr, pc
	bx	r9
	b	.L136
.L144:
	mov	lr, pc
	bx	r10
	b	.L136
.L145:
	mov	lr, pc
	bx	fp
	b	.L136
.L150:
	.align	2
.L149:
	.word	initialize
	.word	state
	.word	buttons
	.word	oldButtons
	.word	intro
	.word	start
	.word	instruction
	.word	game
	.word	67109120
	.word	lose
	.word	win
	.word	pause
	.size	main, .-main
	.comm	shadowOAM,1024,4
	.comm	seed,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
