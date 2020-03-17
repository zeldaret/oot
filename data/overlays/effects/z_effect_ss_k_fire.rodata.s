.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809A95D0
    .asciz "../z_eff_k_fire.c"
    .balign 4

glabel D_809A95E4
    .asciz "../z_eff_k_fire.c"
    .balign 4

glabel D_809A95F8
    .asciz "../z_eff_k_fire.c"
    .balign 4

glabel D_809A960C
 .word 0x461C4000
glabel D_809A9610
 .word 0x40490FDB, 0x00000000, 0x00000000, 0x00000000


