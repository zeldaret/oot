.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809FC030
    .asciz "../z_en_dog.c"
    .balign 4

glabel D_809FC040
    .asciz "../z_en_dog.c"
    .balign 4

glabel jtbl_809FC050
.word L809FB178
.word L809FB184
.word L809FB190
.word L809FB19C
.word L809FB1B0
.word L809FB1A8
glabel jtbl_809FC068
.word L809FB260
.word L809FB270
.word L809FB280
.word L809FB1E8
.word L809FB288
.word L809FB224


