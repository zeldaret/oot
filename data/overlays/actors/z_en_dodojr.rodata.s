.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809F7F70
 .word 0x40266666
glabel D_809F7F74
    .float -0.8
    .balign 4

glabel D_809F7F78
    .float -0.8
    .balign 4

glabel D_809F7F7C
    .float -0.8
    .balign 4

glabel D_809F7F80
    .float -0.8
    .balign 4

glabel D_809F7F84
    .float -0.8
    .balign 4

glabel D_809F7F88
    .float -0.8
    .balign 4

glabel D_809F7F8C
 .word 0x40266666
glabel D_809F7F90
 .word 0x3F99999A, 0x00000000, 0x00000000, 0x00000000


