.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B85540

    .asciz "../z_item_b_heart.c"
    .balign 4

glabel D_80B85554

    .asciz "../z_item_b_heart.c"
    .balign 4

glabel D_80B85568

    .asciz "../z_item_b_heart.c"
    .balign 4

glabel D_80B8557C

    .asciz "../z_item_b_heart.c"
    .balign 4



