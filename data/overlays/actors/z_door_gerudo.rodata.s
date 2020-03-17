.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80994B80

    .asciz "../z_door_gerudo.c"
    .balign 4

glabel D_80994B94

    .asciz "../z_door_gerudo.c"
    .balign 4

glabel D_80994BA8

    .asciz "../z_door_gerudo.c"
    .balign 4

glabel D_80994BBC
 .word 0x7F7FFFFF
glabel D_80994BC0
 .word 0x3C23D70A, 0x00000000, 0x00000000, 0x00000000


