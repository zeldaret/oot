.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8098C870
    .asciz "bank_ID = %d\n"
    .balign 4

glabel D_8098C880
 .word 0x30000000
glabel D_8098C884
    .asciz "../z_demo_kankyo.c"
    .balign 4

glabel D_8098C898
    .asciz "../z_demo_kankyo.c"
    .balign 4

glabel D_8098C8AC
    .asciz "../z_demo_kankyo.c"
    .balign 4

glabel D_8098C8C0
    .asciz "../z_demo_kankyo.c"
    .balign 4

glabel D_8098C8D4
    .asciz "../z_demo_kankyo.c"
    .balign 4

glabel D_8098C8E8
    .asciz "../z_demo_kankyo.c"
    .balign 4

glabel D_8098C8FC
    .asciz "../z_demo_kankyo.c"
    .balign 4

glabel D_8098C910
    .asciz "../z_demo_kankyo.c"
    .balign 4

glabel D_8098C924
    .asciz "../z_demo_kankyo.c"
    .balign 4

glabel D_8098C938
    .asciz "../z_demo_kankyo.c"
    .balign 4

glabel D_8098C94C
    .asciz "../z_demo_kankyo.c"
    .balign 4

glabel D_8098C960
    .asciz "../z_demo_kankyo.c"
    .balign 4

glabel D_8098C974
    .asciz "../z_demo_kankyo.c"
    .balign 4

glabel D_8098C988
    .asciz "../z_demo_kankyo.c"
    .balign 4

glabel D_8098C99C
    .asciz "../z_demo_kankyo.c"
    .balign 4

glabel D_8098C9B0
    .asciz "../z_demo_kankyo.c"
    .balign 4

glabel D_8098C9C4
    .asciz "../z_demo_kankyo.c"
    .balign 4

glabel D_8098C9D8
    .asciz "../z_demo_kankyo.c"
    .balign 4

glabel D_8098C9EC
    .asciz "../z_demo_kankyo.c"
    .balign 4

glabel D_8098CA00
    .asciz "../z_demo_kankyo.c"
    .balign 4

glabel D_8098CA14
    .asciz "../z_demo_kankyo.c"
    .balign 4

glabel D_8098CA28
    .asciz "../z_demo_kankyo.c"
    .balign 4

glabel D_8098CA3C
    .asciz "../z_demo_kankyo.c"
    .balign 4

glabel jtbl_8098CA50
.word L80988F2C
.word L80988F2C
.word L80988FCC
.word L80988FCC
.word L80988FCC
.word L80988FCC
.word L80988FCC
.word L8098906C
.word L80989244
.word L80989244
.word L80989244
.word L80989244
.word L80989244
.word L809890DC
.word L8098916C
.word L80989190
.word L80989190
.word L8098921C
glabel D_8098CA98
 .word 0x477FFF00
glabel jtbl_8098CA9C
.word L809896CC
.word L809896CC
.word L809892E8
.word L809892E8
.word L809892E8
.word L809892E8
.word L809892E8
.word L80989300
.word L809896CC
.word L809896CC
.word L809896CC
.word L809896CC
.word L809896CC
.word L80989318
.word L809896CC
.word L80989348
.word L8098964C
.word L809896CC
glabel jtbl_8098CAE4
.word L809899F8
.word L809899F8
.word L80989AA8
.word L80989AA8
.word L80989AA8
.word L80989AA8
.word L80989AA8
.word L80989ABC
.word L80989B1C
.word L80989B1C
.word L80989B1C
.word L80989B1C
.word L80989B1C
.word L80989AD0
.word L80989AE4
.word L80989AF8
.word L80989AF8
.word L80989B0C
glabel D_8098CB2C
 .word 0x44BB8000
glabel D_8098CB30
 .word 0x40490FDB
glabel D_8098CB34
 .word 0x3A83126F
glabel D_8098CB38
 .word 0x3C8EFA35
glabel D_8098CB3C
 .word 0x3C8EFA35
glabel D_8098CB40
 .word 0x3C8EFA35
glabel D_8098CB44
 .word 0x3E4CCCCD
glabel D_8098CB48
 .word 0x3E4CCCCD
glabel D_8098CB4C
 .word 0x3C9374BC
glabel D_8098CB50
 .word 0x3C8EFA35
glabel D_8098CB54
 .word 0x3E4CCCCD
glabel D_8098CB58
 .word 0x3CA3D70A
glabel D_8098CB5C
 .word 0x3C8EFA35

