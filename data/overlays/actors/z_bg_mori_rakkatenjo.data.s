.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_808A5E60
 .word 0x00000000
glabel Bg_Mori_Rakkatenjo_InitVars
 .word 0x00890100, 0x00000030, 0x00720000, 0x00000178
.word BgMoriRakkatenjo_Init
.word BgMoriRakkatenjo_Destroy
.word BgMoriRakkatenjo_Update
.word 0x00000000
glabel D_808A5E84
 .word 0xB06CFFFF, 0xB070FFF5, 0x485003E8
glabel D_808A5E90
 .word 0x40800000, 0x3FC00000, 0x3ECCCCCD, 0x3DCCCCCD

