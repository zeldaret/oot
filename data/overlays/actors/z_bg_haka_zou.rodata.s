.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80883660
    .float 0.005
    .balign 4

glabel D_80883664
    .float 0.025
    .balign 4

glabel D_80883668
    .float 3000.0
    .balign 4

glabel D_8088366C
    .float 1500.0
    .balign 4

glabel D_80883670
 .word 0xBF19999A
glabel D_80883674
 .word 0x44098000
glabel D_80883678
 .word 0x3D23D70A, 0x00000000


