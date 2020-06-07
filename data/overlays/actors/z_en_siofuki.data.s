.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel En_Siofuki_InitVars
 .word 0x015F0100, 0x00000030, 0x013A0000, 0x000001A0
.word EnSiofuki_Init
.word EnSiofuki_Destroy
.word EnSiofuki_Update
.word EnSiofuki_Draw
glabel D_80AFC810
 .word 0x48500064, 0x00000000, 0x00000000, 0x00000000

