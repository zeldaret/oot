.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata
glabel D_80B98100

.incbin "baserom/ovl_Obj_Lightswitch", 0x1560, 0x00000170
