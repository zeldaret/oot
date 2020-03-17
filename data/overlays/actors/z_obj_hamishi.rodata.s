.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B937B0
    .asciz "../z_obj_hamishi.c"
    .balign 4

glabel D_80B937C4
    .asciz "../z_obj_hamishi.c"
    .balign 4

glabel D_80B937D8
    .asciz "../z_obj_hamishi.c"
    .balign 4

.balign 16

