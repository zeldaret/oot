.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80879440

.incbin "baserom/ovl_Bg_Gnd_Darkmeiro", 0x810, 0x00000080
