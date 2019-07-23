# msg-obc-software
Segger development for the OBC executable

**Installations**

-Clone the branch OBC 1.0 of the repository on your local system.

-Install whichever version of [SEGGER Embedded Studio](https://www.segger.com/products/development-tools/embedded-studio/) is compatible with your machine.

-Download the [GNU Embedded Toolchain for Arm](https://bit.ly/2ZYjRTN). It is important to know the directory on your system where this toolchain is stored.

**Building the Project**

-To build the project, from SEGGER Embedded Studio, select *File>Import Project>Import IAR EWARM Project...*
-In the copy of the project on your computer, navigate to 

`msg-obc-software/obc/upsat-obc-software-master/cubeMX/disco/EWARM` 

and select `Project.eww`

-Select the *Internal Toolchain* from the Build Configuration, and specify the IAR Installation Directory to be where the GNU Embedded Toolchain for Arm was stored after the download (select the entire GNU Tools ARM Embedded folder)

-Before building the project, there will be files that are imported twice in the project, delete one of the two copies by using *Right click on the Project>Clean* then delete

-Once all files are only referenced once, build the project. Path errors are bound to appear in the `#include` calls. You need to change the path to the file included to the one on your computer.

-Once these path errors are solved, disco.elf may give undefined symbol errors for some functions and data structures. To solve these, create a folder in the project and add the files where the functions and data structures are defined. If adding the files does not fix the issue, you must then `#define` said symbols on the main file if possible. If not on the main file, the `#define` command may be placed before the declaration of the symbol on its corresponding file.

For example, if an undefined symbol is denoted *foo* and is declared in the file *bar.c*, then you must find the call of *foo* and `#define` it right before:

`n-1: #define rtype foo( var1, var2, ... )`

`n  : rtype foo( var1, var2, ...) {//code} `

-Special attention must be given to the undefined symbols *__DSB* and *__ISB*. In order to resolve the undefined symbol errors, one must navigate to  

`.../OBC/cubeMX/obc/Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM4F/portmacro.h`

and 

`../OBC/cubeMX/disco/Middlewares/Third_Party/FreeRTOS/Source/portable/IAR/ARM_CM4F/portmacro.h`
and then simply `#define` both symbols:

`#define __ISB()`

`#define __DSB()`


-Once these issues have been solved, the project should build successfully.


**Flashing the Project**

*On Linux (Debian):*

-Open a command line terminal window and and install the _ARM GNU Embedded Toolchain_. First add the repository:

`$ sudo add-apt-repository ppa:team-gcc-arm-embedded/ppa`

When prompted, press the *Enter/Return* key. Next, update your package lists and install the Toolchain:

`$ sudo apt-get update`

`$ sudo apt-get install gcc-arm-none-eabi`

Press `y` when prompted to continue with the installation.

-Now we need to install _ST-Link_. We start off  by installing _libusb_:

`$ sudo apt-get install git build-essential libusb-1.0.0-dev cmake`

After installation is done, navigate to the *$HOME* directory and clone the _ST-Link_ repository:

`$ cd $HOME`

`$ git clone https://github.com/texane/stlink.git`

Now navigate to `/stlink` and install:

`$ cd stlink `

`$ make release`

Wait until the dependencies are done installing, and then enter the following commands:

`$ cd build/Release && make install DESTDIR=_install`

`//ST-Link is built and installed`

`$ echo "export PATH=\$PATH:$HOME/stlink/build/Release/_install/usr/local/bin" >> $HOME/.bashrc`

`$ source $HOME/.bashrc`

-Now navigate to the directory of the location where the output of the Segger compilation is found. it should be in

`.../obc/upsat-obc-software-master/cubeMX/disco/EWARM/disco/Exe`

You should be able to find a file called *disco.elf* if compilation went successfully. We will now turn this file into a binary using the _ARM GNU Embedded Toolchain_, so that we can then flash the binary to our microchip (in our case, THE STM32F405RG) using _ST-Link_:

`$ arm-none-eabi-size -tA disco.elf`

`//This verifies the file first`

`$ arm-none-eabi-objcopy -0 binary disco.elf disco.bin`

`//If you want to see that the binary file has been created, use the 'ls' command`

Make sure you have plugged your microchip into a ST-Link device (such as the *ST-LINK/v2-Isol*) and into your computer via USB before continuing any further. Assure yourself that everything is fine by verifying that both the microchip and the ST-Link device have a LED light on, both of which should be red.

`$ st-flash write disco.bin 0x8000000`

If all went well, the *ST-link utility* should end with a message such as:

`yyyy-mm-ddThh:mm:ss INFO common.c: Flash written and verified! jolly good!`

**Change Log**

13/06/2019 - OBC 0.1 Compilation has begun to yield fruit. The build is generating .o files, meaning we are nearing the final stages of clean up to obtain a binary file. After this, we may need to perform tests and modify the binary accordingly.

14/06/2019 - OBC 0.2 Managed to get through the Floating Point Unit errors on files "arm_abs_q15.c", "arm_abs_q31.c", "arm_add_f32.c", and "arm_abs_f32.c" by defining #ifndef __FPU_PRESENT #define __FPU_PRESENT 1 #endif inside the file "core_cm4.h", right below #ifndef __CORE_CM4_H_GENERIC #define __CORE_CM4_H_GENERIC

This helped us compile more than 500 files, thus the size of the zip will be larger by that amount of files. Regarding errors, I am now getting "Conflicting types for 'HAL_DMA_PollForTransfer' " in the file "stm32f4xx_hal_dma.c". I am investigating how to proceed from here

Note that the compression has been changed from '.zip' to '.7z' as the resulting file is smaller.

14/06/2019 - OBC 0.3 Changed varible type of the second parameter in the function HAL_StatusTypeDef HAL_DMA_PollTransfer(..., ..., ...) from uint32_t to HAL_DMA_LevelCompleteTypeDef inside the file "stm32f4xx_hal_dma.c", which removed the type error we had. We also had errors stating the following values were undeclared: HAL_DMA_STATE_BUSY_MEM0, HAL_DMA_STATE_BUSY_MEM1, HAL_DMA_STATE_READY_HALF_MEM0, HAL_DMA_STATE_READY_HALF_MEM1, HAL_DMA_STATE_READY_MEM0, HAL_DMA_STATE_READY_MEM1 we followed suit and declared them correspondingly to what was declared at the end of each variable name. This compiled 100 more files. Now, we are encountering 27 errors in the file 'stm32f4xx_hal_iwdg.c' and are working on handling them.

17/06/2019 - OBC 0.4 We are now compiling the main.c file and other files connected to it. As of right now, we have an error arising from a function where the expression implemented is not being read correctly, maybe due to an extra variable type declaration, which in turn confuses the compiler. We also had a duplicate declaration of NULL which apparently was fixed by #defining a new variable with NULL value, inside the task.h file. We also removed extra parenthesis from xTaskGenerate() as they were preventing the pointers from being correctly understood. At every edition, a signature has been left as a comment so the files can be re-verified if needed.

25/06/2019 - OBC 0.4 Fixed the infamous xTaskGenericCreate() error by removing an extra semicolon at the end of the declaration. Proceeded forward with a few header errors and managed to arrive to 'hldlc_UT.c'. Apparently, a function defined in 'hldlc.h' called "HLDLC_frame" is defined to take 3 arguments, however the function call in 'hldlc_UT.c' uses 4 different parameters, thus returning an error. We are currently working to understand the nature of the function so we can proceed and decisively remove the extra parameter. After all, the files being compiled now are unity tests that verify the integrity of the code. Therefore, we are currently fixing the last parts of what will eventually become our first testable binary

09/07/2019 - OBC 1.0 Rebuilt the project as an IAR project using the project import tool within Segger, we then proceeded to fix any header references remaining. We encountered an issue with undefined functiones and variables within the project, and all that needed to be done was #define the functions that were never done so, and #include the files where some were defined but not compiled. Finally, we managed to build a binary file which can be found in the EWARM forlder of the OBC directory.
