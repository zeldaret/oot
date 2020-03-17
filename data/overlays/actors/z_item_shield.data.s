.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80B871A0
 .word 0x0A000939, 0x10010000, 0x00000000, 0x00000000, 0x00000000, 0x00000004, 0x00000000, 0x00010100, 0x000F000F, 0x00000000, 0x00000000
glabel Item_Shield_InitVars
 .word 0x00EE0700, 0x00000010, 0x00150000, 0x0000020C
.word ItemShield_Init
.word ItemShield_Destroy
.word ItemShield_Update
.word ItemShield_Draw
.word 0xFFFF00FF, 0xFF0000FF
glabel D_80B871F4
 .word 0x00000000
glabel D_80B871F8
 .word 0x00000000
glabel D_80B871FC
 .word 0x00000000
glabel D_80B87200
 .word 0x3E99999A, 0x3F19999A, 0x3F666666, 0x3F800000, 0x3F800000, 0x3F800000, 0x3F800000, 0x3F800000, 0x3F800000, 0x3F59999A, 0x3F333333, 0x3F0CCCCD, 0x3ECCCCCD, 0x3E800000, 0x3DCCCCCD, 0x00000000
glabel D_80B87240
 .word 0x3F800000, 0x3F800000, 0x3F800000, 0x3F800000, 0x3F800000, 0x3F800000, 0x3F800000, 0x3F4CCCCD, 0x3F19999A, 0x3ECCCCCD, 0x3E4CCCCD, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

