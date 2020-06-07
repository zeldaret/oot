.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_808BEC80
    .incbin "baserom/ovl_Bg_Ydan_Hasi", 0x780, 0x000000C0
