.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_80B96AB0
    .incbin "baserom/ovl_Obj_Lift", 0x9E0, 0x000000F0
