.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809A0F50
    .asciz "../z_eff_ss_dead_db.c"
    .balign 4

glabel D_809A0F68
    .asciz "../z_eff_ss_dead_db.c"
    .balign 4

glabel D_809A0F80
 .word 0x3C23D70A, 0x00000000, 0x00000000, 0x00000000


