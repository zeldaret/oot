.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Bg_Ddan_Jd_InitVars
 .word 0x00580100, 0x00000030, 0x002B0000, 0x00000170
.word BgDdanJd_Init
.word BgDdanJd_Destroy
.word BgDdanJd_Update
.word BgDdanJd_Draw
glabel D_80871080
 .word 0x48500064, 0x00000000, 0x00000000, 0x00000000

