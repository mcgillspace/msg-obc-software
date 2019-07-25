**Installations**

-Clone the branch OBC 1.1 of the repository on your local system.

-Install whichever version of [SEGGER Embedded Studio](https://www.segger.com/products/development-tools/embedded-studio/) is compatible with your machine.

-Download the [GNU Embedded Toolchain for Arm](https://bit.ly/2ZYjRTN). It is important to know the directory on your system where this toolchain is stored.

**Building the Project**

-To build the project, from SEGGER Embedded Studio, select *File>Import Project>Import IAR EWARM Project...*

-In the copy of the project on your computer, navigate to 

`../OBC/cubeMX/disco/EWARM` 

and select `Project.eww`

-Select the *Internal Toolchain* from the Build Configuration, and specify the IAR Installation Directory to be where the GNU Embedded Toolchain for Arm was stored after the download (select the entire GNU Tools ARM Embedded folder)

-Before building the project, there will be files that are imported twice in the project, delete one of the two copies by using *Right click on the Project>Clean* then delete

-Once all files are only referenced once, build the project. 

-'disco.elf' may give undefined symbol errors for some functions and data structures when linking. To solve these, create a folder in the project and add the files where the symbols are defined. 

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

`$ arm-none-eabi-objcopy -O binary disco.elf disco.bin`

`//If you want to see that the binary file has been created, use the 'ls' command`

Make sure you have plugged your microchip into a ST-Link device (such as the *ST-LINK/v2-Isol*) and into your computer via USB before continuing any further. Assure yourself that everything is fine by verifying that both the microchip and the ST-Link device have a LED light on, both of which should be red.

`$ st-flash write disco.bin 0x8000000`

If all went well, the *ST-link utility* should end with a message such as:

`yyyy-mm-ddThh:mm:ss INFO common.c: Flash written and verified! jolly good!`
