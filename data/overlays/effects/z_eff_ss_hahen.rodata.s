.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_809A8020
    .asciz "../z_eff_hahen.c"
    .balign 4

glabel D_809A8034
    .asciz "../z_eff_hahen.c"
    .balign 4

glabel D_809A8048
    .asciz "../z_eff_hahen.c"
    .balign 4

glabel D_809A805C
    .asciz "../z_eff_hahen.c"
    .balign 4

glabel D_809A8070
    .asciz "../z_eff_hahen.c"
    .balign 4

glabel D_809A8084
    .asciz "../z_eff_hahen.c"
    .balign 4

glabel D_809A8098
    .float 0.001
    .balign 4

glabel D_809A809C
    .float 0.01
    .balign 4

glabel D_809A80A0
    .float 0.01
    .balign 4

glabel D_809A80A4
    .float 0.001
    .balign 4

glabel D_809A80A8
    .float 0.01
    .balign 4

glabel D_809A80AC
    .float 0.01
    .balign 4



