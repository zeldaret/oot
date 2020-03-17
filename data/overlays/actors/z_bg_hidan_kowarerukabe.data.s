.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Bg_Hidan_Kowarerukabe_InitVars
 .word 0x00CF0100, 0x00000000, 0x002C0000, 0x000001C4
.word BgHidanKowarerukabe_Init
.word BgHidanKowarerukabe_Destroy
.word BgHidanKowarerukabe_Update
.word BgHidanKowarerukabe_Draw
glabel D_8088AE10
 .word 0x0600B9C0, 0x0600C038, 0x0600B900
glabel D_8088AE1C
 .word 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000000, 0x00010000, 0x00000000, 0x00000000, 0x00640064
glabel D_8088AE40
 .word 0x0A000900, 0x00000000, 0x00000001
.word D_8088AE1C
glabel D_8088AE50
 .word 0x0600D800, 0x0600D878, 0x0600D8F8
glabel D_8088AE5C
 .word 0x0050002D, 0x00500000
glabel D_8088AE64
 .word 0x000001F4, 0x01F40000
glabel D_8088AE6C
 .word 0x3F333333, 0x00000000, 0x00000000
glabel D_8088AE78
 .word 0xB0F407D0, 0xB0F80190, 0x30FC03E8, 0x00000000, 0x00000000, 0x00000000

