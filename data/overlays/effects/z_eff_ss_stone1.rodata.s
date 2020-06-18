.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_809ACA70
    .asciz "../z_eff_ss_stone1.c"
    .balign 4

glabel D_809ACA88
    .asciz "../z_eff_ss_stone1.c"
    .balign 4

glabel D_809ACAA0
    .asciz "../z_eff_ss_stone1.c"
    .balign 4

glabel D_809ACAB8
 .word 0x44BB8000, 0x00000000


