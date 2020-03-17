.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809CCEB0
    .asciz "../z_en_bubble.c"
    .balign 4

glabel D_809CCEC4
    .asciz "../z_en_bubble.c"
    .balign 4

glabel D_809CCED8
    .asciz "../z_en_bubble.c"
    .balign 4

glabel D_809CCEEC
 .word 0x3DA3D70A
glabel D_809CCEF0
 .word 0x3DCCCCCD
glabel D_809CCEF4
 .word 0x3DAAAAAB
glabel D_809CCEF8
 .word 0x3DCCCCCD
glabel D_809CCEFC
 .word 0x38000100
glabel D_809CCF00
 .word 0x40666667
glabel D_809CCF04
 .word 0x3EF5C28F
glabel D_809CCF08
 .word 0x40666667
glabel D_809CCF0C
 .word 0x3EF5C28F
glabel D_809CCF10
 .word 0x3EF5C28F
glabel D_809CCF14
 .word 0x3C8EFA35
glabel D_809CCF18
 .word 0x3C8EFA35
glabel D_809CCF1C
 .word 0x3E4CCCCD


