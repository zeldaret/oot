.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809F2FE0
 .word 0x0A0A0000
glabel D_809F2FE4
    .asciz "[33m☆☆☆☆☆ デグナッツお面品評会長老 ☆☆☆☆☆ %x\n[m"
    .balign 4

glabel D_809F3020
 .word 0xBCC2200A, 0x00000000
glabel D_809F3028
 .word 0xBCC2200A, 0x00000000
glabel D_809F3030
 .word 0xBCC2200A, 0x00000000
glabel D_809F3038
 .word 0xBCC2200A, 0x00000000
glabel D_809F3040
 .word 0xBCC2200A, 0x00000000
glabel D_809F3048
 .word 0xBCC2200A, 0x00000000
glabel D_809F3050
 .word 0xBCC2200A, 0x00000000
glabel D_809F3058
 .word 0xBCC2200A, 0x00000000
glabel D_809F3060
 .word 0xCBC0200A, 0x00000000
glabel D_809F3068
 .word 0xCBC0200A, 0x00000000
glabel D_809F3070
 .word 0xCBC0200A, 0x00000000
glabel D_809F3078
 .word 0xCBC0200A, 0x00000000
glabel D_809F3080
 .word 0xCBC0200A, 0x00000000
glabel D_809F3088
 .word 0xCBC0200A, 0x00000000
glabel D_809F3090
    .asciz "[33m☆☆☆☆☆ 時間 ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_809F30B8
    .asciz "../z_en_dnt_jiji.c"
    .balign 4

glabel D_809F30CC
    .asciz "../z_en_dnt_jiji.c"
    .balign 4

glabel D_809F30E0
    .asciz "../z_en_dnt_jiji.c"
    .balign 4

glabel D_809F30F4
 .word 0x4622F983
glabel D_809F30F8
 .word 0x3C23D70A, 0x00000000


