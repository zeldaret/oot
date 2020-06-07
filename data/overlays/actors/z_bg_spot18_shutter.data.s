.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel Bg_Spot18_Shutter_InitVars
 .word 0x01C40600, 0x00000030, 0x00AF0000, 0x00000168
.word BgSpot18Shutter_Init
.word BgSpot18Shutter_Destroy
.word BgSpot18Shutter_Update
.word BgSpot18Shutter_Draw
glabel D_808B9870
 .word 0x48500064, 0x00000000, 0x00000000, 0x00000000

