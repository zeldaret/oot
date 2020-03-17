.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_808AFA50

.incbin "baserom/ovl_Bg_Spot06_Objects", 0x12D0, 0x000001E0
