.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809A8670
    .asciz "../z_eff_ss_hitmark.c"
    .balign 4

glabel D_809A8688
    .asciz "../z_eff_ss_hitmark.c"
    .balign 4



