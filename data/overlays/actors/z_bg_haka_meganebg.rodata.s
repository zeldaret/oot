.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8087E420
 .word 0x453B8000
glabel D_8087E424
 .word 0x3CCCCCCD
glabel D_8087E428
 .word 0x40490FDB, 0x00000000


