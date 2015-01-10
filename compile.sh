#!/bin/sh

echo
echo "Generating 1.44MB blank floppy..."
dd if=/dev/zero of=boot.img bs=1k count=1440
echo "OK"

echo
echo "Copying boot1.bin into sector 1..."
dd if=boot1.bin of=boot.img bs=512 conv=notrunc
echo "OK"

echo
echo "Done. Floppy boot.img is located in '.'."
echo "You can boot this image in any PC x86 emulator,"
