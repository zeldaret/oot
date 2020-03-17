.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80BAE320

    .asciz "%d ---- オカリナの秘密発生!!!!!!!!!!!!!\n"
    .balign 4

glabel D_80BAE34C

    .asciz "[36mSHOT_SUN HIT!!!!!!!\n[m"
    .balign 4

glabel D_80BAE36C
 .word 0x46AFC800
glabel D_80BAE370
 .word 0x45E2E800
glabel D_80BAE374
 .word 0x45E2E800
glabel D_80BAE378
 .word 0x3E2AAAAB, 0x00000000


