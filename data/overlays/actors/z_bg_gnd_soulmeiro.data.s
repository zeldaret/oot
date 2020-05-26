.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel Bg_Gnd_Soulmeiro_InitVars
 .word 0x01B50600, 0x00000000, 0x01790000, 0x000001A0
.word BgGndSoulmeiro_Init
.word BgGndSoulmeiro_Destroy
.word BgGndSoulmeiro_Update
.word BgGndSoulmeiro_Draw
glabel D_8087B530
 .word 0x0A000900, 0x10010000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00020800, 0x00000000, 0x00010000, 0x00320014, 0x00140000, 0x00000000
glabel D_8087B55C
 .word 0xC8500064, 0xB0F403E8, 0xB0F803E8, 0x30FC03E8
glabel D_8087B56C
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_8087B578
 .word 0x06007C00, 0x06002320, 0x060035A0, 0x00000000, 0x00000000, 0x00000000

