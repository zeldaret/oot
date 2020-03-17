.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .bss

glabel D_8015BD50
    .space 0x4

glabel D_8015BD54
    .space 0x1C

glabel D_8015BD70
    .space 0xC

glabel D_8015BD7C
    .space 0x4

glabel D_8015BD80
    .space 0x4

glabel D_8015BD84
    .space 0xC

glabel D_8015BD90
    .space 0xC

glabel D_8015BD9C
    .space 0x2C

glabel D_8015BDC8
    .space 0x107E

glabel D_8015CE46
    .space 0x6

glabel D_8015CE4C
    .space 0x4

glabel D_8015CE50
    .space 0x4

glabel D_8015CE54
    .space 0x4

glabel D_8015CE58
    .space 0x4

glabel D_8015CE5C
    .space 0x4

glabel D_8015CE60
    .space 0x4

glabel D_8015CE64
    .space 0x4

glabel D_8015CE68
    .space 0x4

glabel D_8015CE6C
    .space 0x14

glabel D_8015CE80
    .space 0x4

glabel D_8015CE84
    .space 0x4

glabel D_8015CE88
    .space 0x4

glabel D_8015CE8C
    .space 0x4

glabel D_8015CE90
    .space 0x4

glabel D_8015CE94
    .space 0xC

glabel D_8015CEA0
    .space 0x8

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
