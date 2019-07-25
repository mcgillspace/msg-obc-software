	.cpu cortex-m4
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"SEGGER_SYSVIEW_FreeRTOS.c"
	.text
.Ltext0:
	.section	.bss._aTasks,"aw",%nobits
	.align	2
	.type	_aTasks, %object
	.size	_aTasks, 160
_aTasks:
	.space	160
	.section	.bss._NumTasks,"aw",%nobits
	.align	2
	.type	_NumTasks, %object
	.size	_NumTasks, 4
_NumTasks:
	.space	4
	.section	.text._cbSendTaskList,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	_cbSendTaskList, %function
_cbSendTaskList:
.LFB1:
	.file 1 "/home/ignacio/Documents/McGilllSpaceGroup/OBC/cubeMX/SystemView/Src/OS/SEGGER_SYSVIEW_FreeRTOS.c"
	.loc 1 79 35
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
.LCFI0:
	sub	sp, sp, #16
.LCFI1:
	.loc 1 82 10
	movs	r3, #0
	str	r3, [sp, #12]
	.loc 1 82 3
	b	.L2
.L3:
	.loc 1 86 5 discriminator 3
	ldr	r1, .L4
	ldr	r2, [sp, #12]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r0, [r3]
	ldr	r1, .L4
	ldr	r2, [sp, #12]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #4
	ldr	r4, [r3]
	ldr	r1, .L4
	ldr	r2, [sp, #12]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #8
	ldr	r5, [r3]
	ldr	r1, .L4
	ldr	r2, [sp, #12]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #12
	ldr	r6, [r3]
	ldr	r1, .L4
	ldr	r2, [sp, #12]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #16
	ldr	r3, [r3]
	str	r3, [sp]
	mov	r3, r6
	mov	r2, r5
	mov	r1, r4
	bl	SYSVIEW_SendTaskInfo
	.loc 1 82 31 discriminator 3
	ldr	r3, [sp, #12]
	adds	r3, r3, #1
	str	r3, [sp, #12]
.L2:
	.loc 1 82 17 discriminator 1
	ldr	r3, .L4+4
	ldr	r3, [r3]
	.loc 1 82 3 discriminator 1
	ldr	r2, [sp, #12]
	cmp	r2, r3
	bcc	.L3
	.loc 1 88 1
	nop
	add	sp, sp, #16
.LCFI2:
	@ sp needed
	pop	{r4, r5, r6, pc}
.L5:
	.align	2
.L4:
	.word	_aTasks
	.word	_NumTasks
.LFE1:
	.size	_cbSendTaskList, .-_cbSendTaskList
	.section	.text._cbGetTime,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	_cbGetTime, %function
_cbGetTime:
.LFB2:
	.loc 1 99 29
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
.LCFI3:
	sub	sp, sp, #8
.LCFI4:
	.loc 1 102 10
	bl	xTaskGetTickCountFromISR
	mov	r3, r0
	.loc 1 102 8
	mov	r4, #0
	strd	r3, [sp]
	.loc 1 104 8
	ldrd	r1, [sp]
	mov	r3, r1
	mov	r4, r2
	mov	r5, #0
	mov	r6, #0
	lsls	r6, r4, #5
	orr	r6, r6, r3, lsr #27
	lsls	r5, r3, #5
	mov	r3, r5
	mov	r4, r6
	subs	r3, r3, r1
	sbc	r4, r4, r2
	mov	r5, #0
	mov	r6, #0
	lsls	r6, r4, #2
	orr	r6, r6, r3, lsr #30
	lsls	r5, r3, #2
	mov	r3, r5
	mov	r4, r6
	adds	r3, r3, r1
	adc	r4, r2, r4
	mov	r1, #0
	mov	r2, #0
	lsls	r2, r4, #3
	orr	r2, r2, r3, lsr #29
	lsls	r1, r3, #3
	mov	r3, r1
	mov	r4, r2
	strd	r3, [sp]
	.loc 1 105 10
	ldrd	r3, [sp]
	.loc 1 106 1
	mov	r0, r3
	mov	r1, r4
	add	sp, sp, #8
.LCFI5:
	@ sp needed
	pop	{r4, r5, r6, pc}
.LFE2:
	.size	_cbGetTime, .-_cbGetTime
	.section .rodata
	.align	2
.LC0:
	.ascii	"IDLE\000"
	.align	2
.LC1:
	.ascii	"SYSTEMVIEW: Could not record task information. Maxi"
	.ascii	"mum number of tasks reached.\000"
	.section	.text.SYSVIEW_AddTask,"ax",%progbits
	.align	1
	.global	SYSVIEW_AddTask
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	SYSVIEW_AddTask, %function
SYSVIEW_AddTask:
.LFB3:
	.loc 1 121 131
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI6:
	sub	sp, sp, #28
.LCFI7:
	str	r0, [sp, #20]
	str	r1, [sp, #16]
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	.loc 1 123 7
	movs	r2, #5
	ldr	r1, .L13
	ldr	r0, [sp, #16]
	bl	memcmp
	mov	r3, r0
	.loc 1 123 6
	cmp	r3, #0
	beq	.L12
	.loc 1 127 17
	ldr	r3, .L13+4
	ldr	r3, [r3]
	.loc 1 127 6
	cmp	r3, #7
	bls	.L11
	.loc 1 128 5
	ldr	r0, .L13+8
	bl	SEGGER_SYSVIEW_Warn
	.loc 1 129 5
	b	.L8
.L11:
	.loc 1 132 21
	ldr	r3, .L13+4
	ldr	r2, [r3]
	.loc 1 132 30
	ldr	r1, .L13+12
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r2, [sp, #20]
	str	r2, [r3]
	.loc 1 133 21
	ldr	r3, .L13+4
	ldr	r2, [r3]
	.loc 1 133 33
	ldr	r1, .L13+12
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #4
	ldr	r2, [sp, #16]
	str	r2, [r3]
	.loc 1 134 21
	ldr	r3, .L13+4
	ldr	r2, [r3]
	.loc 1 134 40
	ldr	r1, .L13+12
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #8
	ldr	r2, [sp, #12]
	str	r2, [r3]
	.loc 1 135 21
	ldr	r3, .L13+4
	ldr	r2, [r3]
	.loc 1 135 30
	ldr	r1, .L13+12
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #12
	ldr	r2, [sp, #8]
	str	r2, [r3]
	.loc 1 136 21
	ldr	r3, .L13+4
	ldr	r2, [r3]
	.loc 1 136 42
	ldr	r1, .L13+12
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #16
	ldr	r2, [sp, #32]
	str	r2, [r3]
	.loc 1 138 12
	ldr	r3, .L13+4
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L13+4
	str	r3, [r2]
	.loc 1 140 3
	ldr	r3, [sp, #32]
	str	r3, [sp]
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #12]
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
	bl	SYSVIEW_SendTaskInfo
	b	.L8
.L12:
	.loc 1 124 5
	nop
.L8:
	.loc 1 142 1
	add	sp, sp, #28
.LCFI8:
	@ sp needed
	ldr	pc, [sp], #4
.L14:
	.align	2
.L13:
	.word	.LC0
	.word	_NumTasks
	.word	.LC1
	.word	_aTasks
.LFE3:
	.size	SYSVIEW_AddTask, .-SYSVIEW_AddTask
	.section	.text.SYSVIEW_UpdateTask,"ax",%progbits
	.align	1
	.global	SYSVIEW_UpdateTask
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	SYSVIEW_UpdateTask, %function
SYSVIEW_UpdateTask:
.LFB4:
	.loc 1 151 133
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI9:
	sub	sp, sp, #36
.LCFI10:
	str	r0, [sp, #20]
	str	r1, [sp, #16]
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	.loc 1 154 7
	movs	r2, #5
	ldr	r1, .L25
	ldr	r0, [sp, #16]
	bl	memcmp
	mov	r3, r0
	.loc 1 154 6
	cmp	r3, #0
	beq	.L23
	.loc 1 158 10
	movs	r3, #0
	str	r3, [sp, #28]
	.loc 1 158 3
	b	.L18
.L21:
	.loc 1 159 19
	ldr	r1, .L25+4
	ldr	r2, [sp, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3]
	.loc 1 159 8
	ldr	r2, [sp, #20]
	cmp	r2, r3
	beq	.L24
	.loc 1 158 31 discriminator 2
	ldr	r3, [sp, #28]
	adds	r3, r3, #1
	str	r3, [sp, #28]
.L18:
	.loc 1 158 17 discriminator 1
	ldr	r3, .L25+8
	ldr	r3, [r3]
	.loc 1 158 3 discriminator 1
	ldr	r2, [sp, #28]
	cmp	r2, r3
	bcc	.L21
	b	.L20
.L24:
	.loc 1 160 7
	nop
.L20:
	.loc 1 163 9
	ldr	r3, .L25+8
	ldr	r3, [r3]
	.loc 1 163 6
	ldr	r2, [sp, #28]
	cmp	r2, r3
	bcs	.L22
	.loc 1 164 27
	ldr	r1, .L25+4
	ldr	r2, [sp, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #4
	ldr	r2, [sp, #16]
	str	r2, [r3]
	.loc 1 165 34
	ldr	r1, .L25+4
	ldr	r2, [sp, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #8
	ldr	r2, [sp, #12]
	str	r2, [r3]
	.loc 1 166 24
	ldr	r1, .L25+4
	ldr	r2, [sp, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #12
	ldr	r2, [sp, #8]
	str	r2, [r3]
	.loc 1 167 36
	ldr	r1, .L25+4
	ldr	r2, [sp, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #16
	ldr	r2, [sp, #40]
	str	r2, [r3]
	.loc 1 169 5
	ldr	r3, [sp, #40]
	str	r3, [sp]
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #12]
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
	bl	SYSVIEW_SendTaskInfo
	b	.L15
.L22:
	.loc 1 171 5
	ldr	r3, [sp, #40]
	str	r3, [sp]
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #12]
	ldr	r1, [sp, #16]
	ldr	r0, [sp, #20]
	bl	SYSVIEW_AddTask
	b	.L15
.L23:
	.loc 1 155 5
	nop
.L15:
	.loc 1 173 1
	add	sp, sp, #36
.LCFI11:
	@ sp needed
	ldr	pc, [sp], #4
.L26:
	.align	2
.L25:
	.word	.LC0
	.word	_aTasks
	.word	_NumTasks
.LFE4:
	.size	SYSVIEW_UpdateTask, .-SYSVIEW_UpdateTask
	.section	.text.SYSVIEW_SendTaskInfo,"ax",%progbits
	.align	1
	.global	SYSVIEW_SendTaskInfo
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	SYSVIEW_SendTaskInfo, %function
SYSVIEW_SendTaskInfo:
.LFB5:
	.loc 1 182 108
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI12:
	sub	sp, sp, #44
.LCFI13:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	.loc 1 185 3
	add	r3, sp, #20
	movs	r2, #20
	movs	r1, #0
	mov	r0, r3
	bl	memset
	.loc 1 186 23
	ldr	r3, [sp, #12]
	str	r3, [sp, #20]
	.loc 1 187 23
	ldr	r3, [sp, #8]
	str	r3, [sp, #24]
	.loc 1 188 23
	ldr	r3, [sp, #4]
	str	r3, [sp, #28]
	.loc 1 189 23
	ldr	r3, [sp]
	str	r3, [sp, #32]
	.loc 1 190 23
	ldr	r3, [sp, #48]
	str	r3, [sp, #36]
	.loc 1 191 3
	add	r3, sp, #20
	mov	r0, r3
	bl	SEGGER_SYSVIEW_SendTaskInfo
	.loc 1 192 1
	nop
	add	sp, sp, #44
.LCFI14:
	@ sp needed
	ldr	pc, [sp], #4
.LFE5:
	.size	SYSVIEW_SendTaskInfo, .-SYSVIEW_SendTaskInfo
	.section	.text.SYSVIEW_RecordU32x4,"ax",%progbits
	.align	1
	.global	SYSVIEW_RecordU32x4
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	SYSVIEW_RecordU32x4, %function
SYSVIEW_RecordU32x4:
.LFB6:
	.loc 1 201 83
	@ args = 4, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI15:
	sub	sp, sp, #60
.LCFI16:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	.loc 1 205 16
	add	r3, sp, #20
	adds	r3, r3, #4
	str	r3, [sp, #52]
	.loc 1 206 18
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #52]
	bl	SEGGER_SYSVIEW_EncodeU32
	str	r0, [sp, #52]
	.loc 1 207 18
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #52]
	bl	SEGGER_SYSVIEW_EncodeU32
	str	r0, [sp, #52]
	.loc 1 208 18
	ldr	r1, [sp]
	ldr	r0, [sp, #52]
	bl	SEGGER_SYSVIEW_EncodeU32
	str	r0, [sp, #52]
	.loc 1 209 18
	ldr	r1, [sp, #64]
	ldr	r0, [sp, #52]
	bl	SEGGER_SYSVIEW_EncodeU32
	str	r0, [sp, #52]
	.loc 1 211 7
	add	r3, sp, #20
	ldr	r2, [sp, #12]
	ldr	r1, [sp, #52]
	mov	r0, r3
	bl	SEGGER_SYSVIEW_SendPacket
	.loc 1 212 1
	nop
	add	sp, sp, #60
.LCFI17:
	@ sp needed
	ldr	pc, [sp], #4
.LFE6:
	.size	SYSVIEW_RecordU32x4, .-SYSVIEW_RecordU32x4
	.section	.text.SYSVIEW_RecordU32x5,"ax",%progbits
	.align	1
	.global	SYSVIEW_RecordU32x5
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	SYSVIEW_RecordU32x5, %function
SYSVIEW_RecordU32x5:
.LFB7:
	.loc 1 221 94
	@ args = 8, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI18:
	sub	sp, sp, #60
.LCFI19:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	.loc 1 225 16
	add	r3, sp, #16
	adds	r3, r3, #4
	str	r3, [sp, #52]
	.loc 1 226 18
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #52]
	bl	SEGGER_SYSVIEW_EncodeU32
	str	r0, [sp, #52]
	.loc 1 227 18
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #52]
	bl	SEGGER_SYSVIEW_EncodeU32
	str	r0, [sp, #52]
	.loc 1 228 18
	ldr	r1, [sp]
	ldr	r0, [sp, #52]
	bl	SEGGER_SYSVIEW_EncodeU32
	str	r0, [sp, #52]
	.loc 1 229 18
	ldr	r1, [sp, #64]
	ldr	r0, [sp, #52]
	bl	SEGGER_SYSVIEW_EncodeU32
	str	r0, [sp, #52]
	.loc 1 230 18
	ldr	r1, [sp, #68]
	ldr	r0, [sp, #52]
	bl	SEGGER_SYSVIEW_EncodeU32
	str	r0, [sp, #52]
	.loc 1 232 7
	add	r3, sp, #16
	ldr	r2, [sp, #12]
	ldr	r1, [sp, #52]
	mov	r0, r3
	bl	SEGGER_SYSVIEW_SendPacket
	.loc 1 233 1
	nop
	add	sp, sp, #60
.LCFI20:
	@ sp needed
	ldr	pc, [sp], #4
.LFE7:
	.size	SYSVIEW_RecordU32x5, .-SYSVIEW_RecordU32x5
	.global	SYSVIEW_X_OS_TraceAPI
	.section	.rodata.SYSVIEW_X_OS_TraceAPI,"a"
	.align	2
	.type	SYSVIEW_X_OS_TraceAPI, %object
	.size	SYSVIEW_X_OS_TraceAPI, 8
SYSVIEW_X_OS_TraceAPI:
	.word	_cbGetTime
	.word	_cbSendTaskList
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
	.uleb128 0x10
	.byte	0x84
	.uleb128 0x4
	.byte	0x85
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x10
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
	.uleb128 0x10
	.byte	0x84
	.uleb128 0x4
	.byte	0x85
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x10
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI6-.LFB3
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI9-.LFB4
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI12-.LFB5
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI15-.LFB6
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x40
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI18-.LFB7
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x40
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE12:
	.text
.Letext0:
	.file 2 "/usr/share/segger_embedded_studio_for_arm_4.16/include/__crossworks.h"
	.file 3 "/usr/share/segger_embedded_studio_for_arm_4.16/include/stdint.h"
	.file 4 "./../Inc/FreeRTOSConfig.h"
	.file 5 "./../Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM4F/portmacro.h"
	.file 6 "/home/ignacio/Documents/McGilllSpaceGroup/OBC/cubeMX/SystemView/Src/OS/../SEGGER/SEGGER_SYSVIEW.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x9ee
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF119
	.byte	0xc
	.4byte	.LASF120
	.4byte	.LASF121
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0x8
	.byte	0x2
	.byte	0x7e
	.byte	0x8
	.4byte	0x4d
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x2
	.byte	0x7f
	.byte	0x7
	.4byte	0x4d
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x2
	.byte	0x80
	.byte	0x8
	.4byte	0x54
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x6
	.4byte	0x4d
	.4byte	0x74
	.uleb128 0x7
	.4byte	0x74
	.uleb128 0x7
	.4byte	0x86
	.uleb128 0x7
	.4byte	0x8d
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7a
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x9
	.4byte	0x7a
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x8
	.byte	0x4
	.4byte	0x25
	.uleb128 0x6
	.4byte	0x4d
	.4byte	0xb1
	.uleb128 0x7
	.4byte	0xb1
	.uleb128 0x7
	.4byte	0xb7
	.uleb128 0x7
	.4byte	0x86
	.uleb128 0x7
	.4byte	0x8d
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x86
	.uleb128 0x8
	.byte	0x4
	.4byte	0x81
	.uleb128 0xa
	.byte	0x58
	.byte	0x2
	.byte	0x86
	.byte	0x9
	.4byte	0x267
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x88
	.byte	0xf
	.4byte	0xb7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x89
	.byte	0xf
	.4byte	0xb7
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x8a
	.byte	0xf
	.4byte	0xb7
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8c
	.byte	0xf
	.4byte	0xb7
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x8d
	.byte	0xf
	.4byte	0xb7
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x8e
	.byte	0xf
	.4byte	0xb7
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x2
	.byte	0x8f
	.byte	0xf
	.4byte	0xb7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x2
	.byte	0x90
	.byte	0xf
	.4byte	0xb7
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x2
	.byte	0x91
	.byte	0xf
	.4byte	0xb7
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x2
	.byte	0x92
	.byte	0xf
	.4byte	0xb7
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x2
	.byte	0x94
	.byte	0x8
	.4byte	0x7a
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x2
	.byte	0x95
	.byte	0x8
	.4byte	0x7a
	.byte	0x29
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x2
	.byte	0x96
	.byte	0x8
	.4byte	0x7a
	.byte	0x2a
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x2
	.byte	0x97
	.byte	0x8
	.4byte	0x7a
	.byte	0x2b
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x2
	.byte	0x98
	.byte	0x8
	.4byte	0x7a
	.byte	0x2c
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x2
	.byte	0x99
	.byte	0x8
	.4byte	0x7a
	.byte	0x2d
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x2
	.byte	0x9a
	.byte	0x8
	.4byte	0x7a
	.byte	0x2e
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x2
	.byte	0x9b
	.byte	0x8
	.4byte	0x7a
	.byte	0x2f
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x2
	.byte	0x9c
	.byte	0x8
	.4byte	0x7a
	.byte	0x30
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x2
	.byte	0x9d
	.byte	0x8
	.4byte	0x7a
	.byte	0x31
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x2
	.byte	0x9e
	.byte	0x8
	.4byte	0x7a
	.byte	0x32
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x2
	.byte	0x9f
	.byte	0x8
	.4byte	0x7a
	.byte	0x33
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x2
	.byte	0xa0
	.byte	0x8
	.4byte	0x7a
	.byte	0x34
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x2
	.byte	0xa1
	.byte	0x8
	.4byte	0x7a
	.byte	0x35
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x2
	.byte	0xa6
	.byte	0xf
	.4byte	0xb7
	.byte	0x38
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x2
	.byte	0xa7
	.byte	0xf
	.4byte	0xb7
	.byte	0x3c
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x2
	.byte	0xa8
	.byte	0xf
	.4byte	0xb7
	.byte	0x40
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x2
	.byte	0xa9
	.byte	0xf
	.4byte	0xb7
	.byte	0x44
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x2
	.byte	0xaa
	.byte	0xf
	.4byte	0xb7
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x2
	.byte	0xab
	.byte	0xf
	.4byte	0xb7
	.byte	0x4c
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x2
	.byte	0xac
	.byte	0xf
	.4byte	0xb7
	.byte	0x50
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x2
	.byte	0xad
	.byte	0xf
	.4byte	0xb7
	.byte	0x54
	.byte	0
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x2
	.byte	0xae
	.byte	0x3
	.4byte	0xbd
	.uleb128 0x9
	.4byte	0x267
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF37
	.uleb128 0x9
	.4byte	0x278
	.uleb128 0xa
	.byte	0x20
	.byte	0x2
	.byte	0xc4
	.byte	0x9
	.4byte	0x2f6
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x2
	.byte	0xc6
	.byte	0x9
	.4byte	0x30a
	.byte	0
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x2
	.byte	0xc7
	.byte	0x9
	.4byte	0x31f
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x2
	.byte	0xc8
	.byte	0x9
	.4byte	0x31f
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x2
	.byte	0xcb
	.byte	0x9
	.4byte	0x339
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x2
	.byte	0xcc
	.byte	0xa
	.4byte	0x34e
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x2
	.byte	0xcd
	.byte	0xa
	.4byte	0x34e
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x2
	.byte	0xd0
	.byte	0x9
	.4byte	0x354
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x2
	.byte	0xd1
	.byte	0x9
	.4byte	0x35a
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.4byte	0x4d
	.4byte	0x30a
	.uleb128 0x7
	.4byte	0x4d
	.uleb128 0x7
	.4byte	0x4d
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2f6
	.uleb128 0x6
	.4byte	0x4d
	.4byte	0x31f
	.uleb128 0x7
	.4byte	0x4d
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x310
	.uleb128 0x6
	.4byte	0x4d
	.4byte	0x339
	.uleb128 0x7
	.4byte	0x54
	.uleb128 0x7
	.4byte	0x4d
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x325
	.uleb128 0x6
	.4byte	0x54
	.4byte	0x34e
	.uleb128 0x7
	.4byte	0x54
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x33f
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5b
	.uleb128 0x8
	.byte	0x4
	.4byte	0x93
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x2
	.byte	0xd2
	.byte	0x3
	.4byte	0x284
	.uleb128 0x9
	.4byte	0x360
	.uleb128 0xa
	.byte	0xc
	.byte	0x2
	.byte	0xd4
	.byte	0x9
	.4byte	0x3a2
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x2
	.byte	0xd5
	.byte	0xf
	.4byte	0xb7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x2
	.byte	0xd6
	.byte	0x25
	.4byte	0x3a2
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x2
	.byte	0xd7
	.byte	0x28
	.4byte	0x3a8
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x273
	.uleb128 0x8
	.byte	0x4
	.4byte	0x36c
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x2
	.byte	0xd8
	.byte	0x3
	.4byte	0x371
	.uleb128 0x9
	.4byte	0x3ae
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0x14
	.byte	0x2
	.byte	0xdc
	.byte	0x10
	.4byte	0x3da
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x2
	.byte	0xdd
	.byte	0x20
	.4byte	0x3da
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0x3ea
	.4byte	0x3ea
	.uleb128 0xd
	.4byte	0x86
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3ba
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x2
	.2byte	0x106
	.byte	0x1a
	.4byte	0x3bf
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x2
	.2byte	0x10d
	.byte	0x24
	.4byte	0x3ba
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x2
	.2byte	0x110
	.byte	0x2c
	.4byte	0x36c
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x2
	.2byte	0x111
	.byte	0x2c
	.4byte	0x36c
	.uleb128 0xc
	.4byte	0x27f
	.4byte	0x434
	.uleb128 0xd
	.4byte	0x86
	.byte	0x7f
	.byte	0
	.uleb128 0x9
	.4byte	0x424
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x2
	.2byte	0x113
	.byte	0x23
	.4byte	0x434
	.uleb128 0xc
	.4byte	0x81
	.4byte	0x451
	.uleb128 0xf
	.byte	0
	.uleb128 0x9
	.4byte	0x446
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x2
	.2byte	0x115
	.byte	0x13
	.4byte	0x451
	.uleb128 0xe
	.4byte	.LASF61
	.byte	0x2
	.2byte	0x116
	.byte	0x13
	.4byte	0x451
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x2
	.2byte	0x117
	.byte	0x13
	.4byte	0x451
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x2
	.2byte	0x118
	.byte	0x13
	.4byte	0x451
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x2
	.2byte	0x11a
	.byte	0x13
	.4byte	0x451
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x2
	.2byte	0x11b
	.byte	0x13
	.4byte	0x451
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x2
	.2byte	0x11c
	.byte	0x13
	.4byte	0x451
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x2
	.2byte	0x11d
	.byte	0x13
	.4byte	0x451
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0x2
	.2byte	0x11e
	.byte	0x13
	.4byte	0x451
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x2
	.2byte	0x11f
	.byte	0x13
	.4byte	0x451
	.uleb128 0x6
	.4byte	0x4d
	.4byte	0x4e7
	.uleb128 0x7
	.4byte	0x4e7
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4f2
	.uleb128 0x10
	.4byte	.LASF122
	.uleb128 0x9
	.4byte	0x4ed
	.uleb128 0xe
	.4byte	.LASF70
	.byte	0x2
	.2byte	0x135
	.byte	0xe
	.4byte	0x504
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4d8
	.uleb128 0x6
	.4byte	0x4d
	.4byte	0x519
	.uleb128 0x7
	.4byte	0x519
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4ed
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0x2
	.2byte	0x136
	.byte	0xe
	.4byte	0x52c
	.uleb128 0x8
	.byte	0x4
	.4byte	0x50a
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF72
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0x2
	.2byte	0x14d
	.byte	0x18
	.4byte	0x546
	.uleb128 0x8
	.byte	0x4
	.4byte	0x54c
	.uleb128 0x6
	.4byte	0xb7
	.4byte	0x55b
	.uleb128 0x7
	.4byte	0x4d
	.byte	0
	.uleb128 0x12
	.4byte	.LASF74
	.byte	0x8
	.byte	0x2
	.2byte	0x14f
	.byte	0x10
	.4byte	0x586
	.uleb128 0x13
	.4byte	.LASF75
	.byte	0x2
	.2byte	0x151
	.byte	0x1c
	.4byte	0x539
	.byte	0
	.uleb128 0x13
	.4byte	.LASF76
	.byte	0x2
	.2byte	0x152
	.byte	0x21
	.4byte	0x586
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x55b
	.uleb128 0x11
	.4byte	.LASF77
	.byte	0x2
	.2byte	0x153
	.byte	0x3
	.4byte	0x55b
	.uleb128 0xe
	.4byte	.LASF78
	.byte	0x2
	.2byte	0x157
	.byte	0x1f
	.4byte	0x5a6
	.uleb128 0x8
	.byte	0x4
	.4byte	0x58c
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF79
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF80
	.uleb128 0xb
	.4byte	.LASF81
	.byte	0x3
	.byte	0x38
	.byte	0x1c
	.4byte	0x86
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF82
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF83
	.uleb128 0x14
	.4byte	.LASF84
	.byte	0x4
	.byte	0x5d
	.byte	0x15
	.4byte	0x5ba
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF85
	.uleb128 0xb
	.4byte	.LASF86
	.byte	0x5
	.byte	0x69
	.byte	0x13
	.4byte	0x5ba
	.uleb128 0x15
	.uleb128 0x8
	.byte	0x4
	.4byte	0x5f3
	.uleb128 0xa
	.byte	0x14
	.byte	0x6
	.byte	0x5d
	.byte	0x9
	.4byte	0x645
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0x6
	.byte	0x5e
	.byte	0x10
	.4byte	0x5e0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0x6
	.byte	0x5f
	.byte	0x10
	.4byte	0xb7
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0x6
	.byte	0x60
	.byte	0x10
	.4byte	0x5e0
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF90
	.byte	0x6
	.byte	0x61
	.byte	0x10
	.4byte	0x5e0
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF91
	.byte	0x6
	.byte	0x62
	.byte	0x10
	.4byte	0x5e0
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.4byte	.LASF92
	.byte	0x6
	.byte	0x63
	.byte	0x3
	.4byte	0x5fa
	.uleb128 0xa
	.byte	0x8
	.byte	0x6
	.byte	0x78
	.byte	0x9
	.4byte	0x675
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0x6
	.byte	0x79
	.byte	0xa
	.4byte	0x67a
	.byte	0
	.uleb128 0x3
	.4byte	.LASF94
	.byte	0x6
	.byte	0x7a
	.byte	0xa
	.4byte	0x5f4
	.byte	0x4
	.byte	0
	.uleb128 0x16
	.4byte	0x5cd
	.uleb128 0x8
	.byte	0x4
	.4byte	0x675
	.uleb128 0xb
	.4byte	.LASF95
	.byte	0x6
	.byte	0x7b
	.byte	0x3
	.4byte	0x651
	.uleb128 0x9
	.4byte	0x680
	.uleb128 0xb
	.4byte	.LASF96
	.byte	0x1
	.byte	0x39
	.byte	0x2d
	.4byte	0x69d
	.uleb128 0x2
	.4byte	.LASF96
	.byte	0x14
	.byte	0x1
	.byte	0x3b
	.byte	0x8
	.4byte	0x6ec
	.uleb128 0x3
	.4byte	.LASF97
	.byte	0x1
	.byte	0x3c
	.byte	0xf
	.4byte	0x5e0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF98
	.byte	0x1
	.byte	0x3d
	.byte	0xf
	.4byte	0xb7
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF99
	.byte	0x1
	.byte	0x3e
	.byte	0xf
	.4byte	0x86
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF100
	.byte	0x1
	.byte	0x3f
	.byte	0xf
	.4byte	0x5e0
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF101
	.byte	0x1
	.byte	0x40
	.byte	0xf
	.4byte	0x86
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.4byte	0x691
	.4byte	0x6fc
	.uleb128 0xd
	.4byte	0x86
	.byte	0x7
	.byte	0
	.uleb128 0x17
	.4byte	.LASF102
	.byte	0x1
	.byte	0x43
	.byte	0x25
	.4byte	0x6ec
	.uleb128 0x5
	.byte	0x3
	.4byte	_aTasks
	.uleb128 0x17
	.4byte	.LASF103
	.byte	0x1
	.byte	0x44
	.byte	0x11
	.4byte	0x86
	.uleb128 0x5
	.byte	0x3
	.4byte	_NumTasks
	.uleb128 0x18
	.4byte	.LASF104
	.byte	0x1
	.byte	0xf2
	.byte	0x1d
	.4byte	0x68c
	.uleb128 0x5
	.byte	0x3
	.4byte	SYSVIEW_X_OS_TraceAPI
	.uleb128 0x19
	.4byte	.LASF112
	.byte	0x1
	.byte	0xdd
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7c0
	.uleb128 0x1a
	.ascii	"Id\000"
	.byte	0x1
	.byte	0xdd
	.byte	0x23
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.4byte	.LASF105
	.byte	0x1
	.byte	0xdd
	.byte	0x2b
	.4byte	0x5e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.4byte	.LASF106
	.byte	0x1
	.byte	0xdd
	.byte	0x36
	.4byte	0x5e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1b
	.4byte	.LASF107
	.byte	0x1
	.byte	0xdd
	.byte	0x41
	.4byte	0x5e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.4byte	.LASF108
	.byte	0x1
	.byte	0xdd
	.byte	0x4c
	.4byte	0x5e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.4byte	.LASF109
	.byte	0x1
	.byte	0xdd
	.byte	0x57
	.4byte	0x5e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.4byte	.LASF110
	.byte	0x1
	.byte	0xde
	.byte	0xb
	.4byte	0x7c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.4byte	.LASF111
	.byte	0x1
	.byte	0xdf
	.byte	0xb
	.4byte	0x7d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xc
	.4byte	0x278
	.4byte	0x7d0
	.uleb128 0xd
	.4byte	0x86
	.byte	0x21
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x278
	.uleb128 0x19
	.4byte	.LASF113
	.byte	0x1
	.byte	0xc9
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x855
	.uleb128 0x1a
	.ascii	"Id\000"
	.byte	0x1
	.byte	0xc9
	.byte	0x23
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.4byte	.LASF105
	.byte	0x1
	.byte	0xc9
	.byte	0x2b
	.4byte	0x5e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.4byte	.LASF106
	.byte	0x1
	.byte	0xc9
	.byte	0x36
	.4byte	0x5e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1b
	.4byte	.LASF107
	.byte	0x1
	.byte	0xc9
	.byte	0x41
	.4byte	0x5e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.4byte	.LASF108
	.byte	0x1
	.byte	0xc9
	.byte	0x4c
	.4byte	0x5e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.4byte	.LASF110
	.byte	0x1
	.byte	0xca
	.byte	0xb
	.4byte	0x855
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.4byte	.LASF111
	.byte	0x1
	.byte	0xcb
	.byte	0xb
	.4byte	0x7d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xc
	.4byte	0x278
	.4byte	0x865
	.uleb128 0xd
	.4byte	0x86
	.byte	0x1c
	.byte	0
	.uleb128 0x19
	.4byte	.LASF114
	.byte	0x1
	.byte	0xb6
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8d6
	.uleb128 0x1b
	.4byte	.LASF87
	.byte	0x1
	.byte	0xb6
	.byte	0x1f
	.4byte	0x5e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.4byte	.LASF88
	.byte	0x1
	.byte	0xb6
	.byte	0x33
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.4byte	.LASF89
	.byte	0x1
	.byte	0xb6
	.byte	0x43
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1b
	.4byte	.LASF90
	.byte	0x1
	.byte	0xb6
	.byte	0x4d
	.4byte	0x5e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.4byte	.LASF91
	.byte	0x1
	.byte	0xb6
	.byte	0x61
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.4byte	.LASF115
	.byte	0x1
	.byte	0xb7
	.byte	0x1b
	.4byte	0x645
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x19
	.4byte	.LASF116
	.byte	0x1
	.byte	0x97
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x945
	.uleb128 0x1b
	.4byte	.LASF97
	.byte	0x1
	.byte	0x97
	.byte	0x1d
	.4byte	0x5e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.4byte	.LASF98
	.byte	0x1
	.byte	0x97
	.byte	0x32
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.4byte	.LASF99
	.byte	0x1
	.byte	0x97
	.byte	0x47
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.4byte	.LASF100
	.byte	0x1
	.byte	0x97
	.byte	0x5e
	.4byte	0x5e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.4byte	.LASF101
	.byte	0x1
	.byte	0x97
	.byte	0x70
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.ascii	"n\000"
	.byte	0x1
	.byte	0x98
	.byte	0xc
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x19
	.4byte	.LASF117
	.byte	0x1
	.byte	0x79
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9a7
	.uleb128 0x1b
	.4byte	.LASF97
	.byte	0x1
	.byte	0x79
	.byte	0x1a
	.4byte	0x5e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1b
	.4byte	.LASF98
	.byte	0x1
	.byte	0x79
	.byte	0x2f
	.4byte	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1b
	.4byte	.LASF99
	.byte	0x1
	.byte	0x79
	.byte	0x44
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.4byte	.LASF100
	.byte	0x1
	.byte	0x79
	.byte	0x5c
	.4byte	0x5e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.4byte	.LASF101
	.byte	0x1
	.byte	0x79
	.byte	0x6e
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF123
	.byte	0x1
	.byte	0x63
	.byte	0xc
	.4byte	0x5cd
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9d1
	.uleb128 0x17
	.4byte	.LASF118
	.byte	0x1
	.byte	0x64
	.byte	0x7
	.4byte	0x5cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF124
	.byte	0x1
	.byte	0x4f
	.byte	0xd
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.ascii	"n\000"
	.byte	0x1
	.byte	0x50
	.byte	0xc
	.4byte	0x86
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
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
	.byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0xf3
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x9f2
	.4byte	0x6fc
	.ascii	"_aTasks\000"
	.4byte	0x70e
	.ascii	"_NumTasks\000"
	.4byte	0x720
	.ascii	"SYSVIEW_X_OS_TraceAPI\000"
	.4byte	0x6fc
	.ascii	"_aTasks\000"
	.4byte	0x70e
	.ascii	"_NumTasks\000"
	.4byte	0x732
	.ascii	"SYSVIEW_RecordU32x5\000"
	.4byte	0x7d6
	.ascii	"SYSVIEW_RecordU32x4\000"
	.4byte	0x865
	.ascii	"SYSVIEW_SendTaskInfo\000"
	.4byte	0x8d6
	.ascii	"SYSVIEW_UpdateTask\000"
	.4byte	0x945
	.ascii	"SYSVIEW_AddTask\000"
	.4byte	0x9a7
	.ascii	"_cbGetTime\000"
	.4byte	0x9d1
	.ascii	"_cbSendTaskList\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x211
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x9f2
	.4byte	0x4d
	.ascii	"int\000"
	.4byte	0x54
	.ascii	"long int\000"
	.4byte	0x25
	.ascii	"__mbstate_s\000"
	.4byte	0x7a
	.ascii	"char\000"
	.4byte	0x86
	.ascii	"unsigned int\000"
	.4byte	0x267
	.ascii	"__RAL_locale_data_t\000"
	.4byte	0x278
	.ascii	"unsigned char\000"
	.4byte	0x360
	.ascii	"__RAL_locale_codeset_t\000"
	.4byte	0x3ae
	.ascii	"__RAL_locale_t\000"
	.4byte	0x3bf
	.ascii	"__locale_s\000"
	.4byte	0x532
	.ascii	"short unsigned int\000"
	.4byte	0x539
	.ascii	"__RAL_error_decoder_fn_t\000"
	.4byte	0x55b
	.ascii	"__RAL_error_decoder_s\000"
	.4byte	0x58c
	.ascii	"__RAL_error_decoder_t\000"
	.4byte	0x5ac
	.ascii	"signed char\000"
	.4byte	0x5b3
	.ascii	"short int\000"
	.4byte	0x5ba
	.ascii	"uint32_t\000"
	.4byte	0x5c6
	.ascii	"long long int\000"
	.4byte	0x5cd
	.ascii	"long long unsigned int\000"
	.4byte	0x5e0
	.ascii	"long unsigned int\000"
	.4byte	0x5e7
	.ascii	"TickType_t\000"
	.4byte	0x645
	.ascii	"SEGGER_SYSVIEW_TASKINFO\000"
	.4byte	0x680
	.ascii	"SEGGER_SYSVIEW_OS_API\000"
	.4byte	0x691
	.ascii	"SYSVIEW_FREERTOS_TASK_STATUS\000"
	.4byte	0x69d
	.ascii	"SYSVIEW_FREERTOS_TASK_STATUS\000"
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
.LASF103:
	.ascii	"_NumTasks\000"
.LASF57:
	.ascii	"__RAL_codeset_ascii\000"
.LASF73:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF102:
	.ascii	"_aTasks\000"
.LASF17:
	.ascii	"p_cs_precedes\000"
.LASF113:
	.ascii	"SYSVIEW_RecordU32x4\000"
.LASF112:
	.ascii	"SYSVIEW_RecordU32x5\000"
.LASF68:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF83:
	.ascii	"long long unsigned int\000"
.LASF119:
	.ascii	"GNU C11 8.2.1 20181213 (release) [gcc-8-branch revi"
	.ascii	"sion 267074] -fmessage-length=0 -mcpu=cortex-m4 -ml"
	.ascii	"ittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16 -mt"
	.ascii	"humb -mtp=soft -munaligned-access -std=gnu11 -g2 -g"
	.ascii	"pubnames -fomit-frame-pointer -fno-dwarf2-cfi-asm -"
	.ascii	"fno-builtin -ffunction-sections -fdata-sections -fs"
	.ascii	"hort-enums -fno-common\000"
.LASF52:
	.ascii	"__mbstate_s\000"
.LASF71:
	.ascii	"__user_get_time_of_day\000"
.LASF84:
	.ascii	"SystemCoreClock\000"
.LASF34:
	.ascii	"date_format\000"
.LASF76:
	.ascii	"next\000"
.LASF32:
	.ascii	"abbrev_month_names\000"
.LASF82:
	.ascii	"long long int\000"
.LASF79:
	.ascii	"signed char\000"
.LASF123:
	.ascii	"_cbGetTime\000"
.LASF55:
	.ascii	"__RAL_global_locale\000"
.LASF36:
	.ascii	"date_time_format\000"
.LASF104:
	.ascii	"SYSVIEW_X_OS_TraceAPI\000"
.LASF42:
	.ascii	"__towupper\000"
.LASF2:
	.ascii	"long int\000"
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
.LASF122:
	.ascii	"timeval\000"
.LASF12:
	.ascii	"mon_grouping\000"
.LASF41:
	.ascii	"__iswctype\000"
.LASF22:
	.ascii	"n_sign_posn\000"
.LASF106:
	.ascii	"Para1\000"
.LASF107:
	.ascii	"Para2\000"
.LASF108:
	.ascii	"Para3\000"
.LASF109:
	.ascii	"Para4\000"
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
.LASF101:
	.ascii	"uStackHighWaterMark\000"
.LASF7:
	.ascii	"grouping\000"
.LASF85:
	.ascii	"long unsigned int\000"
.LASF43:
	.ascii	"__towlower\000"
.LASF124:
	.ascii	"_cbSendTaskList\000"
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
.LASF90:
	.ascii	"StackBase\000"
.LASF72:
	.ascii	"short unsigned int\000"
.LASF96:
	.ascii	"SYSVIEW_FREERTOS_TASK_STATUS\000"
.LASF95:
	.ascii	"SEGGER_SYSVIEW_OS_API\000"
.LASF94:
	.ascii	"pfSendTaskList\000"
.LASF29:
	.ascii	"day_names\000"
.LASF117:
	.ascii	"SYSVIEW_AddTask\000"
.LASF24:
	.ascii	"int_n_cs_precedes\000"
.LASF88:
	.ascii	"sName\000"
.LASF53:
	.ascii	"__locale_s\000"
.LASF51:
	.ascii	"__RAL_locale_t\000"
.LASF35:
	.ascii	"time_format\000"
.LASF100:
	.ascii	"pxStack\000"
.LASF21:
	.ascii	"p_sign_posn\000"
.LASF59:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF75:
	.ascii	"decode\000"
.LASF86:
	.ascii	"TickType_t\000"
.LASF45:
	.ascii	"__mbtowc\000"
.LASF30:
	.ascii	"abbrev_day_names\000"
.LASF19:
	.ascii	"n_cs_precedes\000"
.LASF40:
	.ascii	"__tolower\000"
.LASF97:
	.ascii	"xHandle\000"
.LASF70:
	.ascii	"__user_set_time_of_day\000"
.LASF58:
	.ascii	"__RAL_codeset_utf8\000"
.LASF114:
	.ascii	"SYSVIEW_SendTaskInfo\000"
.LASF54:
	.ascii	"__category\000"
.LASF0:
	.ascii	"__state\000"
.LASF120:
	.ascii	"/home/ignacio/Documents/McGilllSpaceGroup/OBC/cubeM"
	.ascii	"X/SystemView/Src/OS/SEGGER_SYSVIEW_FreeRTOS.c\000"
.LASF37:
	.ascii	"unsigned char\000"
.LASF110:
	.ascii	"aPacket\000"
.LASF93:
	.ascii	"pfGetTime\000"
.LASF60:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF16:
	.ascii	"frac_digits\000"
.LASF80:
	.ascii	"short int\000"
.LASF78:
	.ascii	"__RAL_error_decoder_head\000"
.LASF11:
	.ascii	"mon_thousands_sep\000"
.LASF46:
	.ascii	"__RAL_locale_data_t\000"
.LASF121:
	.ascii	"/home/ignacio/Documents/McGilllSpaceGroup/OBC/cubeM"
	.ascii	"X/disco/EWARM\000"
.LASF81:
	.ascii	"uint32_t\000"
.LASF27:
	.ascii	"int_p_sign_posn\000"
.LASF111:
	.ascii	"pPayload\000"
.LASF3:
	.ascii	"char\000"
.LASF18:
	.ascii	"p_sep_by_space\000"
.LASF118:
	.ascii	"Time\000"
.LASF56:
	.ascii	"__RAL_c_locale\000"
.LASF47:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF116:
	.ascii	"SYSVIEW_UpdateTask\000"
.LASF105:
	.ascii	"Para0\000"
.LASF50:
	.ascii	"codeset\000"
.LASF28:
	.ascii	"int_n_sign_posn\000"
.LASF62:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF38:
	.ascii	"__isctype\000"
.LASF89:
	.ascii	"Prio\000"
.LASF74:
	.ascii	"__RAL_error_decoder_s\000"
.LASF77:
	.ascii	"__RAL_error_decoder_t\000"
.LASF87:
	.ascii	"TaskID\000"
.LASF98:
	.ascii	"pcTaskName\000"
.LASF115:
	.ascii	"TaskInfo\000"
.LASF15:
	.ascii	"int_frac_digits\000"
.LASF99:
	.ascii	"uxCurrentPriority\000"
.LASF31:
	.ascii	"month_names\000"
.LASF26:
	.ascii	"int_n_sep_by_space\000"
.LASF92:
	.ascii	"SEGGER_SYSVIEW_TASKINFO\000"
.LASF67:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF63:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF44:
	.ascii	"__wctomb\000"
.LASF5:
	.ascii	"decimal_point\000"
.LASF91:
	.ascii	"StackSize\000"
	.ident	"GCC: (GNU) 8.2.1 20181213 (release) [gcc-8-branch revision 267074]"
