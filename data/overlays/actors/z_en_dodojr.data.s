.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel En_Dodojr_InitVars
 .word 0x002F0500, 0x00000005, 0x001F0000, 0x000002C0
.word EnDodojr_Init
.word EnDodojr_Destroy
.word EnDodojr_Update
.word EnDodojr_Draw
glabel D_809F7EB0
 .word 0x06110939, 0x10010000, 0x00000000, 0xFFCFFFFF, 0x00080000, 0xFFC5FFFF, 0x00000000, 0x01010100, 0x00120014, 0x00000000, 0x00000000
glabel D_809F7EDC
 .word 0x01000002, 0x00190019, 0xFF000000
glabel D_809F7EE8
 .word 0xAA825AFF
glabel D_809F7EEC
 .word 0x643C1400
glabel D_809F7EF0
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_809F7EFC
 .word 0x00000000, 0x3E99999A, 0x00000000
glabel D_809F7F08
 .word 0xAA825AFF
glabel D_809F7F0C
 .word 0x643C1400
glabel D_809F7F10
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_809F7F1C
 .word 0x00000000, 0x3E99999A, 0x00000000
glabel D_809F7F28
 .word 0x47C34F80, 0x47C34F80, 0x47C34F80
glabel D_809F7F34
 .word 0x00000000, 0x43520000, 0x42700000, 0x43870000, 0x42F00000, 0x43A50000, 0x43340000, 0x41F00000, 0x43700000, 0x42B40000, 0x43960000, 0x43160000
glabel D_809F7F64
 .word 0x43F00000, 0x441B0000, 0x00000000

