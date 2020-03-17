.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80BA6F40
 .word 0x1B5B3333, 0x6D000000
glabel D_80BA6F48
    .asciz "z_oceff_spot  太陽の歌フラグ\n"
    .balign 4

glabel D_80BA6F68
 .word 0x1B5B6D00
glabel D_80BA6F6C
 .word 0x1B5B3333, 0x6D000000
glabel D_80BA6F74
    .asciz "z_oceff_spot  オカリナ終了\n"
    .balign 4

glabel D_80BA6F90
 .word 0x1B5B6D00
glabel D_80BA6F94
    .asciz "../z_oceff_spot.c"
    .balign 4

glabel D_80BA6FA8
    .asciz "../z_oceff_spot.c"
    .balign 4

glabel D_80BA6FBC
    .asciz "../z_oceff_spot.c"
    .balign 4

glabel D_80BA6FD0
 .word 0x4019999A
glabel D_80BA6FD4
 .word 0x3E99999A
glabel D_80BA6FD8
 .word 0x3D4CCCCD
glabel D_80BA6FDC
 .word 0x3D4CCCCD
glabel D_80BA6FE0
 .word 0x40490FDB
glabel D_80BA6FE4
 .word 0x3ED70A3D
glabel D_80BA6FE8
 .word 0x3F666666, 0x00000000


