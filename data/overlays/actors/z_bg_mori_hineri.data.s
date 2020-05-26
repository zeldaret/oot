.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_808A43E0
 .word 0xFFFF0000
glabel Bg_Mori_Hineri_InitVars
 .word 0x00680100, 0x00000030, 0x00010000, 0x0000016C
.word BgMoriHineri_Init
.word BgMoriHineri_Destroy
.word BgMoriHineri_Update
.word 0x00000000
glabel D_808A4404
 .word 0x485003E8
glabel D_808A4408
 .word 0x060024E0, 0x06001980, 0x060020F0, 0x06002B70, 0x00000000, 0x00000000

