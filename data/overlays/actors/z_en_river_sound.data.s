.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel En_River_Sound_InitVars
 .word 0x003B0100, 0x00000030, 0x00010000, 0x00000150
.word EnRiverSound_Init
.word EnRiverSound_Destroy
.word EnRiverSound_Update
.word EnRiverSound_Draw
glabel D_80AE71F0
 .word 0x00000000, 0x00000000
glabel D_80AE71F8
 .word 0x00002028, 0x200B2007, 0x00000000, 0x2032203B, 0x20302041, 0x205D0000, 0x20A60000, 0x20C020CA, 0x20D620D7, 0x20980000, 0x203120E5
glabel D_80AE7224
 .word 0x3F333333, 0x3F800000, 0x3FB33333

