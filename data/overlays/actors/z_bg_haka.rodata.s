.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8087BD00
    .asciz "../z_bg_haka.c"
    .balign 4

glabel D_8087BD10
    .asciz "../z_bg_haka.c"
    .balign 4

glabel D_8087BD20
    .asciz "../z_bg_haka.c"
    .balign 4

glabel D_8087BD30
    .asciz "../z_bg_haka.c"
    .balign 4

glabel D_8087BD40
 .word 0x420A6666
glabel D_8087BD44
 .word 0xC2E1999A
glabel D_8087BD48
 .word 0x3D4CCCCD, 0x00000000


