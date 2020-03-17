.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Bg_Spot07_Taki_InitVars
 .word 0x01200100, 0x00000030, 0x01130000, 0x00000168
.word BgSpot07Taki_Init
.word BgSpot07Taki_Destroy
.word BgSpot07Taki_Update
.word BgSpot07Taki_Draw
glabel D_808B0200
 .word 0x48500064, 0x00000000, 0x00000000, 0x00000000

