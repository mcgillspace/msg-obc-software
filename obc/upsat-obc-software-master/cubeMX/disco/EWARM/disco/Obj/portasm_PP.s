# 1 "/home/ignacio/Documents/ecss/obc/upsat-obc-software-master/cubeMX/obc/Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM4F/portasm.s"
# 1 "<built-in>" 1
# 1 "/home/ignacio/Documents/ecss/obc/upsat-obc-software-master/cubeMX/obc/Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM4F/portasm.s" 2
# 70 "/home/ignacio/Documents/ecss/obc/upsat-obc-software-master/cubeMX/obc/Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM4F/portasm.s"
# 1 "./../Inc/FreeRTOSConfig.h" 1
# 91 "./../Inc/FreeRTOSConfig.h"
# 1 "/usr/share/segger_embedded_studio_for_arm_4.16/include/stdint.h" 1 3
# 47 "/usr/share/segger_embedded_studio_for_arm_4.16/include/stdint.h" 3
typedef signed char int8_t;
typedef unsigned char uint8_t;




typedef signed short int16_t;
typedef unsigned short uint16_t;
typedef signed int int32_t;
typedef unsigned int uint32_t;
# 68 "/usr/share/segger_embedded_studio_for_arm_4.16/include/stdint.h" 3
typedef signed long long int64_t;
typedef unsigned long long uint64_t;


typedef int8_t int_least8_t;
typedef int16_t int_least16_t;
typedef int32_t int_least32_t;
typedef int64_t int_least64_t;

typedef uint8_t uint_least8_t;
typedef uint16_t uint_least16_t;
typedef uint32_t uint_least32_t;
typedef uint64_t uint_least64_t;



typedef int32_t int_fast8_t;
typedef int32_t int_fast16_t;
typedef int32_t int_fast32_t;
typedef int64_t int_fast64_t;

typedef uint32_t uint_fast8_t;
typedef uint32_t uint_fast16_t;
typedef uint32_t uint_fast32_t;
typedef uint64_t uint_fast64_t;

typedef int32_t intptr_t;
typedef uint32_t uintptr_t;
# 118 "/usr/share/segger_embedded_studio_for_arm_4.16/include/stdint.h" 3
typedef int64_t intmax_t;
typedef uint64_t uintmax_t;
# 92 "./../Inc/FreeRTOSConfig.h" 2
# 1 "./../Inc/mxconstants.h" 1
# 93 "./../Inc/FreeRTOSConfig.h" 2
 extern uint32_t SystemCoreClock;
# 71 "/home/ignacio/Documents/ecss/obc/upsat-obc-software-master/cubeMX/obc/Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM4F/portasm.s" 2

 RSEG CODE:CODE(2)
 thumb

 EXTERN pxCurrentTCB
 EXTERN vTaskSwitchContext

 PUBLIC PendSV_Handler
 PUBLIC SVC_Handler
 PUBLIC vPortStartFirstTask
 PUBLIC vPortEnableVFP




PendSV_Handler:
 mrs r0, psp
 isb

 ldr r3, =pxCurrentTCB
 ldr r2, [r3]


 tst r14, #0x10
 it eq
 vstmdbeq r0!, {s16-s31}


 stmdb r0!, {r4-r11, r14}


 str r0, [r2]

 stmdb sp!, {r3}
 mov r0, #( 5 << (8 - 4) )
 msr basepri, r0
 dsb
 isb
 bl vTaskSwitchContext
 mov r0, #0
 msr basepri, r0
 ldmia sp!, {r3}


 ldr r1, [r3]
 ldr r0, [r1]


 ldmia r0!, {r4-r11, r14}



 tst r14, #0x10
 it eq
 vldmiaeq r0!, {s16-s31}

 msr psp, r0
 isb







 bx r14




SVC_Handler:

 ldr r3, =pxCurrentTCB
 ldr r1, [r3]
 ldr r0, [r1]

 ldmia r0!, {r4-r11, r14}
 msr psp, r0
 isb
 mov r0, #0
 msr basepri, r0
 bx r14



vPortStartFirstTask

 ldr r0, =0xE000ED08
 ldr r0, [r0]
 ldr r0, [r0]

 msr msp, r0

 cpsie i
 cpsie f
 dsb
 isb
 svc 0



vPortEnableVFP:

 ldr.w r0, =0xE000ED88
 ldr r1, [r0]


 orr r1, r1, #( 0xf << 20 )
 str r1, [r0]
 bx r14



 END
