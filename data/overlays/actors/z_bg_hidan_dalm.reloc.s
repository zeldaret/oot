.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_808865C0
    .incbin "baserom/ovl_Bg_Hidan_Dalm", 0x7A0, 0x000000A0
