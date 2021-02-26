.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_809F6090
    .incbin "baserom/ovl_En_Dnt_Nomal", 0x2DD0, 0x00000330
