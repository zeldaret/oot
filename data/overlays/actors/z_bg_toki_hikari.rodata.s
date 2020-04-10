.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808BAC80
    .asciz "../z_bg_toki_hikari.c"
    .balign 4

glabel D_808BAC98
    .asciz "../z_bg_toki_hikari.c"
    .balign 4

glabel D_808BACB0
    .asciz "../z_bg_toki_hikari.c"
    .balign 4

glabel D_808BACC8
    .asciz "../z_bg_toki_hikari.c"
    .balign 4

glabel D_808BACE0
    .asciz "../z_bg_toki_hikari.c"
    .balign 4

glabel D_808BACF8
    .asciz "../z_bg_toki_hikari.c"
    .balign 4

glabel D_808BAD10
    .asciz "../z_bg_toki_hikari.c"
    .balign 4

glabel D_808BAD28
    .asciz "../z_bg_toki_hikari.c"
    .balign 4

glabel D_808BAD40
    .asciz "../z_bg_toki_hikari.c"
    .balign 4

glabel D_808BAD58
    .float 0.05
    .balign 4

glabel D_808BAD5C
    .float 0.2
    .balign 4

glabel D_808BAD60
    .float 0.025
    .balign 4

glabel D_808BAD64
 .word 0x3EA3D70A
glabel D_808BAD68
 .word 0x40490FDB, 0x00000000


