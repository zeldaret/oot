.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809A04A0
    .asciz "../z_eff_ss_bubble.c"
    .balign 4

glabel D_809A04B8
    .asciz "../z_eff_ss_bubble.c"
    .balign 4

glabel D_809A04D0
    .asciz "../z_eff_ss_bubble.c"
    .balign 4

glabel D_809A04E8
 .word 0x3E99999A
glabel D_809A04EC
 .word 0x3E4CCCCD


