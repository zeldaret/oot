.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_80B9A8D0
    .incbin "baserom/ovl_Obj_Mure2", 0x990, 0x00000100
