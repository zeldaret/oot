.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80BA6FF0

.incbin "baserom/ovl_Oceff_Spot", 0xF80, 0x000000F0
