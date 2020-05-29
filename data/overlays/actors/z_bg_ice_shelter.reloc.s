.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_80891910
    .incbin "baserom/ovl_Bg_Ice_Shelter", 0x11D0, 0x000001B0
