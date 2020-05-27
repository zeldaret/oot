.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel Bg_Spot16_Doughnut_InitVars
 .word 0x00E50600, 0x00000000, 0x017A0000, 0x00000154
.word BgSpot16Doughnut_Init
.word BgSpot16Doughnut_Destroy
.word BgSpot16Doughnut_Update
.word BgSpot16Doughnut_Draw
glabel D_808B6A10
 .word 0xB0F4157C, 0xB0F81388, 0x30FC1388
glabel D_808B6A1C
 .word 0x00000000, 0x004600D2, 0x012C0000, 0x00000000, 0x00000000

