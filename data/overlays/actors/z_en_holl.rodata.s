.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A59AF0
    .asciz "../z_en_holl.c"
    .balign 4

glabel D_80A59B00
    .asciz "../z_en_holl.c"
    .balign 4

glabel D_80A59B10
    .asciz "../z_en_holl.c"
    .balign 4

glabel D_80A59B20
 .word 0x44174000
glabel D_80A59B24
    .float 1.7
    .balign 4

glabel D_80A59B28
 .word 0x40BCCCCD
glabel D_80A59B2C
    .float 3.14159274101
    .balign 4



