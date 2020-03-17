.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel Bg_Toki_Hikari_InitVars
 .word 0x006A0100, 0x00000020, 0x005E0000, 0x00000154
.word BgTokiHikari_Init
.word BgTokiHikari_Destroy
.word BgTokiHikari_Update
.word BgTokiHikari_Draw
glabel D_808BAC70
 .word 0x485003E8, 0x00000000, 0x00000000, 0x00000000

