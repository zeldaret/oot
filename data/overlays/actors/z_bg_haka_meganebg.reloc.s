.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_8087E430
    .incbin "baserom/ovl_Bg_Haka_MeganeBG", 0x600, 0x000000B0
