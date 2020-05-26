.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_80915520
    .incbin "baserom/ovl_Boss_Ganondrof", 0x4EE0, 0x000004F0
