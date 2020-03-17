.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Bubble_InitVars
 .word 0x002D0500, 0x00000001, 0x00120000, 0x00000260
.word EnBubble_Init
.word EnBubble_Destroy
.word EnBubble_Update
.word EnBubble_Draw
glabel D_809CCE30
 .word 0x00000000, 0x00000000, 0x00040000, 0xFFCFD753, 0x00000000, 0x00010100, 0x00000000, 0x00000000, 0x00100064, 0x00000000, 0x00000000, 0x00000000, 0x00002824, 0x00000000, 0x00790000, 0x00000000, 0x00000000, 0x00100064
glabel D_809CCE78
 .word 0x06110939, 0x10000000, 0x00000002
.word D_809CCE30
glabel D_809CCE88
 .word 0x01000002, 0x00190019, 0xFF000000
glabel D_809CCE94
 .word 0x00000000, 0xBF000000, 0x00000000
glabel D_809CCEA0
 .word 0xFFFFFFFF
glabel D_809CCEA4
 .word 0x96969600, 0x00000000, 0x00000000

