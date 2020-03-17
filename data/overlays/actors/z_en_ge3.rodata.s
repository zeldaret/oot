.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A351E0
    .asciz "../z_en_ge3.c"
    .balign 4

glabel D_80A351F0
    .asciz "../z_en_ge3.c"
    .balign 4

glabel D_80A35200
    .asciz "../z_en_ge3.c"
    .balign 4

glabel D_80A35210
    .asciz "../z_en_ge3.c"
    .balign 4



