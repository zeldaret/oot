.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A14FE0
    .asciz "../z_en_firefly.c"
    .balign 4

glabel D_80A14FF4
    .asciz "../z_en_firefly.c"
    .balign 4

glabel D_80A15008
    .asciz "../z_en_firefly.c"
    .balign 4

glabel D_80A1501C
    .asciz "../z_en_firefly.c"
    .balign 4

glabel D_80A15030
 .word 0x3F59999A
glabel D_80A15034
 .word 0x3E19999A
glabel D_80A15038
 .word 0x3D4CCCCD
glabel D_80A1503C
 .word 0x4708B800
glabel D_80A15040
 .word 0x3F4CCCCD
glabel D_80A15044
 .word 0x3EB33333
glabel D_80A15048
 .word 0x3CA3D70A
glabel D_80A1504C
 .word 0x450FC000


