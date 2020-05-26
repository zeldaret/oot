.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_80119EE0
    .incbin "baserom.z64", 0xB91080, 0x6C

glabel D_80119F4C
    .incbin "baserom.z64", 0xB910EC, 0x4

glabel D_80119F50
    .incbin "baserom.z64", 0xB910F0, 0x38

glabel D_80119F88
    .incbin "baserom.z64", 0xB91128, 0x4

glabel D_80119F8C
    .incbin "baserom.z64", 0xB9112C, 0x318

glabel D_8011A2A4
    .incbin "baserom.z64", 0xB91444, 0x2DC0

glabel D_8011D064
    .incbin "baserom.z64", 0xB94204, 0x4

glabel D_8011D068
    .incbin "baserom.z64", 0xB94208, 0x20C

glabel D_8011D274
    .incbin "baserom.z64", 0xB94414, 0x11C

glabel D_8011D390
    .incbin "baserom.z64", 0xB94530, 0x4

glabel D_8011D394
    .incbin "baserom.z64", 0xB94534, 0x4

glabel D_8011D398
    .incbin "baserom.z64", 0xB94538, 0x4

glabel D_8011D39C
    .incbin "baserom.z64", 0xB9453C, 0x4

glabel D_8011D3A0
    .incbin "baserom.z64", 0xB94540, 0x2

glabel D_8011D3A2
    .incbin "baserom.z64", 0xB94542, 0x2

glabel D_8011D3A4
    .incbin "baserom.z64", 0xB94544, 0x4

glabel D_8011D3A8
    .incbin "baserom.z64", 0xB94548, 0x4

glabel D_8011D3AC
    .incbin "baserom.z64", 0xB9454C, 0x4

glabel D_8011D3B0
    .incbin "baserom.z64", 0xB94550, 0x1C

glabel D_8011D3CC
    .incbin "baserom.z64", 0xB9456C, 0x1C

glabel D_8011D3E8
    .incbin "baserom.z64", 0xB94588, 0x8

glabel D_8011D3F0
    .incbin "baserom.z64", 0xB94590, 0x4

glabel D_8011D3F4
    .incbin "baserom.z64", 0xB94594, 0x4

glabel D_8011D3F8
    .incbin "baserom.z64", 0xB94598, 0x260

glabel D_8011D658
    .incbin "baserom.z64", 0xB947F8, 0x20

glabel D_8011D678
    .incbin "baserom.z64", 0xB94818, 0x30

glabel D_8011D6A8
    .incbin "baserom.z64", 0xB94848, 0x4

glabel D_8011D6AC
    .incbin "baserom.z64", 0xB9484C, 0x2C

glabel D_8011D6D8
    .incbin "baserom.z64", 0xB94878, 0x4C

glabel D_8011D724
    .incbin "baserom.z64", 0xB948C4, 0x78

glabel D_8011D79C
    .incbin "baserom.z64", 0xB9493C, 0xA0

glabel D_8011D83C
    .incbin "baserom.z64", 0xB949DC, 0x50

glabel D_8011D88C
    .incbin "baserom.z64", 0xB94A2C, 0x50

glabel D_8011D8DC
    .incbin "baserom.z64", 0xB94A7C, 0x78

glabel D_8011D954
    .incbin "baserom.z64", 0xB94AF4, 0xA0

glabel D_8011D9F4
    .incbin "baserom.z64", 0xB94B94, 0x78

glabel D_8011DA6C
    .incbin "baserom.z64", 0xB94C0C, 0x30

glabel D_8011DA9C
    .incbin "baserom.z64", 0xB94C3C, 0x30

glabel D_8011DACC
    .incbin "baserom.z64", 0xB94C6C, 0x10

glabel D_8011DADC
    .incbin "baserom.z64", 0xB94C7C, 0x10

glabel D_8011DAEC
    .incbin "baserom.z64", 0xB94C8C, 0x10

glabel D_8011DAFC
    .incbin "baserom.z64", 0xB94C9C, 0xC

glabel D_8011DB08
    .incbin "baserom.z64", 0xB94CA8, 0x4

glabel D_8011DB0C
    .incbin "baserom.z64", 0xB94CAC, 0x4

glabel D_8011DB10
    .incbin "baserom.z64", 0xB94CB0, 0x4

glabel D_8011DB14
    .incbin "baserom.z64", 0xB94CB4, 0xC
