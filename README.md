# TestOS
Test OS

Based on tutorial: http://www.brokenthorn.com/Resources/OSDev3.html

Contents:
bochs -- see below
README.md
boot1.bin -- the main binary
boot.img -- the floppy disk image (makefile coming later!)

Enclosed within bochs directory is the config files and BIOS required to run the image in bochs. Obviously you need bochs to use these. You can run the image in another PC x86 emulator. You don't HAVE to use bochs. It's just the emulator I used to test the image on, and I thought that it may be useful to enclose configuration files so that one can easily run it on the tested emulator. If you use another emulator, this directory will not be useful to you. You have to configure it such that it boots in BIOS mode and boots from the 1.44MB floppy, boot.img.

Of course you can also run it on a real PC.
