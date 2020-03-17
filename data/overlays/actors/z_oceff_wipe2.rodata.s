.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80BAB2A0
    .asciz "[36m WIPE2 arg_data = %d\n[m"
    .balign 4

glabel D_80BAB2C0
    .asciz "../z_oceff_wipe2.c"
    .balign 4

glabel D_80BAB2D4
    .asciz "../z_oceff_wipe2.c"
    .balign 4

glabel D_80BAB2E8
    .asciz "../z_oceff_wipe2.c"
    .balign 4

glabel D_80BAB2FC
 .word 0x44A64000
glabel D_80BAB300
 .word 0x44A64000
glabel D_80BAB304
 .word 0x3DCCCCCD, 0x00000000, 0x00000000


