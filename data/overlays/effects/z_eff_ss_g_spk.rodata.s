.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809A74B0
    .asciz "../z_eff_ss_g_spk.c"
    .balign 4

glabel D_809A74C4
    .asciz "../z_eff_ss_g_spk.c"
    .balign 4

glabel D_809A74D8
 .word 0x3B23D70A, 0x00000000


