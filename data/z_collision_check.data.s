.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

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
