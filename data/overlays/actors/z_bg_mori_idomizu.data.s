.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_808A4C10
 .word 0x00000000
glabel Bg_Mori_Idomizu_InitVars
 .word 0x00E40100, 0x00000030, 0x00720000, 0x00000160
.word BgMoriIdomizu_Init
.word BgMoriIdomizu_Destroy
.word BgMoriIdomizu_Update
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000

