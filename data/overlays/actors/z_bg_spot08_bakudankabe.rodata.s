.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808B08E0
 .word 0x40AD5555
glabel D_808B08E4
 .word 0x3E4CCCCD
glabel D_808B08E8
 .word 0x3ECCCCCD, 0x00000000


