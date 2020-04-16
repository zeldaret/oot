.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809AC640
    .asciz "../z_eff_ss_stick.c"
    .balign 4

glabel D_809AC654
    .asciz "../z_eff_ss_stick.c"
    .balign 4

glabel D_809AC668
    .asciz "../z_eff_ss_stick.c"
    .balign 4

glabel D_809AC67C
    .float 0.01
    .balign 4

glabel D_809AC680
    .float 0.0025
    .balign 4

glabel D_809AC684
 .word 0x3C23D70A, 0x00000000, 0x00000000


