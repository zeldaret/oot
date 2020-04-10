.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B24400
 .word 0x30000000
glabel D_80B24404
    .asciz "../z_en_tr.c"
    .balign 4

glabel D_80B24414
    .asciz "../z_en_tr.c"
    .balign 4

glabel D_80B24424
    .asciz "../z_en_tr.c"
    .balign 4

glabel D_80B24434
    .float 0.9
    .balign 4

glabel D_80B24438
    .float 0.2
    .balign 4

glabel D_80B2443C
    .float 0.2
    .balign 4

glabel D_80B24440
    .float 0.9
    .balign 4

glabel D_80B24444
    .float 0.8
    .balign 4

glabel D_80B24448
    .float 0.002
    .balign 4

glabel D_80B2444C
    .float 0.1
    .balign 4

glabel D_80B24450
    .float 0.1
    .balign 4

glabel D_80B24454
    .float 0.1
    .balign 4

glabel D_80B24458
 .word 0x3DCCCCCD, 0x00000000


