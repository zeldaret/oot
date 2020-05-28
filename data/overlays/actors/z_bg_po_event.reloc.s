.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_808A7E10
    .incbin "baserom/ovl_Bg_Po_Event", 0x1C00, 0x00000290
