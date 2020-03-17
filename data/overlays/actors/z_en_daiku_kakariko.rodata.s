.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809E55A0
 .word 0x3C25643E, 0x0A000000
glabel D_809E55A8
    .asciz "../z_en_daiku_kakariko.c"
    .balign 4

glabel D_809E55C4
    .asciz "../z_en_daiku_kakariko.c"
    .balign 4

glabel D_809E55E0
    .asciz "../z_en_daiku_kakariko.c"
    .balign 4

glabel D_809E55FC
    .asciz "../z_en_daiku_kakariko.c"
    .balign 4

glabel D_809E5618
 .word 0x4622F983
glabel D_809E561C
 .word 0x38C90FDB
glabel D_809E5620
 .word 0x38C90FDB
glabel D_809E5624
 .word 0x38C90FDB
glabel D_809E5628
 .word 0x38C90FDB
glabel D_809E562C
 .word 0x38C90FDB
glabel D_809E5630
 .word 0x38C90FDB, 0x00000000, 0x00000000, 0x00000000


