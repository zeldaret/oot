.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_8014AAC0
    .float -0.33333334
    .float 0.2
    .float -0.14285715
    .float 0.11111111
    .float -0.09090909
    .float 0.07692308
    .float -0.06666667
    .float 0.05882353
    .float 0

glabel D_8014AAE4
    .float 0.41421354

glabel D_8014AAE8
    .float 2.4142137

glabel D_8014AAEC
    .float 1.5707964 # M_PI / 2

glabel D_8014AAF0
    .float 0.7853982 # M_PI / 4

glabel D_8014AAF4
    .float 1.5707964 # M_PI / 2

glabel D_8014AAF8
    .float -1.5707964 # - M_PI / 2

glabel D_8014AAFC
    .float 1.5707964 # M_PI / 2

glabel D_8014AB00
    .float -1.5707964 # - M_PI / 2

glabel D_8014AB04
    .float 3.1415927 # M_PI

glabel D_8014AB08
    .float 3.1415927 # M_PI

glabel D_8014AB0C
    .float 1.5707964 # M_PI / 2
