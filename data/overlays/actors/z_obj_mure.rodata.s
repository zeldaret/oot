.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B99AB0
    .asciz "Error : カリングの設定がされていません。(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80B99AF4
    .asciz "../z_obj_mure.c"
    .balign 4

glabel D_80B99B04
    .asciz "Error 群れな敵 (%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80B99B30
    .asciz "../z_obj_mure.c"
    .balign 4

glabel D_80B99B40
    .asciz "Error 群れな敵 (%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80B99B6C
    .asciz "../z_obj_mure.c"
    .balign 4

glabel D_80B99B7C
    .asciz "群れな敵 (arg_data 0x%04x)(chNum(%d) ptn(%d) svNum(%d) type(%d))\n"
    .balign 4

glabel D_80B99BC0
    .asciz "Warning : 個体数が設定されていません(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80B99C00
    .asciz "../z_obj_mure.c"
    .balign 4

glabel D_80B99C10
    .asciz "おかしなの (%s %d)\n"
    .balign 4

glabel D_80B99C24
    .asciz "../z_obj_mure.c"
    .balign 4

glabel D_80B99C34
    .asciz "Error : 既に子供がいる(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80B99C64
    .asciz "../z_obj_mure.c"
    .balign 4

glabel D_80B99C74
    .asciz "warning 発生失敗 (%s %d)\n"
    .balign 4

glabel D_80B99C90
    .asciz "../z_obj_mure.c"
    .balign 4

glabel D_80B99CA0
    .asciz "warning 発生失敗 (%s %d)\n"
    .balign 4

glabel D_80B99CBC
    .asciz "../z_obj_mure.c"
    .balign 4

glabel D_80B99CCC
    .asciz "Error : 既に子供がいる(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80B99CFC
    .asciz "../z_obj_mure.c"
    .balign 4

glabel D_80B99D0C
    .asciz "warning 発生失敗 (%s %d)\n"
    .balign 4

glabel D_80B99D28
    .asciz "../z_obj_mure.c"
    .balign 4

glabel D_80B99D38
 .word 0x3DCCCCCD
glabel D_80B99D3C
 .word 0x3E4CCCCD
glabel D_80B99D40
 .word 0x3F4CCCCD
glabel D_80B99D44
 .word 0x3E4CCCCD
glabel D_80B99D48
 .word 0x3F19999A
glabel D_80B99D4C
 .word 0x3E4CCCCD
glabel D_80B99D50
 .word 0x3F333333, 0x00000000, 0x00000000, 0x00000000


