.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_80130510
    .incbin "baserom.z64", 0xBA76B0, 0x4

glabel D_80130514
    .incbin "baserom.z64", 0xBA76B4, 0x5C
