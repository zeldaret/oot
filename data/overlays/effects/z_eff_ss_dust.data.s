.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Effect_Ss_Dust_InitVars
.word 0x00000000
.word func_809A22D0
glabel D_809A2A48
 .word func_809A27F0
.word func_809A28EC
glabel D_809A2A50
 .word 0x04051DB0, 0x040521B0, 0x040525B0, 0x040529B0, 0x04052DB0, 0x040531B0, 0x040535B0, 0x040539B0

