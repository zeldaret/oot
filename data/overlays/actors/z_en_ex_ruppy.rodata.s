.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A0B3D0
    .asciz "[32m☆☆☆☆☆ インデックス ☆☆☆☆☆ %x\n[m"
    .balign 4

glabel D_80A0B400
    .asciz "[32m☆☆☆☆☆ わーなーコイン ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A0B430
    .asciz "[32m☆☆☆☆☆ ノーマルルピー ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A0B460
    .asciz "[32m☆☆☆☆☆ そ、そんなばかな！エラー！！！！！ ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A0B4A4
    .asciz "[32m☆☆☆☆☆ バカめ！ ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A0B4D0
    .asciz "../z_en_ex_ruppy.c"
    .balign 4

glabel D_80A0B4E4
    .asciz "../z_en_ex_ruppy.c"
    .balign 4

glabel D_80A0B4F8
    .asciz "../z_en_ex_ruppy.c"
    .balign 4

glabel jtbl_80A0B50C
.word L80A0A478
.word L80A0A634
.word L80A0A634
.word L80A0A6E0
.word L80A0A7AC
glabel D_80A0B520
 .word 0x3C23D70A
glabel D_80A0B524
 .word 0x4348FD71
glabel D_80A0B528
 .word 0x3CA3D70A
glabel D_80A0B52C
 .word 0x3CA3D70A
glabel D_80A0B530
 .word 0x407F5C29
glabel D_80A0B534
 .word 0x3CA3D70A
glabel D_80A0B538
 .word 0x41F7EB85
glabel D_80A0B53C
 .word 0x3C23D70A
glabel D_80A0B540
 .word 0xBE4CCCCD
glabel D_80A0B544
 .word 0x3CF5C28F
glabel D_80A0B548
 .word 0x3D8F5C29, 0x00000000


