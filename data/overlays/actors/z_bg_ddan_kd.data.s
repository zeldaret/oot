.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Bg_Ddan_Kd_InitVars
 .word 0x005C0100, 0x00000010, 0x002B0000, 0x000001C8
.word BgDdanKd_Init
.word BgDdanKd_Destroy
.word BgDdanKd_Update
.word BgDdanKd_Draw
glabel D_808718C0
 .word 0x0A003900, 0x00010000, 0x02000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010000, 0x00F500B4, 0xFE700000, 0x00000000
glabel D_808718EC
 .word 0xC8500064, 0xB0F87FFF, 0xB0FC7FFF, 0x30F47FFF
glabel D_808718FC
 .word 0x00000000, 0x40A00000
glabel D_80871904
 .word 0x00000000
glabel D_80871908
 .word 0x00000000, 0xBEE66666, 0x00000000, 0x00000000, 0x00000000, 0x00000000

