.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_801158C0
    .incbin "baserom.z64", 0xB8CA60, 0xC

glabel D_801158CC
    .incbin "baserom.z64", 0xB8CA6C, 0x4

glabel D_801158D0
    .incbin "baserom.z64", 0xB8CA70, 0x4

glabel D_801158D4
    .incbin "baserom.z64", 0xB8CA74, 0x4

glabel D_801158D8
    .incbin "baserom.z64", 0xB8CA78, 0x4

glabel D_801158DC
    .incbin "baserom.z64", 0xB8CA7C, 0x4

glabel D_801158E0
    .incbin "baserom.z64", 0xB8CA80, 0x4

glabel D_801158E4
    .incbin "baserom.z64", 0xB8CA84, 0x4

glabel D_801158E8
    .incbin "baserom.z64", 0xB8CA88, 0x4

glabel D_801158EC
    .incbin "baserom.z64", 0xB8CA8C, 0x4

glabel D_801158F0
    .incbin "baserom.z64", 0xB8CA90, 0x4

glabel D_801158F4
    .incbin "baserom.z64", 0xB8CA94, 0x4

glabel D_801158F8
    .incbin "baserom.z64", 0xB8CA98, 0x4

glabel D_801158FC
    .incbin "baserom.z64", 0xB8CA9C, 0xC

glabel D_80115908
    .incbin "baserom.z64", 0xB8CAA8, 0xC

glabel D_80115914
    .incbin "baserom.z64", 0xB8CAB4, 0xC

glabel D_80115920
    .incbin "baserom.z64", 0xB8CAC0, 0x4

glabel D_80115924
    .incbin "baserom.z64", 0xB8CAC4, 0x8

glabel D_8011592C
    .incbin "baserom.z64", 0xB8CACC, 0x78

glabel D_801159A4
    .incbin "baserom.z64", 0xB8CB44, 0x2

glabel D_801159A6
    .incbin "baserom.z64", 0xB8CB46, 0x2

glabel D_801159A8
    .incbin "baserom.z64", 0xB8CB48, 0x1

glabel D_801159A9
    .incbin "baserom.z64", 0xB8CB49, 0x1

glabel D_801159AA
    .incbin "baserom.z64", 0xB8CB4A, 0x6


