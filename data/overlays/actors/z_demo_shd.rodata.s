.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80993600
    .asciz "../z_demo_shd.c"
    .balign 4

glabel D_80993610
    .asciz "../z_demo_shd.c"
    .balign 4

glabel D_80993620
    .asciz "../z_demo_shd.c"
    .balign 4



