.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Toryo_InitVars
 .word 0x01320400, 0x00000009, 0x01210000, 0x000002E0
.word EnToryo_Init
.word EnToryo_Destroy
.word EnToryo_Update
.word EnToryo_Draw
glabel D_80B20C00
 .word 0x0A000039, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000100, 0x0012003F, 0x00000000, 0x00000000
glabel D_80B20C2C
 .word 0x00000000, 0x00000000, 0xFF000000
glabel D_80B20C38
 .word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
glabel D_80B20C58
 .word 0x06000E50, 0x3F800000, 0x00000000, 0x00000000
glabel D_80B20C68
 .word 0x44480000, 0x447A0000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

