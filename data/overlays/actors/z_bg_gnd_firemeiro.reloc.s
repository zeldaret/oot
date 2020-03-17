.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80879A30

.incbin "baserom/ovl_Bg_Gnd_Firemeiro", 0x570, 0x00000070
