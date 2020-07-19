.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_80A307A0
    .asciz "../z_en_gb.c"
    .balign 4

glabel D_80A307B0
    .asciz "../z_en_gb.c"
    .balign 4

glabel D_80A307C0
    .asciz "../z_en_gb.c"
    .balign 4

glabel D_80A307D0
    .asciz "../z_en_gb.c"
    .balign 4

glabel D_80A307E0
    .asciz "../z_en_gb.c"
    .balign 4

glabel D_80A307F0
    .float 0.2

glabel D_80A307F4
    .float 0.2

glabel D_80A307F8
    .float 0.01

glabel D_80A307FC
    .float 0.01

glabel D_80A30800
    .float 0.007

