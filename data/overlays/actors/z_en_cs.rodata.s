.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809E2980
    .asciz "../z_en_cs.c"
    .balign 4

glabel D_809E2990
    .asciz "../z_en_cs.c"
    .balign 4

glabel D_809E29A0
    .asciz "../z_en_cs.c"
    .balign 4

glabel jtbl_809E29B0
.word L809E1CA4
.word L809E1CA4
.word L809E1CA4
.word L809E1CA4
.word L809E1BD4
.word L809E1CA4
.word L809E1C3C
glabel D_809E29CC
 .word 0x4622F983
glabel D_809E29D0
 .word 0x41270A3D
glabel D_809E29D4
 .word 0x3FDF66F3, 0x00000000, 0x00000000


