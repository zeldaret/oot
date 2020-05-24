.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

.align 4

glabel En_Mm2_InitVars
 .word 0x01D40400, 0x00000019, 0x013C0000, 0x000002BC
.word EnMm2_Init
.word EnMm2_Destroy
.word EnMm2_Update
.word EnMm2_Draw
glabel D_80AAFAC0
 .word 0x0A000939, 0x10010000, 0x00000000, 0x00000000, 0x00000000, 0x00000004, 0x00000000, 0x00010100, 0x0012003F, 0x00000000, 0x00000000
glabel D_80AAFAEC
 .word 0x06000718, 0x3F800000, 0x00000000, 0xC0E00000, 0x06006940, 0xBF800000, 0x02000000, 0xC0E00000, 0x06006C50, 0x3F800000, 0x00000000, 0xC0E00000, 0x06006940, 0x3F800000, 0x02000000, 0xC0E00000, 0x06000468, 0x3F800000, 0x00000000, 0xC0E00000, 0x060073A0, 0x3F800000, 0x00000000, 0xC1400000, 0x06008060, 0x3F800000, 0x00000000, 0xC1400000
glabel D_80AAFB5C
 .word 0x30F40FA0
glabel D_80AAFB60
 .word 0x06000E30, 0x06000C30
glabel D_80AAFB68
 .word 0x43480000, 0x44480000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

