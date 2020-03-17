.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8011FA60
    .incbin "baserom.z64", 0xB96C00, 0x4

glabel D_8011FA64
    .incbin "baserom.z64", 0xB96C04, 0x4

glabel D_8011FA68
    .incbin "baserom.z64", 0xB96C08, 0x4

glabel D_8011FA6C
    .incbin "baserom.z64", 0xB96C0C, 0x24

glabel D_8011FA90
    .incbin "baserom.z64", 0xB96C30, 0x8

glabel D_8011FA98
    .incbin "baserom.z64", 0xB96C38, 0x8
