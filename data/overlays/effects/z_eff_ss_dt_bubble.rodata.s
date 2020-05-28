.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_809A2220
    .asciz "../z_eff_ss_dt_bubble.c"
    .balign 4

glabel D_809A2238
    .asciz "../z_eff_ss_dt_bubble.c"
    .balign 4

glabel D_809A2250
    .asciz "../z_eff_ss_dt_bubble.c"
    .balign 4

glabel D_809A2268
 .word 0x3B83126F, 0x00000000


