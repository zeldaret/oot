.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.bss

glabel D_808321A0
 .space 0x02
glabel D_808321A2
 .space 0x02
glabel D_808321A4
 .space 0x02
glabel D_808321A6
 .space 0x02
glabel D_808321A8
 .space 0x08
glabel D_808321B0
 .space 0x50
glabel D_80832200
 .space 0x10

