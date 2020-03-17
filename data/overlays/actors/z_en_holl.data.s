.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Holl_InitVars
 .word 0x00230A00, 0x00000010, 0x00010000, 0x00000154
.word EnHoll_Init
.word EnHoll_Destroy
.word EnHoll_Update
.word EnHoll_Draw
glabel D_80A59A40
 .word func_80A58DD4
.word func_80A591C0
.word func_80A59520
.word func_80A59618
.word func_80A59014
.word func_80A593A4
.word func_80A59014
glabel D_80A59A5C
 .word 0xB0F40FA0, 0xB0F80190, 0x30FC0190
glabel D_80A59A68
 .word 0x43480000, 0x43160000, 0x42C80000, 0x42480000, 0x42C80000, 0x42960000, 0x42480000, 0x41C80000
glabel D_80A59A88
 .word 0x55F04E20, 0x00000000, 0x08000800, 0xFFFFFFFF, 0xAA104E20, 0x00000000, 0x00000800, 0xFFFFFFFF, 0xAA10B1E0, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x55F0B1E0, 0x00000000, 0x08000000, 0xFFFFFFFF
glabel D_80A59AC8
 .word 0xD7000000, 0xFFFFFFFF, 0xFCFFFFFF, 0xFFFDF638, 0x01004008
.word D_80A59A88
.word 0x06000204, 0x00000406, 0xDF000000, 0x00000000

