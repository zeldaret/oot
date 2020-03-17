.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .data

glabel D_8011FF10
    .incbin "baserom.z64", 0xB970B0, 0x2

glabel D_8011FF12
    .incbin "baserom.z64", 0xB970B2, 0x2

glabel D_8011FF14
    .incbin "baserom.z64", 0xB970B4, 0x10

glabel D_8011FF24
    .incbin "baserom.z64", 0xB970C4, 0x2

glabel D_8011FF26
    .incbin "baserom.z64", 0xB970C6, 0x2

glabel D_8011FF28
    .incbin "baserom.z64", 0xB970C8, 0x10

glabel D_8011FF38
    .incbin "baserom.z64", 0xB970D8, 0x14

glabel D_8011FF4C
    .incbin "baserom.z64", 0xB970EC, 0x14

glabel D_8011FF60
    .incbin "baserom.z64", 0xB97100, 0x2

glabel D_8011FF62
    .incbin "baserom.z64", 0xB97102, 0x2

glabel D_8011FF64
    .incbin "baserom.z64", 0xB97104, 0x10

glabel D_8011FF74
    .incbin "baserom.z64", 0xB97114, 0x2

glabel D_8011FF76
    .incbin "baserom.z64", 0xB97116, 0x2

glabel D_8011FF78
    .incbin "baserom.z64", 0xB97118, 0x10

glabel D_8011FF88
    .incbin "baserom.z64", 0xB97128, 0x2

glabel D_8011FF8A
    .incbin "baserom.z64", 0xB9712A, 0x2

glabel D_8011FF8C
    .incbin "baserom.z64", 0xB9712C, 0x10

glabel D_8011FF9C
    .incbin "baserom.z64", 0xB9713C, 0x2

glabel D_8011FF9E
    .incbin "baserom.z64", 0xB9713E, 0x2

glabel D_8011FFA0
    .incbin "baserom.z64", 0xB97140, 0x10

glabel D_8011FFB0
    .incbin "baserom.z64", 0xB97150, 0x40

glabel D_8011FFF0
    .incbin "baserom.z64", 0xB97190, 0x40
