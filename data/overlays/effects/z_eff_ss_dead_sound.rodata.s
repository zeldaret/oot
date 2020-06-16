.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_809A1C60
 .word 0xA5B3A5F3, 0xA5B9A5C8, 0xA5E9A5AF, 0xA5BFA1BC, 0x330A0000, 0x00000000, 0x00000000, 0x00000000


