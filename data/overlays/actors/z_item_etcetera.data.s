.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel Item_Etcetera_InitVars
 .word 0x010F0600, 0x00000010, 0x00010000, 0x00000160
.word ItemEtcetera_Init
.word ItemEtcetera_Destroy
.word ItemEtcetera_Update
.word 0x00000000
glabel D_80B85D20
 .word 0x00C6010B, 0x00DC00BE, 0x00DB00DB, 0x00AA0158, 0x017F017F, 0x017F017F, 0x00BD00AA
glabel D_80B85D3C
 .word 0x00000044, 0x002B0015, 0x0029002A, 0x0001005F, 0x006C006D, 0x006E0070, 0x00130001
glabel D_80B85D58
 .word 0x000F0015, 0x002A0030, 0x00370038, 0x00420058, 0x00000000, 0x00000000, 0x00000000
glabel D_80B85D74
 .word 0x00000000
glabel D_80B85D78
 .word 0x3E4CCCCD
glabel D_80B85D7C
 .word 0x00000000
glabel D_80B85D80
 .word 0x00000000
glabel D_80B85D84
 .word 0x3D4CCCCD, 0x00000000
glabel D_80B85D8C
 .word 0xFFFFFF00
glabel D_80B85D90
 .word 0xFF323200, 0x00000000, 0x00000000, 0x00000000

