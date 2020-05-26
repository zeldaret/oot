.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_80B94BF0
    .incbin "baserom/ovl_Obj_Ice_Poly", 0x990, 0x000000B0
