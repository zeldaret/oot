.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8086BB00

    .asciz "../z_arrow_light.c"
    .balign 4

glabel D_8086BB14
 .word 0x22BEC3CC, 0xC722203D, 0x2025730A, 0x00000000
glabel D_8086BB24
 .word 0xBEC3CCC7, 0x00000000
glabel D_8086BB2C

    .asciz "../z_arrow_light.c"
    .balign 4

glabel D_8086BB40

    .asciz "../z_arrow_light.c"
    .balign 4

glabel D_8086BB54

    .asciz "../z_arrow_light.c"
    .balign 4

glabel D_8086BB68
 .word 0x446D8000
glabel D_8086BB6C
 .word 0x3EAAAAAB
glabel D_8086BB70
 .word 0x3D2AAAAB
glabel D_8086BB74
 .word 0x3DCCCCCD
glabel D_8086BB78
 .word 0x3D2AAAAB
glabel D_8086BB7C
 .word 0x38C90FDB
glabel D_8086BB80
 .word 0x38C90FDB
glabel D_8086BB84
 .word 0x38C90FDB
glabel D_8086BB88
 .word 0x3C23D70A
glabel D_8086BB8C
 .word 0x44BB8000
glabel D_8086BB90
 .word 0x3E4CCCCD, 0x00000000, 0x00000000, 0x00000000


