.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Floormas_InitVars
 .word 0x008E0500, 0x00000405, 0x000B0000, 0x00000314
.word EnFloormas_Init
.word EnFloormas_Destroy
.word EnFloormas_Update
.word EnFloormas_Draw
glabel D_80A1A470
 .word 0x00110939, 0x10010000, 0x00000000, 0xFFCFFFFF, 0x04100000, 0xFFCFFFFF, 0x00000000, 0x09050100, 0x00190028, 0x00000000, 0x00000000
glabel D_80A1A49C
 .word 0x0400001E, 0x00289600
glabel D_80A1A4A4
 .word 0x10020102, 0x10020210, 0x01020424, 0x02440402, 0x02240044, 0x00000104, 0x02020804, 0x00000400
glabel D_80A1A4C4
 .word 0x89170031, 0xB04C157C, 0x386CFC18
glabel D_80A1A4D0
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80A1A4DC
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80A1A4E8
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80A1A4F4
 .word 0x00FF0000, 0x00000000, 0x00000000

