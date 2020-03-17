.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Cow_InitVars
 .word 0x01C60400, 0x00000009, 0x018B0000, 0x00000280
.word EnCow_Init
.word EnCow_Destroy
.word EnCow_Update
.word EnCow_Draw
glabel D_809E00E0
 .word 0x0A001139, 0x10010000, 0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, 0x001E0028, 0x00000000, 0x00000000
glabel D_809E010C
 .word 0x00000000, 0xC4A28000, 0x44898000, 0x00000000, 0x00000000

