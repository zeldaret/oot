.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80A9C1D0
 .word 0x00000000
glabel D_80A9C1D4
 .word 0x00000000
glabel D_80A9C1D8
 .word 0x00000000
glabel D_80A9C1DC
 .word 0x00000000
glabel En_Kusa_InitVars
 .word 0x01250600, 0x00800010, 0x00010000, 0x000001A0
.word EnKusa_Init
.word EnKusa_Destroy
.word EnKusa_Update
.word 0x00000000
glabel D_80A9C200
 .word 0x0002012B, 0x012B0000
glabel D_80A9C208
 .word 0x0A000929, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x4FC00758, 0x00000000, 0x00010100, 0x000C002C, 0x00000000, 0x00000000
glabel D_80A9C234
 .word 0x0000000C, 0x001EFF00
glabel D_80A9C23C
 .word 0x00000000, 0x3F350481, 0x3F350481, 0x3F350481, 0x3F350481, 0x00000000, 0x00000000, 0x3F350481, 0xBF350481, 0xBF350481, 0x3F350481, 0x00000000
glabel D_80A9C26C
 .word 0x006C0066, 0x00600054, 0x00420037, 0x002A0026
glabel D_80A9C27C
 .word 0xC8500190, 0xB86CF380, 0xB870BD98, 0xB0F404B0, 0xB0F80064, 0x30FC0078
glabel D_80A9C294
 .word 0x0500B9D0, 0x06000140, 0x06000140

