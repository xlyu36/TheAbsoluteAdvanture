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
	.file	"game.c"
	.text
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBlock1.part.0, %function
drawBlock1.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #4
	ldr	r2, .L3
	ldr	r1, .L3+4
	ldr	r3, [r2, #4]
	ldrh	ip, [r1]
	ldr	r1, .L3+8
	ldr	r2, [r2]
	sub	r3, r3, ip
	ldrh	ip, [r1]
	lsl	r3, r3, #23
	ldr	r1, .L3+12
	lsr	r3, r3, #23
	sub	r2, r2, ip
	orr	r3, r3, #16384
	and	r2, r2, #255
	strh	r3, [r1, #10]	@ movhi
	strh	r2, [r1, #8]	@ movhi
	strh	r0, [r1, #12]	@ movhi
	bx	lr
.L4:
	.align	2
.L3:
	.word	block1
	.word	playerhOff
	.word	vOff
	.word	shadowOAM
	.size	drawBlock1.part.0, .-drawBlock1.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBrokenGround.part.0, %function
drawBrokenGround.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L6
	ldr	r0, .L6+4
	ldr	r1, .L6+8
	ldr	r3, [r2, #4]
	ldrh	r0, [r0]
	ldr	r2, [r2]
	ldrh	r1, [r1]
	sub	r3, r3, r0
	sub	r2, r2, r1
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	and	r2, r2, #255
	mvn	r3, r3, lsl #18
	mvn	r2, r2, lsl #17
	mvn	r3, r3, lsr #18
	mvn	r2, r2, lsr #17
	ldr	r1, .L6+12
	ldr	r0, .L6+16
	strh	r3, [r1, #26]	@ movhi
	strh	r2, [r1, #24]	@ movhi
	strh	r0, [r1, #28]	@ movhi
	bx	lr
.L7:
	.align	2
.L6:
	.word	brokenGround
	.word	playerhOff
	.word	vOff
	.word	shadowOAM
	.word	8206
	.size	drawBrokenGround.part.0, .-drawBrokenGround.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBlock2.part.0, %function
drawBlock2.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #4
	ldr	r2, .L9
	ldr	r1, .L9+4
	ldr	r3, [r2, #4]
	ldrh	ip, [r1]
	ldr	r1, .L9+8
	ldr	r2, [r2]
	sub	r3, r3, ip
	ldrh	ip, [r1]
	lsl	r3, r3, #23
	ldr	r1, .L9+12
	lsr	r3, r3, #23
	sub	r2, r2, ip
	orr	r3, r3, #16384
	and	r2, r2, #255
	strh	r3, [r1, #66]	@ movhi
	strh	r2, [r1, #64]	@ movhi
	strh	r0, [r1, #68]	@ movhi
	bx	lr
.L10:
	.align	2
.L9:
	.word	block2
	.word	playerhOff
	.word	vOff
	.word	shadowOAM
	.size	drawBlock2.part.0, .-drawBlock2.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBlock3.part.0, %function
drawBlock3.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #4
	ldr	r2, .L12
	ldr	r1, .L12+4
	ldr	r3, [r2, #4]
	ldrh	ip, [r1]
	ldr	r1, .L12+8
	ldr	r2, [r2]
	sub	r3, r3, ip
	ldrh	ip, [r1]
	lsl	r3, r3, #23
	ldr	r1, .L12+12
	lsr	r3, r3, #23
	sub	r2, r2, ip
	orr	r3, r3, #16384
	and	r2, r2, #255
	strh	r3, [r1, #74]	@ movhi
	strh	r2, [r1, #72]	@ movhi
	strh	r0, [r1, #76]	@ movhi
	bx	lr
.L13:
	.align	2
.L12:
	.word	block3
	.word	playerhOff
	.word	vOff
	.word	shadowOAM
	.size	drawBlock3.part.0, .-drawBlock3.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCloud.part.0, %function
drawCloud.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L15
	ldr	r1, .L15+4
	ldr	r3, [r2, #4]
	ldrh	r1, [r1]
	sub	r3, r3, r1
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #18
	mov	r0, #12672
	mvn	r3, r3, lsr #18
	ldr	r1, .L15+8
	ldr	r2, [r2]
	ldrh	r1, [r1]
	sub	r2, r2, r1
	and	r2, r2, #255
	ldr	r1, .L15+12
	orr	r2, r2, #16384
	strh	r3, [r1, #82]	@ movhi
	strh	r2, [r1, #80]	@ movhi
	strh	r0, [r1, #84]	@ movhi
	bx	lr
.L16:
	.align	2
.L15:
	.word	cloud
	.word	playerhOff
	.word	vOff
	.word	shadowOAM
	.size	drawCloud.part.0, .-drawCloud.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawWinFlame.part.0, %function
drawWinFlame.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #24
	ldr	r2, .L18
	ldr	r0, .L18+4
	ldr	r1, .L18+8
	ldr	r3, [r2, #4]
	ldrh	r0, [r0]
	ldr	r2, [r2]
	ldrh	r1, [r1]
	sub	r3, r3, r0
	sub	r2, r2, r1
	ldr	r0, .L18+12
	lsl	r3, r3, #23
	ldr	r1, .L18+16
	lsr	r3, r3, #23
	and	r2, r2, #255
	orr	r3, r3, r0
	orr	r2, r2, r0
	strh	r3, [r1, #90]	@ movhi
	strh	r2, [r1, #88]	@ movhi
	strh	ip, [r1, #92]	@ movhi
	bx	lr
.L19:
	.align	2
.L18:
	.word	winFlame
	.word	playerhOff
	.word	vOff
	.word	-32768
	.word	shadowOAM
	.size	drawWinFlame.part.0, .-drawWinFlame.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHoney.part.0, %function
drawHoney.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L21
	ldr	r2, .L21+4
	ldr	r3, [r1, #4]
	ldrh	r2, [r2]
	ldr	r0, .L21+8
	sub	r3, r3, r2
	ldrh	ip, [r0]
	ldr	r2, [r1]
	ldr	r1, [r1, #36]
	lsl	r3, r3, #23
	ldr	r0, .L21+12
	lsr	r3, r3, #23
	add	r1, r1, #13
	sub	r2, r2, ip
	orr	r3, r3, #16384
	lsl	r1, r1, #1
	and	r2, r2, #255
	strh	r3, [r0, #106]	@ movhi
	strh	r1, [r0, #108]	@ movhi
	strh	r2, [r0, #104]	@ movhi
	bx	lr
.L22:
	.align	2
.L21:
	.word	honey
	.word	playerhOff
	.word	vOff
	.word	shadowOAM
	.size	drawHoney.part.0, .-drawHoney.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawNoZuoNoDie.part.0, %function
drawNoZuoNoDie.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L24
	ldr	r1, .L24+4
	ldr	r3, [r2, #4]
	ldrh	r1, [r1]
	sub	r3, r3, r1
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #18
	mov	r0, #516
	mvn	r3, r3, lsr #18
	ldr	r1, .L24+8
	ldr	r2, [r2]
	ldrh	r1, [r1]
	sub	r2, r2, r1
	and	r2, r2, #255
	ldr	r1, .L24+12
	orr	r2, r2, #16384
	strh	r3, [r1, #114]	@ movhi
	strh	r2, [r1, #112]	@ movhi
	strh	r0, [r1, #116]	@ movhi
	bx	lr
.L25:
	.align	2
.L24:
	.word	noZuoNoDie
	.word	playerhOff
	.word	vOff
	.word	shadowOAM
	.size	drawNoZuoNoDie.part.0, .-drawNoZuoNoDie.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBlankBlocksONE.part.0, %function
drawBlankBlocksONE.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L27
	ldr	r1, .L27+4
	ldr	r3, [r2, #4]
	ldrh	r1, [r1]
	sub	r3, r3, r1
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mov	r0, #512
	mvn	r3, r3, lsr #17
	ldr	r1, .L27+8
	ldr	r2, [r2]
	ldrh	r1, [r1]
	sub	r2, r2, r1
	and	r2, r2, #255
	ldr	r1, .L27+12
	orr	r2, r2, #16384
	strh	r3, [r1, #122]	@ movhi
	strh	r2, [r1, #120]	@ movhi
	strh	r0, [r1, #124]	@ movhi
	bx	lr
.L28:
	.align	2
.L27:
	.word	blankBlocksONE
	.word	playerhOff
	.word	vOff
	.word	shadowOAM
	.size	drawBlankBlocksONE.part.0, .-drawBlankBlocksONE.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBlankBlocksTWO.part.0, %function
drawBlankBlocksTWO.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L30
	ldr	r1, .L30+4
	ldr	r3, [r2, #4]
	ldrh	r1, [r1]
	sub	r3, r3, r1
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mov	r0, #512
	mvn	r3, r3, lsr #17
	ldr	r1, .L30+8
	ldr	r2, [r2]
	ldrh	r1, [r1]
	sub	r2, r2, r1
	and	r2, r2, #255
	ldr	r1, .L30+12
	orr	r2, r2, #16384
	strh	r3, [r1, #186]	@ movhi
	strh	r2, [r1, #184]	@ movhi
	strh	r0, [r1, #188]	@ movhi
	bx	lr
.L31:
	.align	2
.L30:
	.word	blankBlocksTWO
	.word	playerhOff
	.word	vOff
	.word	shadowOAM
	.size	drawBlankBlocksTWO.part.0, .-drawBlankBlocksTWO.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBlankBlock1.part.0, %function
drawBlankBlock1.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #4
	ldr	r2, .L33
	ldr	r1, .L33+4
	ldr	r3, [r2, #4]
	ldrh	ip, [r1]
	ldr	r1, .L33+8
	ldr	r2, [r2]
	sub	r3, r3, ip
	ldrh	ip, [r1]
	lsl	r3, r3, #23
	ldr	r1, .L33+12
	lsr	r3, r3, #23
	sub	r2, r2, ip
	orr	r3, r3, #16384
	and	r2, r2, #255
	strh	r3, [r1, #138]	@ movhi
	strh	r2, [r1, #136]	@ movhi
	strh	r0, [r1, #140]	@ movhi
	bx	lr
.L34:
	.align	2
.L33:
	.word	blankBlock1
	.word	playerhOff
	.word	vOff
	.word	shadowOAM
	.size	drawBlankBlock1.part.0, .-drawBlankBlock1.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBlankBlock2.part.0, %function
drawBlankBlock2.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L36
	ldr	r1, .L36+4
	ldr	r3, [r2, #4]
	ldrh	r0, [r1]
	ldr	r1, .L36+8
	ldr	r2, [r2]
	sub	r3, r3, r0
	ldrh	r0, [r1]
	lsl	r3, r3, #23
	ldr	r1, .L36+12
	sub	r2, r2, r0
	lsr	r3, r3, #23
	ldr	r0, .L36+16
	orr	r3, r3, #16384
	and	r2, r2, #255
	strh	r3, [r1, #146]	@ movhi
	strh	r2, [r1, #144]	@ movhi
	strh	r0, [r1, #148]	@ movhi
	bx	lr
.L37:
	.align	2
.L36:
	.word	blankBlock2
	.word	playerhOff
	.word	vOff
	.word	shadowOAM
	.word	514
	.size	drawBlankBlock2.part.0, .-drawBlankBlock2.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBlankBlock3.part.0, %function
drawBlankBlock3.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #512
	ldr	r2, .L39
	ldr	r1, .L39+4
	ldr	r3, [r2, #4]
	ldrh	ip, [r1]
	ldr	r1, .L39+8
	ldr	r2, [r2]
	sub	r3, r3, ip
	ldrh	ip, [r1]
	lsl	r3, r3, #23
	ldr	r1, .L39+12
	lsr	r3, r3, #23
	sub	r2, r2, ip
	orr	r3, r3, #16384
	and	r2, r2, #255
	strh	r3, [r1, #194]	@ movhi
	strh	r2, [r1, #192]	@ movhi
	strh	r0, [r1, #196]	@ movhi
	bx	lr
.L40:
	.align	2
.L39:
	.word	blankBlock3
	.word	playerhOff
	.word	vOff
	.word	shadowOAM
	.size	drawBlankBlock3.part.0, .-drawBlankBlock3.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawMovingCloud1.part.0, %function
drawMovingCloud1.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L42
	ldr	r1, .L42+4
	ldr	r3, [r2, #4]
	ldrh	r1, [r1]
	sub	r3, r3, r1
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r1, .L42+8
	ldr	r2, [r2]
	ldrh	r1, [r1]
	sub	r2, r2, r1
	ldr	r0, .L42+12
	ldr	r1, .L42+16
	and	r2, r2, #255
	orr	r2, r2, #16384
	strh	r3, [r1, #154]	@ movhi
	strh	r2, [r1, #152]	@ movhi
	strh	r0, [r1, #156]	@ movhi
	bx	lr
.L43:
	.align	2
.L42:
	.word	movingCloud1
	.word	playerhOff
	.word	vOff
	.word	12420
	.word	shadowOAM
	.size	drawMovingCloud1.part.0, .-drawMovingCloud1.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawMovingCloud2.part.0, %function
drawMovingCloud2.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L45
	ldr	r1, .L45+4
	ldr	r3, [r2, #4]
	ldrh	r1, [r1]
	sub	r3, r3, r1
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r1, .L45+8
	ldr	r2, [r2]
	ldrh	r1, [r1]
	sub	r2, r2, r1
	ldr	r0, .L45+12
	ldr	r1, .L45+16
	and	r2, r2, #255
	orr	r2, r2, #16384
	strh	r3, [r1, #162]	@ movhi
	strh	r2, [r1, #160]	@ movhi
	strh	r0, [r1, #164]	@ movhi
	bx	lr
.L46:
	.align	2
.L45:
	.word	movingCloud2
	.word	playerhOff
	.word	vOff
	.word	12420
	.word	shadowOAM
	.size	drawMovingCloud2.part.0, .-drawMovingCloud2.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawMovingCloud3.part.0, %function
drawMovingCloud3.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L48
	ldr	r1, .L48+4
	ldr	r3, [r2, #4]
	ldrh	r1, [r1]
	sub	r3, r3, r1
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r1, .L48+8
	ldr	r2, [r2]
	ldrh	r1, [r1]
	sub	r2, r2, r1
	ldr	r0, .L48+12
	ldr	r1, .L48+16
	and	r2, r2, #255
	orr	r2, r2, #16384
	strh	r3, [r1, #170]	@ movhi
	strh	r2, [r1, #168]	@ movhi
	strh	r0, [r1, #172]	@ movhi
	bx	lr
.L49:
	.align	2
.L48:
	.word	movingCloud3
	.word	playerhOff
	.word	vOff
	.word	12420
	.word	shadowOAM
	.size	drawMovingCloud3.part.0, .-drawMovingCloud3.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawMovingCloud4.part.0, %function
drawMovingCloud4.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L51
	ldr	r1, .L51+4
	ldr	r3, [r2, #4]
	ldrh	r1, [r1]
	sub	r3, r3, r1
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r1, .L51+8
	ldr	r2, [r2]
	ldrh	r1, [r1]
	sub	r2, r2, r1
	ldr	r0, .L51+12
	ldr	r1, .L51+16
	and	r2, r2, #255
	orr	r2, r2, #16384
	strh	r3, [r1, #178]	@ movhi
	strh	r2, [r1, #176]	@ movhi
	strh	r0, [r1, #180]	@ movhi
	bx	lr
.L52:
	.align	2
.L51:
	.word	movingCloud4
	.word	playerhOff
	.word	vOff
	.word	12420
	.word	shadowOAM
	.size	drawMovingCloud4.part.0, .-drawMovingCloud4.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRocket.part.0, %function
drawRocket.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L54
	ldr	r1, .L54+4
	ldr	r3, [r2, #4]
	ldrh	r1, [r1]
	sub	r3, r3, r1
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r1, .L54+8
	ldr	r2, [r2]
	ldrh	r1, [r1]
	sub	r2, r2, r1
	ldr	r0, .L54+12
	ldr	r1, .L54+16
	and	r2, r2, #255
	orr	r2, r2, #16384
	strh	r3, [r1, #202]	@ movhi
	strh	r2, [r1, #200]	@ movhi
	strh	r0, [r1, #204]	@ movhi
	bx	lr
.L55:
	.align	2
.L54:
	.word	rocket
	.word	playerhOff
	.word	vOff
	.word	4232
	.word	shadowOAM
	.size	drawRocket.part.0, .-drawRocket.part.0
	.align	2
	.global	initPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #0
	mov	r6, #88
	mov	r5, #10
	mov	r4, #2
	mov	lr, #16
	mov	r1, #1
	mov	ip, #24
	mov	r0, #3
	ldr	r3, .L58
	str	r6, [r3]
	str	r5, [r3, #4]
	str	r4, [r3, #8]
	str	lr, [r3, #16]
	str	ip, [r3, #20]
	str	r0, [r3, #40]
	str	r1, [r3, #12]
	str	r1, [r3, #28]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r2, [r3, #48]
	str	r2, [r3, #52]
	pop	{r4, r5, r6, lr}
	bx	lr
.L59:
	.align	2
.L58:
	.word	player
	.size	initPlayer, .-initPlayer
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L167
	ldr	r2, [r3, #28]
	cmp	r2, #2
	movne	r1, #2
	push	{r4, r5, r6, r7, lr}
	strne	r2, [r3, #32]
	strne	r1, [r3, #28]
	ldr	r2, .L167+4
	ldr	r1, [r3, #24]
	smull	ip, r0, r2, r1
	asr	r2, r1, #31
	rsb	r2, r2, r0, asr #1
	add	r2, r2, r2, lsl #2
	subs	r2, r1, r2
	bne	.L63
	ldr	r1, [r3, #36]
	ldr	r0, [r3, #40]
	add	r1, r1, #1
	cmp	r1, r0
	moveq	r1, r2
	str	r1, [r3, #36]
.L63:
	ldr	r2, .L167+8
	ldrh	r2, [r2, #48]
	ands	r2, r2, #32
	beq	.L65
	ldr	r0, .L167+12
	ldr	lr, .L167+16
	ldr	ip, .L167+20
.L66:
	ldr	r2, .L167+8
	ldrh	r2, [r2, #48]
	tst	r2, #16
	bne	.L70
	mov	r1, #1
	ldr	r4, [r3, #4]
	ldr	r2, [r3, #16]
	add	r2, r4, r2
	cmp	r2, #1024
	str	r1, [r3, #28]
	bge	.L71
	ldr	r5, [r0]
	ldr	r1, [r3]
	add	r6, r5, r1, lsl #10
	ldrb	r6, [r6, r2]	@ zero_extendqisi2
	cmp	r6, #0
	beq	.L71
	ldr	r7, [r3, #20]
	add	r6, r7, r7, lsr #31
	add	r6, r1, r6, asr #1
	add	r6, r5, r6, lsl #10
	ldrb	r6, [r6, r2]	@ zero_extendqisi2
	cmp	r6, #0
	beq	.L71
	add	r1, r1, r7
	sub	r1, r1, #1
	add	r1, r5, r1, lsl #10
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	cmp	r2, #0
	ldrne	r2, [r3, #12]
	addne	r4, r2, r4
	strne	r4, [r3, #4]
.L71:
	ldr	r2, .L167+24
	ldrh	r2, [r2]
	cmp	r2, #30
	bls	.L163
.L70:
	ldr	r2, .L167+28
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L73
	ldr	r2, .L167+32
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L164
.L73:
	ldr	r2, [r3, #48]
	cmp	r2, #0
	bne	.L74
	ldr	r4, [r3]
	ldr	r2, [r3, #20]
	ldr	r5, [r3, #8]
	add	r2, r4, r2
	ldr	r7, [r0]
	add	r1, r2, r5
	ldr	r6, [r3, #4]
	sub	r1, r1, #1
	add	r1, r7, r1, lsl #10
	ldrb	r1, [r1, r6]	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L165
.L78:
	mov	r2, #0
	str	r2, [r3, #52]
.L79:
	cmp	r4, #135
	ble	.L77
	mov	r4, #0
	ldr	r2, .L167+36
	ldr	r1, [r2, #4]
	sub	r1, r1, #50
	strh	r4, [r2]	@ movhi
	str	r1, [r2, #4]
	b	.L77
.L164:
	ldr	r1, [r3, #20]
	ldr	r4, [r3]
	ldr	r2, [r0]
	add	r4, r4, r1
	ldr	r1, [r3, #16]
	add	r2, r2, r4, lsl #10
	add	r1, r1, r1, lsr #31
	ldr	r4, [r3, #4]
	add	r2, r2, r1, asr #1
	ldrb	r2, [r2, r4]	@ zero_extendqisi2
	cmp	r2, #1
	beq	.L73
	mov	r2, #1
	str	r2, [r3, #48]
.L74:
	ldr	r1, .L167+40
	ldrh	r2, [r1]
	cmp	r2, #34
	bls	.L166
.L76:
	mov	r2, #0
	str	r2, [r3, #48]
	strh	r2, [r1]	@ movhi
.L77:
	ldr	r2, [r3, #28]
	cmp	r2, #2
	moveq	r1, #0
	ldrne	r2, [r3, #24]
	ldreq	r2, [r3, #32]
	addne	r2, r2, #1
	streq	r2, [r3, #28]
	strne	r2, [r3, #24]
	ldrh	r2, [lr]
	streq	r1, [r3, #36]
	cmp	r2, #256
	bls	.L82
	mov	r5, #67108864
	ldr	r4, .L167+24
	ldrh	r1, [r4]
	add	r1, r1, #1
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	sub	r2, r2, #256
	strh	r2, [lr]	@ movhi
	lsl	r2, r1, #24
	orr	r2, r2, #1073741824
	lsr	r2, r2, #16
	strh	r1, [r4]	@ movhi
	strh	r2, [r5, #8]	@ movhi
	ldrh	r2, [lr]
.L82:
	ldrh	r1, [ip]
	cmp	r1, #512
	subhi	r1, r1, #512
	strhhi	r1, [ip]	@ movhi
	mov	r1, #67108864
	ldr	lr, [r0]
	ldm	r3, {r0, r4}
	strh	r2, [r1, #16]	@ movhi
	add	r5, lr, r0, lsl #10
	sub	r2, r4, #1
	ldrb	r1, [r5, r2]	@ zero_extendqisi2
	cmp	r1, #2
	beq	.L84
	ldr	ip, [r3, #20]
	add	r1, ip, ip, lsr #31
	add	r1, r0, r1, asr #1
	add	r2, lr, r2
	ldrb	r6, [r2, r1, lsl #10]	@ zero_extendqisi2
	cmp	r6, #2
	lsl	r1, r1, #10
	beq	.L84
	add	r0, r0, ip
	sub	r6, r0, #1
	ldrb	r2, [r2, r6, lsl #10]	@ zero_extendqisi2
	cmp	r2, #2
	lsl	r2, r6, #10
	beq	.L84
	ldr	ip, [r3, #16]
	add	r7, r4, ip
	ldrb	r5, [r5, r7]	@ zero_extendqisi2
	cmp	r5, #2
	beq	.L84
	add	r1, lr, r1
	ldrb	r1, [r1, r7]	@ zero_extendqisi2
	cmp	r1, #2
	beq	.L84
	add	r2, lr, r2
	ldrb	r2, [r2, r7]	@ zero_extendqisi2
	cmp	r2, #2
	beq	.L84
	ldr	r2, [r3, #8]
	add	r0, r0, r2
	sub	r0, r0, #1
	add	r0, lr, r0, lsl #10
	ldrb	r3, [r0, r4]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L84
	add	r2, r6, r2
	add	r3, lr, r7
	add	r3, r3, r2, lsl #10
	ldrb	r3, [r3, #-1]	@ zero_extendqisi2
	cmp	r3, #2
	lsl	r2, r2, #10
	beq	.L84
	add	r3, lr, r4
	add	r3, r3, r2
	add	ip, ip, ip, lsr #31
	ldrb	r3, [r3, ip, asr #1]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L60
.L84:
	mov	r1, #0
	ldr	r3, .L167+36
	ldr	r2, [r3, #4]
	sub	r2, r2, #50
	strh	r1, [r3]	@ movhi
	str	r2, [r3, #4]
.L60:
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L166:
	ldr	r6, [r3]
	cmp	r6, #0
	ble	.L76
	ldr	r5, [r0]
	ldr	r7, [r3, #4]
	sub	r4, r6, #1
	add	r4, r5, r4, lsl #10
	ldrb	r5, [r4, r7]	@ zero_extendqisi2
	cmp	r5, #0
	add	r4, r4, r7
	beq	.L76
	ldr	r5, [r3, #16]
	add	r7, r4, r5
	ldrb	r7, [r7, #-1]	@ zero_extendqisi2
	cmp	r7, #0
	beq	.L76
	add	r5, r5, r5, lsr #31
	ldrb	r4, [r4, r5, asr #1]	@ zero_extendqisi2
	cmp	r4, #0
	beq	.L76
	ldr	r4, [r3, #8]
	add	r2, r2, #1
	sub	r6, r6, r4
	strh	r2, [r1]	@ movhi
	str	r6, [r3]
	b	.L77
.L165:
	sub	r2, r2, #1
	add	r1, r7, r6
	add	r2, r2, r5
	ldr	r6, [r3, #16]
	add	r2, r1, r2, lsl #10
	add	r1, r2, r6
	ldrb	r1, [r1, #-1]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L78
	add	r6, r6, r6, lsr #31
	ldrb	r2, [r2, r6, asr #1]	@ zero_extendqisi2
	cmp	r2, #0
	addne	r4, r4, r5
	strne	r4, [r3]
	bne	.L79
	b	.L78
.L163:
	ldrh	r2, [lr]
	cmp	r2, #784
	bcs	.L70
	ldrh	r4, [ip]
	ldr	r1, [r3, #4]
	sub	r1, r1, r4
	cmp	r1, #120
	ldrhgt	r1, [r3, #12]
	addgt	r2, r2, r1
	addgt	r4, r4, r1
	strhgt	r2, [lr]	@ movhi
	strhgt	r4, [ip]	@ movhi
	b	.L70
.L65:
	ldr	r1, [r3, #4]
	cmp	r1, #0
	ldr	r0, .L167+12
	str	r2, [r3, #28]
	ble	.L67
	ldr	r2, [r3]
	ldr	ip, [r0]
	sub	r4, r1, #1
	add	lr, ip, r2, lsl #10
	ldrb	lr, [lr, r4]	@ zero_extendqisi2
	cmp	lr, #0
	beq	.L67
	ldr	r5, [r3, #20]
	add	lr, r5, r5, lsr #31
	add	lr, r2, lr, asr #1
	add	lr, ip, lr, lsl #10
	ldrb	lr, [lr, r4]	@ zero_extendqisi2
	cmp	lr, #0
	beq	.L67
	add	r2, r2, r5
	sub	r2, r2, #1
	add	r2, ip, r2, lsl #10
	ldrb	r2, [r2, r4]	@ zero_extendqisi2
	cmp	r2, #0
	ldrne	r2, [r3, #12]
	subne	r2, r1, r2
	strne	r2, [r3, #4]
.L67:
	ldr	r2, .L167+24
	ldrh	r2, [r2]
	cmp	r2, #27
	ldr	lr, .L167+16
	ldrls	ip, .L167+20
	bls	.L66
.L160:
	ldrh	r2, [lr]
	cmp	r2, #0
	ldr	ip, .L167+20
	beq	.L66
	ldrh	r4, [ip]
	ldr	r1, [r3, #4]
	sub	r1, r1, r4
	cmp	r1, #119
	ldrhle	r1, [r3, #12]
	suble	r2, r2, r1
	suble	r4, r4, r1
	strhle	r2, [lr]	@ movhi
	strhle	r4, [ip]	@ movhi
	b	.L66
.L168:
	.align	2
.L167:
	.word	player
	.word	1717986919
	.word	67109120
	.word	COLLISIONMAP
	.word	hOff
	.word	playerhOff
	.word	screenBlock
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.word	jumpCount
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L171
	ldr	r1, .L171+4
	ldr	r2, .L171+8
	ldrh	ip, [r1]
	ldr	r3, [r0, #4]
	ldrh	r1, [r2]
	ldr	r2, [r0]
	str	lr, [sp, #-4]!
	sub	r3, r3, ip
	ldr	lr, [r0, #36]
	sub	r2, r2, r1
	ldr	r1, [r0, #28]
	ldr	ip, .L171+12
	lsl	r3, r3, #23
	ldr	r0, .L171+16
	add	r1, r1, lr, lsl #6
	lsr	r3, r3, #23
	and	r2, r2, #255
	orr	r3, r3, ip
	orr	r2, r2, ip
	lsl	r1, r1, #1
	strh	r3, [r0, #2]	@ movhi
	strh	r2, [r0]	@ movhi
	strh	r1, [r0, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L172:
	.align	2
.L171:
	.word	player
	.word	playerhOff
	.word	vOff
	.word	-32768
	.word	shadowOAM
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	initBlock1
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBlock1, %function
initBlock1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #16
	mov	ip, #296
	mov	r0, #56
	mov	r1, #1
	ldr	r3, .L174
	stm	r3, {r0, ip}
	str	r1, [r3, #16]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	bx	lr
.L175:
	.align	2
.L174:
	.word	block1
	.size	initBlock1, .-initBlock1
	.align	2
	.global	updateBlock1
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBlock1, %function
updateBlock1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L186
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L176
	ldr	r5, .L186+4
	ldr	r3, [r4, #4]
	ldr	r2, [r5, #4]
	add	r1, r3, #16
	cmp	r2, r1
	bgt	.L176
	sub	r3, r3, #16
	cmp	r2, r3
	blt	.L180
	ldr	r1, [r4]
	ldr	ip, [r4, #12]
	ldr	r0, [r5]
	add	r1, r1, ip
	cmp	r1, r0
	beq	.L185
.L180:
	cmp	r3, r2
	bgt	.L176
	ldr	r3, [r4]
	ldr	r1, [r5, #20]
	ldr	r2, [r5]
	sub	r3, r3, r1
	cmp	r3, r2
	moveq	r3, #0
	streq	r3, [r4, #16]
.L176:
	pop	{r4, r5, r6, lr}
	bx	lr
.L185:
	mov	r2, #0
	mov	ip, #1
	ldr	r3, .L186+8
	ldr	r0, .L186+12
	ldr	r1, [r3]
	ldr	r3, .L186+16
	str	r2, [r5, #48]
	str	ip, [r4, #16]
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L176
	ldr	r3, [r4, #4]
	ldr	r2, [r5, #4]
	add	r1, r3, #16
	cmp	r2, r1
	bgt	.L176
	sub	r3, r3, #16
	b	.L180
.L187:
	.align	2
.L186:
	.word	block1
	.word	player
	.word	jump_length
	.word	jump_data
	.word	playSoundB
	.size	updateBlock1, .-updateBlock1
	.align	2
	.global	drawBlock1
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBlock1, %function
drawBlock1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L190
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bne	drawBlock1.part.0
.L189:
	mov	r2, #512
	ldr	r3, .L190+4
	strh	r2, [r3, #8]	@ movhi
	bx	lr
.L191:
	.align	2
.L190:
	.word	block1
	.word	shadowOAM
	.size	drawBlock1, .-drawBlock1
	.align	2
	.global	initGuillotine
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGuillotine, %function
initGuillotine:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #0
	mov	r4, #404
	mov	lr, #26
	mov	ip, #2
	mov	r0, #64
	mov	r1, #16
	ldr	r3, .L194
	str	r4, [r3, #4]
	str	lr, [r3]
	str	ip, [r3, #8]
	str	r0, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #12]
	str	r2, [r3, #24]
	pop	{r4, lr}
	bx	lr
.L195:
	.align	2
.L194:
	.word	guillotine
	.size	initGuillotine, .-initGuillotine
	.align	2
	.global	updateGuillotine
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGuillotine, %function
updateGuillotine:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L207
	ldr	lr, .L207+4
	ldr	r3, [r3]
	ldr	r1, [lr]
	ldr	r0, [lr, #4]
	ldr	r2, [lr, #16]
	add	r3, r3, r1, lsl #10
	add	r3, r3, r0
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	cmp	r3, #3
	sub	sp, sp, #16
	beq	.L206
	ldr	ip, .L207+8
	ldr	r3, [ip, #24]
	cmp	r3, #0
	bne	.L198
.L199:
	mov	r3, #0
	str	r3, [ip, #24]
.L196:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L206:
	mov	r3, #1
	ldr	ip, .L207+8
	str	r3, [ip, #24]
.L198:
	ldr	r3, [ip]
	cmp	r3, #95
	bgt	.L199
	ldr	r4, [ip, #8]
	ldr	r5, [ip, #16]
	add	r4, r3, r4
	ldr	r6, [ip, #20]
	ldr	r3, [lr, #20]
	ldr	lr, [ip, #4]
	str	r5, [sp, #8]
	str	r4, [sp, #4]
	str	r6, [sp, #12]
	str	lr, [sp]
	ldr	r5, .L207+12
	str	r4, [ip]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L196
	mov	r1, #0
	ldr	r3, .L207+16
	ldr	r2, [r3, #4]
	sub	r2, r2, #50
	strh	r1, [r3]	@ movhi
	str	r2, [r3, #4]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L208:
	.align	2
.L207:
	.word	COLLISIONMAP
	.word	player
	.word	guillotine
	.word	collision
	.word	.LANCHOR0
	.size	updateGuillotine, .-updateGuillotine
	.align	2
	.global	drawGuillotine
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGuillotine, %function
drawGuillotine:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L212
	ldr	r1, .L212+4
	ldr	r3, [r2, #4]
	ldrh	r1, [r1]
	sub	r3, r3, r1
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #18
	mov	r0, #6
	mvn	r3, r3, lsr #18
	ldr	r1, .L212+8
	ldr	r2, [r2]
	ldrh	ip, [r1]
	ldr	r1, .L212+12
	sub	r2, r2, ip
	ldrh	ip, [r1]
	and	r2, r2, #255
	ldr	r1, .L212+16
	orr	r2, r2, #16384
	cmp	ip, #29
	strh	r3, [r1, #18]	@ movhi
	strh	r2, [r1, #16]	@ movhi
	strh	r0, [r1, #20]	@ movhi
	bhi	.L210
	ldr	r3, .L212+20
	ldrh	r3, [r3]
	cmp	r3, #2
	bxls	lr
.L210:
	mov	r3, #512
	strh	r3, [r1, #16]	@ movhi
	bx	lr
.L213:
	.align	2
.L212:
	.word	guillotine
	.word	playerhOff
	.word	vOff
	.word	screenBlock
	.word	shadowOAM
	.word	.LANCHOR1
	.size	drawGuillotine, .-drawGuillotine
	.align	2
	.global	initBrokenGround
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBrokenGround, %function
initBrokenGround:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	ip, #568
	mov	lr, #112
	mov	r0, #32
	mov	r1, #64
	mov	r2, #1
	ldr	r3, .L216
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #24]
	ldr	lr, [sp], #4
	bx	lr
.L217:
	.align	2
.L216:
	.word	brokenGround
	.size	initBrokenGround, .-initBrokenGround
	.align	2
	.global	updateBrokenGround
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBrokenGround, %function
updateBrokenGround:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r4, .L224
	add	ip, r4, #16
	ldm	r4, {r2, r3}
	ldm	ip, {ip, lr}
	ldr	r0, .L224+4
	sub	sp, sp, #20
	ldr	r1, [r0]
	stmib	sp, {r2, ip, lr}
	str	r3, [sp]
	add	r2, r0, #16
	ldm	r2, {r2, r3}
	ldr	r5, .L224+8
	add	r1, r1, #8
	ldr	r0, [r0, #4]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	movne	r3, #0
	strne	r3, [r4, #24]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L225:
	.align	2
.L224:
	.word	brokenGround
	.word	player
	.word	collision
	.size	updateBrokenGround, .-updateBrokenGround
	.align	2
	.global	drawBrokenGround
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBrokenGround, %function
drawBrokenGround:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L232
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L227
	ldr	r3, .L232+4
	ldrh	r3, [r3]
	cmp	r3, #29
	beq	.L231
.L227:
	mov	r2, #512
	ldr	r3, .L232+8
	strh	r2, [r3, #24]	@ movhi
	bx	lr
.L231:
	b	drawBrokenGround.part.0
.L233:
	.align	2
.L232:
	.word	brokenGround
	.word	screenBlock
	.word	shadowOAM
	.size	drawBrokenGround, .-drawBrokenGround
	.align	2
	.global	initBridge
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBridge, %function
initBridge:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #32
	mov	ip, #88
	mov	r0, #656
	mov	r1, #1
	ldr	r3, .L235
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #24]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	bx	lr
.L236:
	.align	2
.L235:
	.word	bridge
	.size	initBridge, .-initBridge
	.align	2
	.global	updateBridge
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBridge, %function
updateBridge:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r4, .L243
	add	ip, r4, #16
	ldm	r4, {r2, r3}
	ldm	ip, {ip, lr}
	ldr	r1, .L243+4
	sub	sp, sp, #20
	ldr	r0, [r1, #4]
	stmib	sp, {r2, ip, lr}
	str	r3, [sp]
	add	r2, r1, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r1]
	ldr	r5, .L243+8
	sub	r0, r0, #8
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	movne	r3, #0
	strne	r3, [r4, #24]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L244:
	.align	2
.L243:
	.word	bridge
	.word	player
	.word	collision
	.size	updateBridge, .-updateBridge
	.align	2
	.global	drawBridge
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBridge, %function
drawBridge:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L252
	ldr	r3, [r2, #24]
	cmp	r3, #0
	beq	.L246
	ldr	r3, .L252+4
	ldrh	r3, [r3]
	sub	r3, r3, #29
	cmp	r3, #1
	bls	.L251
.L246:
	mov	r2, #512
	ldr	r3, .L252+8
	strh	r2, [r3, #32]	@ movhi
	bx	lr
.L251:
	ldr	r1, .L252+12
	ldr	r3, [r2, #4]
	ldrh	r1, [r1]
	sub	r3, r3, r1
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mov	r0, #18
	mvn	r3, r3, lsr #17
	ldr	r1, .L252+16
	ldr	r2, [r2]
	ldrh	ip, [r1]
	ldr	r1, .L252+8
	sub	r2, r2, ip
	and	r2, r2, #255
	strh	r3, [r1, #34]	@ movhi
	strh	r2, [r1, #32]	@ movhi
	strh	r0, [r1, #36]	@ movhi
	bx	lr
.L253:
	.align	2
.L252:
	.word	bridge
	.word	screenBlock
	.word	shadowOAM
	.word	playerhOff
	.word	vOff
	.size	drawBridge, .-drawBridge
	.align	2
	.global	initFish
	.syntax unified
	.arm
	.fpu softvfp
	.type	initFish, %function
initFish:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r1, #632
	mov	r5, #160
	mov	r0, #2
	mov	r2, #0
	mov	r4, #8
	mov	lr, #16
	mov	ip, #1
	ldr	r3, .L258
.L255:
	str	r1, [r3, #4]
	add	r1, r1, #16
	cmp	r1, #680
	str	r5, [r3]
	str	r0, [r3, #8]
	str	r2, [r3, #12]
	str	r4, [r3, #16]
	str	lr, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r0, [r3, #40]
	str	r2, [r3, #44]
	str	ip, [r3, #48]
	add	r3, r3, #56
	bne	.L255
	pop	{r4, r5, lr}
	bx	lr
.L259:
	.align	2
.L258:
	.word	fish
	.size	initFish, .-initFish
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r3, #0
	mov	r0, #28
	ldr	r1, .L264
	ldr	r2, .L264+4
	ldr	lr, .L264+8
	ldr	ip, .L264+12
	strh	r3, [r1]	@ movhi
	ldr	r1, .L264+16
	ldr	r2, [r2, #4]
	strh	r0, [r1]	@ movhi
	strh	r3, [lr]	@ movhi
	strh	r3, [ip]	@ movhi
	ldr	lr, .L264+20
	ldr	ip, .L264+24
	ldr	r1, .L264+28
	cmp	r2, r3
	smull	r0, r1, r2, r1
	str	r3, [ip]
	strh	r3, [lr]	@ movhi
	ldr	r0, .L264+32
	asr	ip, r2, #31
	ble	.L261
	rsb	r1, ip, r1, asr #2
	ldr	lr, .L264+36
	umull	r4, r0, r1, r0
	smull	r4, r2, lr, r2
	lsr	r0, r0, #3
	rsb	ip, ip, r2, asr #5
	ldr	r4, .L264+40
	ldr	lr, .L264+44
	ldr	r2, .L264+48
	add	r0, r0, r0, lsl #2
	sub	r1, r1, r0, lsl #1
	str	ip, [r4]
	str	r1, [lr]
	str	r3, [r2]
.L262:
	mov	ip, #3
	mov	r4, #16
	mov	r5, #0
	mov	r6, #1
	ldr	r3, .L264+52
	mov	r9, #2
	mov	lr, #24
	mov	r2, #88
	mov	fp, #10
	mov	r8, #56
	str	ip, [r3, #40]
	mov	ip, #296
	mov	r0, #800
	mov	r1, #816
	stm	r3, {r2, fp}
	str	r9, [r3, #8]
	str	r6, [r3, #12]
	str	r4, [r3, #16]
	str	lr, [r3, #20]
	str	r6, [r3, #28]
	str	r5, [r3, #24]
	str	r5, [r3, #36]
	str	r5, [r3, #48]
	str	r5, [r3, #52]
	ldr	r3, .L264+56
	stm	r3, {r8, ip}
	str	r4, [r3, #8]
	str	r4, [r3, #12]
	str	r6, [r3, #16]
	ldr	r3, .L264+60
	str	r8, [r3]
	str	r4, [r3, #8]
	str	r4, [r3, #12]
	str	r5, [r3, #16]
	str	r0, [r3, #4]
	ldr	r3, .L264+64
	mov	r10, #64
	str	r1, [r3, #4]
	mov	r0, #26
	mov	r1, #404
	str	r8, [r3]
	str	r4, [r3, #8]
	str	r4, [r3, #12]
	str	r5, [r3, #16]
	ldr	r3, .L264+68
	mov	ip, #568
	stm	r3, {r0, r1}
	str	r5, [r3, #12]
	str	r9, [r3, #8]
	str	r10, [r3, #16]
	str	r4, [r3, #20]
	str	r5, [r3, #24]
	mov	r3, #112
	ldr	r1, .L264+72
	stm	r1, {r3, ip}
	ldr	r3, .L264+76
	mov	r7, #32
	str	r2, [r3]
	mov	r2, #656
	str	r10, [r1, #20]
	str	r6, [r1, #24]
	str	r7, [r1, #16]
	str	r7, [r3, #16]
	str	r7, [r3, #20]
	str	r6, [r3, #24]
	str	r2, [r3, #4]
	mvn	fp, #3
	bl	initFish
	mov	lr, #832
	mov	ip, #80
	mov	r0, #960
	mov	r1, #128
	ldr	r3, .L264+80
	stm	r3, {fp, lr}
	str	r10, [r3, #16]
	str	r7, [r3, #20]
	str	r5, [r3, #24]
	ldr	r3, .L264+84
	stmib	r3, {r7, r10}
	str	r8, [r3]
	str	r5, [r3, #16]
	str	r4, [r3, #12]
	ldr	r3, .L264+88
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r4, [r3, #16]
	str	r7, [r3, #20]
	ldr	r3, .L264+92
	mov	r2, #72
	str	r8, [r3]
	str	r4, [r3, #8]
	str	r1, [r3, #4]
	str	r4, [r3, #12]
	str	r6, [r3, #16]
	mov	ip, #296
	ldr	r3, .L264+96
	str	r1, [r3, #4]
	mov	r1, #96
	str	r8, [r3]
	str	r6, [r3, #8]
	str	r5, [r3, #12]
	str	r4, [r3, #16]
	str	r4, [r3, #20]
	str	r5, [r3, #24]
	str	r5, [r3, #36]
	str	r9, [r3, #40]
	str	r5, [r3, #44]
	ldr	r3, .L264+100
	str	r5, [r3, #4]
	str	r8, [r3]
	str	r7, [r3, #8]
	str	r4, [r3, #12]
	str	r5, [r3, #16]
	ldr	r3, .L264+104
	str	r7, [r3, #16]
	str	r9, [r3, #12]
	str	r2, [r3]
	str	ip, [r3, #4]
	str	r4, [r3, #20]
	str	r6, [r3, #24]
	str	r5, [r3, #28]
	ldr	r3, .L264+108
	str	r1, [r3, #4]
	mov	r1, #144
	str	r8, [r3]
	str	r7, [r3, #8]
	str	r4, [r3, #12]
	str	r5, [r3, #16]
	ldr	r3, .L264+112
	str	r1, [r3, #4]
	mov	r1, #160
	str	r8, [r3]
	str	r4, [r3, #8]
	str	r4, [r3, #12]
	str	r5, [r3, #16]
	ldr	r3, .L264+116
	str	r1, [r3, #4]
	mov	r1, #176
	mov	r0, #360
	str	r8, [r3]
	str	r4, [r3, #8]
	str	r4, [r3, #12]
	str	r5, [r3, #16]
	ldr	r3, .L264+120
	str	r1, [r3, #4]
	ldr	r1, .L264+124
	str	r8, [r3]
	str	r4, [r3, #8]
	str	r4, [r3, #12]
	str	r5, [r3, #16]
	str	r7, [r1]
	str	r7, [r1, #16]
	str	r4, [r1, #20]
	str	r0, [r1, #4]
	str	r6, [r1, #8]
	str	r6, [r1, #24]
	str	r5, [r1, #28]
	mov	r1, #392
	ldr	r0, .L264+128
	str	r1, [r0, #4]
	mov	r1, #440
	ldr	r3, .L264+132
	str	r2, [r3]
	str	r7, [r3, #16]
	str	r4, [r3, #20]
	str	r6, [r3, #12]
	str	r6, [r3, #24]
	str	r5, [r3, #28]
	str	r6, [r3, #32]
	str	r5, [r3, #36]
	str	r1, [r3, #4]
	mov	r3, #88
	ldr	r2, .L264+136
	str	r3, [r2]
	mov	r3, #400
	str	r8, [r0]
	str	r7, [r0, #16]
	str	r4, [r0, #20]
	str	r6, [r0, #24]
	str	r5, [r0, #28]
	str	r6, [r2, #8]
	str	r6, [r2, #12]
	str	r7, [r2, #16]
	str	r4, [r2, #20]
	str	r5, [r2, #44]
	str	r3, [r2, #4]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L261:
	sub	r1, ip, r1, asr #2
	umull	r4, r0, r1, r0
	ldr	lr, .L264+36
	smull	r4, r2, lr, r2
	lsr	r0, r0, #3
	add	r0, r0, r0, lsl #2
	sub	r2, ip, r2, asr #5
	sub	r1, r1, r0, lsl #1
	ldr	lr, .L264+40
	ldr	ip, .L264+44
	ldr	r0, .L264+48
	str	r2, [lr]
	str	r1, [ip]
	str	r3, [r0]
	b	.L262
.L265:
	.align	2
.L264:
	.word	playerhOff
	.word	.LANCHOR0
	.word	hOff
	.word	vOff
	.word	screenBlock
	.word	jumpCount
	.word	time
	.word	1717986919
	.word	-858993459
	.word	1374389535
	.word	hundreds
	.word	tens
	.word	ones
	.word	player
	.word	block1
	.word	block2
	.word	block3
	.word	guillotine
	.word	brokenGround
	.word	bridge
	.word	cloud
	.word	noZuoNoDie
	.word	winFlame
	.word	blockMain
	.word	honey
	.word	blankBlocksONE
	.word	movingCloud1
	.word	blankBlocksTWO
	.word	blankBlock1
	.word	blankBlock2
	.word	blankBlock3
	.word	movingCloud2
	.word	movingCloud3
	.word	movingCloud4
	.word	rocket
	.size	initGame, .-initGame
	.align	2
	.global	updateFish
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFish, %function
updateFish:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, [r0, #44]
	cmp	r3, #0
	mov	r4, r0
	sub	sp, sp, #16
	beq	.L267
	ldr	r2, [r0, #24]
	ldr	r3, .L287
	smull	r0, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #3
	add	r3, r3, r3, lsl #2
	subs	r3, r2, r3, lsl #2
	bne	.L269
	ldr	r1, [r4, #36]
	ldr	r0, [r4, #40]
	add	r1, r1, #1
	cmp	r1, r0
	movne	r3, r1
	str	r3, [r4, #36]
.L269:
	ldr	ip, .L287+4
	ldr	r0, .L287+8
	ldr	r1, [ip]
	ldr	r3, [ip, #20]
	ldr	lr, [r0]
	add	r6, r3, r1
	ldr	r0, [ip, #4]
	sub	r6, r6, #1
	add	r5, r2, #1
	add	lr, lr, r6, lsl #10
	ldr	r2, [ip, #16]
	str	r5, [r4, #24]
	add	lr, lr, r0
	add	lr, lr, r2
	ldrb	lr, [lr, #-1]	@ zero_extendqisi2
	cmp	lr, #4
	ldr	lr, [r4]
	bne	.L271
.L277:
	mov	r5, #1
	str	r5, [r4, #44]
.L271:
	ldr	r5, [r4, #48]
	cmp	r5, #0
	bne	.L286
	ldr	r1, [r4, #8]
	add	lr, lr, r1
	str	lr, [r4]
	cmp	lr, #159
	strgt	r5, [r4, #44]
	ldr	r1, [ip]
.L274:
	ldr	ip, [r4, #20]
	str	lr, [sp, #4]
	ldr	lr, [r4, #16]
	str	ip, [sp, #12]
	ldr	ip, [r4, #4]
	ldr	r5, .L287+12
	str	lr, [sp, #8]
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L266
	mov	r1, #0
	ldr	r3, .L287+16
	ldr	r2, [r3, #4]
	sub	r2, r2, #50
	str	r2, [r3, #4]
	strh	r1, [r3]	@ movhi
	str	r1, [r4, #44]
.L266:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L286:
	cmp	lr, #19
	movle	ip, #0
	ldrgt	r1, [r4, #8]
	subgt	lr, lr, r1
	strgt	lr, [r4]
	strle	ip, [r4, #48]
	ldrgt	r1, [ip]
	b	.L274
.L267:
	ldr	ip, .L287+4
	ldr	r2, .L287+8
	ldr	r1, [ip]
	ldr	r3, [ip, #20]
	ldr	lr, [r2]
	add	r2, r3, r1
	sub	r2, r2, #1
	ldr	r0, [ip, #4]
	add	lr, lr, r2, lsl #10
	ldr	r2, [ip, #16]
	add	lr, lr, r0
	add	lr, lr, r2
	ldrb	lr, [lr, #-1]	@ zero_extendqisi2
	cmp	lr, #4
	ldr	lr, [r4]
	bne	.L274
	b	.L277
.L288:
	.align	2
.L287:
	.word	1717986919
	.word	player
	.word	COLLISIONMAP
	.word	collision
	.word	.LANCHOR0
	.size	updateFish, .-updateFish
	.align	2
	.global	drawFish
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFish, %function
drawFish:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r7, #512
	ldr	r2, .L295
	ldr	r1, .L295+4
	ldr	r3, .L295+8
	ldrh	r5, [r2]
	ldrh	r6, [r1]
	ldr	r2, .L295+12
	ldr	r4, .L295+16
	ldr	lr, .L295+20
	add	ip, r3, #168
.L292:
	ldr	r1, [r3, #44]
	cmp	r1, #0
	strheq	r7, [r2, #40]	@ movhi
	beq	.L291
	ldm	r3, {r1, r8}
	ldr	r0, [r3, #36]
	sub	r1, r1, r6
	and	r1, r1, #255
	sub	r8, r8, r5
	lsl	r0, r0, #6
	orr	r1, r1, r4
	and	r8, r8, lr
	add	r0, r0, #22
	strh	r1, [r2, #40]	@ movhi
	strh	r8, [r2, #42]	@ movhi
	strh	r0, [r2, #44]	@ movhi
.L291:
	add	r3, r3, #56
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L292
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L296:
	.align	2
.L295:
	.word	playerhOff
	.word	vOff
	.word	fish
	.word	shadowOAM
	.word	-32768
	.word	511
	.size	drawFish, .-drawFish
	.align	2
	.global	initBlock2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBlock2, %function
initBlock2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #16
	mov	ip, #800
	mov	r0, #56
	mov	r1, #0
	ldr	r3, .L298
	stm	r3, {r0, ip}
	str	r1, [r3, #16]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	bx	lr
.L299:
	.align	2
.L298:
	.word	block2
	.size	initBlock2, .-initBlock2
	.align	2
	.global	updateBlock2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBlock2, %function
updateBlock2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L313
	ldrh	r3, [r3]
	cmp	r3, #2
	sub	sp, sp, #16
	bls	.L310
	ldr	r4, .L313+4
.L301:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	bne	.L312
.L300:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L312:
	ldr	r5, .L313+8
.L302:
	ldr	r3, [r4, #4]
	ldr	r2, [r5, #4]
	add	r1, r3, #16
	cmp	r2, r1
	bgt	.L300
	sub	r3, r3, #16
	cmp	r2, r3
	blt	.L300
	ldr	r3, [r4]
	ldr	r1, [r4, #12]
	ldr	r2, [r5]
	add	r3, r3, r1
	cmp	r3, r2
	bne	.L300
	ldr	r3, .L313+12
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L313+16
	ldr	r3, .L313+20
	mov	lr, pc
	bx	r3
	b	.L300
.L310:
	ldr	r5, .L313+8
	ldr	r4, .L313+4
	ldr	r3, [r5, #20]
	ldm	r4, {r0, r2, ip, lr}
	ldr	r1, [r5]
	add	r3, r3, #4
	stmib	sp, {r0, ip, lr}
	str	r2, [sp]
	ldr	r0, [r5, #4]
	ldr	r2, [r5, #16]
	ldr	r6, .L313+24
	sub	r1, r1, #2
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r3, #1
	strne	r3, [r4, #16]
	bne	.L302
	b	.L301
.L314:
	.align	2
.L313:
	.word	.LANCHOR1
	.word	block2
	.word	player
	.word	jump_length
	.word	jump_data
	.word	playSoundB
	.word	collision
	.size	updateBlock2, .-updateBlock2
	.align	2
	.global	drawBlock2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBlock2, %function
drawBlock2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L317
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bne	drawBlock2.part.0
.L316:
	mov	r2, #512
	ldr	r3, .L317+4
	strh	r2, [r3, #64]	@ movhi
	bx	lr
.L318:
	.align	2
.L317:
	.word	block2
	.word	shadowOAM
	.size	drawBlock2, .-drawBlock2
	.align	2
	.global	initBlock3
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBlock3, %function
initBlock3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #16
	mov	ip, #816
	mov	r0, #56
	mov	r1, #0
	ldr	r3, .L320
	stm	r3, {r0, ip}
	str	r1, [r3, #16]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	bx	lr
.L321:
	.align	2
.L320:
	.word	block3
	.size	initBlock3, .-initBlock3
	.align	2
	.global	updateBlock3
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBlock3, %function
updateBlock3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L335
	ldrh	r3, [r3]
	cmp	r3, #2
	sub	sp, sp, #16
	bls	.L332
	ldr	r4, .L335+4
.L323:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	bne	.L334
.L322:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L334:
	ldr	r5, .L335+8
.L324:
	ldr	r3, [r4, #4]
	ldr	r2, [r5, #4]
	add	r1, r3, #16
	cmp	r2, r1
	bgt	.L322
	sub	r3, r3, #16
	cmp	r2, r3
	blt	.L322
	ldr	r3, [r4]
	ldr	r1, [r4, #12]
	ldr	r2, [r5]
	add	r3, r3, r1
	cmp	r3, r2
	bne	.L322
	ldr	r3, .L335+12
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L335+16
	ldr	r3, .L335+20
	mov	lr, pc
	bx	r3
	b	.L322
.L332:
	ldr	r5, .L335+8
	ldr	r4, .L335+4
	ldr	r3, [r5, #20]
	ldm	r4, {r0, r2, ip, lr}
	ldr	r1, [r5]
	add	r3, r3, #4
	stmib	sp, {r0, ip, lr}
	str	r2, [sp]
	ldr	r0, [r5, #4]
	ldr	r2, [r5, #16]
	ldr	r6, .L335+24
	sub	r1, r1, #2
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r3, #1
	strne	r3, [r4, #16]
	bne	.L324
	b	.L323
.L336:
	.align	2
.L335:
	.word	.LANCHOR1
	.word	block3
	.word	player
	.word	jump_length
	.word	jump_data
	.word	playSoundB
	.word	collision
	.size	updateBlock3, .-updateBlock3
	.align	2
	.global	drawBlock3
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBlock3, %function
drawBlock3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L339
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bne	drawBlock3.part.0
.L338:
	mov	r2, #512
	ldr	r3, .L339+4
	strh	r2, [r3, #72]	@ movhi
	bx	lr
.L340:
	.align	2
.L339:
	.word	block3
	.word	shadowOAM
	.size	drawBlock3, .-drawBlock3
	.align	2
	.global	initCloud
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCloud, %function
initCloud:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	ip, #832
	mvn	lr, #3
	mov	r0, #64
	mov	r1, #32
	mov	r2, #0
	ldr	r3, .L343
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #24]
	ldr	lr, [sp], #4
	bx	lr
.L344:
	.align	2
.L343:
	.word	cloud
	.size	initCloud, .-initCloud
	.align	2
	.global	updateCloud
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCloud, %function
updateCloud:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L355
	ldrh	r3, [r3]
	cmp	r3, #2
	ldr	r4, .L355+4
	ldr	r5, .L355+8
	sub	sp, sp, #16
	bls	.L346
.L347:
	ldr	r3, [r5, #24]
	cmp	r3, #0
	moveq	r3, #1
	beq	.L349
	ldr	r3, [r4, #4]
	cmp	r3, #840
	movgt	r3, #0
	movle	r3, #1
.L349:
	str	r3, [r4, #12]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L346:
	add	ip, r5, #16
	ldm	r5, {r0, r2}
	ldm	ip, {ip, lr}
	ldr	r3, [r4, #20]
	ldr	r1, [r4]
	stmib	sp, {r0, ip, lr}
	str	r2, [sp]
	ldr	r0, [r4, #4]
	ldr	r2, [r4, #16]
	ldr	r6, .L355+12
	add	r3, r3, #4
	sub	r1, r1, #2
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L347
	mov	ip, #1
	ldr	r3, .L355+16
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L355+20
	ldr	r3, .L355+24
	str	ip, [r5, #24]
	mov	lr, pc
	bx	r3
	b	.L347
.L356:
	.align	2
.L355:
	.word	.LANCHOR1
	.word	player
	.word	cloud
	.word	collision
	.word	jump_length
	.word	jump_data
	.word	playSoundB
	.size	updateCloud, .-updateCloud
	.align	2
	.global	drawCloud
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCloud, %function
drawCloud:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L359
	ldr	r3, [r3, #24]
	cmp	r3, #0
	bne	drawCloud.part.0
.L358:
	mov	r2, #512
	ldr	r3, .L359+4
	strh	r2, [r3, #80]	@ movhi
	bx	lr
.L360:
	.align	2
.L359:
	.word	cloud
	.word	shadowOAM
	.size	drawCloud, .-drawCloud
	.align	2
	.global	initWinFlame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initWinFlame, %function
initWinFlame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #80
	mov	r0, #960
	mov	r1, #16
	mov	r2, #32
	ldr	r3, .L362
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #20]
	bx	lr
.L363:
	.align	2
.L362:
	.word	winFlame
	.size	initWinFlame, .-initWinFlame
	.align	2
	.global	updateWinFlame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateWinFlame, %function
updateWinFlame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L370
	add	r1, r3, #16
	ldm	r1, {r1, ip}
	ldm	r3, {r2, r3}
	sub	sp, sp, #16
	ldr	r0, .L370+4
	str	r2, [sp, #4]
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r0, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r0]
	ldr	r4, .L370+8
	ldr	r0, [r0, #4]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	ldrne	r2, .L370+12
	ldrhne	r3, [r2]
	addne	r3, r3, #1
	strhne	r3, [r2]	@ movhi
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L371:
	.align	2
.L370:
	.word	winFlame
	.word	player
	.word	collision
	.word	.LANCHOR1
	.size	updateWinFlame, .-updateWinFlame
	.align	2
	.global	drawWinFlame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawWinFlame, %function
drawWinFlame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L374
	ldrh	r3, [r3]
	cmp	r3, #29
	bhi	drawWinFlame.part.0
.L373:
	mov	r2, #512
	ldr	r3, .L374+4
	strh	r2, [r3, #88]	@ movhi
	bx	lr
.L375:
	.align	2
.L374:
	.word	screenBlock
	.word	shadowOAM
	.size	drawWinFlame, .-drawWinFlame
	.align	2
	.global	initBlockMain
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBlockMain, %function
initBlockMain:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #16
	mov	ip, #128
	mov	r0, #56
	mov	r1, #1
	ldr	r3, .L377
	stm	r3, {r0, ip}
	str	r1, [r3, #16]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	bx	lr
.L378:
	.align	2
.L377:
	.word	blockMain
	.size	initBlockMain, .-initBlockMain
	.align	2
	.global	updateBlockMain
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBlockMain, %function
updateBlockMain:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L393
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L379
	ldr	r5, .L393+4
	ldr	r3, [r4, #4]
	ldr	r2, [r5, #4]
	add	r1, r3, #8
	cmp	r2, r1
	ble	.L390
.L382:
	add	r1, r3, #16
	cmp	r1, r2
	blt	.L379
	sub	r1, r3, #20
	cmp	r1, r2
	bgt	.L384
	ldr	r1, [r4]
	ldr	ip, [r5, #20]
	ldr	r0, [r5]
	sub	r1, r1, ip
	cmp	r1, r0
	beq	.L391
.L384:
	sub	r3, r3, #16
	cmp	r3, r2
	bgt	.L379
	ldr	r3, [r4]
	ldr	r1, [r4, #12]
	ldr	r2, [r5]
	add	r3, r3, r1
	cmp	r3, r2
	beq	.L392
.L379:
	pop	{r4, r5, r6, lr}
	bx	lr
.L390:
	sub	r1, r3, #8
	cmp	r2, r1
	blt	.L382
	ldr	r1, [r4]
	ldr	ip, [r4, #12]
	ldr	r0, [r5]
	add	r1, r1, ip
	cmp	r1, r0
	bne	.L382
	mov	r3, #1
	mov	r2, #0
	ldr	ip, .L393+8
	ldr	r0, .L393+12
	str	r3, [ip, #16]
	ldr	r1, .L393+16
	ldr	ip, .L393+20
	str	r3, [r0, #16]
	str	r3, [ip, #16]
	ldr	r1, [r1]
	ldr	r3, .L393+24
	ldr	r0, .L393+28
	str	r2, [r5, #48]
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L379
	ldr	r2, [r5, #4]
	ldr	r3, [r4, #4]
	b	.L382
.L391:
	mov	r0, #1
	ldr	r1, .L393+32
	str	r0, [r1, #44]
	b	.L384
.L392:
	ldr	r3, .L393+16
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L393+28
	ldr	r3, .L393+24
	mov	lr, pc
	bx	r3
	b	.L379
.L394:
	.align	2
.L393:
	.word	blockMain
	.word	player
	.word	noZuoNoDie
	.word	blankBlocksONE
	.word	jump_length
	.word	blankBlocksTWO
	.word	playSoundB
	.word	jump_data
	.word	honey
	.size	updateBlockMain, .-updateBlockMain
	.align	2
	.global	drawBlockMain
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBlockMain, %function
drawBlockMain:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L405
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L396
	ldr	r2, .L405+4
	ldrh	r2, [r2]
	cmp	r2, #28
	bhi	.L396
	ldr	r2, .L405+8
	ldrh	r0, [r2]
	push	{r4, r5, lr}
	ldr	r5, .L405+12
	rsb	r1, r0, #192
	and	r1, r1, r5
	mvn	r1, r1, lsl #18
	mov	r4, #4
	mov	lr, #640
	mvn	r1, r1, lsr #18
	ldr	r2, [r3, #4]
	ldr	ip, [r3]
	sub	r3, r2, r0
	ldr	r2, .L405+16
	ldrh	r0, [r2]
	and	r3, r3, r5
	ldr	r2, .L405+20
	sub	ip, ip, r0
	rsb	r0, r0, #56
	orr	r3, r3, #16384
	and	ip, ip, #255
	and	r0, r0, #255
	strh	r4, [r2, #100]	@ movhi
	strh	lr, [r2, #132]	@ movhi
	strh	r1, [r2, #130]	@ movhi
	strh	r3, [r2, #98]	@ movhi
	strh	ip, [r2, #96]	@ movhi
	strh	r0, [r2, #128]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L396:
	mov	r2, #512
	ldr	r3, .L405+20
	strh	r2, [r3, #96]	@ movhi
	strh	r2, [r3, #128]	@ movhi
	bx	lr
.L406:
	.align	2
.L405:
	.word	blockMain
	.word	screenBlock
	.word	playerhOff
	.word	511
	.word	vOff
	.word	shadowOAM
	.size	drawBlockMain, .-drawBlockMain
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	drawPlayer
	ldr	r3, .L483
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L408
	bl	drawBlock1.part.0
.L409:
	ldr	r3, .L483+4
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L410
	bl	drawBlock2.part.0
.L411:
	ldr	r3, .L483+8
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L412
	bl	drawBlock3.part.0
.L413:
	bl	drawGuillotine
	ldr	r3, .L483+12
	ldr	r3, [r3, #24]
	cmp	r3, #0
	ldr	r4, .L483+16
	beq	.L414
	ldrh	r3, [r4]
	cmp	r3, #29
	beq	.L474
.L414:
	mov	r2, #512
	ldr	r3, .L483+20
	strh	r2, [r3, #24]	@ movhi
.L415:
	bl	drawBridge
	bl	drawFish
	bl	drawFish
	bl	drawFish
	ldr	r3, .L483+24
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L416
	bl	drawCloud.part.0
.L417:
	ldrh	r3, [r4]
	cmp	r3, #29
	bls	.L418
	bl	drawWinFlame.part.0
.L419:
	bl	drawBlockMain
	ldr	r3, .L483+28
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L420
	ldrh	r3, [r4]
	cmp	r3, #28
	bls	.L475
.L420:
	mov	r2, #512
	ldr	r3, .L483+20
	strh	r2, [r3, #104]	@ movhi
.L421:
	ldr	r3, .L483+32
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L422
	bl	drawNoZuoNoDie.part.0
.L423:
	ldr	r3, .L483+36
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L424
	bl	drawBlankBlocksONE.part.0
.L425:
	ldr	r3, .L483+40
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L426
	bl	drawBlankBlocksTWO.part.0
.L427:
	ldr	r3, .L483+44
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L428
	ldrh	r3, [r4]
	cmp	r3, #28
	bls	.L476
.L428:
	mov	r2, #512
	ldr	r3, .L483+20
	strh	r2, [r3, #136]	@ movhi
.L429:
	ldr	r3, .L483+48
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L430
	ldrh	r3, [r4]
	cmp	r3, #28
	bls	.L477
.L430:
	mov	r2, #512
	ldr	r3, .L483+20
	strh	r2, [r3, #144]	@ movhi
.L431:
	ldr	r3, .L483+52
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L432
	ldrh	r3, [r4]
	cmp	r3, #28
	bls	.L478
.L432:
	mov	r2, #512
	ldr	r3, .L483+20
	strh	r2, [r3, #192]	@ movhi
.L433:
	ldr	r3, .L483+56
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L434
	ldrh	r3, [r4]
	cmp	r3, #29
	bls	.L479
.L434:
	mov	r2, #512
	ldr	r3, .L483+20
	strh	r2, [r3, #152]	@ movhi
.L435:
	ldr	r3, .L483+60
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L436
	ldrh	r3, [r4]
	cmp	r3, #29
	bls	.L480
.L436:
	mov	r2, #512
	ldr	r3, .L483+20
	strh	r2, [r3, #160]	@ movhi
.L437:
	ldr	r3, .L483+64
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L438
	ldrh	r3, [r4]
	cmp	r3, #29
	bls	.L481
.L438:
	mov	r2, #512
	ldr	r3, .L483+20
	strh	r2, [r3, #168]	@ movhi
.L439:
	ldr	r3, .L483+68
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L440
	ldrh	r3, [r4]
	cmp	r3, #29
	bls	.L482
.L440:
	mov	r2, #512
	ldr	r3, .L483+20
	strh	r2, [r3, #176]	@ movhi
.L441:
	ldr	r3, .L483+72
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L442
	ldrh	r3, [r4]
	cmp	r3, #28
	pophi	{r4, lr}
	bhi	drawRocket.part.0
.L442:
	mov	r2, #512
	ldr	r3, .L483+20
	pop	{r4, lr}
	strh	r2, [r3, #200]	@ movhi
	bx	lr
.L426:
	mov	r2, #512
	ldr	r3, .L483+20
	strh	r2, [r3, #184]	@ movhi
	b	.L427
.L424:
	mov	r2, #512
	ldr	r3, .L483+20
	strh	r2, [r3, #120]	@ movhi
	b	.L425
.L422:
	mov	r2, #512
	ldr	r3, .L483+20
	strh	r2, [r3, #112]	@ movhi
	b	.L423
.L418:
	mov	r2, #512
	ldr	r3, .L483+20
	strh	r2, [r3, #88]	@ movhi
	b	.L419
.L416:
	mov	r2, #512
	ldr	r3, .L483+20
	strh	r2, [r3, #80]	@ movhi
	b	.L417
.L412:
	mov	r2, #512
	ldr	r3, .L483+20
	strh	r2, [r3, #72]	@ movhi
	b	.L413
.L410:
	mov	r2, #512
	ldr	r3, .L483+20
	strh	r2, [r3, #64]	@ movhi
	b	.L411
.L408:
	mov	r2, #512
	ldr	r3, .L483+20
	strh	r2, [r3, #8]	@ movhi
	b	.L409
.L482:
	bl	drawMovingCloud4.part.0
	b	.L441
.L481:
	bl	drawMovingCloud3.part.0
	b	.L439
.L480:
	bl	drawMovingCloud2.part.0
	b	.L437
.L479:
	bl	drawMovingCloud1.part.0
	b	.L435
.L478:
	bl	drawBlankBlock3.part.0
	b	.L433
.L477:
	bl	drawBlankBlock2.part.0
	b	.L431
.L476:
	bl	drawBlankBlock1.part.0
	b	.L429
.L475:
	bl	drawHoney.part.0
	b	.L421
.L474:
	bl	drawBrokenGround.part.0
	b	.L415
.L484:
	.align	2
.L483:
	.word	block1
	.word	block2
	.word	block3
	.word	brokenGround
	.word	screenBlock
	.word	shadowOAM
	.word	cloud
	.word	honey
	.word	noZuoNoDie
	.word	blankBlocksONE
	.word	blankBlocksTWO
	.word	blankBlock1
	.word	blankBlock2
	.word	blankBlock3
	.word	movingCloud1
	.word	movingCloud2
	.word	movingCloud3
	.word	movingCloud4
	.word	rocket
	.size	drawGame, .-drawGame
	.align	2
	.global	initHoney
	.syntax unified
	.arm
	.fpu softvfp
	.type	initHoney, %function
initHoney:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #0
	mov	r4, #128
	mov	lr, #56
	mov	r1, #16
	mov	ip, #1
	mov	r0, #2
	ldr	r3, .L487
	str	r4, [r3, #4]
	str	lr, [r3]
	str	ip, [r3, #8]
	str	r0, [r3, #40]
	str	r2, [r3, #12]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r2, [r3, #44]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	pop	{r4, lr}
	bx	lr
.L488:
	.align	2
.L487:
	.word	honey
	.size	initHoney, .-initHoney
	.align	2
	.global	updateHoney
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateHoney, %function
updateHoney:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L508
	ldr	r2, [r3, #44]
	cmp	r2, #0
	ldr	r2, [r3, #24]
	beq	.L490
	ldr	r1, .L508+4
	smull	ip, r0, r1, r2
	push	{r4, lr}
	asr	r1, r2, #31
	rsb	r1, r1, r0, asr #3
	add	r1, r1, r1, lsl #2
	subs	r1, r2, r1, lsl #2
	sub	sp, sp, #16
	bne	.L492
	add	r0, r3, #36
	ldm	r0, {r0, ip}
	add	r0, r0, #1
	cmp	r0, ip
	movne	r1, r0
	str	r1, [r3, #36]
.L492:
	add	r2, r2, #1
	cmp	r2, #199
	str	r2, [r3, #24]
	ldr	r2, [r3]
	ble	.L507
	cmp	r2, #55
	ldrle	r1, [r3, #8]
	addle	r2, r2, r1
	strle	r2, [r3]
.L495:
	ldr	r0, .L508+8
	ldr	r4, [r3, #20]
	ldr	lr, [r3, #16]
	ldr	ip, [r3, #4]
	str	r2, [sp, #4]
	add	r2, r0, #16
	ldr	r1, [r0]
	ldm	r2, {r2, r3}
	ldr	r0, [r0, #4]
	str	r4, [sp, #12]
	str	lr, [sp, #8]
	str	ip, [sp]
	ldr	r4, .L508+12
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L489
	mov	r1, #0
	ldr	r3, .L508+16
	ldr	r2, [r3, #4]
	sub	r2, r2, #50
	strh	r1, [r3]	@ movhi
	str	r2, [r3, #4]
.L489:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L490:
	cmp	r2, #199
	bxle	lr
	ldr	r2, [r3]
	cmp	r2, #55
	bxgt	lr
	ldr	r1, [r3, #8]
	add	r2, r1, r2
	str	r2, [r3]
	bx	lr
.L507:
	cmp	r2, #40
	ldrgt	r1, [r3, #8]
	subgt	r2, r2, r1
	strgt	r2, [r3]
	b	.L495
.L509:
	.align	2
.L508:
	.word	honey
	.word	1717986919
	.word	player
	.word	collision
	.word	.LANCHOR0
	.size	updateHoney, .-updateHoney
	.align	2
	.global	drawHoney
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHoney, %function
drawHoney:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L515
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L511
	ldr	r3, .L515+4
	ldrh	r3, [r3]
	cmp	r3, #28
	bls	drawHoney.part.0
.L511:
	mov	r2, #512
	ldr	r3, .L515+8
	strh	r2, [r3, #104]	@ movhi
	bx	lr
.L516:
	.align	2
.L515:
	.word	honey
	.word	screenBlock
	.word	shadowOAM
	.size	drawHoney, .-drawHoney
	.align	2
	.global	initNoZuoNoDie
	.syntax unified
	.arm
	.fpu softvfp
	.type	initNoZuoNoDie, %function
initNoZuoNoDie:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	ip, #56
	mov	lr, #32
	mov	r0, #64
	mov	r1, #16
	mov	r2, #0
	ldr	r3, .L519
	stm	r3, {ip, lr}
	str	r0, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #16]
	ldr	lr, [sp], #4
	bx	lr
.L520:
	.align	2
.L519:
	.word	noZuoNoDie
	.size	initNoZuoNoDie, .-initNoZuoNoDie
	.align	2
	.global	updateNoZuoNoDie
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateNoZuoNoDie, %function
updateNoZuoNoDie:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L530
	ldr	r2, [r3, #16]
	cmp	r2, #0
	bxeq	lr
	ldr	r0, .L530+4
	ldr	r2, [r3, #4]
	ldr	r1, [r0, #4]
	add	ip, r2, #64
	cmp	r1, ip
	bxgt	lr
	sub	r2, r2, #16
	cmp	r1, r2
	bxlt	lr
	ldr	r2, [r3]
	ldr	ip, [r3, #12]
	ldr	r1, [r0]
	add	r2, r2, ip
	cmp	r2, r1
	bxne	lr
	mov	r2, #0
	mov	ip, #1
	push	{r4, lr}
	ldr	r1, .L530+8
	str	r2, [r0, #48]
	ldr	r4, .L530+12
	ldr	r1, [r1]
	ldr	r0, .L530+16
	str	ip, [r3, #16]
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L531:
	.align	2
.L530:
	.word	noZuoNoDie
	.word	player
	.word	jump_length
	.word	playSoundB
	.word	jump_data
	.size	updateNoZuoNoDie, .-updateNoZuoNoDie
	.align	2
	.global	drawNoZuoNoDie
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawNoZuoNoDie, %function
drawNoZuoNoDie:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L534
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bne	drawNoZuoNoDie.part.0
.L533:
	mov	r2, #512
	ldr	r3, .L534+4
	strh	r2, [r3, #112]	@ movhi
	bx	lr
.L535:
	.align	2
.L534:
	.word	noZuoNoDie
	.word	shadowOAM
	.size	drawNoZuoNoDie, .-drawNoZuoNoDie
	.align	2
	.global	initBlankBlocksONE
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBlankBlocksONE, %function
initBlankBlocksONE:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	mov	ip, #56
	mov	r0, #32
	mov	r1, #16
	ldr	r3, .L537
	str	r2, [r3, #4]
	str	r2, [r3, #16]
	str	ip, [r3]
	str	r0, [r3, #8]
	str	r1, [r3, #12]
	bx	lr
.L538:
	.align	2
.L537:
	.word	blankBlocksONE
	.size	initBlankBlocksONE, .-initBlankBlocksONE
	.align	2
	.global	updateBlankBlocksONE
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBlankBlocksONE, %function
updateBlankBlocksONE:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L548
	ldr	r2, [r3, #16]
	cmp	r2, #0
	bxeq	lr
	ldr	r0, .L548+4
	ldr	r2, [r3, #4]
	ldr	r1, [r0, #4]
	add	ip, r2, #64
	cmp	r1, ip
	bxgt	lr
	sub	r2, r2, #16
	cmp	r1, r2
	bxlt	lr
	ldr	r2, [r3]
	ldr	ip, [r3, #12]
	ldr	r1, [r0]
	add	r2, r2, ip
	cmp	r2, r1
	bxne	lr
	mov	r2, #0
	mov	ip, #1
	push	{r4, lr}
	ldr	r1, .L548+8
	str	r2, [r0, #48]
	ldr	r4, .L548+12
	ldr	r1, [r1]
	ldr	r0, .L548+16
	str	ip, [r3, #16]
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L549:
	.align	2
.L548:
	.word	blankBlocksONE
	.word	player
	.word	jump_length
	.word	playSoundB
	.word	jump_data
	.size	updateBlankBlocksONE, .-updateBlankBlocksONE
	.align	2
	.global	drawBlankBlocksONE
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBlankBlocksONE, %function
drawBlankBlocksONE:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L552
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bne	drawBlankBlocksONE.part.0
.L551:
	mov	r2, #512
	ldr	r3, .L552+4
	strh	r2, [r3, #120]	@ movhi
	bx	lr
.L553:
	.align	2
.L552:
	.word	blankBlocksONE
	.word	shadowOAM
	.size	drawBlankBlocksONE, .-drawBlankBlocksONE
	.align	2
	.global	initBlankBlocksTWO
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBlankBlocksTWO, %function
initBlankBlocksTWO:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	ip, #56
	mov	lr, #96
	mov	r0, #32
	mov	r1, #16
	mov	r2, #0
	ldr	r3, .L556
	stm	r3, {ip, lr}
	str	r0, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #16]
	ldr	lr, [sp], #4
	bx	lr
.L557:
	.align	2
.L556:
	.word	blankBlocksTWO
	.size	initBlankBlocksTWO, .-initBlankBlocksTWO
	.align	2
	.global	updateBlankBlocksTWO
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBlankBlocksTWO, %function
updateBlankBlocksTWO:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L567
	ldr	r2, [r3, #16]
	cmp	r2, #0
	bxeq	lr
	ldr	r0, .L567+4
	ldr	r2, [r3, #4]
	ldr	r1, [r0, #4]
	add	ip, r2, #64
	cmp	r1, ip
	bxgt	lr
	sub	r2, r2, #16
	cmp	r1, r2
	bxlt	lr
	ldr	r2, [r3]
	ldr	ip, [r3, #12]
	ldr	r1, [r0]
	add	r2, r2, ip
	cmp	r2, r1
	bxne	lr
	mov	r2, #0
	mov	ip, #1
	push	{r4, lr}
	ldr	r1, .L567+8
	str	r2, [r0, #48]
	ldr	r4, .L567+12
	ldr	r1, [r1]
	ldr	r0, .L567+16
	str	ip, [r3, #16]
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L568:
	.align	2
.L567:
	.word	blankBlocksTWO
	.word	player
	.word	jump_length
	.word	playSoundB
	.word	jump_data
	.size	updateBlankBlocksTWO, .-updateBlankBlocksTWO
	.align	2
	.global	drawBlankBlocksTWO
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBlankBlocksTWO, %function
drawBlankBlocksTWO:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L571
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bne	drawBlankBlocksTWO.part.0
.L570:
	mov	r2, #512
	ldr	r3, .L571+4
	strh	r2, [r3, #184]	@ movhi
	bx	lr
.L572:
	.align	2
.L571:
	.word	blankBlocksTWO
	.word	shadowOAM
	.size	drawBlankBlocksTWO, .-drawBlankBlocksTWO
	.align	2
	.global	initBlankBlock1
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBlankBlock1, %function
initBlankBlock1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #16
	mov	ip, #144
	mov	r0, #56
	mov	r1, #0
	ldr	r3, .L574
	stm	r3, {r0, ip}
	str	r1, [r3, #16]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	bx	lr
.L575:
	.align	2
.L574:
	.word	blankBlock1
	.size	initBlankBlock1, .-initBlankBlock1
	.align	2
	.global	updateBlankBlock1
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBlankBlock1, %function
updateBlankBlock1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L589
	ldrh	r3, [r3]
	cmp	r3, #2
	sub	sp, sp, #16
	bhi	.L586
	ldr	r4, .L589+4
.L577:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	bne	.L588
.L576:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L588:
	ldr	r5, .L589+8
.L578:
	ldr	r3, [r4, #4]
	ldr	r2, [r5, #4]
	add	r1, r3, #16
	cmp	r2, r1
	bgt	.L576
	sub	r3, r3, #16
	cmp	r2, r3
	blt	.L576
	ldr	r3, [r4]
	ldr	r1, [r4, #12]
	ldr	r2, [r5]
	add	r3, r3, r1
	cmp	r3, r2
	bne	.L576
	ldr	r3, .L589+12
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L589+16
	ldr	r3, .L589+20
	mov	lr, pc
	bx	r3
	b	.L576
.L586:
	ldr	r5, .L589+8
	ldr	r4, .L589+4
	ldr	r3, [r5, #20]
	ldm	r4, {r0, r2, ip, lr}
	ldr	r1, [r5]
	add	r3, r3, #4
	stmib	sp, {r0, ip, lr}
	str	r2, [sp]
	ldr	r0, [r5, #4]
	ldr	r2, [r5, #16]
	ldr	r6, .L589+24
	sub	r1, r1, #2
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r3, #1
	strne	r3, [r4, #16]
	bne	.L578
	b	.L577
.L590:
	.align	2
.L589:
	.word	.LANCHOR1
	.word	blankBlock1
	.word	player
	.word	jump_length
	.word	jump_data
	.word	playSoundB
	.word	collision
	.size	updateBlankBlock1, .-updateBlankBlock1
	.align	2
	.global	drawBlankBlock1
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBlankBlock1, %function
drawBlankBlock1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L596
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L592
	ldr	r3, .L596+4
	ldrh	r3, [r3]
	cmp	r3, #28
	bls	drawBlankBlock1.part.0
.L592:
	mov	r2, #512
	ldr	r3, .L596+8
	strh	r2, [r3, #136]	@ movhi
	bx	lr
.L597:
	.align	2
.L596:
	.word	blankBlock1
	.word	screenBlock
	.word	shadowOAM
	.size	drawBlankBlock1, .-drawBlankBlock1
	.align	2
	.global	initBlankBlock2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBlankBlock2, %function
initBlankBlock2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #16
	mov	ip, #160
	mov	r0, #56
	mov	r1, #0
	ldr	r3, .L599
	stm	r3, {r0, ip}
	str	r1, [r3, #16]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	bx	lr
.L600:
	.align	2
.L599:
	.word	blankBlock2
	.size	initBlankBlock2, .-initBlankBlock2
	.align	2
	.global	updateBlankBlock2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBlankBlock2, %function
updateBlankBlock2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L607
	ldrh	r3, [r3]
	cmp	r3, #2
	bxls	lr
	ldr	ip, .L607+4
	ldr	r0, .L607+8
	ldr	r3, [ip, #4]
	ldr	r2, [r0, #4]
	add	r1, r3, #8
	cmp	r2, r1
	bxgt	lr
	sub	r3, r3, #8
	cmp	r2, r3
	bxlt	lr
	ldr	r3, [ip]
	ldr	r1, [ip, #12]
	ldr	r2, [r0]
	add	r3, r3, r1
	cmp	r3, r2
	bxne	lr
	mov	r2, #0
	push	{r4, lr}
	mov	lr, #1
	ldr	r3, .L607+12
	str	r2, [r0, #48]
	ldr	r1, [r3]
	ldr	r0, .L607+16
	ldr	r3, .L607+20
	str	lr, [ip, #16]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L608:
	.align	2
.L607:
	.word	.LANCHOR1
	.word	blankBlock2
	.word	player
	.word	jump_length
	.word	jump_data
	.word	playSoundB
	.size	updateBlankBlock2, .-updateBlankBlock2
	.align	2
	.global	drawBlankBlock2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBlankBlock2, %function
drawBlankBlock2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L614
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L610
	ldr	r3, .L614+4
	ldrh	r3, [r3]
	cmp	r3, #28
	bls	drawBlankBlock2.part.0
.L610:
	mov	r2, #512
	ldr	r3, .L614+8
	strh	r2, [r3, #144]	@ movhi
	bx	lr
.L615:
	.align	2
.L614:
	.word	blankBlock2
	.word	screenBlock
	.word	shadowOAM
	.size	drawBlankBlock2, .-drawBlankBlock2
	.align	2
	.global	initBlankBlock3
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBlankBlock3, %function
initBlankBlock3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #16
	mov	ip, #176
	mov	r0, #56
	mov	r1, #0
	ldr	r3, .L617
	stm	r3, {r0, ip}
	str	r1, [r3, #16]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	bx	lr
.L618:
	.align	2
.L617:
	.word	blankBlock3
	.size	initBlankBlock3, .-initBlankBlock3
	.align	2
	.global	updateBlankBlock3
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBlankBlock3, %function
updateBlankBlock3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L625
	ldrh	r3, [r3]
	cmp	r3, #2
	bxls	lr
	ldr	ip, .L625+4
	ldr	r0, .L625+8
	ldr	r3, [ip, #4]
	ldr	r2, [r0, #4]
	add	r1, r3, #8
	cmp	r2, r1
	bxgt	lr
	sub	r3, r3, #8
	cmp	r2, r3
	bxlt	lr
	ldr	r3, [ip]
	ldr	r1, [ip, #12]
	ldr	r2, [r0]
	add	r3, r3, r1
	cmp	r3, r2
	bxne	lr
	mov	r2, #0
	push	{r4, lr}
	mov	lr, #1
	ldr	r3, .L625+12
	str	r2, [r0, #48]
	ldr	r1, [r3]
	ldr	r0, .L625+16
	ldr	r3, .L625+20
	str	lr, [ip, #16]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L626:
	.align	2
.L625:
	.word	.LANCHOR1
	.word	blankBlock3
	.word	player
	.word	jump_length
	.word	jump_data
	.word	playSoundB
	.size	updateBlankBlock3, .-updateBlankBlock3
	.align	2
	.global	drawBlankBlock3
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBlankBlock3, %function
drawBlankBlock3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L632
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L628
	ldr	r3, .L632+4
	ldrh	r3, [r3]
	cmp	r3, #28
	bls	drawBlankBlock3.part.0
.L628:
	mov	r2, #512
	ldr	r3, .L632+8
	strh	r2, [r3, #192]	@ movhi
	bx	lr
.L633:
	.align	2
.L632:
	.word	blankBlock3
	.word	screenBlock
	.word	shadowOAM
	.size	drawBlankBlock3, .-drawBlankBlock3
	.align	2
	.global	initMovingCloud1
	.syntax unified
	.arm
	.fpu softvfp
	.type	initMovingCloud1, %function
initMovingCloud1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	ip, #16
	mov	r5, #72
	mov	r4, #296
	mov	lr, #32
	mov	r0, #2
	mov	r1, #1
	mov	r2, #0
	ldr	r3, .L636
	str	r5, [r3]
	str	r4, [r3, #4]
	str	lr, [r3, #16]
	str	ip, [r3, #20]
	str	r0, [r3, #12]
	str	r1, [r3, #24]
	str	r2, [r3, #28]
	pop	{r4, r5, lr}
	bx	lr
.L637:
	.align	2
.L636:
	.word	movingCloud1
	.size	initMovingCloud1, .-initMovingCloud1
	.align	2
	.global	updateMovingCloud1
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateMovingCloud1, %function
updateMovingCloud1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L658
	ldrh	r3, [r3]
	cmp	r3, #2
	sub	sp, sp, #16
	bhi	.L655
	ldr	r5, .L658+4
	ldr	r4, .L658+8
.L639:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	bne	.L640
.L641:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L643
	ldr	r3, [r4, #4]
	ldr	r2, [r5, #4]
	add	r1, r3, #32
	cmp	r2, r1
	ble	.L657
.L643:
	mov	r3, #2
	str	r3, [r5, #8]
.L638:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L655:
	ldr	r4, .L658+8
	ldr	r3, [r4]
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	ldr	r2, [r4, #4]
	ldr	r5, .L658+4
	sub	r3, r3, #2
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp]
	str	r3, [sp, #4]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	ldr	r6, .L658+12
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r3, #1
	strne	r3, [r4, #28]
	beq	.L639
.L640:
	ldr	r3, [r4, #4]
	cmp	r3, #320
	ldrlt	r2, [r4, #12]
	addlt	r3, r2, r3
	strlt	r3, [r4, #4]
	b	.L641
.L657:
	sub	r3, r3, #16
	cmp	r2, r3
	blt	.L643
	ldr	r3, [r4]
	ldr	r1, [r5, #20]
	ldr	r2, [r5]
	sub	r3, r3, r1
	cmp	r3, r2
	bne	.L643
	mov	r3, #0
	ldr	r2, .L658+16
	ldrh	r2, [r2]
	tst	r2, #64
	str	r3, [r5, #8]
	beq	.L638
	ldr	r3, .L658+20
	ldrh	r3, [r3]
	tst	r3, #64
	bne	.L638
	b	.L643
.L659:
	.align	2
.L658:
	.word	.LANCHOR1
	.word	player
	.word	movingCloud1
	.word	collision
	.word	oldButtons
	.word	buttons
	.size	updateMovingCloud1, .-updateMovingCloud1
	.align	2
	.global	drawMovingCloud1
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawMovingCloud1, %function
drawMovingCloud1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L665
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L661
	ldr	r3, .L665+4
	ldrh	r3, [r3]
	cmp	r3, #29
	bls	drawMovingCloud1.part.0
.L661:
	mov	r2, #512
	ldr	r3, .L665+8
	strh	r2, [r3, #152]	@ movhi
	bx	lr
.L666:
	.align	2
.L665:
	.word	movingCloud1
	.word	screenBlock
	.word	shadowOAM
	.size	drawMovingCloud1, .-drawMovingCloud1
	.align	2
	.global	initMovingCloud2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initMovingCloud2, %function
initMovingCloud2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r1, #32
	mov	lr, #360
	mov	r2, #1
	mov	ip, #16
	mov	r0, #0
	ldr	r3, .L669
	str	lr, [r3, #4]
	str	r1, [r3]
	str	r1, [r3, #16]
	str	ip, [r3, #20]
	str	r0, [r3, #28]
	str	r2, [r3, #8]
	str	r2, [r3, #24]
	ldr	lr, [sp], #4
	bx	lr
.L670:
	.align	2
.L669:
	.word	movingCloud2
	.size	initMovingCloud2, .-initMovingCloud2
	.align	2
	.global	updateMovingCloud2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateMovingCloud2, %function
updateMovingCloud2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r3, .L690
	ldrh	r3, [r3]
	cmp	r3, #2
	ldr	r4, .L690+4
	sub	sp, sp, #20
	bhi	.L687
.L672:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	bne	.L673
.L674:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L671
	ldr	r2, .L690+8
	ldr	r3, [r4, #4]
	ldr	r1, [r2, #4]
	add	r0, r3, #32
	cmp	r1, r0
	bgt	.L671
	sub	r3, r3, #16
	cmp	r1, r3
	blt	.L671
	ldr	r1, [r4]
	ldr	r3, [r2, #20]
	ldr	r0, [r2]
	sub	r3, r1, r3
	cmp	r3, r0
	beq	.L689
.L671:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L687:
	ldr	r3, [r4]
	add	r1, r4, #16
	ldm	r1, {r1, ip}
	ldr	r2, [r4, #4]
	ldr	r0, .L690+8
	sub	r3, r3, #2
	str	r2, [sp]
	str	r3, [sp, #4]
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	add	r2, r0, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r0]
	ldr	r5, .L690+12
	ldr	r0, [r0, #4]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	movne	r3, #1
	strne	r3, [r4, #28]
	beq	.L672
.L673:
	ldr	r3, [r4]
	cmp	r3, #95
	ldrle	r2, [r4, #8]
	addle	r3, r2, r3
	strle	r3, [r4]
	b	.L674
.L689:
	mov	r3, #1
	ldr	r0, .L690+16
	ldrh	r0, [r0]
	tst	r0, #64
	str	r3, [r2, #8]
	beq	.L679
	ldr	r3, .L690+20
	ldrh	r3, [r3]
	tst	r3, #64
	moveq	r3, #2
	streq	r3, [r2, #8]
	beq	.L671
.L679:
	cmp	r1, #95
	movgt	r3, #0
	strgt	r3, [r2, #8]
	b	.L671
.L691:
	.align	2
.L690:
	.word	.LANCHOR1
	.word	movingCloud2
	.word	player
	.word	collision
	.word	oldButtons
	.word	buttons
	.size	updateMovingCloud2, .-updateMovingCloud2
	.align	2
	.global	drawMovingCloud2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawMovingCloud2, %function
drawMovingCloud2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L697
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L693
	ldr	r3, .L697+4
	ldrh	r3, [r3]
	cmp	r3, #29
	bls	drawMovingCloud2.part.0
.L693:
	mov	r2, #512
	ldr	r3, .L697+8
	strh	r2, [r3, #160]	@ movhi
	bx	lr
.L698:
	.align	2
.L697:
	.word	movingCloud2
	.word	screenBlock
	.word	shadowOAM
	.size	drawMovingCloud2, .-drawMovingCloud2
	.align	2
	.global	initMovingCloud3
	.syntax unified
	.arm
	.fpu softvfp
	.type	initMovingCloud3, %function
initMovingCloud3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	ip, #32
	mov	r4, #56
	mov	lr, #392
	mov	r0, #16
	mov	r1, #1
	mov	r2, #0
	ldr	r3, .L701
	stm	r3, {r4, lr}
	str	ip, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #24]
	str	r2, [r3, #28]
	pop	{r4, lr}
	bx	lr
.L702:
	.align	2
.L701:
	.word	movingCloud3
	.size	initMovingCloud3, .-initMovingCloud3
	.align	2
	.global	updateMovingCloud3
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateMovingCloud3, %function
updateMovingCloud3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L708
	ldr	r2, [r3, #24]
	cmp	r2, #0
	bxeq	lr
	ldr	r1, .L708+4
	ldr	r2, [r3, #4]
	ldr	r0, [r1, #4]
	add	ip, r2, #32
	cmp	r0, ip
	bxgt	lr
	sub	r2, r2, #16
	cmp	r0, r2
	bxlt	lr
	ldr	r0, [r1, #20]
	ldr	r2, [r3]
	ldr	r1, [r1]
	sub	r2, r2, r0
	cmp	r2, r1
	moveq	r2, #0
	streq	r2, [r3, #24]
	bx	lr
.L709:
	.align	2
.L708:
	.word	movingCloud3
	.word	player
	.size	updateMovingCloud3, .-updateMovingCloud3
	.align	2
	.global	drawMovingCloud3
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawMovingCloud3, %function
drawMovingCloud3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L715
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L711
	ldr	r3, .L715+4
	ldrh	r3, [r3]
	cmp	r3, #29
	bls	drawMovingCloud3.part.0
.L711:
	mov	r2, #512
	ldr	r3, .L715+8
	strh	r2, [r3, #168]	@ movhi
	bx	lr
.L716:
	.align	2
.L715:
	.word	movingCloud3
	.word	screenBlock
	.word	shadowOAM
	.size	drawMovingCloud3, .-drawMovingCloud3
	.align	2
	.global	initMovingCloud4
	.syntax unified
	.arm
	.fpu softvfp
	.type	initMovingCloud4, %function
initMovingCloud4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #1
	mov	r4, #72
	mov	lr, #440
	mov	r1, #0
	mov	ip, #32
	mov	r0, #16
	ldr	r3, .L719
	stm	r3, {r4, lr}
	str	ip, [r3, #16]
	str	r0, [r3, #20]
	str	r2, [r3, #12]
	str	r2, [r3, #24]
	str	r2, [r3, #32]
	str	r1, [r3, #28]
	str	r1, [r3, #36]
	pop	{r4, lr}
	bx	lr
.L720:
	.align	2
.L719:
	.word	movingCloud4
	.size	initMovingCloud4, .-initMovingCloud4
	.align	2
	.global	updateMovingCloud4
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateMovingCloud4, %function
updateMovingCloud4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L751
	ldrh	r3, [r3]
	cmp	r3, #2
	mov	r5, r0
	ldr	r4, .L751+4
	sub	sp, sp, #16
	bhi	.L748
.L722:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L723
	ldr	r3, [r4, #28]
	cmp	r3, #0
	bne	.L726
.L727:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L721
	ldr	r2, .L751+8
	ldr	r3, [r4, #4]
	ldr	r1, [r2, #4]
	add	r0, r3, #32
	cmp	r1, r0
	bgt	.L721
	sub	r3, r3, #16
	cmp	r1, r3
	blt	.L721
	ldr	r3, [r4]
	ldr	r0, [r2, #20]
	ldr	r1, [r2]
	sub	r3, r3, r0
	cmp	r3, r1
	beq	.L750
.L721:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L748:
	ldr	r3, [r4]
	add	r1, r4, #16
	ldm	r1, {r1, ip}
	ldr	r2, [r4, #4]
	ldr	r0, .L751+8
	sub	r3, r3, #2
	str	r2, [sp]
	str	r3, [sp, #4]
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	add	r2, r0, #16
	ldr	r1, [r0]
	ldm	r2, {r2, r3}
	ldr	r0, [r0, #4]
	ldr	r6, .L751+12
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L722
	mov	r3, #1
	ldr	r2, [r4, #32]
	cmp	r2, #0
	str	r3, [r4, #28]
	bne	.L726
.L723:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L727
	ldr	r3, [r4, #4]
	cmp	r3, #468
	ldrgt	r2, [r4, #12]
	subgt	r3, r3, r2
	strgt	r3, [r4, #4]
	b	.L727
.L726:
	ldr	r3, [r4, #4]
	cmp	r3, #524
	bgt	.L727
	tst	r5, #1
	ldreq	r2, [r4, #12]
	addeq	r3, r3, r2
	streq	r3, [r4, #4]
	cmp	r3, #524
	moveq	r2, #0
	moveq	r3, #1
	streq	r2, [r4, #32]
	streq	r3, [r4, #36]
	b	.L727
.L750:
	mov	r3, #0
	ldr	r1, .L751+16
	ldrh	r1, [r1]
	tst	r1, #64
	str	r3, [r2, #8]
	beq	.L721
	ldr	r3, .L751+20
	ldrh	r3, [r3]
	tst	r3, #64
	moveq	r3, #2
	streq	r3, [r2, #8]
	b	.L721
.L752:
	.align	2
.L751:
	.word	.LANCHOR1
	.word	movingCloud4
	.word	player
	.word	collision
	.word	oldButtons
	.word	buttons
	.size	updateMovingCloud4, .-updateMovingCloud4
	.align	2
	.global	drawMovingCloud4
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawMovingCloud4, %function
drawMovingCloud4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L758
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L754
	ldr	r3, .L758+4
	ldrh	r3, [r3]
	cmp	r3, #29
	bls	drawMovingCloud4.part.0
.L754:
	mov	r2, #512
	ldr	r3, .L758+8
	strh	r2, [r3, #176]	@ movhi
	bx	lr
.L759:
	.align	2
.L758:
	.word	movingCloud4
	.word	screenBlock
	.word	shadowOAM
	.size	drawMovingCloud4, .-drawMovingCloud4
	.align	2
	.global	initRocket
	.syntax unified
	.arm
	.fpu softvfp
	.type	initRocket, %function
initRocket:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #1
	mov	r4, #88
	mov	lr, #400
	mov	ip, #32
	mov	r0, #16
	mov	r1, #0
	ldr	r3, .L762
	stm	r3, {r4, lr}
	str	ip, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #44]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	pop	{r4, lr}
	bx	lr
.L763:
	.align	2
.L762:
	.word	rocket
	.size	initRocket, .-initRocket
	.align	2
	.global	updateRocket
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateRocket, %function
updateRocket:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L780
	ldrh	r3, [r3]
	cmp	r3, #2
	bls	.L765
	ldr	ip, .L780+4
	ldr	r1, [ip, #4]
	cmp	r1, #540
	movgt	r2, #1
	ldrgt	r3, .L780+8
	strgt	r2, [r3, #44]
	bgt	.L766
.L765:
	ldr	r3, .L780+8
	ldr	r2, [r3, #44]
	cmp	r2, #0
	bxeq	lr
	ldr	ip, .L780+4
	ldr	r1, [ip, #4]
.L766:
	tst	r0, #1
	ldr	r2, [r3, #4]
	ldreq	r0, [r3, #12]
	addeq	r2, r2, r0
	add	r0, r2, #32
	str	lr, [sp, #-4]!
	streq	r2, [r3, #4]
	cmp	r0, r1
	blt	.L770
	sub	r0, r2, #16
	cmp	r0, r1
	ble	.L778
.L770:
	add	r2, r2, #16
	cmp	r2, r1
	beq	.L779
.L764:
	ldr	lr, [sp], #4
	bx	lr
.L778:
	ldr	r0, [r3]
	ldr	lr, [ip]
	sub	r0, r0, #20
	cmp	r0, lr
	bne	.L770
	mov	r3, #0
	ldr	r2, .L780+12
	ldrh	r2, [r2]
	tst	r2, #64
	str	r3, [ip, #8]
	beq	.L764
	ldr	r3, .L780+16
	ldrh	r3, [r3]
	tst	r3, #64
	moveq	r3, #2
	streq	r3, [ip, #8]
	b	.L764
.L779:
	ldr	r2, [r3, #20]
	ldr	r3, [r3]
	ldr	r1, [ip]
	add	r2, r2, r2, lsr #31
	add	r2, r3, r2, asr #1
	cmp	r2, r1
	blt	.L764
	add	r1, r1, #24
	cmp	r2, r1
	bgt	.L764
	ldr	r3, .L780+20
	ldrh	r1, [r3]
	ldr	r2, [r3, #4]
	sub	r1, r1, #1
	sub	r2, r2, #50
	strh	r1, [r3]	@ movhi
	str	r2, [r3, #4]
	b	.L764
.L781:
	.align	2
.L780:
	.word	.LANCHOR1
	.word	player
	.word	rocket
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.size	updateRocket, .-updateRocket
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L789
	ldrh	r3, [r3]
	tst	r3, #1
	push	{r4, lr}
	beq	.L783
	ldr	r3, .L789+4
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L783
	ldr	r3, .L789+8
	ldrh	r3, [r3]
	cmp	r3, #2
	mov	r2, #83886080
	mov	r3, #256
	bhi	.L784
	mov	r0, #3
	ldr	r1, .L789+12
	ldr	r4, .L789+16
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L789+20
	ldr	r1, .L789+24
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L789+28
	ldr	r1, .L789+32
	mov	lr, pc
	bx	r4
.L783:
	bl	updatePlayer
	bl	updateBlock1
	bl	updateBlock2
	bl	updateBlock3
	bl	updateGuillotine
	bl	updateBrokenGround
	bl	updateBridge
	ldr	r0, .L789+36
	bl	updateFish
	ldr	r4, .L789+40
	ldr	r0, .L789+44
	bl	updateFish
	ldr	r0, .L789+48
	bl	updateFish
	bl	updateCloud
	bl	updateWinFlame
	bl	updateBlockMain
	bl	updateHoney
	bl	updateNoZuoNoDie
	bl	updateBlankBlocksONE
	bl	updateBlankBlocksTWO
	bl	updateBlankBlock1
	bl	updateBlankBlock2
	bl	updateBlankBlock3
	bl	updateMovingCloud1
	bl	updateMovingCloud2
	bl	updateMovingCloud3
	ldr	r0, [r4]
	bl	updateMovingCloud4
	ldr	r0, [r4]
	pop	{r4, lr}
	b	updateRocket
.L784:
	ldr	r4, .L789+16
	mov	r0, #3
	ldr	r1, .L789+52
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L789+56
	ldr	r1, .L789+60
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L789+28
	ldr	r1, .L789+64
	mov	lr, pc
	bx	r4
	b	.L783
.L790:
	.align	2
.L789:
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR1
	.word	background1CHEATPal
	.word	DMANow
	.word	6992
	.word	background1CHEATTiles
	.word	100720640
	.word	background1CHEATMap
	.word	fish
	.word	time
	.word	fish+56
	.word	fish+112
	.word	background2CHEATPal
	.word	5392
	.word	background2CHEATTiles
	.word	background2CHEATMap
	.size	updateGame, .-updateGame
	.align	2
	.global	drawRocket
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRocket, %function
drawRocket:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L796
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L792
	ldr	r3, .L796+4
	ldrh	r3, [r3]
	cmp	r3, #28
	bhi	drawRocket.part.0
.L792:
	mov	r2, #512
	ldr	r3, .L796+8
	strh	r2, [r3, #200]	@ movhi
	bx	lr
.L797:
	.align	2
.L796:
	.word	rocket
	.word	screenBlock
	.word	shadowOAM
	.size	drawRocket, .-drawRocket
	.comm	COLLISIONMAP,4,4
	.comm	rocket,56,4
	.comm	movingCloud4,40,4
	.comm	movingCloud3,40,4
	.comm	movingCloud2,40,4
	.comm	movingCloud1,40,4
	.comm	honey,56,4
	.comm	blankBlock3,20,4
	.comm	blankBlock2,20,4
	.comm	blankBlock1,20,4
	.comm	blankBlocksTWO,20,4
	.comm	blankBlocksONE,20,4
	.comm	noZuoNoDie,20,4
	.comm	blockMain,20,4
	.comm	winFlame,40,4
	.comm	cloud,40,4
	.comm	bridge,40,4
	.comm	brokenGround,40,4
	.comm	guillotine,40,4
	.comm	block3,20,4
	.comm	block2,20,4
	.comm	block1,20,4
	.comm	fish,168,4
	.comm	player,56,4
	.comm	hundreds,4,4
	.comm	tens,4,4
	.comm	ones,4,4
	.global	iq
	.comm	time,4,4
	.comm	jumpCount,2,2
	.global	paused
	.global	level
	.global	life
	.comm	screenBlock,2,2
	.comm	playerhOff,2,2
	.comm	vOff,2,2
	.comm	hOff,2,2
	.comm	soundB,32,4
	.comm	soundA,32,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	life, %object
	.size	life, 2
life:
	.short	1
	.space	2
	.type	iq, %object
	.size	iq, 4
iq:
	.word	250
	.bss
	.align	1
	.set	.LANCHOR1,. + 0
	.type	level, %object
	.size	level, 2
level:
	.space	2
	.type	paused, %object
	.size	paused, 2
paused:
	.space	2
	.ident	"GCC: (devkitARM release 53) 9.1.0"
