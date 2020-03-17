.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80ABE3E0
    .asciz "ニュウ イニシャル[ %d ] ！！\n"
    .balign 4

glabel D_80ABE400
    .asciz "ダミーニュウ イニシャル[ %d ] ！！\n"
    .balign 4

glabel D_80ABE424
    .asciz "En_Ny_actor_move2[ %x ] ！！\n"
    .balign 4

glabel D_80ABE444
    .asciz "../z_en_ny.c"
    .balign 4

glabel D_80ABE454
    .asciz "../z_en_ny.c"
    .balign 4

glabel D_80ABE464
    .asciz "../z_en_ny.c"
    .balign 4

glabel D_80ABE474
    .asciz "../z_en_ny.c"
    .balign 4

glabel D_80ABE484
    .asciz "../z_en_ny.c"
    .balign 4

glabel D_80ABE494
    .asciz "../z_en_ny.c"
    .balign 4

glabel D_80ABE4A4
    .asciz "../z_en_ny.c"
    .balign 4

glabel D_80ABE4B4
 .word 0xBECCCCCD
glabel D_80ABE4B8
 .word 0x3F333333
glabel D_80ABE4BC
 .word 0x40333333
glabel D_80ABE4C0
 .word 0xBECCCCCD
glabel D_80ABE4C4
 .word 0xBECCCCCD
glabel D_80ABE4C8
 .word 0x3ECCCCCD
glabel D_80ABE4CC
 .word 0x3ECCCCCD
glabel D_80ABE4D0
 .word 0x3FAA3D71
glabel D_80ABE4D4
 .word 0x3ECCCCCD
glabel D_80ABE4D8
 .word 0x3DCCCCCD
glabel D_80ABE4DC
 .word 0x3F19999A
glabel D_80ABE4E0
 .word 0x3E19999A
glabel D_80ABE4E4
 .word 0x3D23D70A
glabel D_80ABE4E8
 .word 0x3ECCCCCD, 0x00000000


