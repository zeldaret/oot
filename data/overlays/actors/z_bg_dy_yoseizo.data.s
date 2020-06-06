.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.word 0x0000005D, 0x0000005E, 0x0000005C
glabel Bg_Dy_Yoseizo_InitVars
 .word 0x000B0600, 0x02000030, 0x000A0000, 0x000038B4
.word BgDyYoseizo_Init
.word BgDyYoseizo_Destroy
.word BgDyYoseizo_Update
.word 0x00000000
glabel D_8087546C
 .word 0xFFFFFFFF, 0xFF6464FF, 0x64FF6464, 0xFFFFAAFF, 0xFF6464FF, 0x64FF6464, 0xFFFFAA00
glabel D_80875488
 .word 0x9BFFFFFF, 0xFF6464FF, 0x64FF6464, 0xFF64FFFF, 0xFF6464FF, 0x64FF6464, 0x64FFFF00
glabel D_808754A4
 .word 0x00000000, 0x00000000, 0x00000000
glabel D_808754B0
 .word 0x00020000, 0x00010000
glabel D_808754B8
 .word 0x00110010, 0x00120000
glabel D_808754C0
 .word 0x01000200, 0x04000000
glabel D_808754C8
 .word 0x0D051300
glabel D_808754CC
 .word 0x06017930, 0x06018130, 0x06018930
glabel D_808754D8
 .word 0x06019130, 0x0601A130

