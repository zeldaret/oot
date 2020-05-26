.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel Arms_Hook_InitVars
 .word 0x00660700, 0x00000030, 0x00140000, 0x00000218
.word ArmsHook_Init
.word ArmsHook_Destroy
.word ArmsHook_Update
.word ArmsHook_Draw
glabel D_80865B00
 .word 0x0A090000, 0x08030000, 0x02000000, 0x00000080, 0x00010000, 0xFFCFFFFF, 0x00000000, 0x05000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x3F000000, 0x00000000, 0x00000000, 0x3F000000, 0x00000000, 0xFFFF64FF, 0xFF320000
glabel D_80865B70
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80865B7C
 .word 0x00000000, 0x00000000, 0x44610000
glabel D_80865B88
 .word 0x00000000, 0x43FA0000, 0xC53B8000
glabel D_80865B94
 .word 0x00000000, 0xC3FA0000, 0xC53B8000
glabel D_80865BA0
 .word 0x00000000, 0x43FA0000, 0x44960000
glabel D_80865BAC
 .word 0x00000000, 0xC3FA0000, 0x44960000, 0x00000000, 0x00000000

