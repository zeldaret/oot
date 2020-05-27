.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel En_Nwc_InitVars
 .word 0x01350600, 0x00000030, 0x01240000, 0x00000734
.word EnNwc_Init
.word EnNwc_Destroy
.word EnNwc_Update
.word EnNwc_Draw
glabel D_80ABCA80
 .word 0x01000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010000, 0x00000000, 0x00000000, 0x000A0064
glabel D_80ABCAA4
 .word 0x03000939, 0x00000000, 0x00000010, 0x00000000
glabel D_80ABCAB4
 .word func_80ABC0E8
.word func_80ABC1F4
.word 0x00000000

