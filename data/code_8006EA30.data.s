.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8011FAA0
    .incbin "baserom.z64", 0xB96C40, 0x8

glabel D_8011FAA8
    .incbin "baserom.z64", 0xB96C48, 0x10

glabel D_8011FAB8
    .incbin "baserom.z64", 0xB96C58, 0x10

glabel D_8011FAC8
    .incbin "baserom.z64", 0xB96C68, 0x8

glabel D_8011FAD0
    .incbin "baserom.z64", 0xB96C70, 0x10

glabel D_8011FAE0
    .incbin "baserom.z64", 0xB96C80, 0x10
