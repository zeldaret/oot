.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel Bg_Haka_Water_InitVars
 .word 0x00D70600, 0x00000030, 0x008D0000, 0x00000154
.word BgHakaWater_Init
.word BgHakaWater_Destroy
.word BgHakaWater_Update
.word BgHakaWater_Draw
glabel D_808824B0
 .word 0x48500064, 0x00000000, 0x00000000, 0x00000000

