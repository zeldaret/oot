.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80869B10

    .asciz "../z_arrow_ice.c"
    .balign 4

glabel D_80869B24
 .word 0x22BEC3CC, 0xC722203D, 0x2025730A, 0x00000000
glabel D_80869B34
 .word 0xBEC3CCC7, 0x00000000
glabel D_80869B3C

    .asciz "../z_arrow_ice.c"
    .balign 4

glabel D_80869B50

    .asciz "../z_arrow_ice.c"
    .balign 4

glabel D_80869B64

    .asciz "../z_arrow_ice.c"
    .balign 4

glabel D_80869B78
 .word 0x446D8000
glabel D_80869B7C
 .word 0x3EAAAAAB
glabel D_80869B80
 .word 0x3D2AAAAB
glabel D_80869B84
 .word 0x3DCCCCCD
glabel D_80869B88
 .word 0x3D2AAAAB
glabel D_80869B8C
 .word 0x38C90FDB
glabel D_80869B90
 .word 0x38C90FDB
glabel D_80869B94
 .word 0x38C90FDB
glabel D_80869B98
 .word 0x3C23D70A
glabel D_80869B9C
 .word 0x44BB8000
glabel D_80869BA0
 .word 0x3E4CCCCD, 0x00000000, 0x00000000, 0x00000000


