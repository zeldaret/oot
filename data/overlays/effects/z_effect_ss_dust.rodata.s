.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809A2A70
    .asciz "../z_eff_ss_dust.c"
    .balign 4

glabel D_809A2A84
    .asciz "../z_eff_ss_dust.c"
    .balign 4

glabel D_809A2A98
 .word 0x3B23D70A
glabel D_809A2A9C
 .word 0x3ECCCCCD
glabel D_809A2AA0
 .word 0x3E4CCCCD
glabel D_809A2AA4
 .word 0x3ECCCCCD
glabel D_809A2AA8
 .word 0x3E4CCCCD
glabel D_809A2AAC
 .word 0x3ECCCCCD
glabel D_809A2AB0
 .word 0x3E4CCCCD
glabel D_809A2AB4
 .word 0x3ECCCCCD
glabel D_809A2AB8
 .word 0x3E4CCCCD, 0x00000000


