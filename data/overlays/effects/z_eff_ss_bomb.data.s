.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Effect_Ss_Bomb_InitVars
.word 0x00000002
.word func_8099F1B0
glabel D_8099F588
 .word 0x04007F80, 0x04008780, 0x04008F80, 0x04009780, 0x00000000, 0x00000000

