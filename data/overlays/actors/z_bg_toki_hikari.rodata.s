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
 .word 0x3D4CCCCD
glabel D_808BAD5C
 .word 0x3E4CCCCD
glabel D_808BAD60
 .word 0x3CCCCCCD
glabel D_808BAD64
 .word 0x3EA3D70A
glabel D_808BAD68
 .word 0x40490FDB, 0x00000000


