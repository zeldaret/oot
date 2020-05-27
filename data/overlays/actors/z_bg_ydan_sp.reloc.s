.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_808C0AA0
    .incbin "baserom/ovl_Bg_Ydan_Sp", 0x1690, 0x00000180
