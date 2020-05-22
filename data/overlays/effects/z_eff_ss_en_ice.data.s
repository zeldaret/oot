.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Effect_Ss_En_Ice_InitVars
.word 0x0000001B
.word func_809A3330
glabel D_809A3B88
 .word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

