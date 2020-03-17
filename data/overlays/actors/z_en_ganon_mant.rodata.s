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
 .word 0x40C90FDB
glabel D_80A27ECC
 .word 0x407F5C29
glabel D_80A27ED0
 .word 0x413E6666
glabel D_80A27ED4
 .word 0x40490FDB
glabel D_80A27ED8
 .word 0x40C90FDB
glabel D_80A27EDC
 .word 0x40066666
glabel D_80A27EE0
 .word 0x40490FDB
glabel D_80A27EE4
 .word 0x3FC90FDB
glabel D_80A27EE8
 .word 0x40490FDB, 0x00000000


