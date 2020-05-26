.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .bss

.balign 16

glabel D_8015BC30
    .space 0xC

glabel D_8015BC3C
    .space 0xC

glabel D_8015BC48
    .space 0x10

glabel D_8015BC58
    .space 0xC

glabel D_8015BC64
    .space 0xC

glabel D_8015BC70
    .space 0x10

glabel D_8015BC80
    .space 0xC

glabel D_8015BC8C
    .space 0xC

glabel D_8015BC98
    .space 0x10

glabel D_8015BCA8
    .space 0xC

glabel D_8015BCB4
    .space 0xC

glabel D_8015BCC0
    .space 0x10

glabel D_8015BCD0
    .space 0xC

glabel D_8015BCDC
    .space 0xC

glabel D_8015BCE8
    .space 0x10

glabel D_8015BCF8
    .space 0x4

glabel D_8015BCFC
    .space 0x4

glabel D_8015BD00
    .space 0x4

glabel D_8015BD04
    .space 0x4

glabel D_8015BD08
    .space 0x2

glabel D_8015BD0A
    .space 0x2

glabel D_8015BD0C
    .space 0x2

glabel D_8015BD0E
    .space 0x2

glabel D_8015BD10
    .space 0x24

glabel D_8015BD34
    .space 0x4

glabel D_8015BD38
    .space 0x4

glabel D_8015BD3C
    .space 0x4

glabel D_8015BD40
    .space 0x10
