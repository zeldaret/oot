.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80889E40
 .word 0x42F00000, 0x43160000, 0x43160000
glabel Bg_Hidan_Kousi_InitVars
 .word 0x006F0600, 0x00000010, 0x002C0000, 0x0000016C
.word BgHidanKousi_Init
.word BgHidanKousi_Destroy
.word BgHidanKousi_Update
.word BgHidanKousi_Draw
glabel D_80889E6C
 .word 0x48500064
glabel D_80889E70
 .word 0x0600E2CC, 0x0600E380, 0x0600E430
glabel D_80889E7C
 .word 0x4000C000, 0xC0000000
glabel D_80889E84
 .word 0x0600C798, 0x0600BFA8, 0x0600BB58

