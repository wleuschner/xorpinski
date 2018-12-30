#!/bin/bash
/opt/devkitpro/devkitPPC/bin/powerpc-eabi-as -o main.elf ./main.S
/opt/devkitpro/devkitPPC/bin/powerpc-eabi-objcopy -O binary ./main.elf ./main.dol
