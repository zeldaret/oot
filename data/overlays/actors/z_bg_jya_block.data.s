.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Bg_Jya_Block_InitVars
 .word 0x01D50600, 0x00000000, 0x00030000, 0x00000164
.word BgJyaBlock_Init
.word BgJyaBlock_Destroy
.word BgJyaBlock_Update
.word BgJyaBlock_Draw
glabel D_80894400
 .word 0xC850014D, 0xB0F40708, 0xB0F801F4, 0x30FC05DC

