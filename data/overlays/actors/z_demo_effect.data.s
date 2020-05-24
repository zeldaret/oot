.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

.align 4

glabel Demo_Effect_InitVars
 .word 0x008B0100, 0x00000030, 0x00010000, 0x000001A0
.word DemoEffect_Init
.word DemoEffect_Destroy
.word DemoEffect_Update
.word 0x00000000
glabel D_80976810
 .word 0x00000000
glabel D_80976814
 .word 0x008E008F, 0x00010091, 0x00930093, 0x00930094, 0x009500BA, 0x00BA00BA, 0x00BA00BA, 0x00BA00A8, 0x00940094, 0x000100AD, 0x00AD00AD, 0x00AD0158, 0x00A800A8
glabel D_80976848
 .byte 0x01
glabel D_80976849
 .byte 0x01, 0x02, 0x00, 0x01, 0x01, 0x02, 0x00, 0x01, 0x02, 0x00, 0x02, 0x01, 0x00, 0x01, 0x00, 0x02, 0x00, 0x02, 0x02, 0x00, 0x00, 0x00, 0x00
glabel D_80976860
 .word 0xFFFFFF64, 0xFF00FFFF, 0xFFC80096, 0xFFFFFF00, 0x64FF0000, 0x00000000, 0xDF000000, 0x00000000

