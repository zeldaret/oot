.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel En_Dy_Extra_InitVars
 .word 0x01840600, 0x00000030, 0x000A0000, 0x00000174
.word EnDyExtra_Init
.word EnDyExtra_Destroy
.word EnDyExtra_Update
.word EnDyExtra_Draw
glabel D_809FFC40
 .word 0xFFFFAAFF, 0xFFFFAAFF
glabel D_809FFC48
 .word 0xFF64FFFF, 0x64FFFFFF
glabel D_809FFC50
 .word 0x02010102, 0x00000201, 0x00020100, 0x02010002, 0x01000201, 0x00020100, 0x01020000, 0x00000000

