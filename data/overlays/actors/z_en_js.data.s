.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Js_InitVars
 .word 0x016A0400, 0x00000009, 0x01440000, 0x00000290
.word EnJs_Init
.word EnJs_Destroy
.word EnJs_Update
.word EnJs_Draw
glabel D_80A896B0
 .word 0x0A001139, 0x10010000, 0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, 0x001E0028, 0x00000000, 0x00000000
glabel D_80A896DC
 .word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

