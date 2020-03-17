.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Wonder_Talk2_InitVars
 .word 0x01850700, 0x08000009, 0x00010000, 0x00000170
.word EnWonderTalk2_Init
.word EnWonderTalk2_Destroy
.word EnWonderTalk2_Update
.word 0x00000000
glabel D_80B3A8E0
 .word 0x00060000, 0x00010002, 0x00030004, 0x00050000

