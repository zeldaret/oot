.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Door_Gerudo_InitVars
 .word 0x01720700, 0x00000000, 0x014B0000, 0x0000016C
.word DoorGerudo_Init
.word DoorGerudo_Destroy
.word DoorGerudo_Update
.word DoorGerudo_Draw
glabel D_80994B70
 .word 0x40500001, 0x00000000, 0x00000000, 0x00000000

