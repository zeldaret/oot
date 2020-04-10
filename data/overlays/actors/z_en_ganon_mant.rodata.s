.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A27E80
    .asciz "../z_en_ganon_mant.c"
    .balign 4

glabel D_80A27E98
    .asciz "../z_en_ganon_mant.c"
    .balign 4

glabel D_80A27EB0
    .asciz "../z_en_ganon_mant.c"
    .balign 4

glabel D_80A27EC8
    .float 6.28318548203
    .balign 4

glabel D_80A27ECC
 .word 0x407F5C29
glabel D_80A27ED0
 .word 0x413E6666
glabel D_80A27ED4
    .float 3.14159274101
    .balign 4

glabel D_80A27ED8
    .float 6.28318548203
    .balign 4

glabel D_80A27EDC
    .float 2.1
    .balign 4

glabel D_80A27EE0
    .float 3.14159274101
    .balign 4

glabel D_80A27EE4
    .float 1.57079637051
    .balign 4

glabel D_80A27EE8
 .word 0x40490FDB, 0x00000000


