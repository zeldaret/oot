.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel Bg_Mori_Bigst_InitVars
 .word 0x00860100, 0x00000010, 0x00720000, 0x0000016C
.word BgMoriBigst_Init
.word BgMoriBigst_Destroy
.word BgMoriBigst_Update
.word 0x00000000
glabel D_808A14E0
 .word 0xB0F40BB8, 0xB0F80BB8, 0xB0FC0BB8, 0xB86CFE0C, 0xB870D120, 0x485003E8, 0x00000000, 0x00000000

