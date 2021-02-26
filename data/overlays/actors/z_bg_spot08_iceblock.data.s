.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel Bg_Spot08_Iceblock_InitVars
 .word 0x00D10100, 0x00000000, 0x00740000, 0x0000019C
.word BgSpot08Iceblock_Init
.word BgSpot08Iceblock_Destroy
.word BgSpot08Iceblock_Update
.word BgSpot08Iceblock_Draw
glabel D_808B16B0
 .word 0x00000000, 0x3F800000, 0x00000000
glabel D_808B16BC
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_808B16C8
 .word 0x32756D3C, 0x31C45764, 0x30C45764
glabel D_808B16D4
 .word 0x3F75C28F, 0x3F75C28F, 0x3F7AE148
glabel D_808B16E0
 .word 0x3E665991, 0x3E665991, 0x3D0EF2BF
glabel D_808B16EC
 .word 0x3F797051, 0x3F797051, 0x3F7FD814
glabel D_808B16F8
 .word 0xB0F40BB8, 0xB0F803E8, 0x30FC0898, 0x00000000, 0x00000000, 0x00000000

