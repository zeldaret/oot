.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Bg_Spot17_Funen_InitVars
 .word 0x00BF0000, 0x00000030, 0x00B10000, 0x0000014C
.word BgSpot17Funen_Init
.word BgSpot17Funen_Destroy
.word BgSpot17Funen_Update
.word 0x00000000
glabel D_808B7620
 .word 0x48500064, 0x00000000, 0x00000000, 0x00000000

