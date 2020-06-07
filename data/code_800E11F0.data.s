.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_801304D0
    .word osEPiStartDma

glabel D_801304D4
    .incbin "baserom.z64", 0xBA7674, 0x4

glabel D_801304D8
    .incbin "baserom.z64", 0xBA7678, 0x4

glabel D_801304DC
    .incbin "baserom.z64", 0xBA767C, 0x4

glabel D_801304E0
    .incbin "baserom.z64", 0xBA7680, 0x4

glabel D_801304E4
    .incbin "baserom.z64", 0xBA7684, 0x4

glabel D_801304E8
    .incbin "baserom.z64", 0xBA7688, 0x4

glabel D_801304EC
    .incbin "baserom.z64", 0xBA768C, 0x4

glabel D_801304F0
    .incbin "baserom.z64", 0xBA7690, 0x10
