.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80893ED0
 .word 0x00000000
glabel Bg_Jya_Bigmirror_InitVars
 .word 0x01580100, 0x00000030, 0x00F10000, 0x00000174
.word BgJyaBigmirror_Init
.word BgJyaBigmirror_Destroy
.word BgJyaBigmirror_Update
.word BgJyaBigmirror_Draw
glabel D_80893EF4
 .word 0xC40C0000, 0x44D9E000, 0xC39B0000, 0xFF014000, 0x80000000, 0x42700000, 0x44D9E000, 0xC39B0000, 0xFF028000, 0xA0000000
glabel D_80893F1C
 .word 0x01020000
glabel D_80893F20
 .word 0x00050007, 0x00080000
glabel D_80893F28
 .word 0x42700000, 0x44E14000, 0xC489C000, 0xC40C0000, 0x44E10000, 0xC39B0000, 0x42700000, 0x44E10000, 0xC39B0000
glabel D_80893F4C
 .word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

