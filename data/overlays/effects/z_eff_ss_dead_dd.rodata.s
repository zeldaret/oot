.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809A1550
    .asciz "Effect_SS_Dd_disp_mode():mode_swが変です。\n"
    .balign 4

glabel D_809A157C
    .asciz "../z_eff_ss_dead_dd.c"
    .balign 4

glabel D_809A1594
    .asciz "../z_eff_ss_dead_dd.c"
    .balign 4

glabel D_809A15AC
    .float 0.01
    .balign 4



