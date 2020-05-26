.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_809846D0
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_809846DC
 .word 0xC1600000, 0x40A00000, 0x40A00000, 0xC1A00000, 0x41400000, 0x00000000, 0xC0A00000, 0x41200000, 0xBF800000, 0xC1200000, 0x41000000, 0x41600000, 0xC0400000, 0x41200000, 0x40E00000, 0xC1200000, 0x41300000, 0x00000000, 0x41100000, 0x41200000, 0xC1000000, 0x40800000, 0x41200000, 0x40400000, 0xC0C00000, 0x41500000, 0xC0A00000, 0x3F800000, 0x41100000, 0x40400000, 0xC1200000, 0x41100000, 0x3F800000
glabel D_80984760
 .word func_80983AA4
.word func_80983AC4
.word func_80983AF4
.word func_80984124
.word func_80984144
.word func_80984164
glabel D_80984778
 .word func_80984610
.word func_80983C9C
.word func_8098441C
glabel Demo_Ik_InitVars
 .word 0x01140400, 0x00000010, 0x01060000, 0x000001B4
.word DemoIk_Init
.word DemoIk_Destroy
.word DemoIk_Update
.word DemoIk_Draw
.word 0x00000000, 0x00000000, 0x00000000

