.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80BACAC0
    .asciz "[36m WIPE2 arg_data = %d\n[m"
    .balign 4

glabel D_80BACAE0
    .asciz "../z_oceff_wipe3.c"
    .balign 4

glabel D_80BACAF4
    .asciz "../z_oceff_wipe3.c"
    .balign 4

glabel D_80BACB08
    .asciz "../z_oceff_wipe3.c"
    .balign 4

glabel D_80BACB1C
 .word 0x44A64000
glabel D_80BACB20
 .word 0x44A64000
glabel D_80BACB24
 .word 0x3DCCCCCD, 0x00000000, 0x00000000


