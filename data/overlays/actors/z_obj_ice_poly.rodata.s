.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B94BB0
    .asciz "../z_obj_ice_poly.c"
    .balign 4

glabel D_80B94BC4
    .asciz "../z_obj_ice_poly.c"
    .balign 4

glabel D_80B94BD8
    .asciz "../z_obj_ice_poly.c"
    .balign 4

glabel D_80B94BEC
 .word 0x3C4CCCCD


