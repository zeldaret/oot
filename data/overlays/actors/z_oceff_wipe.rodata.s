.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80BA9AC0
    .asciz "[36m WIPE arg_data = %d\n[m"
    .balign 4

glabel D_80BA9AE0
    .asciz "../z_oceff_wipe.c"
    .balign 4

glabel D_80BA9AF4
    .asciz "../z_oceff_wipe.c"
    .balign 4

glabel D_80BA9B08
    .asciz "../z_oceff_wipe.c"
    .balign 4

glabel D_80BA9B1C
 .word 0x3DCCCCCD


