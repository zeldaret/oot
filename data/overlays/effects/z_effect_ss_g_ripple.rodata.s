.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809A6EA0
    .asciz "../z_eff_ss_g_ripple.c"
    .balign 4

glabel D_809A6EB8
    .asciz "../z_eff_ss_g_ripple.c"
    .balign 4

glabel D_809A6ED0
 .word 0x3B23D70A, 0x00000000, 0x00000000, 0x00000000


