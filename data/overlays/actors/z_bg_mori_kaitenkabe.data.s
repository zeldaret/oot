.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Bg_Mori_Kaitenkabe_InitVars
 .word 0x00880100, 0x00000000, 0x00720000, 0x00000188
.word BgMoriKaitenkabe_Init
.word BgMoriKaitenkabe_Destroy
.word BgMoriKaitenkabe_Update
.word 0x00000000
glabel D_808A53D0
 .word 0xB0F403E8, 0xB0F803E8, 0xB0FC03E8, 0x485003E8

