.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_M_Thunder_InitVars
 .word 0x00570700, 0x00000000, 0x00010000, 0x000001CC
.word EnMThunder_Init
.word EnMThunder_Destroy
.word EnMThunder_Update
.word EnMThunder_Draw
glabel D_80AA0420
 .word 0x0A090000, 0x10010000, 0x02000000, 0x00000001, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x19010100, 0x00C800C8, 0x00000000, 0x00000000
glabel D_80AA044C
 .word 0x01000000, 0x00400000, 0x00800000
glabel D_80AA0458
 .word 0x08000000, 0x02000000, 0x04000000
glabel D_80AA0464
 .word 0x182F182E, 0x182F182E
glabel D_80AA046C
 .word 0x3DCCCCCD, 0x3E19999A, 0x3E4CCCCD, 0x3E800000, 0x3E99999A, 0x3E800000, 0x3E4CCCCD, 0x3E19999A, 0x00000000

