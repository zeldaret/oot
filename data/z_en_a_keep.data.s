.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80115440
    .incbin "baserom.z64", 0xB8C5E0, 0x2C

glabel D_8011546C
    .incbin "baserom.z64", 0xB8C60C, 0x18

glabel D_80115484
    .incbin "baserom.z64", 0xB8C624, 0x3C
