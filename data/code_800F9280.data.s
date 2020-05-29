.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_80133400
    .incbin "baserom.z64", 0xBAA5A0, 0x4

glabel D_80133404
    .incbin "baserom.z64", 0xBAA5A4, 0x4

glabel D_80133408
    .incbin "baserom.z64", 0xBAA5A8, 0x4

glabel D_8013340C
    .incbin "baserom.z64", 0xBAA5AC, 0x4

glabel D_80133410
    .incbin "baserom.z64", 0xBAA5B0, 0x4

glabel D_80133414
    .incbin "baserom.z64", 0xBAA5B4, 0x4

glabel D_80133418
    .incbin "baserom.z64", 0xBAA5B8, 0x3B0

glabel D_801337C8
    .incbin "baserom.z64", 0xBAA968, 0x5

glabel D_801337CD
    .incbin "baserom.z64", 0xBAA96D, 0x1

glabel D_801337CE
    .incbin "baserom.z64", 0xBAA96E, 0x3F2
