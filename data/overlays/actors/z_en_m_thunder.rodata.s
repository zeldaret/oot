.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80AA0490
    .asciz "../z_en_m_thunder.c"
    .balign 4

glabel D_80AA04A4
    .asciz "../z_en_m_thunder.c"
    .balign 4

glabel D_80AA04B8
    .asciz "../z_en_m_thunder.c"
    .balign 4

glabel D_80AA04CC
    .asciz "../z_en_m_thunder.c"
    .balign 4

glabel D_80AA04E0
    .float 0.1
    .balign 4

glabel D_80AA04E4
    .float 0.1
    .balign 4

glabel D_80AA04E8
    .float 0.15
    .balign 4

glabel D_80AA04EC
    .float 0.1
    .balign 4

glabel D_80AA04F0
    .float 0.85
    .balign 4

glabel D_80AA04F4
    .float 0.15
    .balign 4

glabel D_80AA04F8
    .float 0.15
    .balign 4

glabel D_80AA04FC
    .float 0.1
    .balign 4

glabel D_80AA0500
    .float 0.85
    .balign 4

glabel D_80AA0504
    .float 0.1
    .balign 4

glabel D_80AA0508
    .float 0.1
    .balign 4

glabel D_80AA050C
    .float 0.6
    .balign 4

glabel D_80AA0510
 .word 0x3FD55555
glabel D_80AA0514
    .float 0.02
    .balign 4

glabel D_80AA0518
 .word 0xBF333333
glabel D_80AA051C
 .word 0xBF19999A
glabel D_80AA0520
    .float -1.2
    .balign 4

glabel D_80AA0524
 .word 0xBFE66666
glabel D_80AA0528
 .word 0xBFB33333
glabel D_80AA052C
    .float 0.85
    .balign 4



