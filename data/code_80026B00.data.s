.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_80115860
    .incbin "baserom.z64", 0xB8CA00, 0x4

glabel D_80115864
    .incbin "baserom.z64", 0xB8CA04, 0x4

glabel D_80115868
    .incbin "baserom.z64", 0xB8CA08, 0x14

glabel D_8011587C
    .incbin "baserom.z64", 0xB8CA1C, 0x28

glabel D_801158A4
    .incbin "baserom.z64", 0xB8CA44, 0xC
