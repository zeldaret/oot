.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809B2340
 .word 0x0A0A0000
glabel D_809B2344
    .asciz "[33m☆☆☆☆☆ アヌビス発生 ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_809B2374
    .asciz "[32m☆☆☆☆☆ 火は幾つ？ ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_809B23A4
    .asciz "[33m☆☆☆☆☆ 火は幾つ？ ☆☆☆☆☆ %x\n[m"
    .balign 4

glabel D_809B23D4
    .asciz "../z_en_anubice.c"
    .balign 4

glabel D_809B23E8
    .asciz "../z_en_anubice.c"
    .balign 4

glabel D_809B23FC
    .asciz "../z_en_anubice.c"
    .balign 4

glabel D_809B2410
 .word 0x44BB8000
glabel D_809B2414
 .word 0x4622F983
glabel D_809B2418
 .word 0x4622F983
glabel D_809B241C
 .word 0xC5843000
glabel D_809B2420
 .word 0xC583E000
glabel D_809B2424
 .word 0xC5843000
glabel D_809B2428
 .word 0xC62BE000
glabel D_809B242C
 .word 0xC53B8000
glabel D_809B2430
 .word 0x40490FDB
glabel D_809B2434
 .word 0x40490FDB
glabel D_809B2438
 .word 0x40490FDB, 0x00000000


