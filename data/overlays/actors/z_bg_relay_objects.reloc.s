.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_808A9520
    .incbin "baserom/ovl_Bg_Relay_Objects", 0x6D0, 0x000000C0
