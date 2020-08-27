.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel Bg_Gnd_Darkmeiro_InitVars
 .word 0x01B40600, 0x00000030, 0x01790000, 0x00000170
.word BgGndDarkmeiro_Init
.word BgGndDarkmeiro_Destroy
.word BgGndDarkmeiro_Update
.word 0x00000000

