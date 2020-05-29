.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel En_Karebaba_InitVars
 .word 0x00C70500, 0x00000005, 0x00390000, 0x00000290
.word EnKarebaba_Init
.word EnKarebaba_Destroy
.word EnKarebaba_Update
.word EnKarebaba_Draw
glabel D_80A969F0
 .word 0x0C000900, 0x10010000, 0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010000, 0x00070019, 0x00000000, 0x00000000
glabel D_80A96A1C
 .word 0x0C110039, 0x10010000, 0x00000000, 0xFFCFFFFF, 0x00080000, 0x00000000, 0x00000000, 0x09000100
glabel D_80A96A3C
 .word 0x00040019, 0x00000000, 0x00000000
glabel D_80A96A48
 .word 0x0100000F, 0x0050FE00
glabel D_80A96A50
 .word 0xB04C09C4, 0x801F0001, 0x09170009
glabel D_80A96A5C
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80A96A68
 .word 0x00000000
glabel D_80A96A6C
 .word 0x06001330, 0x06001628, 0x06001828
glabel D_80A96A78
 .word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

