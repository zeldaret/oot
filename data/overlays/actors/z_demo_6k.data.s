.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel Demo_6K_InitVars
 .word 0x00F50600, 0x00000010, 0x00010000, 0x00000294
.word Demo6K_Init
.word Demo6K_Destroy
.word Demo6K_Update
.word 0x00000000
glabel D_809692D0
 .word 0x000100ED, 0x00ED0001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x011A0001, 0x00010001, 0x00010001, 0x00010001
glabel D_809692F8
 .word 0xFF320000, 0xC800C8FF, 0x00C832FF, 0xFF960000, 0x96FF0000
glabel D_8096930C
 .word 0x3F800000, 0x3F851EB8, 0x3F800000, 0x3F75C28F
glabel D_8096931C
 .byte 0x3F, 0x8C, 0xCC, 0xCD, 0x3F, 0x80, 0x00, 0x00, 0x3F, 0x66, 0x66, 0x66, 0x3F, 0x4C, 0xCC, 0xCD
glabel D_8096932C
 .byte 0x01, 0x13, 0x01, 0x13, 0x01, 0x13, 0x01, 0x13, 0x01, 0x13, 0x01, 0x13
glabel D_80969338
 .word 0x00000000
glabel D_8096933C
 .word 0x00000000
glabel D_80969340
 .word 0x00000000
glabel D_80969344
 .word 0x00000000
glabel D_80969348
 .word 0x00000000, 0x00000000
glabel D_80969350
 .word 0xFFFFFF00
glabel D_80969354
 .byte 0xFF, 0x96, 0x00, 0x00
glabel D_80969358
 .word 0x00000000
glabel D_8096935C
 .word 0x00000000
glabel D_80969360
 .word 0x00000000
glabel D_80969364
 .word 0x00000000
glabel D_80969368
 .word 0x00000000, 0x00000000
glabel D_80969370
 .word 0xFFFFFF00
glabel D_80969374
 .word 0xFF960000
glabel D_80969378
 .word 0x00000000
glabel D_8096937C
 .word 0x00000000
glabel D_80969380
 .word 0x00000000
glabel D_80969384
 .word 0x00000000
glabel D_80969388
 .word 0x00000000, 0x00000000
glabel D_80969390
 .word 0xFFFFFF00
glabel D_80969394
 .word 0xFFC80000
glabel D_80969398
 .word 0xFFAAFFFF, 0x0064FFFF, 0xAA00FF00, 0xFFFFAAFF, 0xFF00FFAA, 0xFF3200FF, 0xFFFFAAFF, 0x6400AAFF, 0xFF0064FF
glabel D_809693BC
 .word 0x06070B10, 0x14181C21, 0x23292D32, 0x393A3EFF
glabel D_809693CC
 .word 0x00010203, 0x04050607, 0x08070605, 0x04030201, 0x00000000

