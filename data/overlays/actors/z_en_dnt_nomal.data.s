.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

.align 4

glabel En_Dnt_Nomal_InitVars
 .word 0x01A30600, 0x00000030, 0x00010000, 0x00000360
.word EnDntNomal_Init
.word EnDntNomal_Destroy
.word EnDntNomal_Update
.word 0x00000000
glabel D_809F5DD0
 .word 0x0A000039, 0x10010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x0010002E, 0x00000000, 0x00000000
glabel D_809F5DFC
 .word 0x0A000900, 0x20030000, 0x00000000, 0x00000000, 0x00000000, 0x0001F824, 0x00000000, 0x00010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
glabel D_809F5E4C
 .word 0xFFFFFFFF, 0xFFC3AFFF, 0xD2FF00FF, 0xFFFFFFFF, 0xD2FF00FF, 0xFFC3AFFF, 0xFFFFFFFF, 0xFFC3AFFF, 0xD2FF00FF
glabel D_809F5E70
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_809F5E7C
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_809F5E88
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_809F5E94
 .word 0x3E800000, 0x3E800000, 0x3E800000
glabel D_809F5EA0
 .word 0x060027D0, 0x060025D0, 0x06002750, 0x00000000

