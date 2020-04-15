.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809A04A0
    .asciz "../z_eff_ss_bubble.c"
    .balign 4

glabel D_809A04B8
    .asciz "../z_eff_ss_bubble.c"
    .balign 4

glabel D_809A04D0
    .asciz "../z_eff_ss_bubble.c"
    .balign 4

glabel D_809A04E8
    .float 0.3
    .balign 4

glabel D_809A04EC
    .float 0.2
    .balign 4



