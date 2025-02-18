This project is a simple, custom bootloader developed using x86 assembly language with NASM assembler. The bootloader demonstrates the basics of low-level programming and system bootstrapping. It is designed to run on an emulator like Bochs and serves as an educational project to understand how computers boot and how you can interact with hardware directly at the assembly level.

The bootloader displays the message "Assembly is Fun" on the screen, which is one of the first things that can be seen when the system starts. This showcases how a bootloader operates by setting up the stack, handling video interrupts, and printing a message.

Key Features
16-bit x86 assembly: This bootloader is written entirely in low-level assembly, running in 16-bit real mode on an x86 CPU.
Basic BIOS interrupts: Utilizes BIOS interrupts to clear the screen and move the cursor.
Text Output: Prints a message on the screen using BIOS video interrupts.
Custom Stack Setup: The bootloader sets up the stack and segment registers to prepare the environment for future system tasks.
Minimal Setup: Demonstrates a minimal system setup with basic video and text output.
Setup Instructions
To run this bootloader on a virtual machine using Bochs or another emulator, follow these steps:

Clone the repository:
git clone https://github.com/yourusername/simple-bootloader.git
Assemble the bootloader using NASM:
nasm -f bin -o bootloader.bin bootloader.asm
Configure Bochs to boot the bootloader.bin image.

You can find many bochs configuration examples online.

Technologies Used:
x86 Assembly Language (NASM): Low-level assembly programming.
Bochs Emulator: A highly configurable x86 emulator.
BIOS Interrupts: Directly interfacing with the BIOS to interact with hardware.

Future Enhancements:
Loading a Kernel: The next step will be to expand the bootloader to load a kernel into memory and start it.
File System Support: Add support for loading files from disk.
Multitasking: Implement basic multitasking to allow for running multiple processes.
Feel free to contribute to the project, report issues, or improve the code!
