.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80AB0BD0
 .word 0x0A000039, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x00640046, 0x00000000, 0x00000000
glabel D_80AB0BFC
 .word 0x00000000, 0x00000000, 0xFF000000
glabel En_Mu_InitVars
 .word 0x01AD0400, 0x00000009, 0x01820000, 0x0000024C
.word EnMu_Init
.word EnMu_Destroy
.word EnMu_Update
.word EnMu_Draw
glabel D_80AB0C28
 .word 0x42433F41, 0x3E000000
glabel D_80AB0C30
 .word 0x01020408, 0x10000000
glabel D_80AB0C38
 .word 0x6482EB00, 0xA0FA3C00, 0x5A3C1400, 0x1EF0C800, 0x8C461400, 0x8C461400, 0x1EF0C800, 0x5A3C1400, 0xA0FA3C00, 0x6482EB00
glabel D_80AB0C60
 .word 0x08090A0B, 0x0C000000, 0x00000000, 0x00000000

