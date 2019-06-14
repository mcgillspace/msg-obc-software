# msg-obc-software
Segger development for the OBC executable

13/06/2019 - OBC 0.1
Compilation has begun to yield fruit. The build is generating .o files, meaning we are nearing the final stages of clean up to obtain a binary file. After this, we may need to perform tests and modify the binary accordingly.

14/06/2019 - OBC 0.2
Managed to get through the Floating Point Unit errors on files "arm_abs_q15.c", "arm_abs_q31.c", "arm_add_f32.c", and "arm_abs_f32.c" by defining
`
#ifndef __FPU_PRESENT 
  #define __FPU_PRESENT 1 
#endif
`
inside the file "core_cm4.h", right below
`
#ifndef __CORE_CM4_H_GENERIC 
#define __CORE_CM4_H_GENERIC
`

This helped us compile more than 500 files, thus the size of the zip will be larger by that amount of files.
Regarding errors, I am now getting "Conflicting types for 'HAL_DMA_PollForTransfer' " in the file "stm32f4xx_hal_dma.c". I am investigating how to proceed from here

Note that the compression has been changed from '.zip' to '.7z' as the resulting file is smaller.
