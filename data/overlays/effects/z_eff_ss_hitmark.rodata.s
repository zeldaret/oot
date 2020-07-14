.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_809A8670
    .asciz "../z_eff_ss_hitmark.c"
    .balign 4

glabel D_809A8688
    .asciz "../z_eff_ss_hitmark.c"
    .balign 4



