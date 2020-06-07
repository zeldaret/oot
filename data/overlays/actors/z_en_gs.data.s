.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel En_Gs_InitVars
 .word 0x01B90600, 0x02000009, 0x01880000, 0x00000208
.word EnGs_Init
.word EnGs_Destroy
.word EnGs_Update
.word EnGs_Draw
glabel D_80A4FDA0
 .word 0x0C000D39, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, 0x00150030, 0x00000000, 0x00000000
glabel D_80A4FDCC
 .word 0x00000000, 0x00000000, 0xFF000000
glabel D_80A4FDD8
 .word 0x0000E0C0, 0xE0E0D0E0, 0xF0F0F0B0, 0xB0B00000, 0x00B0B0B0, 0x00000000, 0x00000000, 0x00000000
glabel D_80A4FDF8
 .word 0x48500064
glabel D_80A4FDFC
 .word 0xFF323200
glabel D_80A4FE00
 .word 0x3232FF00
glabel D_80A4FE04
 .word 0xFFFFFF00
glabel D_80A4FE08
 .word 0x00000000, 0xBE99999A, 0x00000000
glabel D_80A4FE14
 .word 0xC8C8C880
glabel D_80A4FE18
 .word 0x64646400
glabel D_80A4FE1C
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80A4FE28
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80A4FE34
 .word 0x00000000, 0x00000000
glabel D_80A4FE3C
 .word 0x3F800000, 0x3F800000, 0x3F800000, 0x00000000, 0x00000000

