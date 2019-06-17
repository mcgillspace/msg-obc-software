# msg-obc-software
Segger development for the OBC executable

13/06/2019
Compilation has begun to yield fruit. The build is generating .o files, meaning we are nearing the final stages of clean up to obtain a binary file. After this, we may need to perform tests and modify the binary accordingly.

17/06/2019
We are now compiling the main.c file and other files connected to it. As of right now, we have an error arising from a function where the expression implemented is not being read correctly, maybe due to an extra variable type declaration, which in turn confuses the compiler. We also had a duplicate declaration of NULL which apparently was fixed by #defining a new variable with NULL value, inside the task.h file. We also removed extra parenthesis from xTaskGenerate() as they were preventing the pointers from being correctly understood. At every edition, a signature has been left as a comment so the files can be re-verified if needed.
