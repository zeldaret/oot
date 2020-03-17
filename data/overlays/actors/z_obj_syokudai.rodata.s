.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B9FE90
    .asciz "../z_obj_syokudai.c"
    .balign 4

glabel D_80B9FEA4
    .asciz "../z_obj_syokudai.c"
    .balign 4

glabel D_80B9FEB8
    .asciz "../z_obj_syokudai.c"
    .balign 4

glabel D_80B9FECC
    .asciz "../z_obj_syokudai.c"
    .balign 4

glabel D_80B9FEE0
 .word 0x3B30F27C
glabel D_80B9FEE4
 .word 0x38C90FDB, 0x00000000, 0x00000000

