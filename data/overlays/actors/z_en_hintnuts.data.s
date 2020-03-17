.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Hintnuts_InitVars
 .word 0x01920500, 0x00000005, 0x01640000, 0x00000260
.word EnHintnuts_Init
.word EnHintnuts_Destroy
.word EnHintnuts_Update
.word EnHintnuts_Draw
glabel D_80A58A00
 .word 0x06000939, 0x10010000, 0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, 0x00120020, 0x00000000, 0x00000000
glabel D_80A58A2C
 .word 0x01000012, 0x0020FE00
glabel D_80A58A34
 .word 0x00000000
glabel D_80A58A38
 .word 0xB06CFFFF, 0x8917000A, 0x304C0A28, 0x00000000, 0x00000000, 0x00000000

