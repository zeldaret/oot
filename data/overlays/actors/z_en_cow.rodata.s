.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809E0120
 .word 0x3C23D70A
glabel D_809E0124
 .word 0x3C23D70A
glabel D_809E0128
 .word 0x3C23D70A
glabel D_809E012C
 .word 0x3C23D70A
glabel D_809E0130
 .word 0x3C23D70A, 0x00000000, 0x00000000, 0x00000000


