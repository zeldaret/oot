.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80123A50
    .incbin "baserom.z64", 0xB9ABF0, 0x4

glabel D_80123A54
    .incbin "baserom.z64", 0xB9ABF4, 0x4

glabel D_80123A58
    .incbin "baserom.z64", 0xB9ABF8, 0x4

glabel D_80123A5C
    .incbin "baserom.z64", 0xB9ABFC, 0x4

glabel D_80123A60
    .incbin "baserom.z64", 0xB9AC00, 0x1D98

glabel D_801257F8
    .incbin "baserom.z64", 0xB9C998, 0x78
