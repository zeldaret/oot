.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Effect_Ss_Stick_InitVars
.word 0x00000010
.word func_809AC2D0
glabel D_809AC628
 .word 0x00140000, 0x0602BA38, 0x00150000, 0x06006CC0, 0x00000000, 0x00000000

