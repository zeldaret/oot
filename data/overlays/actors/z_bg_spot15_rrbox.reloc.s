.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_808B4710
    .incbin "baserom/ovl_Bg_Spot15_Rrbox", 0xDB0, 0x00000140
