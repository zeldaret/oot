.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_809A4080
    .asciz "../z_eff_ss_extra.c"
    .balign 4

glabel D_809A4094
    .asciz "../z_eff_ss_extra.c"
    .balign 4

glabel D_809A40A8
    .asciz "../z_eff_ss_extra.c"
    .balign 4
