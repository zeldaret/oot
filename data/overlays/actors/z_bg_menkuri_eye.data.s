.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Bg_Menkuri_Eye_InitVars
 .word 0x00620100, 0x00000020, 0x004D0000, 0x000001B0
.word BgMenkuriEye_Init
.word BgMenkuriEye_Destroy
.word BgMenkuriEye_Update
.word BgMenkuriEye_Draw
glabel D_8089C090
 .word 0x04000000, 0x00000000, 0x00000000, 0x0001F820, 0x00000000, 0x00010000, 0x01000000, 0x00000000, 0x000E0064
glabel D_8089C0B4
 .word 0x0A000900, 0x20000000, 0x00000001
.word D_8089C090
glabel D_8089C0C4
 .word 0x48500064, 0x00000000, 0x00000000

