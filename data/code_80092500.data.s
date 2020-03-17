.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80126250
    .incbin "baserom.z64", 0xB9D3F0, 0x4

glabel D_80126254
    .incbin "baserom.z64", 0xB9D3F4, 0x4

glabel D_80126258
    .incbin "baserom.z64", 0xB9D3F8, 0x28
