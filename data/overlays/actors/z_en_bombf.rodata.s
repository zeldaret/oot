.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809C8300
    .asciz "../z_en_bombf.c"
    .balign 4

glabel D_809C8310
    .asciz "../z_en_bombf.c"
    .balign 4

glabel D_809C8320
    .asciz "../z_en_bombf.c"
    .balign 4

glabel D_809C8330
    .asciz "../z_en_bombf.c"
    .balign 4

glabel D_809C8340
    .asciz "../z_en_bombf.c"
    .balign 4

glabel D_809C8350
    .float 10000.0
    .balign 4

glabel D_809C8354
 .word 0x46F23000
glabel D_809C8358
    .float 0.05
    .balign 4

glabel D_809C835C
    .float 0.7
    .balign 4

glabel D_809C8360
    .float 0.2
    .balign 4

glabel D_809C8364
    .float 0.002
    .balign 4

glabel D_809C8368
 .word 0x3C23D70A, 0x00000000


