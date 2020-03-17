.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808B6A30
 .word 0x1B5B3336, 0x6D25661B, 0x5B6D0A00
glabel D_808B6A3C
    .asciz "(ｓｐｏｔ１６ ドーナツ雲)(arg_data 0x%04x)\n"
    .balign 4

glabel D_808B6A68
    .asciz "../z_bg_spot16_doughnut.c"
    .balign 4

glabel D_808B6A84
    .asciz "../z_bg_spot16_doughnut.c"
    .balign 4

glabel D_808B6AA0
    .asciz "../z_bg_spot16_doughnut.c"
    .balign 4

glabel D_808B6ABC
    .asciz "../z_bg_spot16_doughnut.c"
    .balign 4

glabel D_808B6AD8
    .asciz "../z_bg_spot16_doughnut.c"
    .balign 4

glabel D_808B6AF4
    .asciz "../z_bg_spot16_doughnut.c"
    .balign 4

glabel D_808B6B10
 .word 0x38D1B717
glabel D_808B6B14
 .word 0x3B03126E, 0x00000000, 0x00000000


