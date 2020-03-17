.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Bom_Chu_InitVars
 .word 0x00DA0300, 0x00000010, 0x00010000, 0x000001E4
.word EnBomChu_Init
.word EnBomChu_Destroy
.word EnBomChu_Update
.word EnBomChu_Draw
glabel D_809C6D30
 .word 0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, 0x01000000, 0x00000000, 0x000C0064
glabel D_809C6D54
 .word 0x0A000931, 0x20000000, 0x00000001
.word D_809C6D30
glabel D_809C6D64
 .word 0x801F0002, 0x4850000A
glabel D_809C6D6C
 .byte 0xFA
glabel D_809C6D6D
 .byte 0x00
glabel D_809C6D6E
 .byte 0x00
glabel D_809C6D6F
 .byte 0xFA
glabel D_809C6D70
 .byte 0xC8
glabel D_809C6D71
 .byte 0x00
glabel D_809C6D72
 .byte 0x00
glabel D_809C6D73
 .byte 0x82
glabel D_809C6D74
 .byte 0x96
glabel D_809C6D75
 .byte 0x00
glabel D_809C6D76
 .byte 0x00
glabel D_809C6D77
 .byte 0x64
glabel D_809C6D78
 .byte 0x64
glabel D_809C6D79
 .byte 0x00
glabel D_809C6D7A
 .byte 0x00
glabel D_809C6D7B
 .byte 0x32
glabel D_809C6D7C
 .word 0x00000000, 0x40E00000, 0xC0C00000
glabel D_809C6D88
 .word 0x41400000, 0x00000000, 0xC0A00000
glabel D_809C6D94
 .word 0xC1400000, 0x00000000, 0xC0A00000

