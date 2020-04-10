.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809E16F0
    .float 0.85
    .balign 4

glabel D_809E16F4
    .float 0.15
    .balign 4

glabel D_809E16F8
    .float 0.03
    .balign 4

glabel D_809E16FC
    .float 0.1
    .balign 4

glabel D_809E1700
    .float 0.1
    .balign 4

glabel D_809E1704
    .float 10000.0
    .balign 4

glabel D_809E1708
 .word 0x3BC49BA6
glabel D_809E170C
    .float 0.002
    .balign 4

glabel D_809E1710
    .float 0.03
    .balign 4

glabel D_809E1714
    .float 0.01
    .balign 4

glabel D_809E1718
    .float 0.1
    .balign 4

glabel D_809E171C
 .word 0x3F490FDB
glabel D_809E1720
 .word 0x3F490FDB, 0x00000000, 0x00000000, 0x00000000


