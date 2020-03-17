.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8087D970
 .word 0x38C90FDB
glabel D_8087D974
 .word 0x3E23DA21, 0x00000000, 0x00000000


