.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

.word 0x0000000B
.word func_809A6150
glabel D_809A6328
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_809A6334
 .word 0x04023810, 0x04023990, 0x04023B10, 0x04023C90, 0x04023E10, 0x04023F90, 0x04024110, 0x04024290, 0x00000000, 0x00000000, 0x00000000

