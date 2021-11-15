.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_80130510
    .word 0

glabel D_80130514
    .word 0

.word 0, 0  # file boundary

glabel D_80130520
    .incbin "baserom.z64", 0xBA76C0, 0x50
