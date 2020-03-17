.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Bg_Ice_Shutter_InitVars
 .word 0x01C80600, 0x00000010, 0x006B0000, 0x00000168
.word BgIceShutter_Init
.word BgIceShutter_Destroy
.word BgIceShutter_Update
.word BgIceShutter_Draw
glabel D_80891EB0
 .word 0x48500064, 0x00000000, 0x00000000, 0x00000000

