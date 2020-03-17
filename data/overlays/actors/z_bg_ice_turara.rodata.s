.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80892690
 .word 0x3DCCCCCD
glabel D_80892694
 .word 0x3E4CCCCD, 0x00000000, 0x00000000


