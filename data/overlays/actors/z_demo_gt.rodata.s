.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80982780
    .asciz "../z_demo_gt_part1.c"
    .balign 4

glabel D_80982798
    .asciz "../z_demo_gt_part1.c"
    .balign 4

glabel D_809827B0
    .asciz "../z_demo_gt_part1.c"
    .balign 4

glabel D_809827C8
    .asciz "../z_demo_gt_part2.c"
    .balign 4

glabel D_809827E0
    .asciz "../z_demo_gt_part2.c"
    .balign 4

glabel D_809827F8
    .asciz "../z_demo_gt_part2.c"
    .balign 4

glabel D_80982810
    .asciz "../z_demo_gt_part3.c"
    .balign 4

glabel D_80982828
    .asciz "../z_demo_gt_part3.c"
    .balign 4

glabel D_80982840
    .asciz "../z_demo_gt_part3.c"
    .balign 4

glabel D_80982858
    .asciz "../z_demo_gt_part4_1.c"
    .balign 4

glabel D_80982870
    .asciz "../z_demo_gt_part4_1.c"
    .balign 4

glabel D_80982888
    .asciz "../z_demo_gt_part4_1.c"
    .balign 4

glabel D_809828A0
    .asciz "../z_demo_gt_part4_2.c"
    .balign 4

glabel D_809828B8
    .asciz "../z_demo_gt_part4_2.c"
    .balign 4

glabel D_809828D0
    .asciz "../z_demo_gt_part4_2.c"
    .balign 4

glabel D_809828E8
    .asciz "../z_demo_gt_part4_3.c"
    .balign 4

glabel D_80982900
    .asciz "../z_demo_gt_part4_3.c"
    .balign 4

glabel D_80982918
    .asciz "../z_demo_gt_part4_3.c"
    .balign 4

glabel D_80982930
    .asciz "../z_demo_gt_part5.c"
    .balign 4

glabel D_80982948
    .asciz "../z_demo_gt_part5.c"
    .balign 4

glabel D_80982960
    .asciz "../z_demo_gt_part5.c"
    .balign 4

glabel D_80982978
    .asciz "../z_demo_gt_part6.c"
    .balign 4

glabel D_80982990
    .asciz "../z_demo_gt_part6.c"
    .balign 4

glabel D_809829A8
    .asciz "../z_demo_gt_part6.c"
    .balign 4

glabel D_809829C0
    .asciz "[31mメインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

.balign 4

glabel D_809829FC
    .asciz "Demo_Gt_Actor_ct そんな引数は無い!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n"
    .balign 4

glabel D_80982A3C
    .asciz "[31m描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_80982A74
 .word 0x3E4CCCCD
glabel D_80982A78
 .word 0x3DCCCCCD
glabel D_80982A7C
 .word 0x3F333333
glabel D_80982A80
 .word 0x3DCCCCCD
glabel D_80982A84
 .word 0x3F333333
glabel D_80982A88
 .word 0x3F19999A
glabel D_80982A8C
 .word 0x3DCCCCCD
glabel D_80982A90
 .word 0x3F333333
glabel D_80982A94
 .word 0x3DCCCCCD
glabel D_80982A98
 .word 0x3F333333
glabel D_80982A9C
 .word 0x3D4CCCCD
glabel D_80982AA0
 .word 0x3DCCCCCD
glabel D_80982AA4
 .word 0x3DCCCCCD
glabel D_80982AA8
 .word 0x3DCCCCCD
glabel D_80982AAC
 .word 0x3DCCCCCD
glabel D_80982AB0
 .word 0x3DCCCCCD
glabel D_80982AB4
 .word 0x3DCCCCCD
glabel D_80982AB8
 .word 0x3DCCCCCD
glabel D_80982ABC
 .word 0x3DCCCCCD
glabel D_80982AC0
 .word 0x4429C000
glabel D_80982AC4
 .word 0x44D48000
glabel D_80982AC8
 .word 0x4429C000
glabel D_80982ACC
 .word 0x44D48000
glabel D_80982AD0
 .word 0x3A83126F
glabel D_80982AD4
 .word 0x3D449BA6
glabel D_80982AD8
 .word 0x38C90FDB
glabel D_80982ADC
 .word 0x43BC8000
glabel D_80982AE0
 .word 0x43BC8000
glabel D_80982AE4
 .word 0x449D8000
glabel D_80982AE8
 .word 0x43A18000
glabel D_80982AEC
 .word 0x444F8000
glabel D_80982AF0
 .word 0x44098000
glabel D_80982AF4
 .word 0x444A8000
glabel D_80982AF8
 .word 0x44A8C000
glabel D_80982AFC
 .word 0x438F8000
glabel D_80982B00
 .word 0x44458000
glabel D_80982B04
 .word 0x44458000
glabel D_80982B08
 .word 0x44458000
glabel D_80982B0C
 .word 0x45034000
glabel D_80982B10
 .word 0x3A83126F
glabel D_80982B14
 .word 0x3D449BA6
glabel D_80982B18
 .word 0x38C90FDB
glabel D_80982B1C
 .word 0x44924000
glabel D_80982B20
 .word 0xC4898000
glabel D_80982B24
 .word 0x3A83126F
glabel D_80982B28
 .word 0x3D449BA6
glabel D_80982B2C
 .word 0x38C90FDB
glabel D_80982B30
 .word 0x3A83126F
glabel D_80982B34
 .word 0x3BA3D70A
glabel D_80982B38
 .word 0x38C90FDB
glabel D_80982B3C
 .word 0x3A83126F
glabel D_80982B40
 .word 0x3D449BA6
glabel D_80982B44
 .word 0x38C90FDB
glabel D_80982B48
 .word 0x3A83126F
glabel D_80982B4C
 .word 0x3D449BA6
glabel D_80982B50
 .word 0x38C90FDB
glabel jtbl_80982B54
.word L809824A4
.word L809824B4
.word L809824C4
.word L80982524
.word L80982524
.word L809824D4
.word L809824E4
.word L809824F4
.word L80982524
.word L80982524
.word L80982524
.word L80982524
.word L80982524
.word L80982524
.word L80982524
.word L80982524
.word L80982524
.word L80982524
.word L80982524
.word L80982524
.word L80982524
.word L80982524
.word L80982524
.word L80982504
.word L80982514
.word 0x00000000, 0x00000000


