.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_808B2780

.incbin "baserom/ovl_Bg_Spot11_Bakudankabe", 0x600, 0x00000070
