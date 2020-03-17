.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8011E0B0
    .incbin "baserom.z64", 0xB95250, 0x4

glabel D_8011E0B4
    .incbin "baserom.z64", 0xB95254, 0x20

glabel D_8011E0D4
    .incbin "baserom.z64", 0xB95274, 0x74

glabel D_8011E148
    .incbin "baserom.z64", 0xB952E8, 0x28
