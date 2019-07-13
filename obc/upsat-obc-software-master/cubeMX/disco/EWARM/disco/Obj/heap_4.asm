	.cpu cortex-m4
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"heap_4.c"
	.text
.Ltext0:
	.section	.bss.ucHeap,"aw",%nobits
	.align	2
	.type	ucHeap, %object
	.size	ucHeap, 15360
ucHeap:
	.space	15360
	.section	.rodata.xHeapStructSize,"a"
	.align	2
	.type	xHeapStructSize, %object
	.size	xHeapStructSize, 4
xHeapStructSize:
	.word	8
	.section	.bss.xStart,"aw",%nobits
	.align	2
	.type	xStart, %object
	.size	xStart, 8
xStart:
	.space	8
	.section	.bss.pxEnd,"aw",%nobits
	.align	2
	.type	pxEnd, %object
	.size	pxEnd, 4
pxEnd:
	.space	4
	.section	.bss.xFreeBytesRemaining,"aw",%nobits
	.align	2
	.type	xFreeBytesRemaining, %object
	.size	xFreeBytesRemaining, 4
xFreeBytesRemaining:
	.space	4
	.section	.bss.xMinimumEverFreeBytesRemaining,"aw",%nobits
	.align	2
	.type	xMinimumEverFreeBytesRemaining, %object
	.size	xMinimumEverFreeBytesRemaining, 4
xMinimumEverFreeBytesRemaining:
	.space	4
	.section	.bss.xBlockAllocatedBit,"aw",%nobits
	.align	2
	.type	xBlockAllocatedBit, %object
	.size	xBlockAllocatedBit, 4
xBlockAllocatedBit:
	.space	4
	.section	.text.pvPortMalloc,"ax",%progbits
	.align	1
	.global	pvPortMalloc
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	pvPortMalloc, %function
pvPortMalloc:
.LFB1:
	.file 1 "C:\\Users\\Aymar\\Desktop\\MSG\\msg-obc-software\\obc\\upsat-obc-software-master\\cubeMX\\disco\\Middlewares\\Third_Party\\FreeRTOS\\Source\\portable\\MemMang\\heap_4.c"
	.loc 1 152 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI0:
	sub	sp, sp, #28
.LCFI1:
	str	r0, [sp, #4]
	.loc 1 154 7
	movs	r3, #0
	str	r3, [sp, #12]
	.loc 1 156 2
	bl	vTaskSuspendAll
	.loc 1 160 13
	ldr	r3, .L16
	ldr	r3, [r3]
	.loc 1 160 5
	cmp	r3, #0
	bne	.L2
	.loc 1 162 4
	bl	prvHeapInit
.L2:
	.loc 1 173 21
	ldr	r3, .L16+4
	ldr	r2, [r3]
	ldr	r3, [sp, #4]
	ands	r3, r3, r2
	.loc 1 173 5
	cmp	r3, #0
	bne	.L3
	.loc 1 177 6
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L4
	.loc 1 179 17
	movs	r2, #8
	ldr	r3, [sp, #4]
	add	r3, r3, r2
	str	r3, [sp, #4]
	.loc 1 183 23
	ldr	r3, [sp, #4]
	and	r3, r3, #7
	.loc 1 183 7
	cmp	r3, #0
	beq	.L4
	.loc 1 186 18
	ldr	r3, [sp, #4]
	bic	r3, r3, #7
	adds	r3, r3, #8
	str	r3, [sp, #4]
	.loc 1 187 6
	ldr	r3, [sp, #4]
	and	r3, r3, #7
	cmp	r3, #0
	beq	.L4
	.loc 1 187 6 is_stmt 0 discriminator 1
	movs	r3, #80
	.syntax unified
@ 187 "C:\Users\Aymar\Desktop\MSG\msg-obc-software\obc\upsat-obc-software-master\cubeMX\disco\Middlewares\Third_Party\FreeRTOS\Source\portable\MemMang\heap_4.c" 1
	msr BASEPRI, r3
@ 0 "" 2
	.thumb
	.syntax unified
.L5:
	b	.L5
.L4:
	.loc 1 199 6 is_stmt 1
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L3
	.loc 1 199 45 discriminator 1
	ldr	r3, .L16+8
	ldr	r3, [r3]
	.loc 1 199 28 discriminator 1
	ldr	r2, [sp, #4]
	cmp	r2, r3
	bhi	.L3
	.loc 1 203 21
	ldr	r3, .L16+12
	str	r3, [sp, #16]
	.loc 1 204 13
	ldr	r3, .L16+12
	ldr	r3, [r3]
	str	r3, [sp, #20]
	.loc 1 205 10
	b	.L6
.L8:
	.loc 1 207 22
	ldr	r3, [sp, #20]
	str	r3, [sp, #16]
	.loc 1 208 14
	ldr	r3, [sp, #20]
	ldr	r3, [r3]
	str	r3, [sp, #20]
.L6:
	.loc 1 205 21
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #4]
	.loc 1 205 10
	ldr	r2, [sp, #4]
	cmp	r2, r3
	bls	.L7
	.loc 1 205 62 discriminator 1
	ldr	r3, [sp, #20]
	ldr	r3, [r3]
	.loc 1 205 50 discriminator 1
	cmp	r3, #0
	bne	.L8
.L7:
	.loc 1 213 17
	ldr	r3, .L16
	ldr	r3, [r3]
	.loc 1 213 7
	ldr	r2, [sp, #20]
	cmp	r2, r3
	beq	.L3
	.loc 1 217 61
	ldr	r3, [sp, #16]
	ldr	r3, [r3]
	.loc 1 217 17
	movs	r2, #8
	.loc 1 217 15
	add	r3, r3, r2
	str	r3, [sp, #12]
	.loc 1 221 48
	ldr	r3, [sp, #20]
	ldr	r2, [r3]
	.loc 1 221 39
	ldr	r3, [sp, #16]
	str	r2, [r3]
	.loc 1 225 19
	ldr	r3, [sp, #20]
	ldr	r2, [r3, #4]
	.loc 1 225 32
	ldr	r3, [sp, #4]
	subs	r2, r2, r3
	.loc 1 225 50
	movs	r3, #8
	lsls	r3, r3, #1
	.loc 1 225 8
	cmp	r2, r3
	bls	.L9
	.loc 1 231 22
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #4]
	add	r3, r3, r2
	str	r3, [sp, #8]
	.loc 1 232 7
	ldr	r3, [sp, #8]
	and	r3, r3, #7
	cmp	r3, #0
	beq	.L10
	.loc 1 232 7 is_stmt 0 discriminator 1
	movs	r3, #80
	.syntax unified
@ 232 "C:\Users\Aymar\Desktop\MSG\msg-obc-software\obc\upsat-obc-software-master\cubeMX\disco\Middlewares\Third_Party\FreeRTOS\Source\portable\MemMang\heap_4.c" 1
	msr BASEPRI, r3
@ 0 "" 2
	.thumb
	.syntax unified
.L11:
	.loc 1 232 7 discriminator 3
	b	.L11
.L10:
	.loc 1 236 43 is_stmt 1
	ldr	r3, [sp, #20]
	ldr	r2, [r3, #4]
	.loc 1 236 56
	ldr	r3, [sp, #4]
	subs	r2, r2, r3
	.loc 1 236 34
	ldr	r3, [sp, #8]
	str	r2, [r3, #4]
	.loc 1 237 27
	ldr	r3, [sp, #20]
	ldr	r2, [sp, #4]
	str	r2, [r3, #4]
	.loc 1 240 7
	ldr	r0, [sp, #8]
	bl	prvInsertBlockIntoFreeList
.L9:
	.loc 1 247 26
	ldr	r3, .L16+8
	ldr	r2, [r3]
	.loc 1 247 36
	ldr	r3, [sp, #20]
	ldr	r3, [r3, #4]
	.loc 1 247 26
	subs	r3, r2, r3
	ldr	r2, .L16+8
	str	r3, [r2]
	.loc 1 249 30
	ldr	r3, .L16+8
	ldr	r2, [r3]
	ldr	r3, .L16+16
	ldr	r3, [r3]
	.loc 1 249 8
	cmp	r2, r3
	bcs	.L12
	.loc 1 251 38
	ldr	r3, .L16+8
	ldr	r3, [r3]
	ldr	r2, .L16+16
	str	r3, [r2]
.L12:
	.loc 1 260 26
	ldr	r3, [sp, #20]
	ldr	r2, [r3, #4]
	ldr	r3, .L16+4
	ldr	r3, [r3]
	orrs	r2, r2, r3
	ldr	r3, [sp, #20]
	str	r2, [r3, #4]
	.loc 1 261 31
	ldr	r3, [sp, #20]
	movs	r2, #0
	str	r2, [r3]
.L3:
	.loc 1 280 11
	bl	xTaskResumeAll
	.loc 1 296 2
	ldr	r3, [sp, #12]
	and	r3, r3, #7
	cmp	r3, #0
	beq	.L13
	.loc 1 296 2 is_stmt 0 discriminator 1
	movs	r3, #80
	.syntax unified
@ 296 "C:\Users\Aymar\Desktop\MSG\msg-obc-software\obc\upsat-obc-software-master\cubeMX\disco\Middlewares\Third_Party\FreeRTOS\Source\portable\MemMang\heap_4.c" 1
	msr BASEPRI, r3
@ 0 "" 2
	.thumb
	.syntax unified
.L14:
	.loc 1 296 2 discriminator 5
	b	.L14
.L13:
	.loc 1 297 9 is_stmt 1
	ldr	r3, [sp, #12]
	.loc 1 298 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI2:
	@ sp needed
	ldr	pc, [sp], #4
.L17:
	.align	2
.L16:
	.word	pxEnd
	.word	xBlockAllocatedBit
	.word	xFreeBytesRemaining
	.word	xStart
	.word	xMinimumEverFreeBytesRemaining
.LFE1:
	.size	pvPortMalloc, .-pvPortMalloc
	.section	.text.vPortFree,"ax",%progbits
	.align	1
	.global	vPortFree
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	vPortFree, %function
vPortFree:
.LFB2:
	.loc 1 302 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI3:
	sub	sp, sp, #20
.LCFI4:
	str	r0, [sp, #4]
	.loc 1 303 10
	ldr	r3, [sp, #4]
	str	r3, [sp, #12]
	.loc 1 306 4
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L24
	.loc 1 310 7
	movs	r3, #8
	rsbs	r3, r3, #0
	ldr	r2, [sp, #12]
	add	r3, r3, r2
	str	r3, [sp, #12]
	.loc 1 313 10
	ldr	r3, [sp, #12]
	str	r3, [sp, #8]
	.loc 1 316 3
	ldr	r3, [sp, #8]
	ldr	r2, [r3, #4]
	ldr	r3, .L25
	ldr	r3, [r3]
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L20
	.loc 1 316 3 is_stmt 0 discriminator 1
	movs	r3, #80
	.syntax unified
@ 316 "C:\Users\Aymar\Desktop\MSG\msg-obc-software\obc\upsat-obc-software-master\cubeMX\disco\Middlewares\Third_Party\FreeRTOS\Source\portable\MemMang\heap_4.c" 1
	msr BASEPRI, r3
@ 0 "" 2
	.thumb
	.syntax unified
.L21:
	b	.L21
.L20:
	.loc 1 317 3 is_stmt 1
	ldr	r3, [sp, #8]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L22
	.loc 1 317 3 is_stmt 0 discriminator 1
	movs	r3, #80
	.syntax unified
@ 317 "C:\Users\Aymar\Desktop\MSG\msg-obc-software\obc\upsat-obc-software-master\cubeMX\disco\Middlewares\Third_Party\FreeRTOS\Source\portable\MemMang\heap_4.c" 1
	msr BASEPRI, r3
@ 0 "" 2
	.thumb
	.syntax unified
.L23:
	.loc 1 317 3 discriminator 2
	b	.L23
.L22:
	.loc 1 319 15 is_stmt 1
	ldr	r3, [sp, #8]
	ldr	r2, [r3, #4]
	.loc 1 319 28
	ldr	r3, .L25
	ldr	r3, [r3]
	ands	r3, r3, r2
	.loc 1 319 5
	cmp	r3, #0
	beq	.L24
	.loc 1 321 14
	ldr	r3, [sp, #8]
	ldr	r3, [r3]
	.loc 1 321 6
	cmp	r3, #0
	bne	.L24
	.loc 1 325 24
	ldr	r3, [sp, #8]
	ldr	r2, [r3, #4]
	.loc 1 325 27
	ldr	r3, .L25
	ldr	r3, [r3]
	mvns	r3, r3
	.loc 1 325 24
	ands	r2, r2, r3
	ldr	r3, [sp, #8]
	str	r2, [r3, #4]
	.loc 1 327 5
	bl	vTaskSuspendAll
	.loc 1 330 35
	ldr	r3, [sp, #8]
	ldr	r2, [r3, #4]
	.loc 1 330 26
	ldr	r3, .L25+4
	ldr	r3, [r3]
	add	r3, r3, r2
	ldr	r2, .L25+4
	str	r3, [r2]
	.loc 1 332 6
	ldr	r0, [sp, #8]
	bl	prvInsertBlockIntoFreeList
	.loc 1 334 14
	bl	xTaskResumeAll
.L24:
	.loc 1 346 1
	nop
	add	sp, sp, #20
.LCFI5:
	@ sp needed
	ldr	pc, [sp], #4
.L26:
	.align	2
.L25:
	.word	xBlockAllocatedBit
	.word	xFreeBytesRemaining
.LFE2:
	.size	vPortFree, .-vPortFree
	.section	.text.xPortGetFreeHeapSize,"ax",%progbits
	.align	1
	.global	xPortGetFreeHeapSize
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	xPortGetFreeHeapSize, %function
xPortGetFreeHeapSize:
.LFB3:
	.loc 1 350 1
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 351 9
	ldr	r3, .L29
	ldr	r3, [r3]
	.loc 1 352 1
	mov	r0, r3
	bx	lr
.L30:
	.align	2
.L29:
	.word	xFreeBytesRemaining
.LFE3:
	.size	xPortGetFreeHeapSize, .-xPortGetFreeHeapSize
	.section	.text.xPortGetMinimumEverFreeHeapSize,"ax",%progbits
	.align	1
	.global	xPortGetMinimumEverFreeHeapSize
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	xPortGetMinimumEverFreeHeapSize, %function
xPortGetMinimumEverFreeHeapSize:
.LFB4:
	.loc 1 356 1
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 357 9
	ldr	r3, .L33
	ldr	r3, [r3]
	.loc 1 358 1
	mov	r0, r3
	bx	lr
.L34:
	.align	2
.L33:
	.word	xMinimumEverFreeBytesRemaining
.LFE4:
	.size	xPortGetMinimumEverFreeHeapSize, .-xPortGetMinimumEverFreeHeapSize
	.section	.text.vPortInitialiseBlocks,"ax",%progbits
	.align	1
	.global	vPortInitialiseBlocks
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	vPortInitialiseBlocks, %function
vPortInitialiseBlocks:
.LFB5:
	.loc 1 362 1
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 364 1
	nop
	bx	lr
.LFE5:
	.size	vPortInitialiseBlocks, .-vPortInitialiseBlocks
	.section	.text.prvHeapInit,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	prvHeapInit, %function
prvHeapInit:
.LFB6:
	.loc 1 368 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI6:
	.loc 1 372 8
	mov	r3, #15360
	str	r3, [sp, #8]
	.loc 1 375 12
	ldr	r3, .L38
	str	r3, [sp, #12]
	.loc 1 377 18
	ldr	r3, [sp, #12]
	and	r3, r3, #7
	.loc 1 377 4
	cmp	r3, #0
	beq	.L37
	.loc 1 379 13
	ldr	r3, [sp, #12]
	adds	r3, r3, #7
	str	r3, [sp, #12]
	.loc 1 380 13
	ldr	r3, [sp, #12]
	bic	r3, r3, #7
	str	r3, [sp, #12]
	.loc 1 381 18
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	subs	r3, r2, r3
	ldr	r2, .L38
	add	r3, r3, r2
	str	r3, [sp, #8]
.L37:
	.loc 1 384 17
	ldr	r3, [sp, #12]
	str	r3, [sp, #4]
	.loc 1 388 25
	ldr	r2, .L38+4
	ldr	r3, [sp, #4]
	str	r3, [r2]
	.loc 1 389 20
	ldr	r3, .L38+4
	movs	r2, #0
	str	r2, [r3, #4]
	.loc 1 393 16
	ldr	r3, [sp, #4]
	.loc 1 393 12
	ldr	r2, [sp, #8]
	add	r3, r3, r2
	str	r3, [sp, #12]
	.loc 1 394 12
	movs	r2, #8
	ldr	r3, [sp, #12]
	subs	r3, r3, r2
	str	r3, [sp, #12]
	.loc 1 395 12
	ldr	r3, [sp, #12]
	bic	r3, r3, #7
	str	r3, [sp, #12]
	.loc 1 396 10
	ldr	r3, [sp, #12]
	.loc 1 396 8
	ldr	r2, .L38+8
	str	r3, [r2]
	.loc 1 397 7
	ldr	r3, .L38+8
	ldr	r3, [r3]
	.loc 1 397 20
	movs	r2, #0
	str	r2, [r3, #4]
	.loc 1 398 7
	ldr	r3, .L38+8
	ldr	r3, [r3]
	.loc 1 398 25
	movs	r2, #0
	str	r2, [r3]
	.loc 1 402 19
	ldr	r3, [sp, #4]
	str	r3, [sp]
	.loc 1 403 45
	ldr	r3, [sp]
	.loc 1 403 43
	ldr	r2, [sp, #12]
	subs	r2, r2, r3
	.loc 1 403 31
	ldr	r3, [sp]
	str	r2, [r3, #4]
	.loc 1 404 36
	ldr	r3, .L38+8
	ldr	r2, [r3]
	ldr	r3, [sp]
	str	r2, [r3]
	.loc 1 407 51
	ldr	r3, [sp]
	ldr	r3, [r3, #4]
	.loc 1 407 33
	ldr	r2, .L38+12
	str	r3, [r2]
	.loc 1 408 40
	ldr	r3, [sp]
	ldr	r3, [r3, #4]
	.loc 1 408 22
	ldr	r2, .L38+16
	str	r3, [r2]
	.loc 1 411 21
	ldr	r3, .L38+20
	mov	r2, #-2147483648
	str	r2, [r3]
	.loc 1 412 1
	nop
	add	sp, sp, #16
.LCFI7:
	@ sp needed
	bx	lr
.L39:
	.align	2
.L38:
	.word	ucHeap
	.word	xStart
	.word	pxEnd
	.word	xMinimumEverFreeBytesRemaining
	.word	xFreeBytesRemaining
	.word	xBlockAllocatedBit
.LFE6:
	.size	prvHeapInit, .-prvHeapInit
	.section	.text.prvInsertBlockIntoFreeList,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	prvInsertBlockIntoFreeList, %function
prvInsertBlockIntoFreeList:
.LFB7:
	.loc 1 416 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI8:
	str	r0, [sp, #4]
	.loc 1 422 18
	ldr	r3, .L50
	str	r3, [sp, #12]
	.loc 1 422 2
	b	.L41
.L42:
	.loc 1 422 87 discriminator 3
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	str	r3, [sp, #12]
.L41:
	.loc 1 422 39 discriminator 1
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	.loc 1 422 2 discriminator 1
	ldr	r2, [sp, #4]
	cmp	r2, r3
	bhi	.L42
	.loc 1 429 6
	ldr	r3, [sp, #12]
	str	r3, [sp, #8]
	.loc 1 430 24
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #4]
	.loc 1 430 12
	ldr	r2, [sp, #8]
	add	r3, r3, r2
	.loc 1 430 4
	ldr	r2, [sp, #4]
	cmp	r2, r3
	bne	.L43
	.loc 1 432 26
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #4]
	.loc 1 432 44
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #4]
	.loc 1 432 26
	add	r2, r2, r3
	ldr	r3, [sp, #12]
	str	r2, [r3, #4]
	.loc 1 433 19
	ldr	r3, [sp, #12]
	str	r3, [sp, #4]
.L43:
	.loc 1 442 6
	ldr	r3, [sp, #4]
	str	r3, [sp, #8]
	.loc 1 443 29
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #4]
	.loc 1 443 12
	ldr	r2, [sp, #8]
	add	r2, r2, r3
	.loc 1 443 71
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	.loc 1 443 4
	cmp	r2, r3
	bne	.L44
	.loc 1 445 17
	ldr	r3, [sp, #12]
	ldr	r2, [r3]
	.loc 1 445 35
	ldr	r3, .L50+4
	ldr	r3, [r3]
	.loc 1 445 5
	cmp	r2, r3
	beq	.L45
	.loc 1 448 32
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #4]
	.loc 1 448 45
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	.loc 1 448 62
	ldr	r3, [r3, #4]
	.loc 1 448 32
	add	r2, r2, r3
	ldr	r3, [sp, #4]
	str	r2, [r3, #4]
	.loc 1 449 49
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	.loc 1 449 66
	ldr	r2, [r3]
	.loc 1 449 37
	ldr	r3, [sp, #4]
	str	r2, [r3]
	b	.L47
.L45:
	.loc 1 453 37
	ldr	r3, .L50+4
	ldr	r2, [r3]
	ldr	r3, [sp, #4]
	str	r2, [r3]
	b	.L47
.L44:
	.loc 1 458 48
	ldr	r3, [sp, #12]
	ldr	r2, [r3]
	.loc 1 458 36
	ldr	r3, [sp, #4]
	str	r2, [r3]
.L47:
	.loc 1 465 4
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #4]
	cmp	r2, r3
	beq	.L49
	.loc 1 467 31
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #4]
	str	r2, [r3]
.L49:
	.loc 1 473 1
	nop
	add	sp, sp, #16
.LCFI9:
	@ sp needed
	bx	lr
.L51:
	.align	2
.L50:
	.word	xStart
	.word	pxEnd
.LFE7:
	.size	prvInsertBlockIntoFreeList, .-prvInsertBlockIntoFreeList
	.section	.debug_frame,"",%progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x3
	.ascii	"\000"
	.uleb128 0x1
	.sleb128 -4
	.uleb128 0xe
	.byte	0xc
	.uleb128 0xd
	.uleb128 0
	.align	2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI0-.LFB1
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI3-.LFB2
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI6-.LFB6
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI8-.LFB7
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE12:
	.text
.Letext0:
	.file 2 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.18/include/__crossworks.h"
	.file 3 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.18/include/stdlib.h"
	.file 4 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.18/include/stdint.h"
	.file 5 "./../Inc/FreeRTOSConfig.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x862
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF117
	.byte	0xc
	.4byte	.LASF118
	.4byte	.LASF119
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x8
	.byte	0x2
	.byte	0x7e
	.byte	0x8
	.4byte	0x4f
	.uleb128 0x4
	.4byte	.LASF0
	.byte	0x2
	.byte	0x7f
	.byte	0x7
	.4byte	0x4f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF1
	.byte	0x2
	.byte	0x80
	.byte	0x8
	.4byte	0x56
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x7
	.4byte	0x4f
	.4byte	0x76
	.uleb128 0x8
	.4byte	0x76
	.uleb128 0x8
	.4byte	0x88
	.uleb128 0x8
	.4byte	0x8f
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x7c
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0xa
	.4byte	0x7c
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x9
	.byte	0x4
	.4byte	0x27
	.uleb128 0x7
	.4byte	0x4f
	.4byte	0xb3
	.uleb128 0x8
	.4byte	0xb3
	.uleb128 0x8
	.4byte	0xb9
	.uleb128 0x8
	.4byte	0x88
	.uleb128 0x8
	.4byte	0x8f
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x88
	.uleb128 0x9
	.byte	0x4
	.4byte	0x83
	.uleb128 0xb
	.byte	0x58
	.byte	0x2
	.byte	0x86
	.byte	0x9
	.4byte	0x269
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x88
	.byte	0xf
	.4byte	0xb9
	.byte	0
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x89
	.byte	0xf
	.4byte	0xb9
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x8a
	.byte	0xf
	.4byte	0xb9
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8c
	.byte	0xf
	.4byte	0xb9
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x8d
	.byte	0xf
	.4byte	0xb9
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0x8e
	.byte	0xf
	.4byte	0xb9
	.byte	0x14
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x8f
	.byte	0xf
	.4byte	0xb9
	.byte	0x18
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x2
	.byte	0x90
	.byte	0xf
	.4byte	0xb9
	.byte	0x1c
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x2
	.byte	0x91
	.byte	0xf
	.4byte	0xb9
	.byte	0x20
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x2
	.byte	0x92
	.byte	0xf
	.4byte	0xb9
	.byte	0x24
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x2
	.byte	0x94
	.byte	0x8
	.4byte	0x7c
	.byte	0x28
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x2
	.byte	0x95
	.byte	0x8
	.4byte	0x7c
	.byte	0x29
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x2
	.byte	0x96
	.byte	0x8
	.4byte	0x7c
	.byte	0x2a
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x2
	.byte	0x97
	.byte	0x8
	.4byte	0x7c
	.byte	0x2b
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x2
	.byte	0x98
	.byte	0x8
	.4byte	0x7c
	.byte	0x2c
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x2
	.byte	0x99
	.byte	0x8
	.4byte	0x7c
	.byte	0x2d
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x2
	.byte	0x9a
	.byte	0x8
	.4byte	0x7c
	.byte	0x2e
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x2
	.byte	0x9b
	.byte	0x8
	.4byte	0x7c
	.byte	0x2f
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x2
	.byte	0x9c
	.byte	0x8
	.4byte	0x7c
	.byte	0x30
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x2
	.byte	0x9d
	.byte	0x8
	.4byte	0x7c
	.byte	0x31
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x2
	.byte	0x9e
	.byte	0x8
	.4byte	0x7c
	.byte	0x32
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x2
	.byte	0x9f
	.byte	0x8
	.4byte	0x7c
	.byte	0x33
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x2
	.byte	0xa0
	.byte	0x8
	.4byte	0x7c
	.byte	0x34
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x2
	.byte	0xa1
	.byte	0x8
	.4byte	0x7c
	.byte	0x35
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x2
	.byte	0xa6
	.byte	0xf
	.4byte	0xb9
	.byte	0x38
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x2
	.byte	0xa7
	.byte	0xf
	.4byte	0xb9
	.byte	0x3c
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x2
	.byte	0xa8
	.byte	0xf
	.4byte	0xb9
	.byte	0x40
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x2
	.byte	0xa9
	.byte	0xf
	.4byte	0xb9
	.byte	0x44
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x2
	.byte	0xaa
	.byte	0xf
	.4byte	0xb9
	.byte	0x48
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x2
	.byte	0xab
	.byte	0xf
	.4byte	0xb9
	.byte	0x4c
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x2
	.byte	0xac
	.byte	0xf
	.4byte	0xb9
	.byte	0x50
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x2
	.byte	0xad
	.byte	0xf
	.4byte	0xb9
	.byte	0x54
	.byte	0
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x2
	.byte	0xae
	.byte	0x3
	.4byte	0xbf
	.uleb128 0xa
	.4byte	0x269
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF37
	.uleb128 0xa
	.4byte	0x27a
	.uleb128 0xb
	.byte	0x20
	.byte	0x2
	.byte	0xc4
	.byte	0x9
	.4byte	0x2f8
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x2
	.byte	0xc6
	.byte	0x9
	.4byte	0x30c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0x2
	.byte	0xc7
	.byte	0x9
	.4byte	0x321
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x2
	.byte	0xc8
	.byte	0x9
	.4byte	0x321
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x2
	.byte	0xcb
	.byte	0x9
	.4byte	0x33b
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0x2
	.byte	0xcc
	.byte	0xa
	.4byte	0x350
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0x2
	.byte	0xcd
	.byte	0xa
	.4byte	0x350
	.byte	0x14
	.uleb128 0x4
	.4byte	.LASF44
	.byte	0x2
	.byte	0xd0
	.byte	0x9
	.4byte	0x356
	.byte	0x18
	.uleb128 0x4
	.4byte	.LASF45
	.byte	0x2
	.byte	0xd1
	.byte	0x9
	.4byte	0x35c
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.4byte	0x4f
	.4byte	0x30c
	.uleb128 0x8
	.4byte	0x4f
	.uleb128 0x8
	.4byte	0x4f
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x2f8
	.uleb128 0x7
	.4byte	0x4f
	.4byte	0x321
	.uleb128 0x8
	.4byte	0x4f
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x312
	.uleb128 0x7
	.4byte	0x4f
	.4byte	0x33b
	.uleb128 0x8
	.4byte	0x56
	.uleb128 0x8
	.4byte	0x4f
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x327
	.uleb128 0x7
	.4byte	0x56
	.4byte	0x350
	.uleb128 0x8
	.4byte	0x56
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x341
	.uleb128 0x9
	.byte	0x4
	.4byte	0x5d
	.uleb128 0x9
	.byte	0x4
	.4byte	0x95
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x2
	.byte	0xd2
	.byte	0x3
	.4byte	0x286
	.uleb128 0xa
	.4byte	0x362
	.uleb128 0xb
	.byte	0xc
	.byte	0x2
	.byte	0xd4
	.byte	0x9
	.4byte	0x3a4
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0x2
	.byte	0xd5
	.byte	0xf
	.4byte	0xb9
	.byte	0
	.uleb128 0x4
	.4byte	.LASF49
	.byte	0x2
	.byte	0xd6
	.byte	0x25
	.4byte	0x3a4
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0x2
	.byte	0xd7
	.byte	0x28
	.4byte	0x3aa
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x275
	.uleb128 0x9
	.byte	0x4
	.4byte	0x36e
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x2
	.byte	0xd8
	.byte	0x3
	.4byte	0x373
	.uleb128 0xa
	.4byte	0x3b0
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x14
	.byte	0x2
	.byte	0xdc
	.byte	0x10
	.4byte	0x3dc
	.uleb128 0x4
	.4byte	.LASF54
	.byte	0x2
	.byte	0xdd
	.byte	0x20
	.4byte	0x3dc
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x3ec
	.4byte	0x3ec
	.uleb128 0xe
	.4byte	0x88
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x3bc
	.uleb128 0xf
	.4byte	.LASF55
	.byte	0x2
	.2byte	0x106
	.byte	0x1a
	.4byte	0x3c1
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x2
	.2byte	0x10d
	.byte	0x24
	.4byte	0x3bc
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0x2
	.2byte	0x110
	.byte	0x2c
	.4byte	0x36e
	.uleb128 0xf
	.4byte	.LASF58
	.byte	0x2
	.2byte	0x111
	.byte	0x2c
	.4byte	0x36e
	.uleb128 0xd
	.4byte	0x281
	.4byte	0x436
	.uleb128 0xe
	.4byte	0x88
	.byte	0x7f
	.byte	0
	.uleb128 0xa
	.4byte	0x426
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0x2
	.2byte	0x113
	.byte	0x23
	.4byte	0x436
	.uleb128 0xd
	.4byte	0x83
	.4byte	0x453
	.uleb128 0x10
	.byte	0
	.uleb128 0xa
	.4byte	0x448
	.uleb128 0xf
	.4byte	.LASF60
	.byte	0x2
	.2byte	0x115
	.byte	0x13
	.4byte	0x453
	.uleb128 0xf
	.4byte	.LASF61
	.byte	0x2
	.2byte	0x116
	.byte	0x13
	.4byte	0x453
	.uleb128 0xf
	.4byte	.LASF62
	.byte	0x2
	.2byte	0x117
	.byte	0x13
	.4byte	0x453
	.uleb128 0xf
	.4byte	.LASF63
	.byte	0x2
	.2byte	0x118
	.byte	0x13
	.4byte	0x453
	.uleb128 0xf
	.4byte	.LASF64
	.byte	0x2
	.2byte	0x11a
	.byte	0x13
	.4byte	0x453
	.uleb128 0xf
	.4byte	.LASF65
	.byte	0x2
	.2byte	0x11b
	.byte	0x13
	.4byte	0x453
	.uleb128 0xf
	.4byte	.LASF66
	.byte	0x2
	.2byte	0x11c
	.byte	0x13
	.4byte	0x453
	.uleb128 0xf
	.4byte	.LASF67
	.byte	0x2
	.2byte	0x11d
	.byte	0x13
	.4byte	0x453
	.uleb128 0xf
	.4byte	.LASF68
	.byte	0x2
	.2byte	0x11e
	.byte	0x13
	.4byte	0x453
	.uleb128 0xf
	.4byte	.LASF69
	.byte	0x2
	.2byte	0x11f
	.byte	0x13
	.4byte	0x453
	.uleb128 0x7
	.4byte	0x4f
	.4byte	0x4e9
	.uleb128 0x8
	.4byte	0x4e9
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x4f4
	.uleb128 0x11
	.4byte	.LASF120
	.uleb128 0xa
	.4byte	0x4ef
	.uleb128 0xf
	.4byte	.LASF70
	.byte	0x2
	.2byte	0x135
	.byte	0xe
	.4byte	0x506
	.uleb128 0x9
	.byte	0x4
	.4byte	0x4da
	.uleb128 0x7
	.4byte	0x4f
	.4byte	0x51b
	.uleb128 0x8
	.4byte	0x51b
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x4ef
	.uleb128 0xf
	.4byte	.LASF71
	.byte	0x2
	.2byte	0x136
	.byte	0xe
	.4byte	0x52e
	.uleb128 0x9
	.byte	0x4
	.4byte	0x50c
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF72
	.uleb128 0x12
	.4byte	.LASF73
	.byte	0x2
	.2byte	0x14d
	.byte	0x18
	.4byte	0x548
	.uleb128 0x9
	.byte	0x4
	.4byte	0x54e
	.uleb128 0x7
	.4byte	0xb9
	.4byte	0x55d
	.uleb128 0x8
	.4byte	0x4f
	.byte	0
	.uleb128 0x13
	.4byte	.LASF74
	.byte	0x8
	.byte	0x2
	.2byte	0x14f
	.byte	0x10
	.4byte	0x588
	.uleb128 0x14
	.4byte	.LASF75
	.byte	0x2
	.2byte	0x151
	.byte	0x1c
	.4byte	0x53b
	.byte	0
	.uleb128 0x14
	.4byte	.LASF76
	.byte	0x2
	.2byte	0x152
	.byte	0x21
	.4byte	0x588
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x55d
	.uleb128 0x12
	.4byte	.LASF77
	.byte	0x2
	.2byte	0x153
	.byte	0x3
	.4byte	0x55d
	.uleb128 0xf
	.4byte	.LASF78
	.byte	0x2
	.2byte	0x157
	.byte	0x1f
	.4byte	0x5a8
	.uleb128 0x9
	.byte	0x4
	.4byte	0x58e
	.uleb128 0xc
	.4byte	.LASF79
	.byte	0x3
	.byte	0x37
	.byte	0x16
	.4byte	0x88
	.uleb128 0xa
	.4byte	0x5ae
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF80
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF81
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF82
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF83
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x4
	.byte	0x30
	.byte	0x1c
	.4byte	0x27a
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF85
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x4
	.byte	0x38
	.byte	0x1c
	.4byte	0x88
	.uleb128 0x15
	.4byte	.LASF87
	.byte	0x5
	.byte	0x5d
	.byte	0x15
	.4byte	0x5ee
	.uleb128 0x9
	.byte	0x4
	.4byte	0x5db
	.uleb128 0xd
	.4byte	0x5db
	.4byte	0x61d
	.uleb128 0x16
	.4byte	0x88
	.2byte	0x3bff
	.byte	0
	.uleb128 0x17
	.4byte	.LASF92
	.byte	0x1
	.byte	0x66
	.byte	0x11
	.4byte	0x60c
	.uleb128 0x5
	.byte	0x3
	.4byte	ucHeap
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0x8
	.byte	0x1
	.byte	0x6b
	.byte	0x10
	.4byte	0x657
	.uleb128 0x4
	.4byte	.LASF89
	.byte	0x1
	.byte	0x6d
	.byte	0x17
	.4byte	0x657
	.byte	0
	.uleb128 0x4
	.4byte	.LASF90
	.byte	0x1
	.byte	0x6e
	.byte	0x9
	.4byte	0x5ae
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x62f
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x1
	.byte	0x6f
	.byte	0x3
	.4byte	0x62f
	.uleb128 0x17
	.4byte	.LASF93
	.byte	0x1
	.byte	0x85
	.byte	0x15
	.4byte	0x5ba
	.uleb128 0x5
	.byte	0x3
	.4byte	xHeapStructSize
	.uleb128 0x17
	.4byte	.LASF94
	.byte	0x1
	.byte	0x88
	.byte	0x14
	.4byte	0x65d
	.uleb128 0x5
	.byte	0x3
	.4byte	xStart
	.uleb128 0x17
	.4byte	.LASF95
	.byte	0x1
	.byte	0x88
	.byte	0x1d
	.4byte	0x69f
	.uleb128 0x5
	.byte	0x3
	.4byte	pxEnd
	.uleb128 0x9
	.byte	0x4
	.4byte	0x65d
	.uleb128 0x17
	.4byte	.LASF96
	.byte	0x1
	.byte	0x8c
	.byte	0xf
	.4byte	0x5ae
	.uleb128 0x5
	.byte	0x3
	.4byte	xFreeBytesRemaining
	.uleb128 0x17
	.4byte	.LASF97
	.byte	0x1
	.byte	0x8d
	.byte	0xf
	.4byte	0x5ae
	.uleb128 0x5
	.byte	0x3
	.4byte	xMinimumEverFreeBytesRemaining
	.uleb128 0x17
	.4byte	.LASF98
	.byte	0x1
	.byte	0x93
	.byte	0xf
	.4byte	0x5ae
	.uleb128 0x5
	.byte	0x3
	.4byte	xBlockAllocatedBit
	.uleb128 0x18
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x19f
	.byte	0xd
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x723
	.uleb128 0x19
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x19f
	.byte	0x36
	.4byte	0x69f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1a
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x1a1
	.byte	0xe
	.4byte	0x69f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x1b
	.ascii	"puc\000"
	.byte	0x1
	.2byte	0x1a2
	.byte	0xa
	.4byte	0x606
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x18
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x16f
	.byte	0xd
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x77b
	.uleb128 0x1a
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x171
	.byte	0xe
	.4byte	0x69f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1a
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x172
	.byte	0xa
	.4byte	0x606
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1a
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x173
	.byte	0xa
	.4byte	0x5ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x1a
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x174
	.byte	0x8
	.4byte	0x5ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x169
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1d
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x163
	.byte	0x8
	.4byte	0x5ae
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1d
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x15d
	.byte	0x8
	.4byte	0x5ae
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x12d
	.byte	0x6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x803
	.uleb128 0x1f
	.ascii	"pv\000"
	.byte	0x1
	.2byte	0x12d
	.byte	0x17
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.ascii	"puc\000"
	.byte	0x1
	.2byte	0x12f
	.byte	0xa
	.4byte	0x606
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1a
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x130
	.byte	0xe
	.4byte	0x69f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x20
	.4byte	.LASF111
	.byte	0x1
	.byte	0x97
	.byte	0x7
	.4byte	0x25
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.4byte	.LASF112
	.byte	0x1
	.byte	0x97
	.byte	0x1c
	.4byte	0x5ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.4byte	.LASF113
	.byte	0x1
	.byte	0x99
	.byte	0xe
	.4byte	0x69f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x17
	.4byte	.LASF114
	.byte	0x1
	.byte	0x99
	.byte	0x18
	.4byte	0x69f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x17
	.4byte	.LASF115
	.byte	0x1
	.byte	0x99
	.byte	0x2a
	.4byte	0x69f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.4byte	.LASF116
	.byte	0x1
	.byte	0x9a
	.byte	0x7
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x2134
	.uleb128 0x19
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x14f
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x866
	.4byte	0x61d
	.ascii	"ucHeap\000"
	.4byte	0x669
	.ascii	"xHeapStructSize\000"
	.4byte	0x67b
	.ascii	"xStart\000"
	.4byte	0x68d
	.ascii	"pxEnd\000"
	.4byte	0x6a5
	.ascii	"xFreeBytesRemaining\000"
	.4byte	0x6b7
	.ascii	"xMinimumEverFreeBytesRemaining\000"
	.4byte	0x6c9
	.ascii	"xBlockAllocatedBit\000"
	.4byte	0x61d
	.ascii	"ucHeap\000"
	.4byte	0x67b
	.ascii	"xStart\000"
	.4byte	0x6db
	.ascii	"prvInsertBlockIntoFreeList\000"
	.4byte	0x723
	.ascii	"prvHeapInit\000"
	.4byte	0x77b
	.ascii	"vPortInitialiseBlocks\000"
	.4byte	0x78e
	.ascii	"xPortGetMinimumEverFreeHeapSize\000"
	.4byte	0x7a5
	.ascii	"xPortGetFreeHeapSize\000"
	.4byte	0x7bc
	.ascii	"vPortFree\000"
	.4byte	0x803
	.ascii	"pvPortMalloc\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x1c2
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x866
	.4byte	0x4f
	.ascii	"int\000"
	.4byte	0x56
	.ascii	"long int\000"
	.4byte	0x27
	.ascii	"__mbstate_s\000"
	.4byte	0x7c
	.ascii	"char\000"
	.4byte	0x88
	.ascii	"unsigned int\000"
	.4byte	0x269
	.ascii	"__RAL_locale_data_t\000"
	.4byte	0x27a
	.ascii	"unsigned char\000"
	.4byte	0x362
	.ascii	"__RAL_locale_codeset_t\000"
	.4byte	0x3b0
	.ascii	"__RAL_locale_t\000"
	.4byte	0x3c1
	.ascii	"__locale_s\000"
	.4byte	0x534
	.ascii	"short unsigned int\000"
	.4byte	0x53b
	.ascii	"__RAL_error_decoder_fn_t\000"
	.4byte	0x55d
	.ascii	"__RAL_error_decoder_s\000"
	.4byte	0x58e
	.ascii	"__RAL_error_decoder_t\000"
	.4byte	0x5ae
	.ascii	"size_t\000"
	.4byte	0x5bf
	.ascii	"long long int\000"
	.4byte	0x5c6
	.ascii	"long unsigned int\000"
	.4byte	0x5cd
	.ascii	"long long unsigned int\000"
	.4byte	0x5d4
	.ascii	"signed char\000"
	.4byte	0x5db
	.ascii	"uint8_t\000"
	.4byte	0x5e7
	.ascii	"short int\000"
	.4byte	0x5ee
	.ascii	"uint32_t\000"
	.4byte	0x62f
	.ascii	"A_BLOCK_LINK\000"
	.4byte	0x65d
	.ascii	"BlockLink_t\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF9:
	.ascii	"currency_symbol\000"
.LASF66:
	.ascii	"__RAL_data_utf8_space\000"
.LASF61:
	.ascii	"__RAL_c_locale_abbrev_day_names\000"
.LASF57:
	.ascii	"__RAL_codeset_ascii\000"
.LASF73:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF114:
	.ascii	"pxPreviousBlock\000"
.LASF17:
	.ascii	"p_cs_precedes\000"
.LASF105:
	.ascii	"xTotalHeapSize\000"
.LASF68:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF109:
	.ascii	"pxLink\000"
.LASF99:
	.ascii	"pxIterator\000"
.LASF82:
	.ascii	"long long unsigned int\000"
.LASF89:
	.ascii	"pxNextFreeBlock\000"
.LASF52:
	.ascii	"__mbstate_s\000"
.LASF71:
	.ascii	"__user_get_time_of_day\000"
.LASF90:
	.ascii	"xBlockSize\000"
.LASF87:
	.ascii	"SystemCoreClock\000"
.LASF34:
	.ascii	"date_format\000"
.LASF76:
	.ascii	"next\000"
.LASF32:
	.ascii	"abbrev_month_names\000"
.LASF80:
	.ascii	"long long int\000"
.LASF83:
	.ascii	"signed char\000"
.LASF113:
	.ascii	"pxBlock\000"
.LASF55:
	.ascii	"__RAL_global_locale\000"
.LASF36:
	.ascii	"date_time_format\000"
.LASF42:
	.ascii	"__towupper\000"
.LASF108:
	.ascii	"pxBlockToInsert\000"
.LASF2:
	.ascii	"long int\000"
.LASF94:
	.ascii	"xStart\000"
.LASF65:
	.ascii	"__RAL_data_utf8_comma\000"
.LASF8:
	.ascii	"int_curr_symbol\000"
.LASF13:
	.ascii	"positive_sign\000"
.LASF23:
	.ascii	"int_p_cs_precedes\000"
.LASF1:
	.ascii	"__wchar\000"
.LASF98:
	.ascii	"xBlockAllocatedBit\000"
.LASF120:
	.ascii	"timeval\000"
.LASF111:
	.ascii	"pvPortMalloc\000"
.LASF12:
	.ascii	"mon_grouping\000"
.LASF41:
	.ascii	"__iswctype\000"
.LASF22:
	.ascii	"n_sign_posn\000"
.LASF4:
	.ascii	"unsigned int\000"
.LASF25:
	.ascii	"int_p_sep_by_space\000"
.LASF10:
	.ascii	"mon_decimal_point\000"
.LASF33:
	.ascii	"am_pm_indicator\000"
.LASF64:
	.ascii	"__RAL_data_utf8_period\000"
.LASF7:
	.ascii	"grouping\000"
.LASF81:
	.ascii	"long unsigned int\000"
.LASF43:
	.ascii	"__towlower\000"
.LASF69:
	.ascii	"__RAL_data_empty_string\000"
.LASF6:
	.ascii	"thousands_sep\000"
.LASF48:
	.ascii	"name\000"
.LASF39:
	.ascii	"__toupper\000"
.LASF20:
	.ascii	"n_sep_by_space\000"
.LASF49:
	.ascii	"data\000"
.LASF14:
	.ascii	"negative_sign\000"
.LASF72:
	.ascii	"short unsigned int\000"
.LASF29:
	.ascii	"day_names\000"
.LASF101:
	.ascii	"prvHeapInit\000"
.LASF110:
	.ascii	"vPortFree\000"
.LASF24:
	.ascii	"int_n_cs_precedes\000"
.LASF53:
	.ascii	"__locale_s\000"
.LASF118:
	.ascii	"C:\\Users\\Aymar\\Desktop\\MSG\\msg-obc-software\\o"
	.ascii	"bc\\upsat-obc-software-master\\cubeMX\\disco\\Middl"
	.ascii	"ewares\\Third_Party\\FreeRTOS\\Source\\portable\\Me"
	.ascii	"mMang\\heap_4.c\000"
.LASF51:
	.ascii	"__RAL_locale_t\000"
.LASF35:
	.ascii	"time_format\000"
.LASF21:
	.ascii	"p_sign_posn\000"
.LASF59:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF96:
	.ascii	"xFreeBytesRemaining\000"
.LASF75:
	.ascii	"decode\000"
.LASF45:
	.ascii	"__mbtowc\000"
.LASF30:
	.ascii	"abbrev_day_names\000"
.LASF104:
	.ascii	"ulAddress\000"
.LASF103:
	.ascii	"pucAlignedHeap\000"
.LASF92:
	.ascii	"ucHeap\000"
.LASF19:
	.ascii	"n_cs_precedes\000"
.LASF79:
	.ascii	"size_t\000"
.LASF40:
	.ascii	"__tolower\000"
.LASF70:
	.ascii	"__user_set_time_of_day\000"
.LASF58:
	.ascii	"__RAL_codeset_utf8\000"
.LASF116:
	.ascii	"pvReturn\000"
.LASF54:
	.ascii	"__category\000"
.LASF106:
	.ascii	"xPortGetMinimumEverFreeHeapSize\000"
.LASF0:
	.ascii	"__state\000"
.LASF88:
	.ascii	"A_BLOCK_LINK\000"
.LASF37:
	.ascii	"unsigned char\000"
.LASF107:
	.ascii	"xPortGetFreeHeapSize\000"
.LASF60:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF16:
	.ascii	"frac_digits\000"
.LASF85:
	.ascii	"short int\000"
.LASF100:
	.ascii	"prvInsertBlockIntoFreeList\000"
.LASF78:
	.ascii	"__RAL_error_decoder_head\000"
.LASF121:
	.ascii	"vPortInitialiseBlocks\000"
.LASF97:
	.ascii	"xMinimumEverFreeBytesRemaining\000"
.LASF11:
	.ascii	"mon_thousands_sep\000"
.LASF112:
	.ascii	"xWantedSize\000"
.LASF46:
	.ascii	"__RAL_locale_data_t\000"
.LASF86:
	.ascii	"uint32_t\000"
.LASF27:
	.ascii	"int_p_sign_posn\000"
.LASF3:
	.ascii	"char\000"
.LASF18:
	.ascii	"p_sep_by_space\000"
.LASF117:
	.ascii	"GNU C99 8.2.1 20181213 (release) [gcc-8-branch revi"
	.ascii	"sion 267074] -fmessage-length=0 -mcpu=cortex-m4 -ml"
	.ascii	"ittle-endian -mfloat-abi=soft -mthumb -mtp=soft -mu"
	.ascii	"naligned-access -std=gnu99 -g2 -gpubnames -fomit-fr"
	.ascii	"ame-pointer -fno-dwarf2-cfi-asm -fno-builtin -ffunc"
	.ascii	"tion-sections -fdata-sections -fshort-enums -fno-co"
	.ascii	"mmon\000"
.LASF56:
	.ascii	"__RAL_c_locale\000"
.LASF91:
	.ascii	"BlockLink_t\000"
.LASF47:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF95:
	.ascii	"pxEnd\000"
.LASF93:
	.ascii	"xHeapStructSize\000"
.LASF50:
	.ascii	"codeset\000"
.LASF115:
	.ascii	"pxNewBlockLink\000"
.LASF28:
	.ascii	"int_n_sign_posn\000"
.LASF62:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF38:
	.ascii	"__isctype\000"
.LASF74:
	.ascii	"__RAL_error_decoder_s\000"
.LASF77:
	.ascii	"__RAL_error_decoder_t\000"
.LASF84:
	.ascii	"uint8_t\000"
.LASF119:
	.ascii	"C:\\Users\\Aymar\\Desktop\\MSG\\msg-obc-software\\o"
	.ascii	"bc\\upsat-obc-software-master\\cubeMX\\disco\\EWARM"
	.ascii	"\000"
.LASF15:
	.ascii	"int_frac_digits\000"
.LASF31:
	.ascii	"month_names\000"
.LASF26:
	.ascii	"int_n_sep_by_space\000"
.LASF102:
	.ascii	"pxFirstFreeBlock\000"
.LASF67:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF63:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF44:
	.ascii	"__wctomb\000"
.LASF5:
	.ascii	"decimal_point\000"
	.ident	"GCC: (GNU) 8.2.1 20181213 (release) [gcc-8-branch revision 267074]"
