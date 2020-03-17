.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8011F3A0
    .incbin "baserom.z64", 0xB96540, 0x34

glabel D_8011F3D4
    .incbin "baserom.z64", 0xB96574, 0x1C
