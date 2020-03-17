.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80A909A0
 .word 0x0A000939, 0x20010000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00050100, 0x00140046, 0x00000000, 0x00000000
glabel En_Kakasi2_InitVars
 .word 0x01C90600, 0x0A000031, 0x01540000, 0x000001F8
.word EnKakasi2_Init
.word EnKakasi2_Destroy
.word EnKakasi2_Update
.word 0x00000000, 0x00000000

