.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_809A2A70
    .asciz "../z_eff_ss_dust.c"
    .balign 4

glabel D_809A2A84
    .asciz "../z_eff_ss_dust.c"
    .balign 4

glabel D_809A2A98
    .float 0.0025
    .balign 4

glabel D_809A2A9C
    .float 0.4
    .balign 4

glabel D_809A2AA0
    .float 0.2
    .balign 4

glabel D_809A2AA4
    .float 0.4
    .balign 4

glabel D_809A2AA8
    .float 0.2
    .balign 4

glabel D_809A2AAC
    .float 0.4
    .balign 4

glabel D_809A2AB0
    .float 0.2
    .balign 4

glabel D_809A2AB4
    .float 0.4
    .balign 4

glabel D_809A2AB8
 .word 0x3E4CCCCD, 0x00000000


