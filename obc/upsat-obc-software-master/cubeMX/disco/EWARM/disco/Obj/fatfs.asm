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
	.file	"fatfs.c"
	.text
.Ltext0:
	.global	retSD
	.section	.bss.retSD,"aw",%nobits
	.type	retSD, %object
	.size	retSD, 1
retSD:
	.space	1
	.global	SD_Path
	.section	.bss.SD_Path,"aw",%nobits
	.align	2
	.type	SD_Path, %object
	.size	SD_Path, 4
SD_Path:
	.space	4
	.section	.text.MX_FATFS_Init,"ax",%progbits
	.align	1
	.global	MX_FATFS_Init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	MX_FATFS_Init, %function
MX_FATFS_Init:
.LFB126:
	.file 1 "C:\\Users\\Aymar\\Desktop\\MSG\\msg-obc-software\\obc\\upsat-obc-software-master\\cubeMX\\disco\\Src\\fatfs.c"
	.loc 1 44 1
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
.LCFI0:
	.loc 1 46 11
	ldr	r1, .L2
	ldr	r0, .L2+4
	bl	FATFS_LinkDriver
	mov	r3, r0
	mov	r2, r3
	.loc 1 46 9
	ldr	r3, .L2+8
	strb	r2, [r3]
	.loc 1 51 1
	nop
	pop	{r3, pc}
.L3:
	.align	2
.L2:
	.word	SD_Path
	.word	SD_Driver
	.word	retSD
.LFE126:
	.size	MX_FATFS_Init, .-MX_FATFS_Init
	.section	.text.get_fattime,"ax",%progbits
	.align	1
	.global	get_fattime
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_fattime, %function
get_fattime:
.LFB127:
	.loc 1 59 1
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 61 10
	movs	r3, #0
	.loc 1 63 1
	mov	r0, r3
	bx	lr
.LFE127:
	.size	get_fattime, .-get_fattime
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
	.4byte	.LFB126
	.4byte	.LFE126-.LFB126
	.byte	0x4
	.4byte	.LCFI0-.LFB126
	.byte	0xe
	.uleb128 0x8
	.byte	0x83
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB127
	.4byte	.LFE127-.LFB127
	.align	2
.LEFDE2:
	.text
.Letext0:
	.file 2 "./../Middlewares/Third_Party/FatFs/src/integer.h"
	.file 3 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.18/include/stdint.h"
	.file 4 "./../Drivers/CMSIS/Include/core_cm4.h"
	.file 5 "./../Drivers/CMSIS/Device/ST/STM32F4xx/Include/system_stm32f4xx.h"
	.file 6 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.18/include/__crossworks.h"
	.file 7 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 4.18/include/stdio.h"
	.file 8 "./../Middlewares/Third_Party/FatFs/src/diskio.h"
	.file 9 "./../Middlewares/Third_Party/FatFs/src/ff_gen_drv.h"
	.file 10 "./../Middlewares/Third_Party/FatFs/src/drivers/sd_diskio.h"
	.file 11 "./../Inc/fatfs.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x814
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF114
	.byte	0xc
	.4byte	.LASF115
	.4byte	.LASF116
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x2
	.byte	0x10
	.byte	0x17
	.4byte	0x36
	.uleb128 0x3
	.4byte	0x25
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	0x36
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x2
	.byte	0x19
	.byte	0x16
	.4byte	0x63
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.4byte	.LASF7
	.byte	0x2
	.byte	0x1d
	.byte	0x17
	.4byte	0x7d
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF9
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x3
	.byte	0x30
	.byte	0x1c
	.4byte	0x36
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x3
	.byte	0x37
	.byte	0x1c
	.4byte	0x50
	.uleb128 0x6
	.4byte	0x97
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x3
	.byte	0x38
	.byte	0x1c
	.4byte	0x63
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x4
	.2byte	0x744
	.byte	0x19
	.4byte	0xa3
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x5
	.byte	0x4c
	.byte	0x11
	.4byte	0xa8
	.uleb128 0x9
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x8
	.byte	0x6
	.byte	0x7e
	.byte	0x8
	.4byte	0x105
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x6
	.byte	0x7f
	.byte	0x7
	.4byte	0x50
	.byte	0
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x6
	.byte	0x80
	.byte	0x8
	.4byte	0x6a
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	0x50
	.4byte	0x11e
	.uleb128 0xd
	.4byte	0x11e
	.uleb128 0xd
	.4byte	0x63
	.uleb128 0xd
	.4byte	0x130
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x124
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF19
	.uleb128 0x3
	.4byte	0x124
	.uleb128 0xe
	.byte	0x4
	.4byte	0xdd
	.uleb128 0xc
	.4byte	0x50
	.4byte	0x154
	.uleb128 0xd
	.4byte	0x154
	.uleb128 0xd
	.4byte	0x15a
	.uleb128 0xd
	.4byte	0x63
	.uleb128 0xd
	.4byte	0x130
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x63
	.uleb128 0xe
	.byte	0x4
	.4byte	0x12b
	.uleb128 0xf
	.byte	0x58
	.byte	0x6
	.byte	0x86
	.byte	0x9
	.4byte	0x30a
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x6
	.byte	0x88
	.byte	0xf
	.4byte	0x15a
	.byte	0
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x6
	.byte	0x89
	.byte	0xf
	.4byte	0x15a
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x6
	.byte	0x8a
	.byte	0xf
	.4byte	0x15a
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x6
	.byte	0x8c
	.byte	0xf
	.4byte	0x15a
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x6
	.byte	0x8d
	.byte	0xf
	.4byte	0x15a
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x6
	.byte	0x8e
	.byte	0xf
	.4byte	0x15a
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x6
	.byte	0x8f
	.byte	0xf
	.4byte	0x15a
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x6
	.byte	0x90
	.byte	0xf
	.4byte	0x15a
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x6
	.byte	0x91
	.byte	0xf
	.4byte	0x15a
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x6
	.byte	0x92
	.byte	0xf
	.4byte	0x15a
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x6
	.byte	0x94
	.byte	0x8
	.4byte	0x124
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x6
	.byte	0x95
	.byte	0x8
	.4byte	0x124
	.byte	0x29
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x6
	.byte	0x96
	.byte	0x8
	.4byte	0x124
	.byte	0x2a
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x6
	.byte	0x97
	.byte	0x8
	.4byte	0x124
	.byte	0x2b
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x6
	.byte	0x98
	.byte	0x8
	.4byte	0x124
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x6
	.byte	0x99
	.byte	0x8
	.4byte	0x124
	.byte	0x2d
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x6
	.byte	0x9a
	.byte	0x8
	.4byte	0x124
	.byte	0x2e
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x6
	.byte	0x9b
	.byte	0x8
	.4byte	0x124
	.byte	0x2f
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x6
	.byte	0x9c
	.byte	0x8
	.4byte	0x124
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x6
	.byte	0x9d
	.byte	0x8
	.4byte	0x124
	.byte	0x31
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x6
	.byte	0x9e
	.byte	0x8
	.4byte	0x124
	.byte	0x32
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x6
	.byte	0x9f
	.byte	0x8
	.4byte	0x124
	.byte	0x33
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x6
	.byte	0xa0
	.byte	0x8
	.4byte	0x124
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x6
	.byte	0xa1
	.byte	0x8
	.4byte	0x124
	.byte	0x35
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x6
	.byte	0xa6
	.byte	0xf
	.4byte	0x15a
	.byte	0x38
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x6
	.byte	0xa7
	.byte	0xf
	.4byte	0x15a
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x6
	.byte	0xa8
	.byte	0xf
	.4byte	0x15a
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x6
	.byte	0xa9
	.byte	0xf
	.4byte	0x15a
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x6
	.byte	0xaa
	.byte	0xf
	.4byte	0x15a
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x6
	.byte	0xab
	.byte	0xf
	.4byte	0x15a
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x6
	.byte	0xac
	.byte	0xf
	.4byte	0x15a
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x6
	.byte	0xad
	.byte	0xf
	.4byte	0x15a
	.byte	0x54
	.byte	0
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0x6
	.byte	0xae
	.byte	0x3
	.4byte	0x160
	.uleb128 0x3
	.4byte	0x30a
	.uleb128 0xf
	.byte	0x20
	.byte	0x6
	.byte	0xc4
	.byte	0x9
	.4byte	0x38d
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x6
	.byte	0xc6
	.byte	0x9
	.4byte	0x3a1
	.byte	0
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x6
	.byte	0xc7
	.byte	0x9
	.4byte	0x3b6
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x6
	.byte	0xc8
	.byte	0x9
	.4byte	0x3b6
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x6
	.byte	0xcb
	.byte	0x9
	.4byte	0x3d0
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x6
	.byte	0xcc
	.byte	0xa
	.4byte	0x3e5
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x6
	.byte	0xcd
	.byte	0xa
	.4byte	0x3e5
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x6
	.byte	0xd0
	.byte	0x9
	.4byte	0x3eb
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x6
	.byte	0xd1
	.byte	0x9
	.4byte	0x3f1
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.4byte	0x50
	.4byte	0x3a1
	.uleb128 0xd
	.4byte	0x50
	.uleb128 0xd
	.4byte	0x50
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x38d
	.uleb128 0xc
	.4byte	0x50
	.4byte	0x3b6
	.uleb128 0xd
	.4byte	0x50
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x3a7
	.uleb128 0xc
	.4byte	0x50
	.4byte	0x3d0
	.uleb128 0xd
	.4byte	0x6a
	.uleb128 0xd
	.4byte	0x50
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x3bc
	.uleb128 0xc
	.4byte	0x6a
	.4byte	0x3e5
	.uleb128 0xd
	.4byte	0x6a
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x3d6
	.uleb128 0xe
	.byte	0x4
	.4byte	0x105
	.uleb128 0xe
	.byte	0x4
	.4byte	0x136
	.uleb128 0x2
	.4byte	.LASF61
	.byte	0x6
	.byte	0xd2
	.byte	0x3
	.4byte	0x31b
	.uleb128 0x3
	.4byte	0x3f7
	.uleb128 0xf
	.byte	0xc
	.byte	0x6
	.byte	0xd4
	.byte	0x9
	.4byte	0x439
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x6
	.byte	0xd5
	.byte	0xf
	.4byte	0x15a
	.byte	0
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x6
	.byte	0xd6
	.byte	0x25
	.4byte	0x439
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x6
	.byte	0xd7
	.byte	0x28
	.4byte	0x43f
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x316
	.uleb128 0xe
	.byte	0x4
	.4byte	0x403
	.uleb128 0x2
	.4byte	.LASF65
	.byte	0x6
	.byte	0xd8
	.byte	0x3
	.4byte	0x408
	.uleb128 0x3
	.4byte	0x445
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x14
	.byte	0x6
	.byte	0xdc
	.byte	0x10
	.4byte	0x471
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0x6
	.byte	0xdd
	.byte	0x20
	.4byte	0x471
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0x481
	.4byte	0x481
	.uleb128 0x11
	.4byte	0x63
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x451
	.uleb128 0x7
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x106
	.byte	0x1a
	.4byte	0x456
	.uleb128 0x7
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x10d
	.byte	0x24
	.4byte	0x451
	.uleb128 0x7
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x110
	.byte	0x2c
	.4byte	0x403
	.uleb128 0x7
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x111
	.byte	0x2c
	.4byte	0x403
	.uleb128 0x10
	.4byte	0x3d
	.4byte	0x4cb
	.uleb128 0x11
	.4byte	0x63
	.byte	0x7f
	.byte	0
	.uleb128 0x3
	.4byte	0x4bb
	.uleb128 0x7
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x113
	.byte	0x23
	.4byte	0x4cb
	.uleb128 0x10
	.4byte	0x12b
	.4byte	0x4e8
	.uleb128 0x12
	.byte	0
	.uleb128 0x3
	.4byte	0x4dd
	.uleb128 0x7
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x115
	.byte	0x13
	.4byte	0x4e8
	.uleb128 0x7
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x116
	.byte	0x13
	.4byte	0x4e8
	.uleb128 0x7
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x117
	.byte	0x13
	.4byte	0x4e8
	.uleb128 0x7
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x118
	.byte	0x13
	.4byte	0x4e8
	.uleb128 0x7
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x11a
	.byte	0x13
	.4byte	0x4e8
	.uleb128 0x7
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x11b
	.byte	0x13
	.4byte	0x4e8
	.uleb128 0x7
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x11c
	.byte	0x13
	.4byte	0x4e8
	.uleb128 0x7
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x11d
	.byte	0x13
	.4byte	0x4e8
	.uleb128 0x7
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x11e
	.byte	0x13
	.4byte	0x4e8
	.uleb128 0x7
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x11f
	.byte	0x13
	.4byte	0x4e8
	.uleb128 0xc
	.4byte	0x50
	.4byte	0x57e
	.uleb128 0xd
	.4byte	0x57e
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x589
	.uleb128 0x13
	.4byte	.LASF93
	.uleb128 0x3
	.4byte	0x584
	.uleb128 0x7
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x135
	.byte	0xe
	.4byte	0x59b
	.uleb128 0xe
	.byte	0x4
	.4byte	0x56f
	.uleb128 0xc
	.4byte	0x50
	.4byte	0x5b0
	.uleb128 0xd
	.4byte	0x5b0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x584
	.uleb128 0x7
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x136
	.byte	0xe
	.4byte	0x5c3
	.uleb128 0xe
	.byte	0x4
	.4byte	0x5a1
	.uleb128 0x14
	.4byte	.LASF86
	.byte	0x6
	.2byte	0x14d
	.byte	0x18
	.4byte	0x5d6
	.uleb128 0xe
	.byte	0x4
	.4byte	0x5dc
	.uleb128 0xc
	.4byte	0x15a
	.4byte	0x5eb
	.uleb128 0xd
	.4byte	0x50
	.byte	0
	.uleb128 0x15
	.4byte	.LASF87
	.byte	0x8
	.byte	0x6
	.2byte	0x14f
	.byte	0x10
	.4byte	0x616
	.uleb128 0x16
	.4byte	.LASF88
	.byte	0x6
	.2byte	0x151
	.byte	0x1c
	.4byte	0x5c9
	.byte	0
	.uleb128 0x16
	.4byte	.LASF89
	.byte	0x6
	.2byte	0x152
	.byte	0x21
	.4byte	0x616
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x5eb
	.uleb128 0x14
	.4byte	.LASF90
	.byte	0x6
	.2byte	0x153
	.byte	0x3
	.4byte	0x5eb
	.uleb128 0x7
	.4byte	.LASF91
	.byte	0x6
	.2byte	0x157
	.byte	0x1f
	.4byte	0x636
	.uleb128 0xe
	.byte	0x4
	.4byte	0x61c
	.uleb128 0x14
	.4byte	.LASF92
	.byte	0x7
	.2byte	0x317
	.byte	0x1b
	.4byte	0x649
	.uleb128 0x13
	.4byte	.LASF94
	.uleb128 0x7
	.4byte	.LASF95
	.byte	0x7
	.2byte	0x31b
	.byte	0xe
	.4byte	0x65b
	.uleb128 0xe
	.byte	0x4
	.4byte	0x63c
	.uleb128 0x7
	.4byte	.LASF96
	.byte	0x7
	.2byte	0x31c
	.byte	0xe
	.4byte	0x65b
	.uleb128 0x7
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x31d
	.byte	0xe
	.4byte	0x65b
	.uleb128 0xe
	.byte	0x4
	.4byte	0x25
	.uleb128 0x2
	.4byte	.LASF98
	.byte	0x8
	.byte	0x13
	.byte	0xe
	.4byte	0x25
	.uleb128 0x17
	.byte	0x7
	.byte	0x1
	.4byte	0x36
	.byte	0x8
	.byte	0x16
	.byte	0xe
	.4byte	0x6ba
	.uleb128 0x18
	.4byte	.LASF99
	.byte	0
	.uleb128 0x18
	.4byte	.LASF100
	.byte	0x1
	.uleb128 0x18
	.4byte	.LASF101
	.byte	0x2
	.uleb128 0x18
	.4byte	.LASF102
	.byte	0x3
	.uleb128 0x18
	.4byte	.LASF103
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF104
	.byte	0x8
	.byte	0x1c
	.byte	0x3
	.4byte	0x68d
	.uleb128 0xf
	.byte	0x14
	.byte	0x9
	.byte	0x2d
	.byte	0x9
	.4byte	0x711
	.uleb128 0xb
	.4byte	.LASF105
	.byte	0x9
	.byte	0x2f
	.byte	0xd
	.4byte	0x720
	.byte	0
	.uleb128 0xb
	.4byte	.LASF106
	.byte	0x9
	.byte	0x30
	.byte	0xd
	.4byte	0x720
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF107
	.byte	0x9
	.byte	0x31
	.byte	0xd
	.4byte	0x744
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF108
	.byte	0x9
	.byte	0x33
	.byte	0xd
	.4byte	0x76e
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF109
	.byte	0x9
	.byte	0x36
	.byte	0xd
	.4byte	0x78d
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.4byte	0x681
	.4byte	0x720
	.uleb128 0xd
	.4byte	0x25
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x711
	.uleb128 0xc
	.4byte	0x6ba
	.4byte	0x744
	.uleb128 0xd
	.4byte	0x25
	.uleb128 0xd
	.4byte	0x67b
	.uleb128 0xd
	.4byte	0x71
	.uleb128 0xd
	.4byte	0x57
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x726
	.uleb128 0xc
	.4byte	0x6ba
	.4byte	0x768
	.uleb128 0xd
	.4byte	0x25
	.uleb128 0xd
	.4byte	0x768
	.uleb128 0xd
	.4byte	0x71
	.uleb128 0xd
	.4byte	0x57
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x31
	.uleb128 0xe
	.byte	0x4
	.4byte	0x74a
	.uleb128 0xc
	.4byte	0x6ba
	.4byte	0x78d
	.uleb128 0xd
	.4byte	0x25
	.uleb128 0xd
	.4byte	0x25
	.uleb128 0xd
	.4byte	0xdb
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x774
	.uleb128 0x2
	.4byte	.LASF110
	.byte	0x9
	.byte	0x39
	.byte	0x2
	.4byte	0x6c6
	.uleb128 0x8
	.4byte	.LASF111
	.byte	0xa
	.byte	0x24
	.byte	0x1b
	.4byte	0x793
	.uleb128 0x8
	.4byte	.LASF112
	.byte	0xb
	.byte	0x31
	.byte	0x10
	.4byte	0x8b
	.uleb128 0x10
	.4byte	0x124
	.4byte	0x7c7
	.uleb128 0x11
	.4byte	0x63
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF113
	.byte	0xb
	.byte	0x32
	.byte	0xd
	.4byte	0x7b7
	.uleb128 0x19
	.4byte	0x7ab
	.byte	0x1
	.byte	0x24
	.byte	0x9
	.uleb128 0x5
	.byte	0x3
	.4byte	retSD
	.uleb128 0x19
	.4byte	0x7c7
	.byte	0x1
	.byte	0x25
	.byte	0x6
	.uleb128 0x5
	.byte	0x3
	.4byte	SD_Path
	.uleb128 0x1a
	.4byte	.LASF117
	.byte	0x1
	.byte	0x3a
	.byte	0x7
	.4byte	0x71
	.4byte	.LFB127
	.4byte	.LFE127-.LFB127
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.4byte	.LASF118
	.byte	0x1
	.byte	0x2b
	.byte	0x6
	.4byte	.LFB126
	.4byte	.LFE126-.LFB126
	.uleb128 0x1
	.byte	0x9c
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
	.uleb128 0x3
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xe
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x18
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x5c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x818
	.4byte	0x7d3
	.ascii	"retSD\000"
	.4byte	0x7e1
	.ascii	"SD_Path\000"
	.4byte	0x7d3
	.ascii	"retSD\000"
	.4byte	0x7e1
	.ascii	"SD_Path\000"
	.4byte	0x7ef
	.ascii	"get_fattime\000"
	.4byte	0x805
	.ascii	"MX_FATFS_Init\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x1f5
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x818
	.4byte	0x36
	.ascii	"unsigned char\000"
	.4byte	0x25
	.ascii	"BYTE\000"
	.4byte	0x42
	.ascii	"short int\000"
	.4byte	0x49
	.ascii	"short unsigned int\000"
	.4byte	0x50
	.ascii	"int\000"
	.4byte	0x63
	.ascii	"unsigned int\000"
	.4byte	0x57
	.ascii	"UINT\000"
	.4byte	0x6a
	.ascii	"long int\000"
	.4byte	0x7d
	.ascii	"long unsigned int\000"
	.4byte	0x71
	.ascii	"DWORD\000"
	.4byte	0x84
	.ascii	"signed char\000"
	.4byte	0x8b
	.ascii	"uint8_t\000"
	.4byte	0x97
	.ascii	"int32_t\000"
	.4byte	0xa8
	.ascii	"uint32_t\000"
	.4byte	0xb4
	.ascii	"long long int\000"
	.4byte	0xbb
	.ascii	"long long unsigned int\000"
	.4byte	0xdd
	.ascii	"__mbstate_s\000"
	.4byte	0x124
	.ascii	"char\000"
	.4byte	0x30a
	.ascii	"__RAL_locale_data_t\000"
	.4byte	0x3f7
	.ascii	"__RAL_locale_codeset_t\000"
	.4byte	0x445
	.ascii	"__RAL_locale_t\000"
	.4byte	0x456
	.ascii	"__locale_s\000"
	.4byte	0x5c9
	.ascii	"__RAL_error_decoder_fn_t\000"
	.4byte	0x5eb
	.ascii	"__RAL_error_decoder_s\000"
	.4byte	0x61c
	.ascii	"__RAL_error_decoder_t\000"
	.4byte	0x63c
	.ascii	"FILE\000"
	.4byte	0x681
	.ascii	"DSTATUS\000"
	.4byte	0x6ba
	.ascii	"DRESULT\000"
	.4byte	0x793
	.ascii	"Diskio_drvTypeDef\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB126
	.4byte	.LFE126-.LFB126
	.4byte	.LFB127
	.4byte	.LFE127-.LFB127
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB126
	.4byte	.LFE126
	.4byte	.LFB127
	.4byte	.LFE127
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF33:
	.ascii	"p_sep_by_space\000"
.LASF66:
	.ascii	"__mbstate_s\000"
.LASF100:
	.ascii	"RES_ERROR\000"
.LASF71:
	.ascii	"__RAL_codeset_ascii\000"
.LASF24:
	.ascii	"currency_symbol\000"
.LASF28:
	.ascii	"positive_sign\000"
.LASF41:
	.ascii	"int_n_sep_by_space\000"
.LASF99:
	.ascii	"RES_OK\000"
.LASF1:
	.ascii	"short int\000"
.LASF67:
	.ascii	"__locale_s\000"
.LASF18:
	.ascii	"__wchar\000"
.LASF35:
	.ascii	"n_sep_by_space\000"
.LASF73:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF55:
	.ascii	"__tolower\000"
.LASF37:
	.ascii	"n_sign_posn\000"
.LASF13:
	.ascii	"long long int\000"
.LASF63:
	.ascii	"data\000"
.LASF52:
	.ascii	"__RAL_locale_data_t\000"
.LASF3:
	.ascii	"BYTE\000"
.LASF76:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF32:
	.ascii	"p_cs_precedes\000"
.LASF10:
	.ascii	"uint8_t\000"
.LASF43:
	.ascii	"int_n_sign_posn\000"
.LASF72:
	.ascii	"__RAL_codeset_utf8\000"
.LASF115:
	.ascii	"C:\\Users\\Aymar\\Desktop\\MSG\\msg-obc-software\\o"
	.ascii	"bc\\upsat-obc-software-master\\cubeMX\\disco\\Src\\"
	.ascii	"fatfs.c\000"
.LASF40:
	.ascii	"int_p_sep_by_space\000"
.LASF87:
	.ascii	"__RAL_error_decoder_s\000"
.LASF90:
	.ascii	"__RAL_error_decoder_t\000"
.LASF50:
	.ascii	"time_format\000"
.LASF20:
	.ascii	"decimal_point\000"
.LASF46:
	.ascii	"month_names\000"
.LASF97:
	.ascii	"stderr\000"
.LASF64:
	.ascii	"codeset\000"
.LASF47:
	.ascii	"abbrev_month_names\000"
.LASF68:
	.ascii	"__category\000"
.LASF22:
	.ascii	"grouping\000"
.LASF102:
	.ascii	"RES_NOTRDY\000"
.LASF58:
	.ascii	"__towlower\000"
.LASF6:
	.ascii	"long int\000"
.LASF101:
	.ascii	"RES_WRPRT\000"
.LASF83:
	.ascii	"__RAL_data_empty_string\000"
.LASF75:
	.ascii	"__RAL_c_locale_abbrev_day_names\000"
.LASF4:
	.ascii	"UINT\000"
.LASF106:
	.ascii	"disk_status\000"
.LASF107:
	.ascii	"disk_read\000"
.LASF105:
	.ascii	"disk_initialize\000"
.LASF70:
	.ascii	"__RAL_c_locale\000"
.LASF29:
	.ascii	"negative_sign\000"
.LASF88:
	.ascii	"decode\000"
.LASF98:
	.ascii	"DSTATUS\000"
.LASF7:
	.ascii	"DWORD\000"
.LASF36:
	.ascii	"p_sign_posn\000"
.LASF86:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF42:
	.ascii	"int_p_sign_posn\000"
.LASF84:
	.ascii	"__user_set_time_of_day\000"
.LASF0:
	.ascii	"unsigned char\000"
.LASF91:
	.ascii	"__RAL_error_decoder_head\000"
.LASF80:
	.ascii	"__RAL_data_utf8_space\000"
.LASF9:
	.ascii	"signed char\000"
.LASF14:
	.ascii	"long long unsigned int\000"
.LASF12:
	.ascii	"uint32_t\000"
.LASF27:
	.ascii	"mon_grouping\000"
.LASF5:
	.ascii	"unsigned int\000"
.LASF44:
	.ascii	"day_names\000"
.LASF111:
	.ascii	"SD_Driver\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF48:
	.ascii	"am_pm_indicator\000"
.LASF57:
	.ascii	"__towupper\000"
.LASF23:
	.ascii	"int_curr_symbol\000"
.LASF81:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF30:
	.ascii	"int_frac_digits\000"
.LASF25:
	.ascii	"mon_decimal_point\000"
.LASF109:
	.ascii	"disk_ioctl\000"
.LASF45:
	.ascii	"abbrev_day_names\000"
.LASF19:
	.ascii	"char\000"
.LASF85:
	.ascii	"__user_get_time_of_day\000"
.LASF11:
	.ascii	"int32_t\000"
.LASF34:
	.ascii	"n_cs_precedes\000"
.LASF51:
	.ascii	"date_time_format\000"
.LASF104:
	.ascii	"DRESULT\000"
.LASF16:
	.ascii	"SystemCoreClock\000"
.LASF62:
	.ascii	"name\000"
.LASF112:
	.ascii	"retSD\000"
.LASF92:
	.ascii	"FILE\000"
.LASF2:
	.ascii	"short unsigned int\000"
.LASF31:
	.ascii	"frac_digits\000"
.LASF77:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF114:
	.ascii	"GNU C99 8.2.1 20181213 (release) [gcc-8-branch revi"
	.ascii	"sion 267074] -fmessage-length=0 -mcpu=cortex-m4 -ml"
	.ascii	"ittle-endian -mfloat-abi=soft -mthumb -mtp=soft -mu"
	.ascii	"naligned-access -std=gnu99 -g2 -gpubnames -fomit-fr"
	.ascii	"ame-pointer -fno-dwarf2-cfi-asm -fno-builtin -ffunc"
	.ascii	"tion-sections -fdata-sections -fshort-enums -fno-co"
	.ascii	"mmon\000"
.LASF69:
	.ascii	"__RAL_global_locale\000"
.LASF108:
	.ascii	"disk_write\000"
.LASF118:
	.ascii	"MX_FATFS_Init\000"
.LASF113:
	.ascii	"SD_Path\000"
.LASF15:
	.ascii	"ITM_RxBuffer\000"
.LASF93:
	.ascii	"timeval\000"
.LASF74:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF94:
	.ascii	"__RAL_FILE\000"
.LASF61:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF95:
	.ascii	"stdin\000"
.LASF117:
	.ascii	"get_fattime\000"
.LASF78:
	.ascii	"__RAL_data_utf8_period\000"
.LASF60:
	.ascii	"__mbtowc\000"
.LASF65:
	.ascii	"__RAL_locale_t\000"
.LASF49:
	.ascii	"date_format\000"
.LASF54:
	.ascii	"__toupper\000"
.LASF79:
	.ascii	"__RAL_data_utf8_comma\000"
.LASF26:
	.ascii	"mon_thousands_sep\000"
.LASF21:
	.ascii	"thousands_sep\000"
.LASF39:
	.ascii	"int_n_cs_precedes\000"
.LASF116:
	.ascii	"C:\\Users\\Aymar\\Desktop\\MSG\\msg-obc-software\\o"
	.ascii	"bc\\upsat-obc-software-master\\cubeMX\\disco\\EWARM"
	.ascii	"\000"
.LASF53:
	.ascii	"__isctype\000"
.LASF17:
	.ascii	"__state\000"
.LASF103:
	.ascii	"RES_PARERR\000"
.LASF110:
	.ascii	"Diskio_drvTypeDef\000"
.LASF82:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF38:
	.ascii	"int_p_cs_precedes\000"
.LASF56:
	.ascii	"__iswctype\000"
.LASF59:
	.ascii	"__wctomb\000"
.LASF96:
	.ascii	"stdout\000"
.LASF89:
	.ascii	"next\000"
	.ident	"GCC: (GNU) 8.2.1 20181213 (release) [gcc-8-branch revision 267074]"
