.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel Bg_Hidan_Hrock_InitVars
 .word 0x00410100, 0x00000000, 0x002C0000, 0x00000244
.word BgHidanHrock_Init
.word BgHidanHrock_Destroy
.word BgHidanHrock_Update
.word BgHidanHrock_Draw
glabel D_80889820
 .word 0x00000000, 0x00000000, 0x00000000, 0x40000040, 0x00000000, 0x00790000, 0xC2200000, 0x40400000, 0xC2200000, 0xC2200000, 0x40400000, 0x42200000, 0x42200000, 0x40400000, 0x42200000, 0x00000000, 0x00000000, 0x00000000, 0x40000040, 0x00000000, 0x00790000, 0x42200000, 0x40400000, 0x42200000, 0x42200000, 0x40400000, 0xC2200000, 0xC2200000, 0x40400000, 0xC2200000
glabel D_80889898
 .word 0x0A000900, 0x20020000, 0x00000002
glabel D_808898A4
 .word D_80889820
glabel D_808898A8
 .word 0xC8500064, 0x306CFFFF
glabel D_808898B0
 .word 0x0600A240, 0x0600C838, 0x0600C838, 0x00000000

