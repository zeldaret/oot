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
    .float 0.6
    .balign 4

glabel D_80A21CC4
    .float 0.3
    .balign 4

glabel D_80A21CC8
    .float 0.1
    .balign 4

glabel D_80A21CCC
    .float 0.1
    .balign 4

glabel D_80A21CD0
    .float 0.6
    .balign 4

glabel D_80A21CD4
    .float 3.14159274101
    .balign 4

glabel D_80A21CD8
 .word 0x3BC49BA6
glabel D_80A21CDC
 .word 0x39D1B717
glabel D_80A21CE0
 .word 0x3B83126F
glabel D_80A21CE4
    .float 0.6
    .balign 4

glabel D_80A21CE8
    .float 3.14159274101
    .balign 4

glabel D_80A21CEC
    .float 0.1
    .balign 4



