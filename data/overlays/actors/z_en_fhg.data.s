.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel En_fHG_InitVars
 .word 0x00670100, 0x00000010, 0x005A0000, 0x00000294
.word EnfHG_Init
.word EnfHG_Destroy
.word EnfHG_Update
.word EnfHG_Draw
glabel D_80B65190
 .word 0x00000000, 0x42700000, 0xC39D8000, 0x00000000, 0xC3820000, 0x42700000, 0xC3110000, 0x2AAA0000, 0xC3820000, 0x42700000, 0x43250000, 0x55540000, 0x00000000, 0x42700000, 0x439D8000, 0x7FFE0000, 0x43820000, 0x42700000, 0x431B0000, 0xAAA80000, 0x43820000, 0x42700000, 0xC31B0000, 0xD5520000
glabel D_80B651F0
 .word 0x8917001A, 0x30F804B0
glabel D_80B651F8
 .word 0x00000000, 0x00000000, 0x42480000
glabel D_80B65204
 .word 0x00030004, 0x00050000, 0x00010002

