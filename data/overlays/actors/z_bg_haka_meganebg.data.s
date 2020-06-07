.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel Bg_Haka_MeganeBG_InitVars
 .word 0x00AF0100, 0x00000000, 0x00690000, 0x0000016C
.word BgHakaMeganeBG_Init
.word BgHakaMeganeBG_Destroy
.word BgHakaMeganeBG_Update
.word BgHakaMeganeBG_Draw
glabel D_8087E3F0
 .word 0xB0F803E8, 0xB0FC03E8, 0x48500064, 0x00000000, 0x00000000, 0x00000000, 0xC8C800FF, 0xFF0000FF
glabel D_8087E410
 .word 0x06008EB0, 0x0600A1A0, 0x06005000, 0x06000040

