.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A7B9D0
    .asciz "message_check->(%d[%x])\n"
    .balign 4

glabel D_80A7B9EC
    .asciz "../z_en_in.c"
    .balign 4

glabel D_80A7B9FC
    .asciz "../z_en_in.c"
    .balign 4

glabel D_80A7BA0C
    .asciz "../z_en_in.c"
    .balign 4

glabel D_80A7BA1C
    .asciz "../z_en_in.c"
    .balign 4

glabel jtbl_80A7BA2C
.word L80A790B0
.word L80A7913C
.word L80A79100
.word L80A79124
.word L80A7912C
.word L80A7912C
.word L80A79134
glabel jtbl_80A7BA48
.word L80A792A8
.word L80A792A8
.word L80A79488
.word L80A79488
.word L80A79318
.word L80A79488
.word L80A7936C
.word L80A7936C
.word L80A793A8
glabel jtbl_80A7BA6C
.word L80A795B4
.word L80A795B4
.word L80A79564
.word L80A795B4
.word L80A79578
.word L80A79598
.word L80A795B4
.word L80A795B4
.word L80A795B4
.word L80A795B4
glabel D_80A7BA94
 .word 0x448A6000
glabel D_80A7BA98
 .word 0xC569C000
glabel jtbl_80A7BA9C
.word L80A7A1A4
.word L80A7A1BC
.word L80A7A1A4
.word L80A7A1A4
.word L80A7A1A4
.word L80A7A1D0
.word L80A7A1D0
.word L80A7A1A4
glabel jtbl_80A7BABC
.word L80A7A21C
.word L80A7A244
.word L80A7A21C
.word L80A7A270
.word L80A7A28C
.word L80A7A2B0
.word L80A7A2B0
.word L80A7A2D8
glabel D_80A7BADC
 .word 0x3E99999A
glabel D_80A7BAE0
 .word 0x44BB8000
glabel D_80A7BAE4
 .word 0x40490FDB
glabel D_80A7BAE8
 .word 0x40490FDB
glabel D_80A7BAEC
 .word 0xC4BB8000
glabel D_80A7BAF0
 .word 0x40490FDB
glabel D_80A7BAF4
 .word 0x40490FDB, 0x00000000, 0x00000000


