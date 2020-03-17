.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Bg_Haka_Huta_InitVars
 .word 0x00BD0100, 0x00000010, 0x008D0000, 0x0000016C
.word BgHakaHuta_Init
.word BgHakaHuta_Destroy
.word BgHakaHuta_Update
.word BgHakaHuta_Draw
glabel D_8087D940
 .word 0x48500064
glabel D_8087D944
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_8087D950
 .word 0x1E1432FF
glabel D_8087D954
 .word 0x000000FF
glabel D_8087D958
 .word 0x41F00000, 0x00000000, 0x00000000
glabel D_8087D964
 .word 0x3D05729B, 0x3EA6CF42, 0xBF71E4F7

