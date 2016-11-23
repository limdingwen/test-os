# Test OS
Test OS is a very barebone operating system that it loaded by the BIOS into 0x7c00 and from there, executes assembly instructions immediately. No EFI, no config, no boot folders. It's like programming for the C64, but for modern computers! Works on most x86 IBM-compatible PCs.

Written fully in hex, by a hex editor only.

Based on tutorial: http://www.brokenthorn.com/Resources/OSDev3.html

## Preparing the boot disk
Note: If you're a Windows user, you'll need to install Cygwin to use the script, do this step manually, or use another program that does something like this.

### Using the script
    cd test-os
    ./compile.sh
    
You'll find a file named "boot.img" in the test-os folder. This is the 1.44MB floppy disk boot image.

### Manually
First of all, generate a 1.44MB floppy disk image. The contents of it don't matter. After that, copy the 512-byte sector1.bin into the first 512 bytes of the floppy disk image (i.e. the first sector). The result is a floppy disk boot image.

## Booting

### On VirtualBox
1. Create a new VM
2. Give any name. The OS should be Other/Other, 32-bit. (Though 64-bit is fine as well)
3. Give as much memory as you want to it; it's just going to use 257 bytes anyway.
4. Create without a hard disk.
5. In Settings->Storage of the VM, add a Floppy Controller and choose "boot.img" or your manually-made floppy disk boot image as its disk.
6. Run the VM.

### On a real PC
1. Image the floppy disk boot image onto a floppy disk.
2. Insert the floppy disk into the PC.
3. Boot your PC and select the option to boot from floppy disk. Contact your manual for details.
