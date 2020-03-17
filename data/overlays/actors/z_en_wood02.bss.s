.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.bss

glabel D_80B3C1D0
 .space 0x04
glabel D_80B3C1D4
 .space 0x0C

