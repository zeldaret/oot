.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8011DE00
    .incbin "baserom.z64", 0xB94FA0, 0x18

glabel D_8011DE18
    .incbin "baserom.z64", 0xB94FB8, 0x8

glabel D_8011DE20
    .incbin "baserom.z64", 0xB94FC0, 0xC

glabel D_8011DE2C
    .incbin "baserom.z64", 0xB94FCC, 0x28

glabel D_8011DE54
    .incbin "baserom.z64", 0xB94FF4, 0x18

glabel D_8011DE6C
    .incbin "baserom.z64", 0xB9500C, 0xC

glabel D_8011DE78
    .incbin "baserom.z64", 0xB95018, 0x34

glabel D_8011DEAC
    .incbin "baserom.z64", 0xB9504C, 0x40

glabel D_8011DEEC
    .incbin "baserom.z64", 0xB9508C, 0xC

glabel D_8011DEF8
    .incbin "baserom.z64", 0xB95098, 0x10

glabel D_8011DF08
    .incbin "baserom.z64", 0xB950A8, 0x10

glabel D_8011DF18
    .incbin "baserom.z64", 0xB950B8, 0x10

glabel D_8011DF28
    .incbin "baserom.z64", 0xB950C8, 0x18

glabel D_8011DF40
    .incbin "baserom.z64", 0xB950E0, 0x1

glabel D_8011DF41
    .incbin "baserom.z64", 0xB950E1, 0x1B

glabel D_8011DF5C
    .incbin "baserom.z64", 0xB950FC, 0x10

glabel D_8011DF6C
    .incbin "baserom.z64", 0xB9510C, 0x40

glabel D_8011DFAC
    .incbin "baserom.z64", 0xB9514C, 0x40

glabel D_8011DFEC
    .incbin "baserom.z64", 0xB9518C, 0x1C

glabel D_8011E008
    .incbin "baserom.z64", 0xB951A8, 0x10

glabel D_8011E018
    .incbin "baserom.z64", 0xB951B8, 0x10

glabel D_8011E028
    .incbin "baserom.z64", 0xB951C8, 0x2

glabel D_8011E02A
    .incbin "baserom.z64", 0xB951CA, 0x2

glabel D_8011E02C
    .incbin "baserom.z64", 0xB951CC, 0x2

glabel D_8011E02E
    .incbin "baserom.z64", 0xB951CE, 0x28

glabel D_8011E056
    .incbin "baserom.z64", 0xB951F6, 0x2

glabel D_8011E058
    .incbin "baserom.z64", 0xB951F8, 0x2

glabel D_8011E05A
    .incbin "baserom.z64", 0xB951FA, 0xE

glabel D_8011E068
    .incbin "baserom.z64", 0xB95208, 0x2

glabel D_8011E06A
    .incbin "baserom.z64", 0xB9520A, 0x2

glabel D_8011E06C
    .incbin "baserom.z64", 0xB9520C, 0x2

glabel D_8011E06E
    .incbin "baserom.z64", 0xB9520E, 0x28

glabel D_8011E096
    .incbin "baserom.z64", 0xB95236, 0x2

glabel D_8011E098
    .incbin "baserom.z64", 0xB95238, 0x2

glabel D_8011E09A
    .incbin "baserom.z64", 0xB9523A, 0x16
