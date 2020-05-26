.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel Bg_Ydan_Sp_InitVars
 .word 0x000F0100, 0x00000000, 0x00360000, 0x00000248
.word BgYdanSp_Init
.word BgYdanSp_Destroy
.word BgYdanSp_Update
.word BgYdanSp_Draw
glabel D_808C0930
 .word 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00020800, 0x00000000, 0x00010000, 0x42960000, 0xC1000000, 0x42960000
glabel D_808C0954
 .word 0xC2960000, 0xC1000000, 0x42960000, 0xC2960000, 0xC1000000, 0xC2960000
glabel D_808C096C
 .word 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00020800, 0x00000000, 0x00010000
glabel D_808C0984
 .word 0x430C0000, 0x43906666, 0x00000000
glabel D_808C0990
 .word 0xC30C0000, 0x43900000, 0x00000000, 0xC30C0000
glabel D_808C09A0
 .word 0x00000000, 0x00000000
glabel D_808C09A8
 .word 0x0A000900, 0x20020000, 0x00000002
.word D_808C0930
glabel D_808C09B8
 .word 0x48500064
glabel D_808C09BC
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_808C09C8
 .word 0xFAFAFAFF
glabel D_808C09CC
 .word 0xB4B4B4FF
glabel D_808C09D0
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_808C09DC
 .word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

