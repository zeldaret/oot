.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_80B10690
    .incbin "baserom/ovl_En_Syateki_Itm", 0xFE0, 0x000001E0
