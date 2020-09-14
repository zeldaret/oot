.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_8011FF10
    .incbin "baserom.z64", 0xB970B0, 0x14

glabel D_8011FF24
    .incbin "baserom.z64", 0xB970C4, 0x14

glabel D_8011FF38
    .incbin "baserom.z64", 0xB970D8, 0x14

glabel D_8011FF4C
    .incbin "baserom.z64", 0xB970EC, 0x14

glabel D_8011FF60
    .incbin "baserom.z64", 0xB97100, 0x14

glabel D_8011FF74
    .incbin "baserom.z64", 0xB97114, 0x14

glabel D_8011FF88
    .incbin "baserom.z64", 0xB97128, 0x14

glabel D_8011FF9C
    .incbin "baserom.z64", 0xB9713C, 0x14

glabel D_8011FFB0
    .incbin "baserom.z64", 0xB97150, 0x40

glabel D_8011FFF0
    .incbin "baserom.z64", 0xB97190, 0x40
