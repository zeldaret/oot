.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel Bg_Gnd_Firemeiro_InitVars
 .word 0x01B30600, 0x00000030, 0x01790000, 0x00000178
.word BgGndFiremeiro_Init
.word BgGndFiremeiro_Destroy
.word BgGndFiremeiro_Update
.word BgGndFiremeiro_Draw

