.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80133340
    .incbin "baserom.z64", 0xBAA4E0, 0x4

glabel D_80133344
    .incbin "baserom.z64", 0xBAA4E4, 0x4C

glabel D_80133390
    .incbin "baserom.z64", 0xBAA530, 0x8

glabel D_80133398
    .incbin "baserom.z64", 0xBAA538, 0x8

glabel D_801333A0
    .incbin "baserom.z64", 0xBAA540, 0x4

glabel D_801333A4
    .incbin "baserom.z64", 0xBAA544, 0x4

glabel D_801333A8
    .incbin "baserom.z64", 0xBAA548, 0x1C

glabel D_801333C4
    .incbin "baserom.z64", 0xBAA564, 0x8

glabel D_801333CC
    .incbin "baserom.z64", 0xBAA56C, 0x4

glabel D_801333D0
    .incbin "baserom.z64", 0xBAA570, 0x4

glabel D_801333D4
    .incbin "baserom.z64", 0xBAA574, 0xC

glabel D_801333E0
    .incbin "baserom.z64", 0xBAA580, 0x8

glabel D_801333E8
    .incbin "baserom.z64", 0xBAA588, 0x8

glabel D_801333F0
    .incbin "baserom.z64", 0xBAA590, 0x4

glabel D_801333F4
    .incbin "baserom.z64", 0xBAA594, 0x4

glabel D_801333F8
    .incbin "baserom.z64", 0xBAA598, 0x8
