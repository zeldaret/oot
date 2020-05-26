.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel Bg_Spot17_Bakudankabe_InitVars
 .word 0x01A90100, 0x00000000, 0x00B10000, 0x00000164
.word BgSpot17Bakudankabe_Init
.word BgSpot17Bakudankabe_Destroy
.word BgSpot17Bakudankabe_Update
.word BgSpot17Bakudankabe_Draw
glabel D_808B72A0
 .word 0xC8500064, 0xB0F40BB8, 0xB0F801F4, 0x30FC03E8

