.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_808B9880

.incbin "baserom/ovl_Bg_Spot18_Shutter", 0x4B0, 0x00000090
