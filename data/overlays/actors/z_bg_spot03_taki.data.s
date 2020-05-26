.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel Bg_Spot03_Taki_InitVars
 .word 0x011F0100, 0x00000030, 0x01120000, 0x00000178
.word BgSpot03Taki_Init
.word BgSpot03Taki_Destroy
.word BgSpot03Taki_Update
.word BgSpot03Taki_Draw
glabel D_808AE3B0
 .word 0x48500064, 0x00000000, 0x00000000, 0x00000000

