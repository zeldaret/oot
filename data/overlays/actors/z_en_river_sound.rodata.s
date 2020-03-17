.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80AE7230
 .word 0x461C4000
glabel D_80AE7234
 .word 0x461C4000, 0x00000000, 0x00000000


