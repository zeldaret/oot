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
    .float 2.3
    .balign 4

glabel D_80A4B8F8
    .float 0.005
    .balign 4

glabel D_80A4B8FC
    .float 0.01
    .balign 4

glabel D_80A4B900
    .float 0.005
    .balign 4

glabel D_80A4B904
    .float 0.01
    .balign 4

glabel D_80A4B908
    .float 0.005
    .balign 4

glabel D_80A4B90C
    .float 0.01
    .balign 4

glabel D_80A4B910
 .word 0xC4BB8000
glabel D_80A4B914
    .float 1500.0
    .balign 4

glabel D_80A4B918
 .word 0xBFA66666
glabel D_80A4B91C
    .float 0.03
    .balign 4

glabel D_80A4B920
    .float 0.1
    .balign 4

glabel D_80A4B924
    .float 0.03
    .balign 4

glabel D_80A4B928
    .float 9.99999974738e-06
    .balign 4

glabel D_80A4B92C
    .float 0.001
    .balign 4

glabel D_80A4B930
    .float 3.14159274101
    .balign 4

glabel D_80A4B934
 .word 0x38000100
glabel D_80A4B938
 .word 0x4622F983
glabel D_80A4B93C
 .word 0x4622F983
glabel D_80A4B940
    .float 9.99999997475e-07
    .balign 4

glabel D_80A4B944
    .float 9.99999997475e-07
    .balign 4

glabel D_80A4B948
    .float 9.99999997475e-07
    .balign 4

glabel D_80A4B94C
    .float 3.14159274101
    .balign 4

glabel D_80A4B950
    .float 3.14159274101
    .balign 4

glabel D_80A4B954
    .float 3.14159274101
    .balign 4

glabel D_80A4B958
    .float 3.14159274101
    .balign 4

glabel D_80A4B95C
    .float 3.14159274101
    .balign 4

glabel D_80A4B960
 .word 0x40490E56
glabel D_80A4B964
 .word 0x41FF3333
glabel D_80A4B968
    .float 0.15
    .balign 4

glabel D_80A4B96C
    .float 0.1
    .balign 4

glabel D_80A4B970
 .word 0x3F733333
glabel D_80A4B974
 .word 0x3F866666
glabel D_80A4B978
    .float 0.1
    .balign 4

glabel D_80A4B97C
    .float 0.15
    .balign 4

glabel D_80A4B980
 .word 0x477FFFFD
glabel D_80A4B984
 .word 0x3A83126F, 0x00000000, 0x00000000


