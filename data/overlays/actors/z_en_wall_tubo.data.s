.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel En_Wall_Tubo_InitVars
 .word 0x01BE0600, 0x00000010, 0x00010000, 0x00000170
.word EnWallTubo_Init
.word EnWallTubo_Destroy
.word EnWallTubo_Update
.word 0x00000000
glabel D_80B2F340
 .word 0x00000000, 0x3DCCCCCD, 0x00000000
glabel D_80B2F34C
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80B2F358
 .word 0x00000000, 0x3DCCCCCD, 0x00000000
glabel D_80B2F364
 .word 0x00000000, 0x00000000, 0x00000000

