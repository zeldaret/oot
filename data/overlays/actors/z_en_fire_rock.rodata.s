.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A12D00
    .asciz "[33m☆☆☆☆☆ 天井待ち岩 ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A12D2C
    .asciz "[33m☆☆☆☆☆ 床岩 ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A12D54
    .asciz "[33m☆☆☆☆☆ そんな岩はねぇ！ERR!!!!!! ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A12D90
 .word 0x0A0A0000
glabel D_80A12D94
    .asciz "[32m☆☆☆☆☆ 発生数回復 ☆☆☆☆☆%d\n[m"
    .balign 4

glabel D_80A12DC0
 .word 0x0A0A0000
glabel D_80A12DC4
    .asciz "[33m☆☆☆☆☆ イッパイデッス ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A12DF4
    .asciz "[33m☆☆☆☆☆ イッパイデッス ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A12E24
    .asciz "[33m☆☆☆☆☆ シールド防御 Lv１ ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A12E58
    .asciz "../z_en_fire_rock.c"
    .balign 4

glabel D_80A12E6C
    .asciz "../z_en_fire_rock.c"
    .balign 4

glabel D_80A12E80
    .asciz "../z_en_fire_rock.c"
    .balign 4

glabel jtbl_80A12E94
.word L80A11D9C
.word L80A11E70
.word L80A11F50
.word L80A11DD8
.word L80A12008
.word L80A11CF4
.word L80A11D14
glabel D_80A12EB0
 .word 0x3CA3D70A
glabel D_80A12EB4
 .word 0x477FFF00
glabel D_80A12EB8
 .word 0x3CA3D70A
glabel D_80A12EBC
 .word 0x477FFF00
glabel D_80A12EC0
 .word 0x3C23D70A
glabel D_80A12EC4
 .word 0xBF99999A
glabel D_80A12EC8
 .word 0x477FFF00
glabel D_80A12ECC
 .word 0xC61C4000
glabel D_80A12ED0
 .word 0xC4A14000
glabel D_80A12ED4
 .word 0xC5728000
glabel D_80A12ED8
 .word 0x3C23D70A
glabel D_80A12EDC
 .word 0xBE99999A
glabel D_80A12EE0
 .word 0x3C8EFA35
glabel D_80A12EE4
 .word 0x3C8EFA35
glabel D_80A12EE8
 .word 0x3C8EFA35, 0x00000000


