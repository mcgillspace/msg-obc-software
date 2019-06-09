# 1 "/home/ignacio/Documents/SEGGER Embedded Studio for ARM Projects/Executable_1/crt0.s"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/ignacio/Documents/SEGGER Embedded Studio for ARM Projects/Executable_1/crt0.s"
# 84 "/home/ignacio/Documents/SEGGER Embedded Studio for ARM Projects/Executable_1/crt0.s"
  .section .init, "ax"
  .code 32
  .balign 4
# 96 "/home/ignacio/Documents/SEGGER Embedded Studio for ARM Projects/Executable_1/crt0.s"
  .weak _start
  .global __start
  .extern main
  .global exit
  .weak exit
# 110 "/home/ignacio/Documents/SEGGER Embedded Studio for ARM Projects/Executable_1/crt0.s"
_start:
__start:
  mrs r0, cpsr
  bic r0, r0, #0x1F


  orr r1, r0, #0x1B
  msr cpsr_cxsf, r1
  ldr sp, =__stack_und_end__

  bic sp, sp, #0x7


  orr r1, r0, #0x17
  msr cpsr_cxsf, r1
  ldr sp, =__stack_abt_end__

  bic sp, sp, #0x7


  orr r1, r0, #0x12
  msr cpsr_cxsf, r1
  ldr sp, =__stack_irq_end__

  bic sp, sp, #0x7


  orr r1, r0, #0x11
  msr cpsr_cxsf, r1
  ldr sp, =__stack_fiq_end__

  bic sp, sp, #0x7


  orr r1, r0, #0x13
  msr cpsr_cxsf, r1
  ldr sp, =__stack_svc_end__

  bic sp, sp, #0x7
# 162 "/home/ignacio/Documents/SEGGER Embedded Studio for ARM Projects/Executable_1/crt0.s"
  orr r1, r0, #0x1F
  msr cpsr_cxsf, r1
  ldr sp, =__stack_end__

  bic sp, sp, #0x7
# 193 "/home/ignacio/Documents/SEGGER Embedded Studio for ARM Projects/Executable_1/crt0.s"
  ldr r0, =__data_load_start__
  ldr r1, =__data_start__
  ldr r2, =__data_end__
  bl memory_copy
  ldr r0, =__text_load_start__
  ldr r1, =__text_start__
  ldr r2, =__text_end__
  bl memory_copy
  ldr r0, =__fast_load_start__
  ldr r1, =__fast_start__
  ldr r2, =__fast_end__
  bl memory_copy
  ldr r0, =__ctors_load_start__
  ldr r1, =__ctors_start__
  ldr r2, =__ctors_end__
  bl memory_copy
  ldr r0, =__dtors_load_start__
  ldr r1, =__dtors_start__
  ldr r2, =__dtors_end__
  bl memory_copy
  ldr r0, =__rodata_load_start__
  ldr r1, =__rodata_start__
  ldr r2, =__rodata_end__
  bl memory_copy
  ldr r0, =__tdata_load_start__
  ldr r1, =__tdata_start__
  ldr r2, =__tdata_end__
  bl memory_copy
# 237 "/home/ignacio/Documents/SEGGER Embedded Studio for ARM Projects/Executable_1/crt0.s"
  ldr r0, =__bss_start__
  ldr r1, =__bss_end__
  mov r2, #0
  bl memory_set
  ldr r0, =__tbss_start__
  ldr r1, =__tbss_end__
  mov r2, #0
  bl memory_set
# 253 "/home/ignacio/Documents/SEGGER Embedded Studio for ARM Projects/Executable_1/crt0.s"
  ldr r0, = __heap_start__
  ldr r1, = __heap_end__
  sub r1, r1, r0
  cmp r1, #8
  movge r2, #0
  strge r2, [r0], #+4
  strge r1, [r0]
# 272 "/home/ignacio/Documents/SEGGER Embedded Studio for ARM Projects/Executable_1/crt0.s"
  ldr r0, =__ctors_start__
  ldr r1, =__ctors_end__
ctor_loop:
  cmp r0, r1
  beq ctor_end
  ldr r2, [r0], #+4
  stmfd sp!, {r0-r1}
  mov lr, pc



  bx r2

  ldmfd sp!, {r0-r1}
  b ctor_loop
ctor_end:

  .type start, function
start:
# 304 "/home/ignacio/Documents/SEGGER Embedded Studio for ARM Projects/Executable_1/crt0.s"
  mov r0, #0
  mov r1, #0

  ldr r2, =main
  mov lr, pc



  bx r2


exit:
# 359 "/home/ignacio/Documents/SEGGER Embedded Studio for ARM Projects/Executable_1/crt0.s"
exit_loop:
  b exit_loop

memory_copy:
  cmp r0, r1
  moveq pc, lr
  subs r2, r2, r1
  moveq pc, lr


  orr r3, r0, r1
  orr r3, r3, r2
  tst r3, #0x3
  bne 2f

1:
  ldr r3, [r0], #+4
  str r3, [r1], #+4
  subs r2, r2, #4
  bne 1b
  mov pc, lr

2:
  ldrb r3, [r0], #+1
  strb r3, [r1], #+1
  subs r2, r2, #1
  bne 2b
  mov pc, lr

memory_set:
  cmp r0, r1
  moveq pc, lr
  strb r2, [r0], #1
  b memory_set



.macro HELPER helper_name
  .section .text.\helper_name, "ax", %progbits
  .balign 4
  .type \helper_name, function
  .global \helper_name
  .weak \helper_name
\helper_name:
.endm

HELPER __aeabi_read_tp
  ldr r0, =__tbss_start__-8
  bx lr
HELPER abort
  b .
HELPER __assert
  b .
HELPER __aeabi_assert
  b .
HELPER __sync_synchronize
  bx lr
HELPER __getchar
  b debug_getchar
HELPER __putchar
  b debug_putchar
HELPER __open
  b debug_fopen
HELPER __close
  b debug_fclose
HELPER __write
  mov r3, r0
  mov r0, r1
  mov r1, #1
  b debug_fwrite
HELPER __read
  mov r3, r0
  mov r0, r1
  mov r1, #1
  b debug_fread
HELPER __seek
  push {r4, lr}
  mov r4, r0
  bl debug_fseek
  cmp r0, #0
  bne 1f
  mov r0, r4
  bl debug_ftell
  b 2f
1:
  ldr r0, =-1
2:
  pop {r4, lr}
  bx lr

  .section .bss.__user_locale_name_buffer, "aw", %nobits
  .global __user_locale_name_buffer
  .weak __user_locale_name_buffer
  __user_locale_name_buffer:
  .word 0x0
# 462 "/home/ignacio/Documents/SEGGER Embedded Studio for ARM Projects/Executable_1/crt0.s"
  .section .stack, "wa", %nobits
  .section .stack_abt, "wa", %nobits
  .section .stack_irq, "wa", %nobits
  .section .stack_fiq, "wa", %nobits
  .section .stack_svc, "wa", %nobits
  .section .stack_und, "wa", %nobits
  .section .heap, "wa", %nobits
