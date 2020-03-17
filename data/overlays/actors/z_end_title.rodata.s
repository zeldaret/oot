.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B69850
    .asciz "../z_end_title.c"
    .balign 4

glabel D_80B69864
    .asciz "../z_end_title.c"
    .balign 4

glabel D_80B69878
    .asciz "../z_end_title.c"
    .balign 4

glabel D_80B6988C
    .asciz "../z_end_title.c"
    .balign 4

glabel D_80B698A0
    .asciz "../z_end_title.c"
    .balign 4

glabel D_80B698B4
    .asciz "../z_end_title.c"
    .balign 4

glabel D_80B698C8
    .asciz "../z_end_title.c"
    .balign 4

glabel D_80B698DC
 .word 0x3E051EB8
glabel D_80B698E0
 .word 0x3E93431D, 0x00000000, 0x00000000, 0x00000000


