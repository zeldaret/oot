.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80867B30
    .asciz "../z_arrow_fire.c"
    .balign 4

glabel D_80867B44
 .word 0x22BEC3CC, 0xC722203D, 0x2025730A, 0x00000000
glabel D_80867B54
 .word 0xBEC3CCC7, 0x00000000
glabel D_80867B5C
    .asciz "../z_arrow_fire.c"
    .balign 4

glabel D_80867B70
    .asciz "../z_arrow_fire.c"
    .balign 4

glabel D_80867B84
    .asciz "../z_arrow_fire.c"
    .balign 4

glabel D_80867B98
 .word 0x446D8000
glabel D_80867B9C
 .word 0x3EAAAAAB
glabel D_80867BA0
 .word 0x3D2AAAAB
glabel D_80867BA4
 .word 0x3DCCCCCD
glabel D_80867BA8
 .word 0x3D2AAAAB
glabel D_80867BAC
 .word 0x38C90FDB
glabel D_80867BB0
 .word 0x38C90FDB
glabel D_80867BB4
 .word 0x38C90FDB
glabel D_80867BB8
 .word 0x3C23D70A
glabel D_80867BBC
 .word 0x44BB8000
glabel D_80867BC0
 .word 0x3E4CCCCD, 0x00000000, 0x00000000, 0x00000000


