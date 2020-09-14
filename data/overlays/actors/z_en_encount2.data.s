.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel En_Encount2_InitVars
 .word 0x00B40500, 0x00000030, 0x00920000, 0x00000A20
.word EnEncount2_Init
.word 0x00000000
.word EnEncount2_Update
.word EnEncount2_Draw

