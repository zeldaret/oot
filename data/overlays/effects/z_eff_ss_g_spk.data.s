.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Effect_Ss_G_Spk_InitVars
.word 0x00000005
.word func_809A6F30
glabel D_809A7498
 .word 0x04055FB0, 0x040561B0, 0x040563B0, 0x040565B0, 0x00000000, 0x00000000

