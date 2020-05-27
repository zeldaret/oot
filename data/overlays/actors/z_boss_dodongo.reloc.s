.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_808CA7E0
    .incbin "baserom/ovl_Boss_Dodongo", 0x9650, 0x000005E0
