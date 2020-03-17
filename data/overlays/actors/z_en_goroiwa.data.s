.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Goroiwa_InitVars
 .word 0x01300600, 0x00000010, 0x011F0000, 0x000001D4
.word EnGoroiwa_Init
.word EnGoroiwa_Destroy
.word EnGoroiwa_Update
.word EnGoroiwa_Draw
glabel D_80A4DE80
 .word 0x00000000, 0x20000000, 0x00040000, 0x00000000, 0x00000000, 0x01000100, 0x00000000, 0x00000000, 0x003A0064
glabel D_80A4DEA4
 .word 0x0A110039, 0x20000000, 0x00000001
.word D_80A4DE80
glabel D_80A4DEB4
 .word 0x0000000C, 0x003CFE00, 0x41200000, 0x41133333
glabel D_80A4DEC4
 .word 0x00000000, 0x426E0000
glabel D_80A4DECC
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80A4DED8
 .word 0x00000000, 0x3E99999A, 0x00000000
glabel D_80A4DEE4
 .word 0x00000000, 0x3F800000, 0x00000000
glabel D_80A4DEF0
 .word 0x00000000, 0x426E0000
glabel D_80A4DEF8
 .word 0xB86CFCA4, 0xB870C568, 0xC8500064, 0xB0F405DC, 0xB0F80096, 0x30FC05DC
glabel D_80A4DF10
 .word 0x00000000, 0x4414C000
glabel D_80A4DF18
 .word func_80A4C814
.word func_80A4C6C8
glabel D_80A4DF20
 .word func_80A4D9DC
.word func_80A4D8CC
glabel D_80A4DF28
 .word 0x00140006, 0x00000000

