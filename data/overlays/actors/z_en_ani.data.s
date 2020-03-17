.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Ani_InitVars
 .word 0x01670400, 0x00000009, 0x00EC0000, 0x000002B4
.word EnAni_Init
.word EnAni_Destroy
.word EnAni_Update
.word EnAni_Draw
glabel D_809B0F40
 .word 0x0A001139, 0x10010000, 0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, 0x001E0028, 0x00000000, 0x00000000
glabel D_809B0F6C
 .word 0xC850000A, 0x30F40352
glabel D_809B0F74
 .word 0x44480000, 0x43FA0000, 0x00000000
glabel D_809B0F80
 .word 0x06000408, 0x06001518, 0x06001D18, 0x00000000

