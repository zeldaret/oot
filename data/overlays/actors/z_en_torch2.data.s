.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Torch2_InitVars
 .word 0x00330900, 0x00000035, 0x00200000, 0x00000A94
.word EnTorch2_Init
.word EnTorch2_Destroy
.word EnTorch2_Update
.word EnTorch2_Draw
glabel D_80B1F9F0
 .word 0x00000000
glabel D_80B1F9F4
 .word 0x00000000
glabel D_80B1F9F8
 .word 0x00000000
glabel D_80B1F9FC
 .word 0x00000000
glabel D_80B1FA00
 .word 0x00000000
glabel D_80B1FA04
 .word 0x00000000
glabel D_80B1FA08
 .word 0x10020102, 0x10020210, 0x01020402, 0x02020202, 0x02E260D3, 0x00000104, 0x02020804, 0x00000400, 0x00000000, 0x00000000

