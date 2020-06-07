.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel Item_Ocarina_InitVars
 .word 0x00F10700, 0x00000010, 0x00DE0000, 0x00000154
.word ItemOcarina_Init
.word ItemOcarina_Destroy
.word ItemOcarina_Update
.word ItemOcarina_Draw

