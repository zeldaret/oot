.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

.align 4

glabel D_809A85B0
 .word 0xFFFFFFFF, 0xFF00FFFF, 0xFFFF0000, 0xFFC864C8, 0x96009664, 0x00643200, 0xFFFFFFFF, 0x0000FFFF, 0x00FF0000, 0xFFFFFF00, 0xFFC8FFFF, 0xFF9600FF
glabel D_809A85E0
 .word 0x0401F370, 0x0401F4F0, 0x0401F670, 0x0401F7F0, 0x0401F970, 0x0401FAF0, 0x0401FC70, 0x0401FDF0, 0x0401FF70, 0x040200F0, 0x04020270, 0x040203F0, 0x04020570, 0x040206F0, 0x04020870, 0x040209F0, 0x04020B70, 0x04020CF0, 0x04020E70, 0x04020FF0, 0x04021170, 0x040212F0, 0x04021470, 0x040215F0, 0x0401F370, 0x0401F4F0, 0x0401F670, 0x0401F7F0, 0x0401F970, 0x0401FAF0, 0x0401FC70, 0x0401FDF0
glabel Effect_Ss_HitMark_InitVars
.word 0x00000015
.word func_809A8150
.word 0x00000000, 0x00000000

