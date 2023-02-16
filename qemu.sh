#/bin/bash

qemu-system-x86_64 -s\
        -pflash OVMF.fd\
        -net none\
        -debugcon file:debug.log\
        -global isa-debugcon.iobase=0x402\
        -hda fat:rw:hda-contents/\
        -nographic
