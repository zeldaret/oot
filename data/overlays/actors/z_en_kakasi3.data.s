.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80A91D10
 .word 0x0A000939, 0x20010000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00050100, 0x00140046, 0x00000000, 0x00000000
glabel En_Kakasi3_InitVars
 .word 0x01CA0400, 0x02000009, 0x01540000, 0x0000020C
.word EnKakasi3_Init
.word EnKakasi3_Destroy
.word EnKakasi3_Update
.word EnKakasi3_Draw
.word 0x00000000

