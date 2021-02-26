.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_80BA1C70
    .incbin "baserom/ovl_Obj_Tsubo", 0xF10, 0x00000180
