.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809ABC90
    .asciz "../z_eff_ss_sibuki.c"
    .balign 4

glabel D_809ABCA8
    .asciz "../z_eff_ss_sibuki.c"
    .balign 4

glabel D_809ABCC0
    .asciz "../z_eff_ss_sibuki.c"
    .balign 4

glabel D_809ABCD8
    .float 0.01
    .balign 4

glabel D_809ABCDC
    .float 0.01
    .balign 4

glabel D_809ABCE0
    .float 0.1
    .balign 4

glabel D_809ABCE4
    .float 0.1
    .balign 4

glabel D_809ABCE8
 .word 0x3DCCCCCD, 0x00000000


