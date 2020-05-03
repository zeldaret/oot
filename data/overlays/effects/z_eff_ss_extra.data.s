.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_809A4060
 .word 0x001E003C, 0x00640000, 0x0000001E
.word func_809A3CC0
glabel D_809A4070
 .word 0x06000000, 0x06000480, 0x06000900, 0x00000000
