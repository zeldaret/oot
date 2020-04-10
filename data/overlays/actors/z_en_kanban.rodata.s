.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A94FE0
    .asciz "KANBAN ARG    %x\n"
    .balign 4

glabel D_80A94FF4
 .word 0x1B5B6D00
glabel D_80A94FF8
    .asciz " WAT  Y  = %f\n"
    .balign 4

glabel D_80A95008
    .asciz " POS  Y  = %f\n"
    .balign 4

glabel D_80A95018
    .asciz " GROUND Y  = %f\n"
    .balign 4

glabel D_80A9502C
    .asciz "[32m"
    .balign 4

glabel D_80A95034
    .asciz "OCARINA_MODE %d\n"
    .balign 4

glabel D_80A95048
 .word 0x1B5B6D00
glabel D_80A9504C
    .asciz "../z_en_kanban.c"
    .balign 4

glabel D_80A95060
    .asciz "../z_en_kanban.c"
    .balign 4

glabel D_80A95074
    .asciz "../z_en_kanban.c"
    .balign 4

glabel D_80A95088
    .asciz "../z_en_kanban.c"
    .balign 4

glabel D_80A9509C
    .asciz "../z_en_kanban.c"
    .balign 4

glabel D_80A950B0
    .asciz "../z_en_kanban.c"
    .balign 4

glabel D_80A950C4
 .word 0x38000100
glabel jtbl_80A950C8
.word L80A922CC
.word L80A92A24
.word L80A92A24
.word L80A930DC
.word L80A930DC
.word L80A93920
glabel D_80A950E0
 .word 0x40490FDB
glabel D_80A950E4
 .word 0xBE99999A
glabel D_80A950E8
 .word 0x3F333333
glabel D_80A950EC
 .word 0x3DCCCCCD
glabel D_80A950F0
 .word 0x451C4000
glabel D_80A950F4
 .word 0x461C4000
glabel D_80A950F8
 .word 0x3D4CCCCD
glabel D_80A950FC
 .word 0x3D4CCCCD
glabel D_80A95100
 .word 0x4622F983
glabel D_80A95104
 .word 0x40490FDB
glabel D_80A95108
 .word 0x40490FDB
glabel D_80A9510C
 .word 0x40490FDB
glabel D_80A95110
 .word 0x40490FDB
glabel D_80A95114
 .word 0x40490FDB
glabel D_80A95118
 .word 0x45898000
glabel D_80A9511C
 .word 0xC53B8000
glabel D_80A95120
 .word 0x3B343958
glabel D_80A95124
 .word 0x3C23D70A
glabel D_80A95128
 .word 0xBF20D97C
glabel D_80A9512C
 .word 0x40490FDB
glabel D_80A95130
 .word 0x40490FDB
glabel D_80A95134
 .word 0x40490FDB
glabel D_80A95138
 .word 0x40490FDB, 0x00000000


