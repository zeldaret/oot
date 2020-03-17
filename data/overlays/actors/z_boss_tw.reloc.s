.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_8094B230

.incbin "baserom/ovl_Boss_Tw", 0x12560, 0x00001610
