.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808BC420
    .asciz "../z_bg_toki_swd.c"
    .balign 4

glabel D_808BC434
    .asciz "../z_bg_toki_swd.c"
    .balign 4

glabel D_808BC448
    .asciz "../z_bg_toki_swd.c"
    .balign 4

.balign 16

