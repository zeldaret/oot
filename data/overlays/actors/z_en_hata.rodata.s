.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A51260
 .word 0x44098000
glabel D_80A51264
 .word 0x45098000
glabel D_80A51268
 .word 0x477FFF00
glabel D_80A5126C
 .word 0x3F8CCCCD


