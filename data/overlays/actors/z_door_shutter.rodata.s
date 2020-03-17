.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809982F0
    .asciz "FHG SAKU START !!\n"
    .balign 4

glabel D_80998304
    .asciz "FHG SAKU END !!\n"
    .balign 4

glabel D_80998318
    .asciz "../z_door_shutter.c"
    .balign 4

glabel D_8099832C
    .asciz "../z_door_shutter.c"
    .balign 4

glabel D_80998340
    .asciz "../z_door_shutter.c"
    .balign 4

glabel D_80998354
    .asciz "../z_door_shutter.c"
    .balign 4

glabel D_80998368
    .asciz "../z_door_shutter.c"
    .balign 4

glabel D_8099837C
    .asciz "../z_door_shutter.c"
    .balign 4

glabel D_80998390
 .word 0x7F7FFFFF
glabel D_80998394
 .word 0x3C23D70A
glabel D_80998398
 .word 0x44542148
glabel D_8099839C
 .word 0x3F490FDB
glabel D_809983A0
 .word 0x44777C29
glabel D_809983A4
 .word 0x3C23D70A
glabel D_809983A8
 .word 0x40490FDB
glabel D_809983AC
 .word 0x40490FDB
glabel D_809983B0
 .word 0x3C23D70A
glabel D_809983B4
 .word 0x3C23D70A, 0x00000000, 0x00000000


