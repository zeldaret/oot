.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B9B0E0
 .word 0x49A17020
glabel D_80B9B0E4
 .word 0x4A005390, 0x00000000, 0x00000000


