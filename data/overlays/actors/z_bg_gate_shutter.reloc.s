.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80878630

.incbin "baserom/ovl_Bg_Gate_Shutter", 0x4D0, 0x00000090
