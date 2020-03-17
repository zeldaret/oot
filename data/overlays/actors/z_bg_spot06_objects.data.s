.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Bg_Spot06_Objects_InitVars
 .word 0x00D50600, 0x00000200, 0x006A0000, 0x000001D0
.word BgSpot06Objects_Init
.word BgSpot06Objects_Destroy
.word BgSpot06Objects_Update
.word BgSpot06Objects_Draw
glabel D_808AF930
 .word 0x00000000, 0x00000000, 0x00000000, 0x00000080, 0x00000000, 0x00050100, 0x01000000, 0x0000FF60, 0x00120064
glabel D_808AF954
 .word 0x0A000939, 0x20000000, 0x00000001
.word D_808AF930
glabel D_808AF964
 .word 0x48500064
glabel D_808AF968
 .word 0x485003E8, 0x00000000

