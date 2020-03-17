.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel En_Syateki_Niw_InitVars
 .word 0x01430600, 0x00000010, 0x00130000, 0x00000460
.word EnSyatekiNiw_Init
.word EnSyatekiNiw_Destroy
.word EnSyatekiNiw_Update
.word EnSyatekiNiw_Draw
glabel D_80B13660
 .word 0x05000939, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, 0x000A0014, 0x00040000, 0x00000000
glabel D_80B1368C
 .word 0x801F0001, 0xB86CFC18, 0x304C0000
glabel D_80B13698
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80B136A4
 .word 0x00000000, 0x3E4CCCCD, 0x00000000
glabel D_80B136B0
 .word 0x000000FF
glabel D_80B136B4
 .word 0x000000FF
glabel D_80B136B8
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80B136C4
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80B136D0
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_80B136DC
 .word 0x000000FF

