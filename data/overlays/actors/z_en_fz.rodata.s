.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A21C60
    .asciz "../z_en_fz.c"
    .balign 4

glabel D_80A21C70
    .asciz "../z_en_fz.c"
    .balign 4

glabel D_80A21C80
    .asciz "../z_en_fz.c"
    .balign 4

glabel D_80A21C90
    .asciz "../z_en_fz.c"
    .balign 4

glabel D_80A21CA0
    .asciz "../z_en_fz.c"
    .balign 4

glabel D_80A21CB0
    .asciz "../z_en_fz.c"
    .balign 4

glabel D_80A21CC0
 .word 0x3F19999A
glabel D_80A21CC4
 .word 0x3E99999A
glabel D_80A21CC8
 .word 0x3DCCCCCD
glabel D_80A21CCC
 .word 0x3DCCCCCD
glabel D_80A21CD0
 .word 0x3F19999A
glabel D_80A21CD4
 .word 0x40490FDB
glabel D_80A21CD8
 .word 0x3BC49BA6
glabel D_80A21CDC
 .word 0x39D1B717
glabel D_80A21CE0
 .word 0x3B83126F
glabel D_80A21CE4
 .word 0x3F19999A
glabel D_80A21CE8
 .word 0x40490FDB
glabel D_80A21CEC
 .word 0x3DCCCCCD


