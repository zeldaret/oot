.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

.align 4

glabel Effect_Ss_Dead_Ds_InitVars
.word 0x00000022
.word func_809A1610
.word 0x00000000, 0x00000000

