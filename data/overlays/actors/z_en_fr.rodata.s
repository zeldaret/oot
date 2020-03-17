.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A1D110
 .word 0x1B5B3431, 0x3B33376D, 0x00000000
glabel D_80A1D11C
    .asciz "%s[%d] : 引数が間違っている！！(%d)\n"
    .balign 4

glabel D_80A1D144
    .asciz "../z_en_fr.c"
    .balign 4

glabel D_80A1D154
 .word 0x1B5B6D00
glabel D_80A1D158
 .word 0x30000000
glabel D_80A1D15C
    .asciz "../z_en_fr.c"
    .balign 4

glabel D_80A1D16C
 .word 0x1B5B3431, 0x3B33376D, 0x00000000
glabel D_80A1D178
    .asciz "%s[%d] : バンクが無いよ！！\n"
    .balign 4

glabel D_80A1D198
    .asciz "../z_en_fr.c"
    .balign 4

glabel D_80A1D1A8
 .word 0x1B5B6D00
glabel D_80A1D1AC
 .word 0x30000000
glabel D_80A1D1B0
    .asciz "../z_en_fr.c"
    .balign 4

glabel D_80A1D1C0
 .word 0x1B5B3431, 0x3B33376D, 0x00000000
glabel D_80A1D1CC
    .asciz "%s[%d]カエルがいない！？\n"
    .balign 4

glabel D_80A1D1E8
    .asciz "../z_en_fr.c"
    .balign 4

glabel D_80A1D1F8
 .word 0x1B5B6D00
glabel D_80A1D1FC
 .word 0x1B5B3431, 0x3B33376D, 0x00000000
glabel D_80A1D208
    .asciz "%s[%d]カエルがいない！？\n"
    .balign 4

glabel D_80A1D224
    .asciz "../z_en_fr.c"
    .balign 4

glabel D_80A1D234
 .word 0x1B5B6D00
glabel D_80A1D238
    .asciz "../z_en_fr.c"
    .balign 4

glabel D_80A1D248
    .asciz "../z_en_fr.c"
    .balign 4

glabel D_80A1D258
    .asciz "../z_en_fr.c"
    .balign 4

glabel D_80A1D268
    .asciz "../z_en_fr.c"
    .balign 4

glabel D_80A1D278
    .asciz "../z_en_fr.c"
    .balign 4

glabel D_80A1D288
 .word 0x4622F983
glabel D_80A1D28C
 .word 0x38D1B717
glabel D_80A1D290
 .word 0xC61C3C00
glabel D_80A1D294
 .word 0x40490FDB
glabel D_80A1D298
 .word 0x4622F983
glabel D_80A1D29C
 .word 0x38D1B717
glabel jtbl_80A1D2A0
.word L80A1BFAC
.word L80A1C02C
.word L80A1C02C
.word L80A1BF9C
.word L80A1BF6C
.word L80A1BF60
.word L80A1BF58
.word L80A1BF78
.word L80A1BF84
.word L80A1BF90
glabel jtbl_80A1D2C8
.word L80A1BFD0
.word L80A1BFE4
.word L80A1BFF8
.word L80A1C00C
.word L80A1C020
glabel jtbl_80A1D2DC
.word L80A1C274
.word L80A1C280
.word L80A1C288
.word L80A1C294
.word L80A1C2A0
glabel jtbl_80A1D2F0
.word L80A1C680
.word L80A1C694
.word L80A1C6A8
.word L80A1C6BC
.word L80A1C6D0
glabel D_80A1D304
 .word 0x3C75C28F, 0x00000000, 0x00000000


