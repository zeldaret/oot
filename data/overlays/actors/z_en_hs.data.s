.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel En_Hs_InitVars
 .word 0x013F0400, 0x00000009, 0x01280000, 0x000002B0
.word EnHs_Init
.word EnHs_Destroy
.word EnHs_Update
.word EnHs_Draw
glabel D_80A6EDD0
 .word 0x0A001139, 0x10010000, 0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, 0x00280028, 0x00000000, 0x00000000
glabel D_80A6EDFC
 .word 0x43960000, 0x447A0000, 0x00000000, 0x00000000, 0x00000000

