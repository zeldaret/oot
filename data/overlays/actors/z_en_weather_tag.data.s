.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel En_Weather_Tag_InitVars
 .word 0x01650600, 0x00000010, 0x00010000, 0x00000154
.word EnWeatherTag_Init
.word EnWeatherTag_Destroy
.word EnWeatherTag_Update
.word 0x00000000

