.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_801154E0
    .incbin "baserom.z64", 0xB8C680, 0x2C

glabel D_8011550C
    .incbin "baserom.z64", 0xB8C6AC, 0x4

glabel D_80115510
    .incbin "baserom.z64", 0xB8C6B0, 0x4

glabel D_80115514
    .incbin "baserom.z64", 0xB8C6B4, 0x4

glabel D_80115518
    .incbin "baserom.z64", 0xB8C6B8, 0xC

glabel D_80115524
    .incbin "baserom.z64", 0xB8C6C4, 0xC

glabel D_80115530
    .incbin "baserom.z64", 0xB8C6D0, 0x14

glabel D_80115544
    .incbin "baserom.z64", 0xB8C6E4, 0x30

glabel D_80115574
    .incbin "baserom.z64", 0xB8C714, 0xF0

glabel D_80115664
    .incbin "baserom.z64", 0xB8C804, 0xFC
