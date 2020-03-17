.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809A68B0
    .asciz "../z_eff_ss_g_magma2.c"
    .balign 4

glabel D_809A68C8
    .asciz "../z_eff_ss_g_magma2.c"
    .balign 4

glabel D_809A68E0
 .word 0x2E2E2F7A, 0x5F656666, 0x5F73735F, 0x675F6D61, 0x676D6132, 0x2E630000, 0x00000000, 0x00000000


