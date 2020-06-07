.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel Effect_Ss_G_Fire_InitVars
.word 0x0000000C
.word func_809A5ED0
glabel D_809A60D8
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_809A60E4
 .word 0x0401A220, 0x0401A620, 0x0401AA20, 0x0401AE20, 0x0401B220, 0x0401B620, 0x0401BA20, 0x0401BE20, 0x00000000, 0x00000000, 0x00000000

