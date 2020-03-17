.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8097BDE0
 .word 0x00000900, 0x01000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000000, 0x00010000, 0x001E0064, 0x00000000, 0x00000000
glabel D_8097BE0C
 .word 0x00000900, 0x01000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000000, 0x00010000, 0x0019006E, 0x00000000, 0x00000000
glabel D_8097BE38
 .word 0x00000900, 0x01000000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000000, 0x00010000, 0x001900C8, 0x00000000, 0x00000000
glabel D_8097BE64
 .word 0x00000000, 0x40C00000, 0x00000000
glabel D_8097BE70
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_8097BE7C
 .word 0x00000000
glabel D_8097BE80
 .word 0x00000000
glabel D_8097BE84
 .word 0x48500064
glabel D_8097BE88
 .word 0xC3B98000, 0x44948000, 0xC3978000
glabel D_8097BE94
 .word 0xC2EE0000, 0x44840000, 0xC3130000
glabel D_8097BEA0
 .word 0xC0C00000, 0x4483A000, 0xC3EC8000
glabel D_8097BEAC
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_8097BEB8
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_8097BEC4
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_8097BED0
 .word func_8097ADF0
.word func_8097A160
.word func_8097A39C
.word func_8097A56C
.word func_8097A73C
.word func_8097A90C
.word func_8097AADC
.word func_8097AD18
.word func_8097A190
.word func_8097A3CC
.word func_8097A59C
.word func_8097A76C
.word func_8097A93C
.word func_8097AB0C
.word func_8097AD48
.word func_8097B340
.word func_8097B864
.word func_8097BB78
.word func_8097B370
.word func_8097B894
.word func_8097BBA8
glabel D_8097BF24
 .word func_8097BD70
.word func_8097AE38
.word func_8097A1C0
.word func_8097A3FC
.word func_8097A5CC
.word func_8097A79C
.word func_8097A96C
.word func_8097AB3C
.word func_8097AD78
.word func_8097A1E4
.word func_8097A420
.word func_8097A5F0
.word func_8097A7C0
.word func_8097A990
.word func_8097AB60
.word func_8097AD9C
.word func_8097B3A0
.word func_8097B8C4
.word func_8097BBD8
glabel Demo_Gj_InitVars
 .word 0x01B10600, 0x00000030, 0x01850000, 0x00000278
.word DemoGj_Init
.word DemoGj_Destroy
.word DemoGj_Update
.word DemoGj_Draw

