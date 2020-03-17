.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808898C0
 .word 0x453B8000
glabel D_808898C4
 .word 0x453B8000, 0x00000000, 0x00000000


