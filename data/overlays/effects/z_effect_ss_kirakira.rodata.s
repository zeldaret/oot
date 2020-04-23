.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809AAE10
    .asciz "../z_eff_ss_kirakira.c"
    .balign 4

glabel D_809AAE28
    .asciz "../z_eff_ss_kirakira.c"
    .balign 4

glabel D_809AAE40
    .float 10000.0
    .balign 4

glabel D_809AAE44
    .float 0.4
    .balign 4

glabel D_809AAE48
    .float 0.2
    .balign 4

glabel D_809AAE4C
    .float 0.4
    .balign 4

glabel D_809AAE50
    .float 0.2
    .balign 4

glabel D_809AAE54
 .word 0x3F733333
glabel D_809AAE58
    .float 0.2
    .balign 4

glabel D_809AAE5C
    .float 0.2
    .balign 4



