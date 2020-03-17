.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A5B070
    .asciz "Warning : vector size zero (%s %d)\n"
    .balign 4

glabel D_80A5B094
    .asciz "../z_en_honotrap.c"
    .balign 4

glabel D_80A5B0A8
    .asciz "../z_en_honotrap.c"
    .balign 4

glabel D_80A5B0BC
    .asciz "../z_en_honotrap.c"
    .balign 4

glabel D_80A5B0D0
    .asciz "../z_en_honotrap.c"
    .balign 4

glabel D_80A5B0E4
    .asciz "../z_en_honotrap.c"
    .balign 4

glabel D_80A5B0F8
    .asciz "../z_en_honotrap.c"
    .balign 4

glabel D_80A5B10C
    .asciz "../z_en_honotrap.c"
    .balign 4

glabel D_80A5B120
 .word 0x3A83126F
glabel D_80A5B124
 .word 0x43FF8000
glabel D_80A5B128
 .word 0x443B8000
glabel D_80A5B12C
 .word 0x3B83126F
glabel D_80A5B130
 .word 0x3B9D4952
glabel D_80A5B134
 .word 0x3DA3D70A
glabel D_80A5B138
 .word 0xBDA3D70A
glabel D_80A5B13C
 .word 0x3F733333
glabel D_80A5B140
 .word 0x3DCCCCCD
glabel D_80A5B144
 .word 0x38C90FDB, 0x00000000, 0x00000000


