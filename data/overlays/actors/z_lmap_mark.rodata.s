.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

# This appears to be a file boundary
.balign 16

glabel D_80830610
 .word 0xFFFC0004, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFFCFFFC, 0x00000000, 0x00000100, 0xFFFFFFFF, 0x00040004, 0x00000000, 0x01000000, 0xFFFFFFFF, 0x0004FFFC, 0x00000000, 0x01000100, 0xFFFFFFFF
glabel D_80830650
 .word 0xFFFC0004, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFFCFFFC, 0x00000000, 0x00000100, 0xFFFFFFFF, 0x00040004, 0x00000000, 0x01000000, 0xFFFFFFFF, 0x0004FFFC, 0x00000000, 0x01000100, 0xFFFFFFFF

