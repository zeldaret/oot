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
 .word 0x3ECCCCCD
glabel D_80B88BB0
 .word 0x3F19999A
glabel D_80B88BB4
 .word 0x3FCCCCCD
glabel D_80B88BB8
 .word 0x3F4CCCCD
glabel D_80B88BBC
 .word 0x3CF5C28F
glabel D_80B88BC0
 .word 0x3FCCCCCD
glabel D_80B88BC4
 .word 0x3C23D70A
glabel D_80B88BC8
 .word 0x3F4CCCCD
glabel D_80B88BCC
 .word 0x3FA66666
glabel D_80B88BD0
 .word 0x3E4CCCCD
glabel D_80B88BD4
 .word 0x44548000
glabel D_80B88BD8
 .word 0x3CB60B61
glabel D_80B88BDC
 .word 0x3DAAAAAA
glabel D_80B88BE0
 .word 0x38D1B717
glabel D_80B88BE4
 .word 0x3F666666
glabel D_80B88BE8
 .word 0x3E4CCCCD
glabel D_80B88BEC
 .word 0x3FCCCCCD
glabel D_80B88BF0
 .word 0x3F4CCCCD
glabel D_80B88BF4
 .word 0x38C90FDB
glabel D_80B88BF8
 .word 0x3F19999A
glabel D_80B88BFC
 .word 0x3FB33333
glabel D_80B88C00
 .word 0x3DC90FDB
glabel D_80B88C04
 .word 0x3DC90FDB, 0x00000000, 0x00000000


