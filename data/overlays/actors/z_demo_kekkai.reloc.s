.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_8098E2D0
    .incbin "baserom/ovl_Demo_Kekkai", 0x1300, 0x00000190
