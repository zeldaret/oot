.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80BA8C20
    .asciz "../z_oceff_storm.c"
    .balign 4

glabel D_80BA8C34
    .asciz "../z_oceff_storm.c"
    .balign 4

glabel D_80BA8C48
    .asciz "../z_oceff_storm.c"
    .balign 4

glabel D_80BA8C5C
    .asciz "../z_oceff_storm.c"
    .balign 4

glabel D_80BA8C70
    .asciz "../z_oceff_storm.c"
    .balign 4

glabel D_80BA8C84
 .word 0x3ECCCCCD
glabel D_80BA8C88
 .word 0x3E99999A
glabel D_80BA8C8C
 .word 0x3ECCCCCD
glabel D_80BA8C90
 .word 0x3C23D70A, 0x00000000, 0x00000000, 0x00000000


