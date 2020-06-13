.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .bss

.balign 16

glabel D_8015BD50
    .space 0x4

glabel D_8015BD54
    .space 0x1C

glabel D_8015BD70
    .space 0xC

glabel D_8015BD7C
    .space 0x4

glabel D_8015BD80
    .space 0x10CC

glabel playerFloorPoly
    .space 0x4

glabel D_8015CE50
    .space 0x4

glabel D_8015CE54
    .space 0x4

glabel D_8015CE58
    .space 0x28

glabel D_8015CE80
    .space 0x28

glabel D_8015CEA8
    .space 0xC

glabel D_8015CEB4
    .space 0x4

glabel D_8015CEB8
    .space 0x4

glabel D_8015CEBC
    .space 0x4

glabel D_8015CEC0
    .space 0x10

glabel D_8015CED0
    .space 0x30
