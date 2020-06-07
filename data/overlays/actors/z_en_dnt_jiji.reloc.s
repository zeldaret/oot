.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_809F3100
    .incbin "baserom/ovl_En_Dnt_Jiji", 0x1620, 0x000001C0
