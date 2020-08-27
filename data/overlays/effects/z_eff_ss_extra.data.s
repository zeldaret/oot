.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_809A4060
 .word 0x001E003C, 0x00640000
glabel Effect_Ss_Extra_InitVars
.word 0x0000001E
.word EffectSsExtra_Init
glabel D_809A4070
 .word 0x06000000, 0x06000480, 0x06000900, 0x00000000
