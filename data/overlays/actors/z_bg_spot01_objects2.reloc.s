.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_808AC5C0

.incbin "baserom/ovl_Bg_Spot01_Objects2", 0x480, 0x000000A0
