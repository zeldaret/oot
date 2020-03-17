.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80115DC0
    .incbin "baserom.z64", 0xB8CF60, 0x1A8

glabel D_80115F68
    .incbin "baserom.z64", 0xB8D108, 0x4

glabel D_80115F6C
    .incbin "baserom.z64", 0xB8D10C, 0x4

glabel D_80115F70
    .incbin "baserom.z64", 0xB8D110, 0x10
