.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.bss

glabel D_8099CCA0
 .space 0x02
glabel D_8099CCA2
 .space 0x0E

