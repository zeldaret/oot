.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8087CCD0
 .word 0x01000000
glabel D_8087CCD4
 .word 0x01000000
glabel D_8087CCD8
 .word 0x00000000
glabel Bg_Haka_Gate_InitVars
 .word 0x00F70600, 0x00000000, 0x00690000, 0x00000174
.word BgHakaGate_Init
.word BgHakaGate_Destroy
.word BgHakaGate_Update
.word BgHakaGate_Draw
glabel D_8087CCFC
 .word 0x48500064
glabel D_8087CD00
 .word 0x06012270, 0x06010A10, 0x0600A860, 0x0600F1B0

