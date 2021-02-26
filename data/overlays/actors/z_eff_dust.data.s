.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel Eff_Dust_InitVars
 .word 0x01010400, 0x00000030, 0x00010000, 0x00000568
.word EffDust_Init
.word EffDust_Destroy
.word EffDust_Update
.word EffDust_Draw
glabel D_8099EB60
 .word 0xDF000000, 0x00000000, 0x00000000, 0x00000000

