.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809B6190
 .word 0x476A6000
glabel D_809B6194
 .word 0xC61C4000
glabel jtbl_809B6198
.word L809B5348
.word L809B5354
.word L809B5388
.word L809B53E8
.word L809B541C
.word L809B5430
glabel D_809B61B0
    .float 7000.0
    .balign 4

glabel D_809B61B4
    .float 7000.0
    .balign 4

glabel D_809B61B8
 .word 0x46C35000
glabel D_809B61BC
    .float 6000.0
    .balign 4

glabel D_809B61C0
 .word 0xC61C4000
glabel D_809B61C4
 .word 0xC61C4000
glabel D_809B61C8
    .float 10000.0
    .balign 4

glabel D_809B61CC
    .float 3000.0
    .balign 4

glabel D_809B61D0
 .word 0x465AC000
glabel D_809B61D4
    .float 10000.0
    .balign 4

glabel D_809B61D8
    .float 3000.0
    .balign 4

glabel D_809B61DC
 .word 0xBE4CCCCD
glabel D_809B61E0
 .word 0xBE4CCCCD
glabel D_809B61E4
 .word 0xC61C4000
glabel D_809B61E8
 .word 0xC53B8000
glabel D_809B61EC
 .word 0x465AC000
glabel D_809B61F0
    .float 5000.0
    .balign 4

glabel D_809B61F4
 .word 0x459C4000, 0x00000000, 0x00000000


