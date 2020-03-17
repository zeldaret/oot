.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Dekunuts_InitVars
 .word 0x00600500, 0x00000005, 0x004A0000, 0x00000314
.word EnDekunuts_Init
.word EnDekunuts_Destroy
.word EnDekunuts_Update
.word EnDekunuts_Draw
glabel D_809EAB50
 .word 0x06000939, 0x10010000, 0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, 0x00120020, 0x00000000, 0x00000000
glabel D_809EAB7C
 .word 0x01000012, 0x0020FF00
glabel D_809EAB84
 .word 0x10020102, 0x01020202, 0x01020424, 0x02020202, 0x02240000, 0x00000104, 0x02020804, 0x00000400
glabel D_809EABA4
 .word 0x8917004D, 0xB06CFFFF, 0x304C0A28
glabel D_809EABB0
 .word 0x00000000, 0x00000000, 0x00000000, 0x00000000

