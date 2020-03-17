.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_8099EC30

.incbin "baserom/ovl_Eff_Dust", 0x1360, 0x00000180
