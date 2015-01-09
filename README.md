# TestOS
Test OS

Written fully in hex (yes!), by a hex editor only.

Based on tutorial: http://www.brokenthorn.com/Resources/OSDev3.html

Contents:
	~~bochs -- see below~~
	README.md
	boot1.bin -- the main binary
	boot.img -- the floppy disk image (makefile coming later!)

EDIT: I no longer recommend bochs because it just doesn't work, not only with my OS but even with others. I have switched to VirtualBox and it works just fine and it also looks so cool to have your OS running alongside the giants.

Here's a guide to running boot.img on VirtualBox and on a real PC.

VirtualBox:

	1. Add new system, select other OS. Give 64MB.
	2. Give no hard disk. Create.
	3. Go to storage in settings, add Floppy Controller.
	4. Add existing image (boot.img) into floppy controller. Like inserting the floppy.
	5. Boot the system, press cancel when prompted to insert CD.
	6. Profit!

Real PC:

	1. Burn boot.img onto a 1.44MB floppy.
	2. Insert floppy.
	3. Boot into BIOS. Ensure that floppy is first in boot sequence.
	4. Reboot the computer. It'll boot directly into TestOS.
	5. Profit!

~~Enclosed within bochs directory is the config files and BIOS required to run the image in bochs. Obviously you need bochs to use these. You can run the image in another PC x86 emulator. You don't HAVE to use bochs. It's just the emulator I used to test the image on, and I thought that it may be useful to enclose configuration files so that one can easily run it on the tested emulator. If you use another emulator, this directory will not be useful to you. You have to configure it such that it boots in BIOS mode and boots from the 1.44MB floppy, boot.img.~~

~~Of course you can also run it on a real PC.~~
