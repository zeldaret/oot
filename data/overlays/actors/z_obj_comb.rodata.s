.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B92330
    .asciz "../z_obj_comb.c"
    .balign 4

glabel D_80B92340
    .asciz "../z_obj_comb.c"
    .balign 4

glabel D_80B92350
    .asciz "../z_obj_comb.c"
    .balign 4

glabel D_80B92360
 .word 0x3F19999A
glabel D_80B92364
 .word 0x3F333333
glabel D_80B92368
 .word 0x3DCCCCCD
glabel D_80B9236C
 .word 0x3F4CCCCD
glabel D_80B92370
 .word 0x38C90FDB
glabel D_80B92374
 .word 0x38C90FDB
glabel D_80B92378
 .word 0x38C90FDB, 0x00000000


