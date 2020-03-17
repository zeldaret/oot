.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B43F70
    .asciz "../z_en_yukabyun.c"
    .balign 4

glabel D_80B43F84
    .asciz "../z_en_yukabyun.c"
    .balign 4

glabel D_80B43F98
    .asciz "../z_en_yukabyun.c"
    .balign 4

glabel D_80B43FAC
 .word 0x459C4000


