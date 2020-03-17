.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80886D90

.incbin "baserom/ovl_Bg_Hidan_Firewall", 0x730, 0x000000B0
