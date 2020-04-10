.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A96A90
    .asciz "../z_en_karebaba.c"
    .balign 4

glabel D_80A96AA4
    .asciz "../z_en_karebaba.c"
    .balign 4

glabel D_80A96AB8
    .asciz "../z_en_karebaba.c"
    .balign 4

glabel D_80A96ACC
    .asciz "../z_en_karebaba.c"
    .balign 4

glabel D_80A96AE0
    .asciz "../z_en_karebaba.c"
    .balign 4

glabel D_80A96AF4
    .asciz "../z_en_karebaba.c"
    .balign 4

glabel D_80A96B08
    .asciz "../z_en_karebaba.c"
    .balign 4

glabel D_80A96B1C
    .asciz "../z_en_karebaba.c"
    .balign 4

glabel D_80A96B30
    .asciz "../z_en_karebaba.c"
    .balign 4

glabel D_80A96B44
    .float -0.8
    .balign 4

glabel D_80A96B48
    .float 0.05
    .balign 4

glabel D_80A96B4C
    .float 0.005
    .balign 4

glabel D_80A96B50
    .float 0.005
    .balign 4

glabel D_80A96B54
    .float 0.05
    .balign 4

glabel D_80A96B58
    .float 0.005
    .balign 4

glabel D_80A96B5C
    .float 0.01
    .balign 4

glabel D_80A96B60
    .float 0.15
    .balign 4

glabel D_80A96B64
 .word 0x3A03126F
glabel D_80A96B68
    .float 0.01
    .balign 4

glabel D_80A96B6C
    .float 0.01
    .balign 4

glabel D_80A96B70
 .word 0x38C90FDB, 0x00000000, 0x00000000, 0x00000000


