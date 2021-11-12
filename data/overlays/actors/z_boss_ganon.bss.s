.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .bss

.balign 16

glabel sCape
 .space 0x04
glabel D_808F93C4
 .space 0x04
glabel D_808F93C8
 .space 0x04
glabel D_808F93CC
 .space 0x04
glabel sGanondorf
 .space 0x04
glabel sZelda
 .space 0x04
glabel sEffectBuf
 .space 0x3B68

