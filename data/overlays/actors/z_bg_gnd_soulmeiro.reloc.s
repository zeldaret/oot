.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_8087B5F0
    .incbin "baserom/ovl_Bg_Gnd_Soulmeiro", 0x830, 0x000000C0
