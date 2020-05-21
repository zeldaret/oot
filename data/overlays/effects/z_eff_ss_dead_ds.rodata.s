.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809A1A80
    .asciz "../z_eff_ss_dead_ds.c"
    .balign 4

glabel D_809A1A98
    .asciz "../z_eff_ss_dead_ds.c"
    .balign 4

glabel D_809A1AB0
    .asciz "../z_eff_ss_dead_ds.c"
    .balign 4

glabel D_809A1AC8
    .float 0.01
    .balign 4

glabel D_809A1ACC
 .word 0x3FC8F5C3


