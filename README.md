# msg-obc-software
Segger development for the OBC executable

13/06/2019 - OBC 0.1 Compilation has begun to yield fruit. The build is generating .o files, meaning we are nearing the final stages of clean up to obtain a binary file. After this, we may need to perform tests and modify the binary accordingly.

14/06/2019 - OBC 0.2 Managed to get through the Floating Point Unit errors on files "arm_abs_q15.c", "arm_abs_q31.c", "arm_add_f32.c", and "arm_abs_f32.c" by defining #ifndef __FPU_PRESENT #define __FPU_PRESENT 1 #endif inside the file "core_cm4.h", right below #ifndef __CORE_CM4_H_GENERIC #define __CORE_CM4_H_GENERIC

This helped us compile more than 500 files, thus the size of the zip will be larger by that amount of files. Regarding errors, I am now getting "Conflicting types for 'HAL_DMA_PollForTransfer' " in the file "stm32f4xx_hal_dma.c". I am investigating how to proceed from here

Note that the compression has been changed from '.zip' to '.7z' as the resulting file is smaller.

14/06/2019 - OBC 0.3 Changed varible type of the second parameter in the function HAL_StatusTypeDef HAL_DMA_PollTransfer(..., ..., ...) from uint32_t to HAL_DMA_LevelCompleteTypeDef inside the file "stm32f4xx_hal_dma.c", which removed the type error we had. We also had errors stating the following values were undeclared: HAL_DMA_STATE_BUSY_MEM0, HAL_DMA_STATE_BUSY_MEM1, HAL_DMA_STATE_READY_HALF_MEM0, HAL_DMA_STATE_READY_HALF_MEM1, HAL_DMA_STATE_READY_MEM0, HAL_DMA_STATE_READY_MEM1 we followed suit and declared them correspondingly to what was declared at the end of each variable name. This compiled 100 more files. Now, we are encountering 27 errors in the file 'stm32f4xx_hal_iwdg.c' and are working on handling them.

17/06/2019 - OBC 0.4 We are now compiling the main.c file and other files connected to it. As of right now, we have an error arising from a function where the expression implemented is not being read correctly, maybe due to an extra variable type declaration, which in turn confuses the compiler. We also had a duplicate declaration of NULL which apparently was fixed by #defining a new variable with NULL value, inside the task.h file. We also removed extra parenthesis from xTaskGenerate() as they were preventing the pointers from being correctly understood. At every edition, a signature has been left as a comment so the files can be re-verified if needed.
