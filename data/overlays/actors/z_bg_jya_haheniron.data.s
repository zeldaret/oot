.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel Bg_Jya_Haheniron_InitVars
 .word 0x018F0600, 0x00000010, 0x016C0000, 0x000001B4
.word BgJyaHaheniron_Init
.word BgJyaHaheniron_Destroy
.word BgJyaHaheniron_Update
.word BgJyaHaheniron_Draw
glabel D_80898740
 .word 0x00000000, 0xFFCFFFFF, 0x00040000, 0x00000000, 0x00000000, 0x01000000, 0x00000000, 0x00000000, 0x000A0064
glabel D_80898764
 .word 0x0A110100, 0x00000000, 0x00000001
.word D_80898740
glabel D_80898774
 .byte 0x00, 0x05, 0x00, 0x08, 0x00, 0x0B, 0x00, 0x0E, 0x00, 0x11
glabel D_8089877E
 .byte 0x00, 0x00
glabel D_80898780
 .word 0xB86CF830, 0xB870C568, 0xB0F403E8, 0xB0F801F4, 0x30FC03E8
glabel D_80898794
 .word 0x3E051EB8, 0x3DCCCCCD, 0x3DCCCCCD
glabel D_808987A0
 .word 0x00000000, 0x41600000, 0x00000000
glabel D_808987AC
 .word 0x00000000, 0x41000000, 0x00000000
glabel D_808987B8
 .word 0x06000880, 0x06000AE0, 0x06000600, 0x00000000, 0x00000000, 0x00000000

