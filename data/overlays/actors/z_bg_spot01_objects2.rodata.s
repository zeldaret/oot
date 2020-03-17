.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808AC530
 .word 0x2D2D2D2D, 0x2D2D2D2D, 0x2D2D2D2D, 0x2D2D2D2D, 0x2D2D2D2D, 0x2D2D2D2D, 0x2D2D2D2D, 0x2DA5D0A5, 0xF3A5AFC0, 0xDFC4EAA4, 0xA2A4EAA4, 0xDEA4BBA4, 0xF3A4C7A4, 0xB7A4BF2E, 0x00000000
glabel D_808AC56C
 .word 0x2D2D2D2D, 0x2DA5D0A5, 0xF3A5AFC0, 0xDAA4EAB4, 0xB9A4A8C0, 0xAEB8F9A1, 0xAAA1AA0A, 0x00000000
glabel jtbl_808AC58C
.word L808AC17C
.word L808AC17C
.word L808AC17C
.word L808AC188
.word L808AC194
glabel jtbl_808AC5A0
.word L808AC448
.word L808AC448
.word L808AC448
.word L808AC394
.word L808AC368
.word 0x00000000, 0x00000000, 0x00000000


