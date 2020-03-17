.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Bg_Gate_Shutter_InitVars
 .word 0x01000700, 0x00000000, 0x01810000, 0x0000017C
.word BgGateShutter_Init
.word BgGateShutter_Destroy
.word BgGateShutter_Update
.word BgGateShutter_Draw

