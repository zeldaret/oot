.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808987D0
 .word 0x3F4CCCCD
glabel D_808987D4
 .word 0x3E4CCCCD
glabel D_808987D8
 .word 0x477FFF00, 0x00000000


