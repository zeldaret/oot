.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_808A0510
 .word 0x00000000
glabel D_808A0514
 .word 0x00000000, 0x0000001E, 0x00000000, 0x0000001D, 0xFFFFFEC0, 0x0000001C, 0xFFFFFCF4
glabel Bg_Mizu_Water_InitVars
 .word 0x00650100, 0x00000030, 0x00590000, 0x00000160
.word BgMizuWater_Init
.word BgMizuWater_Destroy
.word BgMizuWater_Update
.word BgMizuWater_Draw
.word 0x00000000, 0x42DC0000
glabel D_808A0558
 .word 0x00000002, 0x00000003, 0x00000005, 0x00000007, 0x0000000C, 0x00000014, 0x00000015, 0x00000016
glabel D_808A0578
 .word 0x40500001, 0x00000000

