.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B88B20
    .asciz "../z_magic_dark.c"
    .balign 4

glabel D_80B88B34
    .asciz "../z_magic_dark.c"
    .balign 4

glabel D_80B88B48
    .asciz "../z_magic_dark.c"
    .balign 4

glabel D_80B88B5C
    .asciz "../z_magic_dark.c"
    .balign 4

glabel D_80B88B70
    .asciz "../z_magic_dark.c"
    .balign 4

glabel D_80B88B84
    .asciz "../z_magic_dark.c"
    .balign 4

glabel D_80B88B98
    .asciz "../z_magic_dark.c"
    .balign 4

glabel D_80B88BAC
    .float 0.4
    .balign 4

glabel D_80B88BB0
    .float 0.6
    .balign 4

glabel D_80B88BB4
    .float 1.6
    .balign 4

glabel D_80B88BB8
    .float 0.8
    .balign 4

glabel D_80B88BBC
    .float 0.03
    .balign 4

glabel D_80B88BC0
    .float 1.6
    .balign 4

glabel D_80B88BC4
    .float 0.01
    .balign 4

glabel D_80B88BC8
    .float 0.8
    .balign 4

glabel D_80B88BCC
    .float 1.3
    .balign 4

glabel D_80B88BD0
    .float 0.2
    .balign 4

glabel D_80B88BD4
 .word 0x44548000
glabel D_80B88BD8
 .word 0x3CB60B61
glabel D_80B88BDC
 .word 0x3DAAAAAA
glabel D_80B88BE0
 .word 0x38D1B717
glabel D_80B88BE4
    .float 0.9
    .balign 4

glabel D_80B88BE8
    .float 0.2
    .balign 4

glabel D_80B88BEC
    .float 1.6
    .balign 4

glabel D_80B88BF0
    .float 0.8
    .balign 4

glabel D_80B88BF4
    .float 9.58738019108e-05
    .balign 4

glabel D_80B88BF8
    .float 0.6
    .balign 4

glabel D_80B88BFC
    .float 1.4
    .balign 4

glabel D_80B88C00
 .word 0x3DC90FDB
glabel D_80B88C04
 .word 0x3DC90FDB, 0x00000000, 0x00000000


