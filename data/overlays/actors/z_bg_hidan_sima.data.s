.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Bg_Hidan_Sima_InitVars
 .word 0x00460100, 0x00000000, 0x002C0000, 0x0000020C
.word BgHidanSima_Init
.word BgHidanSima_Destroy
.word BgHidanSima_Update
.word BgHidanSima_Draw
glabel D_8088F1A0
 .word 0x00000000, 0x20000000, 0x01040000, 0x00000000, 0x00000000, 0x19000000, 0x01000000, 0x00280064, 0x00160064, 0x00000000, 0x20000000, 0x01040000, 0x00000000, 0x00000000, 0x19000000, 0x01000000, 0x00280091, 0x001E0064
glabel D_8088F1E8
 .word 0x0A110000, 0x20000000, 0x00000002
.word D_8088F1A0
glabel D_8088F1F8
 .word 0x48500064
glabel D_8088F1FC
 .word 0x06015D20, 0x06016120, 0x06016520, 0x06016920, 0x06016D20, 0x06017120, 0x06017520, 0x06017920, 0x00000000

