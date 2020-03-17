.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Obj_Syokudai_InitVars
 .word 0x005E0600, 0x00000410, 0x00A40000, 0x000001FC
.word ObjSyokudai_Init
.word ObjSyokudai_Destroy
.word ObjSyokudai_Update
.word ObjSyokudai_Draw
glabel D_80B9FE10
 .word 0x09000D39, 0x20010000, 0x02000000, 0x00100000, 0x00000000, 0xEE01FFFF, 0x00000000, 0x00050100, 0x000C002D, 0x00000000, 0x00000000
glabel D_80B9FE3C
 .word 0x0A000900, 0x00010000, 0x02000000, 0x00000000, 0x00000000, 0x00020820, 0x00000000, 0x00010000, 0x000F002D, 0x002D0000, 0x00000000
glabel D_80B9FE68
 .word 0xC85003E8, 0xB0F40FA0, 0xB0F80320, 0x30FC0320
glabel D_80B9FE78
 .word 0x090B0B00
glabel D_80B9FE7C
 .word 0x060003A0, 0x06000B90, 0x06000870, 0x00000000, 0x00000000

