.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel Shot_Sun_InitVars
 .word 0x01830600, 0x00000009, 0x00010000, 0x000001A8
.word ShotSun_Init
.word ShotSun_Destroy
.word ShotSun_Update
.word 0x00000000
glabel D_80BAE2F0
 .word 0x0A000939, 0x10010000, 0x00000000, 0x00000000, 0x00000000, 0x00000020, 0x00000000, 0x00010100, 0x001E003C, 0x00000000, 0x00000000, 0x00000000

