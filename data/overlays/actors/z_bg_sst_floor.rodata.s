.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808B9E40
    .asciz "../z_bg_sst_floor.c"
    .balign 4

glabel D_808B9E54
    .asciz "../z_bg_sst_floor.c"
    .balign 4

glabel D_808B9E68
    .asciz "../z_bg_sst_floor.c"
    .balign 4

glabel D_808B9E7C
 .word 0x3B3B3EE7
glabel D_808B9E80
 .word 0x3B3B3EE7
glabel D_808B9E84
 .word 0x3FC90FDB
glabel D_808B9E88
 .word 0xBB23D70A, 0x00000000


