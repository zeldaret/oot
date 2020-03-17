.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Bg_Mori_Hashira4_InitVars
 .word 0x00E30100, 0x00000010, 0x00720000, 0x0000016C
.word BgMoriHashira4_Init
.word BgMoriHashira4_Destroy
.word BgMoriHashira4_Update
.word 0x00000000
glabel D_808A35C0
 .word 0xB0F403E8, 0xB0F802BC, 0xB0FC03E8, 0x485003E8
glabel D_808A35D0
 .word 0x06001300, 0x06008840, 0x00000000, 0x00000000

