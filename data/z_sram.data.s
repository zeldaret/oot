.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_8012A4E0
    .incbin "baserom.z64", 0xBA1680, 0x6

glabel D_8012A4E6
    .incbin "baserom.z64", 0xBA1686, 0x6

glabel D_8012A4EC
    .incbin "baserom.z64", 0xBA168C, 0xC

glabel D_8012A4F8
    .incbin "baserom.z64", 0xBA1698, 0x4C

glabel D_8012A544
    .incbin "baserom.z64", 0xBA16E4, 0xC

glabel D_8012A550
    .incbin "baserom.z64", 0xBA16F0, 0x60

glabel D_8012A5B0
    .incbin "baserom.z64", 0xBA1750, 0x4

glabel D_8012A5B4
    .incbin "baserom.z64", 0xBA1754, 0x4C

glabel D_8012A600
    .incbin "baserom.z64", 0xBA17A0, 0xC

glabel D_8012A60C
    .incbin "baserom.z64", 0xBA17AC, 0x60

glabel D_8012A66C
    .incbin "baserom.z64", 0xBA180C, 0x4

glabel D_8012A670
    .incbin "baserom.z64", 0xBA1810, 0x20
