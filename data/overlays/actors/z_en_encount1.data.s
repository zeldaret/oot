.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_80A07450
 .word 0x00002710, 0x71488EB8, 0xD8F00000
glabel D_80A0745C
 .word 0x43480000, 0x432A0000, 0x42F00000, 0x42F00000, 0x432A0000
glabel En_Encount1_InitVars
 .word 0x00A70600, 0x08000010, 0x00010000, 0x00000170
.word EnEncount1_Init
.word 0x00000000
.word EnEncount1_Update
.word 0x00000000

