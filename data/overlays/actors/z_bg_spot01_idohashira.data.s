.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_808AB830
 .word func_808AB504
.word func_808AB510
.word func_808AB530
.word func_808AB570
glabel D_808AB840
 .word 0x48500064
glabel D_808AB844
 .word func_808AB700
glabel Bg_Spot01_Idohashira_InitVars
 .word 0x01030600, 0x00000010, 0x00F90000, 0x00000174
.word BgSpot01Idohashira_Init
.word BgSpot01Idohashira_Destroy
.word BgSpot01Idohashira_Update
.word BgSpot01Idohashira_Draw
.word 0x00000000, 0x00000000

