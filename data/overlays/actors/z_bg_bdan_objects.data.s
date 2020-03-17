.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Bg_Bdan_Objects_InitVars
 .word 0x00C80100, 0x00000010, 0x00960000, 0x000001BC
.word BgBdanObjects_Init
.word BgBdanObjects_Destroy
.word BgBdanObjects_Update
.word BgBdanObjects_Draw
glabel D_8086CD70
 .word 0x0A110000, 0x20010000, 0x00000000, 0xFFCFFFFF, 0x00040000, 0x00000000, 0x00000000, 0x09000000, 0x00BB0050, 0x00000000, 0x00000000
glabel D_8086CD9C
 .word 0x48500064
glabel D_8086CDA0
 .word 0x06008618, 0x06004BE8, 0x060038E8, 0x06005200

