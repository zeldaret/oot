.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809A45A0
    .asciz "../z_eff_fcircle.c"
    .balign 4

glabel D_809A45B4
    .asciz "../z_eff_fcircle.c"
    .balign 4

glabel D_809A45C8
    .asciz "../z_eff_fcircle.c"
    .balign 4

glabel D_809A45DC
    .float 0.001
    .balign 4

glabel D_809A45E0
    .float 0.025
    .balign 4

glabel D_809A45E4
    .float 0.01
    .balign 4

glabel D_809A45E8
 .word 0x38C90FDB, 0x00000000


