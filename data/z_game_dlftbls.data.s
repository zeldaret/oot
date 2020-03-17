.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8011F830
    .incbin "baserom.z64", 0xB969D0, 0x30

glabel D_8011F860
    .incbin "baserom.z64", 0xB96A00, 0x30

glabel D_8011F890
    .incbin "baserom.z64", 0xB96A30, 0x30

glabel D_8011F8C0
    .incbin "baserom.z64", 0xB96A60, 0x30

glabel D_8011F8F0
    .incbin "baserom.z64", 0xB96A90, 0x30

glabel D_8011F920
    .incbin "baserom.z64", 0xB96AC0, 0x30
