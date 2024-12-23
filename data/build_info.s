.include "asm/macros.inc"
.include "constants/constants.inc"

.syntax unified
.arm

.section .rodata

    .global rom_footer
rom_footer:

RomBuildInfo:
    .ascii "0.71Wed Nov 21 13:22:30  2001\r\n"
