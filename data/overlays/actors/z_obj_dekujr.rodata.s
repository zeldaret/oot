.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B92A40
    .asciz "../z_obj_dekujr.c"
    .balign 4

glabel D_80B92A54
    .asciz "../z_obj_dekujr.c"
    .balign 4

glabel D_80B92A68
    .asciz "../z_obj_dekujr.c"
    .balign 4

glabel D_80B92A7C
    .asciz "../z_obj_dekujr.c"
    .balign 4



