.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809B8130
    .asciz "../z_en_ba.c"
    .balign 4

glabel D_809B8140
    .asciz "../z_en_ba.c"
    .balign 4

glabel D_809B8150
    .asciz "../z_en_ba.c"
    .balign 4

glabel D_809B8160
    .asciz "../z_en_ba.c"
    .balign 4

glabel D_809B8170
    .asciz "../z_en_ba.c"
    .balign 4

glabel D_809B8180
 .word 0x477FFF00
glabel D_809B8184
 .word 0x3A03126F
glabel D_809B8188
 .word 0x3A83126F, 0x00000000


