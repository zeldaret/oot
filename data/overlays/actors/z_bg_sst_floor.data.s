.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.word 0x00000000, 0x00000000, 0x00000000
glabel Bg_Sst_Floor_InitVars
 .word 0x01660100, 0x00000030, 0x00E20000, 0x0000016C
.word BgSstFloor_Init
.word BgSstFloor_Destroy
.word BgSstFloor_Update
.word BgSstFloor_Draw
glabel D_808B9E3C
 .word 0x48500064

