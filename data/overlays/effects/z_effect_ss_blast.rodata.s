.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8099F120
    .asciz "../z_eff_ss_blast.c"
    .balign 4

glabel D_8099F134
    .asciz "../z_eff_ss_blast.c"
    .balign 4

glabel D_8099F148
    .asciz "../z_eff_ss_blast.c"
    .balign 4

glabel D_8099F15C
 .word 0x3B23D70A


