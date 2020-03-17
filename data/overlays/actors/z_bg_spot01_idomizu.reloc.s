.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_808ABE20

.incbin "baserom/ovl_Bg_Spot01_Idomizu", 0x340, 0x00000060
