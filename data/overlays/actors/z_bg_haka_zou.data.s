.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_808835F0
 .word 0x0A000900, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x00000008, 0x00000000, 0x00010000, 0x0005003C, 0x00000000, 0x00000000
glabel D_8088361C
 .word 0x00000000, 0x00000000, 0x00000000
glabel Bg_Haka_Zou_InitVars
 .word 0x00BE0600, 0x00000010, 0x00010000, 0x000001B8
.word BgHakaZou_Init
.word BgHakaZou_Destroy
.word BgHakaZou_Update
.word 0x00000000
glabel D_80883648
 .word 0xB86CFC18, 0x48500064
glabel D_80883650
 .word 0x060064E0, 0x06005CE0, 0x06000A10, 0x06005CE0

