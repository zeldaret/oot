.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A4DF30
    .asciz "Error : レールデータ不正(点が重なっている)"
    .balign 4

glabel D_80A4DF5C
    .asciz "(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80A4DF78
    .asciz "../z_en_gr.c"
    .balign 4

glabel D_80A4DF88
    .asciz "Ｅｒｒｏｒ : arg_data が不正(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80A4DFC0
    .asciz "../z_en_gr.c"
    .balign 4

glabel D_80A4DFD0
    .asciz "Ｅｒｒｏｒ : レールデータ が不正(%s %d)\n"
    .balign 4

glabel D_80A4DFFC
    .asciz "../z_en_gr.c"
    .balign 4

glabel D_80A4E00C
    .asciz "(ごろ岩)(arg 0x%04x)(rail %d)(end %d)(bgc %d)(hit %d)\n"
    .balign 4

glabel D_80A4E044
    .asciz "[36m"
    .balign 4

glabel D_80A4E04C
    .asciz "Player ぶっ飛ばし\n"
    .balign 4

glabel D_80A4E060
    .asciz "\x1b[m"
    .balign 4

glabel D_80A4E064
    .float 0.001
    .balign 4

glabel D_80A4E068
    .float 0.01
    .balign 4

glabel D_80A4E06C
    .float 0.01
    .balign 4

glabel D_80A4E070
    .float 0.01
    .balign 4

glabel D_80A4E074
 .word 0xBE99999A
glabel D_80A4E078
    .float 0.3
    .balign 4

glabel D_80A4E07C
    .float 0.2
    .balign 4

glabel D_80A4E080
 .word 0x3C89AE41
glabel D_80A4E084
    .float 9.58738019108e-05
    .balign 4

glabel D_80A4E088
    .float 9.58738019108e-05
    .balign 4

glabel D_80A4E08C
    .float 9.58738019108e-05
    .balign 4

glabel D_80A4E090
 .word 0x477FFF00
glabel D_80A4E094
    .float 0.2
    .balign 4

glabel D_80A4E098
 .word 0xBF5C28F6
glabel D_80A4E09C
    .float 0.15
    .balign 4

glabel D_80A4E0A0
    .float 0.1
    .balign 4

glabel D_80A4E0A4
    .float 0.3
    .balign 4

glabel D_80A4E0A8
 .word 0xBE99999A, 0x00000000


