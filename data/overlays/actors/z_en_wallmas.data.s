.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Wallmas_InitVars
 .word 0x00110500, 0x00000015, 0x000B0000, 0x00000314
.word EnWallmas_Init
.word EnWallmas_Destroy
.word EnWallmas_Update
.word EnWallmas_Draw
glabel D_80B30D10
 .word 0x00000939, 0x10010000, 0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, 0x001E0028, 0x00000000, 0x00000000
glabel D_80B30D3C
 .word 0x0400001E, 0x00289600
glabel D_80B30D44
 .word 0x10020102, 0x10020210, 0x01020424, 0x02440402, 0x02240044, 0x00000104, 0x02020804, 0x00000400
glabel D_80B30D64
 .word 0x89170030, 0xB04C157C, 0x386CFA24
glabel D_80B30D70
 .word 0x00000000, 0x00000000, 0x00000000, 0x00000000

