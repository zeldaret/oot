.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Heishi2_InitVars
 .word 0x00B30400, 0x00000009, 0x00970000, 0x000003E4
.word EnHeishi2_Init
.word EnHeishi2_Destroy
.word EnHeishi2_Update
.word EnHeishi2_Draw
glabel D_80A54F10
 .word 0x0A000039, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x00210028, 0x00000000, 0x00000000, 0x00000000

