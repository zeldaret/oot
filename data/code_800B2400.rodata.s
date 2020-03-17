.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_80143070
    .asciz "rate=%f tx=%f ty=%f rotate=%f\n"
    .balign 4

glabel D_80143090
    .float 0.03

glabel D_80143094
    .float 0.015

glabel D_80143098
    .float 0.03

glabel D_8014309C
    .float 0.03
