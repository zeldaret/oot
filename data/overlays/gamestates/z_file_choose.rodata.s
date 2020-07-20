.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_80812CF0
    .asciz "Ｓｒａｍ Ｓｔａｒｔ─Ｌｏａｄ  》》》》》  "
    .balign 4

glabel D_80812D1C
    .asciz "終了！！！\n"
    .balign 4

glabel D_80812D28
    .asciz "REGCK_ALL[%x]=%x,%x,%x,%x,%x,%x\n"
    .balign 4

glabel D_80812D4C
    .asciz "1:read_buff[]=%x, %x, %x, %x\n"
    .balign 4

glabel D_80812D6C
    .asciz "read_buff[]=%x, %x, %x, %x\n"
    .balign 4

glabel D_80812D88
    .asciz "1:read_buff[]=%x, %x, %x, %x\n"
    .balign 4

glabel D_80812DA8
    .asciz "read_buff[]=%x, %x, %x, %x\n"
    .balign 4

glabel D_80812DC4
    .asciz "1:read_buff[]=%x, %x, %x, %x\n"
    .balign 4

glabel D_80812DE4
    .asciz "read_buff[]=%x, %x, %x, %x\n"
    .balign 4

glabel D_80812E00
    .asciz "../z_file_choose.c"
    .balign 4

glabel D_80812E14
    .asciz "../z_file_choose.c"
    .balign 4

glabel D_80812E28
    .asciz "../z_file_choose.c"
    .balign 4

glabel D_80812E3C
    .asciz "../z_file_choose.c"
    .balign 4

glabel D_80812E50
    .asciz "../z_file_choose.c"
    .balign 4

glabel D_80812E64
    .asciz "../z_file_choose.c"
    .balign 4

glabel D_80812E78
    .asciz "../z_file_choose.c"
    .balign 4

glabel D_80812E8C
    .asciz "../z_file_choose.c"
    .balign 4

glabel D_80812EA0
    .asciz "../z_file_choose.c"
    .balign 4

glabel D_80812EB4
    .asciz "\x1b[32m"
    .balign 4

glabel D_80812EBC
    .asciz "Z_MAGIC_NOW_NOW=%d  MAGIC_NOW=%d\n"
    .balign 4

glabel D_80812EE0
    .asciz "\x1b[m"
    .balign 4

glabel D_80812EE4
    .asciz "../z_file_choose.c"
    .balign 4

glabel D_80812EF8
    .asciz "../z_file_choose.c"
    .balign 4

glabel D_80812F0C
    .asciz "../z_file_choose.c"
    .balign 4

glabel D_80812F20
    .asciz "../z_file_choose.c"
    .balign 4

glabel D_80812F34
    .asciz "../z_file_choose.c"
    .balign 4

glabel D_80812F48
    .asciz "SIZE=%x\n"
    .balign 4

glabel D_80812F54
    .asciz "../z_file_choose.c"
    .balign 4

glabel D_80812F68
    .asciz "this->staticSegment != NULL"
    .balign 4

glabel D_80812F84
    .asciz "../z_file_choose.c"
    .balign 4

glabel D_80812F98
    .asciz "../z_file_choose.c"
    .balign 4

glabel D_80812FAC
    .asciz "../z_file_choose.c"
    .balign 4

glabel D_80812FC0
    .asciz "this->parameterSegment != NULL"
    .balign 4

glabel D_80812FE0
    .asciz "../z_file_choose.c"
    .balign 4

glabel D_80812FF4
    .asciz "../z_file_choose.c"
    .balign 4

glabel D_80813008
    .float 0.78

glabel D_8081300C
    .float 0.78

glabel D_80813010
    .float 00.78

glabel D_80813014
    .float 0.78

glabel D_80813018
    .float 0.78

