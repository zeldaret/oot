.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_809A0A10
    .asciz "../z_eff_ss_d_fire.c"
    .balign 4

glabel D_809A0A28
    .asciz "../z_eff_ss_d_fire.c"
    .balign 4

glabel D_809A0A40
 .word 0x3C23D70A, 0x00000000, 0x00000000, 0x00000000


