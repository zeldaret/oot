.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A4B880
    .asciz "../z_en_goma.c"
    .balign 4

glabel D_80A4B890
    .asciz "../z_en_goma.c"
    .balign 4

glabel D_80A4B8A0
    .asciz "../z_en_goma.c"
    .balign 4

glabel D_80A4B8B0
    .asciz "../z_en_goma.c"
    .balign 4

glabel D_80A4B8C0
    .asciz "../z_en_goma.c"
    .balign 4

glabel D_80A4B8D0
    .asciz "../z_en_goma.c"
    .balign 4

glabel D_80A4B8E0
    .asciz "../z_en_goma.c"
    .balign 4

glabel D_80A4B8F0
 .word 0xBFA66666
glabel D_80A4B8F4
 .word 0x40133333
glabel D_80A4B8F8
 .word 0x3BA3D70A
glabel D_80A4B8FC
 .word 0x3C23D70A
glabel D_80A4B900
 .word 0x3BA3D70A
glabel D_80A4B904
 .word 0x3C23D70A
glabel D_80A4B908
 .word 0x3BA3D70A
glabel D_80A4B90C
 .word 0x3C23D70A
glabel D_80A4B910
 .word 0xC4BB8000
glabel D_80A4B914
 .word 0x44BB8000
glabel D_80A4B918
 .word 0xBFA66666
glabel D_80A4B91C
 .word 0x3CF5C28F
glabel D_80A4B920
 .word 0x3DCCCCCD
glabel D_80A4B924
 .word 0x3CF5C28F
glabel D_80A4B928
 .word 0x3727C5AC
glabel D_80A4B92C
 .word 0x3A83126F
glabel D_80A4B930
 .word 0x40490FDB
glabel D_80A4B934
 .word 0x38000100
glabel D_80A4B938
 .word 0x4622F983
glabel D_80A4B93C
 .word 0x4622F983
glabel D_80A4B940
 .word 0x358637BD
glabel D_80A4B944
 .word 0x358637BD
glabel D_80A4B948
 .word 0x358637BD
glabel D_80A4B94C
 .word 0x40490FDB
glabel D_80A4B950
 .word 0x40490FDB
glabel D_80A4B954
 .word 0x40490FDB
glabel D_80A4B958
 .word 0x40490FDB
glabel D_80A4B95C
 .word 0x40490FDB
glabel D_80A4B960
 .word 0x40490E56
glabel D_80A4B964
 .word 0x41FF3333
glabel D_80A4B968
 .word 0x3E19999A
glabel D_80A4B96C
 .word 0x3DCCCCCD
glabel D_80A4B970
 .word 0x3F733333
glabel D_80A4B974
 .word 0x3F866666
glabel D_80A4B978
 .word 0x3DCCCCCD
glabel D_80A4B97C
 .word 0x3E19999A
glabel D_80A4B980
 .word 0x477FFFFD
glabel D_80A4B984
 .word 0x3A83126F, 0x00000000, 0x00000000


