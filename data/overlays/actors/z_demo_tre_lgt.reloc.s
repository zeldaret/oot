.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_80993E60
    .incbin "baserom/ovl_Demo_Tre_Lgt", 0x7A0, 0x00000090
