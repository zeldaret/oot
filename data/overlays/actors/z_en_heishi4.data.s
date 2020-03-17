.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Heishi4_InitVars
 .word 0x01780400, 0x00000009, 0x00970000, 0x00000308
.word EnHeishi4_Init
.word EnHeishi4_Destroy
.word EnHeishi4_Update
.word EnHeishi4_Draw
glabel D_80A56EF0
 .word 0x00000006, 0x00000007
glabel D_80A56EF8
 .word 0x0A000039, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x00210028, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

