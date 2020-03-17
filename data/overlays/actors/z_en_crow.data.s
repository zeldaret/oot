.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_809E1640
 .word 0x00000000, 0x00000000, 0x00000000
glabel En_Crow_InitVars
 .word 0x01C00500, 0x00005005, 0x00080000, 0x00000298
.word EnCrow_Init
.word EnCrow_Destroy
.word EnCrow_Update
.word EnCrow_Draw
glabel D_809E166C
 .word 0x00000000, 0xFFCFFFFF, 0x00080000, 0xFFCFFFFF, 0x00000000, 0x09010100, 0x01000000, 0x00000000, 0x00140064
glabel D_809E1690
 .word 0x03110939, 0x10000000, 0x00000001
glabel D_809E169C
 .word D_809E166C
glabel D_809E16A0
 .word 0x0100000F, 0x001E1E00
glabel D_809E16A8
 .word 0x10020102, 0x01020202, 0x01020424, 0x32020402, 0x02240000, 0x00000104, 0x02020804, 0x00000400
glabel D_809E16C8
 .word 0x00000000
glabel D_809E16CC
 .word 0xB0F80BB8, 0x89170058, 0xB86CFF38, 0x304C07D0
glabel D_809E16DC
 .word 0x451C4000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

