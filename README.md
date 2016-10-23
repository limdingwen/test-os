# TestOS
Test OS is a very barebone operating system that it loaded by the BIOS into 0x7c00 and from there, executes assembly instructions immediately. No EFI, no config, no boot folders. It's like programming for the C64, but for modern computers!

Written fully in hex, by a hex editor only.

Based on tutorial: http://www.brokenthorn.com/Resources/OSDev3.html

Here's a guide to running boot.img on VirtualBox and on a real PC.

VirtualBox:

0. Run compile.sh to generate boot.img, or manually create 1.44MB (0-filled) file, then copy sector1.bin into its first 512 bytes.
	1. Add new system, select other OS. Give 64MB.
	2. Give no hard disk. Create.
	3. Go to storage in settings, add Floppy Controller.
	4. Add existing image (boot.img) into floppy controller. Like inserting the floppy.
	5. Boot the system, press cancel when prompted to insert CD.
	6. Profit!

Real PC:

0. Run compile.sh to generate boot.img, or manually create 1.44MB (0-filled) file, then copy sector1.bin into its first 512 bytes.
	1. Burn boot.img onto a 1.44MB floppy.
	2. Insert floppy.
	3. Boot into BIOS. Ensure that floppy is first in boot sequence.
	4. Reboot the computer. It'll boot directly into TestOS.
	5. Profit!
