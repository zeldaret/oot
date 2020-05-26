.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_809A2200
 .word 0xFFFF64FF, 0x96FFFFFF, 0x64FFFFFF
glabel D_809A220C
 .word 0xAA0000FF, 0x006400FF, 0x0000FFFF
glabel Effect_Ss_Dt_Bubble_InitVars
.word 0x0000000E
.word func_809A1CB0

