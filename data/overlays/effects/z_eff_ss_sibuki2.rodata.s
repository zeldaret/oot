.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_809AC090
    .asciz "../z_eff_ss_sibuki2.c"
    .balign 4

glabel D_809AC0A8
    .asciz "../z_eff_ss_sibuki2.c"
    .balign 4

glabel D_809AC0C0
    .asciz "../z_eff_ss_sibuki2.c"
    .balign 4

