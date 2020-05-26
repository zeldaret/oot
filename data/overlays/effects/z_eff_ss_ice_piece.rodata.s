.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_809A8B20
    .asciz "../z_eff_ice_piece.c"
    .balign 4

glabel D_809A8B38
    .asciz "../z_eff_ice_piece.c"
    .balign 4

glabel D_809A8B50
    .asciz "../z_eff_ice_piece.c"
    .balign 4

glabel D_809A8B68
    .float 0.01
    .balign 4

glabel D_809A8B6C
    .float 9.58738019108e-05
    .balign 4

glabel D_809A8B70
    .float 9.58738019108e-05
    .balign 4

glabel D_809A8B74
 .word 0x3F59999A, 0x00000000, 0x00000000


