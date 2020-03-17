.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809E16F0
 .word 0x3F59999A
glabel D_809E16F4
 .word 0x3E19999A
glabel D_809E16F8
 .word 0x3CF5C28F
glabel D_809E16FC
 .word 0x3DCCCCCD
glabel D_809E1700
 .word 0x3DCCCCCD
glabel D_809E1704
 .word 0x461C4000
glabel D_809E1708
 .word 0x3BC49BA6
glabel D_809E170C
 .word 0x3B03126F
glabel D_809E1710
 .word 0x3CF5C28F
glabel D_809E1714
 .word 0x3C23D70A
glabel D_809E1718
 .word 0x3DCCCCCD
glabel D_809E171C
 .word 0x3F490FDB
glabel D_809E1720
 .word 0x3F490FDB, 0x00000000, 0x00000000, 0x00000000


