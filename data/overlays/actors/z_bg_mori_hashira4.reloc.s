.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_808A36F0
    .incbin "baserom/ovl_Bg_Mori_Hashira4", 0x690, 0x000000D0
