.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80BADB60
    .asciz "[36m WIPE4 arg_data = %d\n[m"
    .balign 4

glabel D_80BADB80
    .asciz "../z_oceff_wipe4.c"
    .balign 4

glabel D_80BADB94
    .asciz "../z_oceff_wipe4.c"
    .balign 4

glabel D_80BADBA8
    .asciz "../z_oceff_wipe4.c"
    .balign 4

glabel D_80BADBBC
 .word 0x44A64000
glabel D_80BADBC0
 .word 0x44A64000
glabel D_80BADBC4
 .word 0x3DCCCCCD, 0x00000000, 0x00000000


