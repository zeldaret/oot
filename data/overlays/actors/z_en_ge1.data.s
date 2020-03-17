.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Ge1_InitVars
 .word 0x01380400, 0x00000009, 0x01160000, 0x000002BC
.word EnGe1_Init
.word EnGe1_Destroy
.word EnGe1_Update
.word EnGe1_Draw
glabel D_80A32770
 .word 0x0A001139, 0x10010000, 0x00000000, 0x00000000, 0x00000000, 0x00000702, 0x00000000, 0x00010100, 0x00140028, 0x00000000, 0x00000000
glabel D_80A3279C
 .word 0x06009198, 0x06009430, 0x06009690
glabel D_80A327A8
 .word 0x44160000, 0x442F0000, 0x00000000
glabel D_80A327B4
 .word 0x06000708, 0x06000F08, 0x06001708

