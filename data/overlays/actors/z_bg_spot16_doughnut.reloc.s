.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_808B6B20

.incbin "baserom/ovl_Bg_Spot16_Doughnut", 0x6E0, 0x000000A0
