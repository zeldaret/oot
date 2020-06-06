.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel En_Arrow_InitVars
 .word 0x00160700, 0x00000030, 0x00010000, 0x00000260
.word EnArrow_Init
.word EnArrow_Destroy
.word EnArrow_Update
.word EnArrow_Draw
glabel D_809B4D50
 .word 0x0A090000, 0x08030000, 0x02000000, 0x00000020, 0x00010000, 0xFFCFFFFF, 0x00000000, 0x1D000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
glabel D_809B4DA0
 .word 0x3070FF6A
glabel D_809B4DA4
 .word 0x00000000, 0x00040000, 0x00FFC8FF, 0x00FFFFFF, 0x00FFC800, 0x00FFFF00
glabel D_809B4DBC
 .word 0x10000100, 0xFFFFAAFF, 0x00960000
glabel D_809B4DC8
 .word 0x00000000, 0x00040000, 0x00FFC8FF, 0x00FFFFFF, 0x00FFC800, 0x00FFFF00, 0x10000100, 0xFFC800FF, 0xFF000000
glabel D_809B4DEC
 .word 0x00000000, 0x00040000, 0x00FFC8FF, 0x00FFFFFF, 0x00FFC800, 0x00FFFF00, 0x10000100, 0xAAFFFFFF, 0x0064FF00
glabel D_809B4E10
 .word 0x00000000, 0x00040000, 0x00FFC8FF, 0x00FFFFFF, 0x00FFC800, 0x00FFFF00, 0x10000100, 0xFFFFAAFF, 0xFFFF0000
glabel D_809B4E34
 .word 0x00000800, 0x00000020, 0x00000020, 0x00000800, 0x00001000, 0x00002000, 0x00010000, 0x00004000, 0x00008000, 0x00000004
glabel D_809B4E5C
 .word 0x010A010B, 0x010C010A, 0x010A010A
glabel D_809B4E68
 .word 0x00000000, 0x3F000000, 0x00000000
glabel D_809B4E74
 .word 0x00000000, 0x3F000000, 0x00000000
glabel D_809B4E80
 .word 0xFFFF64FF
glabel D_809B4E84
 .word 0xFF320000
glabel D_809B4E88
 .word 0x00000000, 0x43C80000, 0x44BB8000
glabel D_809B4E94
 .word 0x00000000, 0xC3C80000, 0x44BB8000
glabel D_809B4EA0
 .word 0x00000000, 0x00000000, 0xC3960000, 0x00000000

