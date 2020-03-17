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
 .word 0x3F666666
glabel D_80B24438
 .word 0x3E4CCCCD
glabel D_80B2443C
 .word 0x3E4CCCCD
glabel D_80B24440
 .word 0x3F666666
glabel D_80B24444
 .word 0x3F4CCCCD
glabel D_80B24448
 .word 0x3B03126F
glabel D_80B2444C
 .word 0x3DCCCCCD
glabel D_80B24450
 .word 0x3DCCCCCD
glabel D_80B24454
 .word 0x3DCCCCCD
glabel D_80B24458
 .word 0x3DCCCCCD, 0x00000000


