#!/bin/sh

echo
echo "Deleting boot.img if any to ensure complete overwrite..."
rm boot.img
echo "OK"
echo
echo "Generating 1.44MB boot.img blank floppy..."
dd if=/dev/zero of=boot.img bs=1k count=1440
echo "OK"
echo
echo "Copying sector1.bin into sector 1 of boot.img..."
dd if=sector1.bin of=boot.img bs=512 conv=notrunc
echo "OK"

echo
echo "Done. 1.44MB floppy boot.img is located in '.'."
echo "You can boot this image in any PC x86 emulator,"
echo
