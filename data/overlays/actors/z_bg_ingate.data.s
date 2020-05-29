.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel Bg_Ingate_InitVars
 .word 0x01400600, 0x00000000, 0x01290000, 0x00000168
.word BgIngate_Init
.word BgIngate_Destroy
.word BgIngate_Update
.word BgIngate_Draw

