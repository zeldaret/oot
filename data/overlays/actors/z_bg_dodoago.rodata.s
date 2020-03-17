.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80872650

    .asciz "../z_bg_dodoago.c"
    .balign 4

glabel D_80872664

    .asciz "../z_bg_dodoago.c"
    .balign 4

glabel D_80872678

    .asciz "../z_bg_dodoago.c"
    .balign 4

.balign 8
