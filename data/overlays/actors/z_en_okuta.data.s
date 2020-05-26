.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel En_Okuta_InitVars
 .word 0x000E0500, 0x00000005, 0x00070000, 0x000003BC
.word EnOkuta_Init
.word EnOkuta_Destroy
.word EnOkuta_Update
.word EnOkuta_Draw
glabel D_80AC2820
 .word 0x0A110939, 0x20010000, 0x00000000, 0xFFCFFFFF, 0x00080000, 0xFFCFFFFF, 0x00000000, 0x09010100, 0x000D0014, 0x00000000, 0x00000000
glabel D_80AC284C
 .word 0x00000939, 0x10010000, 0x01000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100
glabel D_80AC286C
 .byte 0x00, 0x14
glabel D_80AC286E
 .byte 0x00, 0x28, 0xFF, 0xE2, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
glabel D_80AC2878
 .word 0x0100000F, 0x003C6400
glabel D_80AC2880
 .word 0x00020102, 0x01020202, 0x01020402, 0x34020202, 0x02000000, 0x00000104, 0x02020804, 0x00000400
glabel D_80AC28A0
 .word 0x89170042, 0x304C1964
glabel D_80AC28A8
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80AC28B4
 .word 0xFFFFFFFF
glabel D_80AC28B8
 .word 0x969696FF
glabel D_80AC28BC
 .word 0x00000000, 0xBF000000, 0x00000000
glabel D_80AC28C8
 .word 0xFFFFFFFF
glabel D_80AC28CC
 .word 0x96969600

