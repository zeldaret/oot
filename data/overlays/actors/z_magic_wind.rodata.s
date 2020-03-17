.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B8CDB0
    .asciz "Magic_Wind_Actor_ct():コンストラクト失敗\n"
    .balign 4

glabel D_80B8CDDC
    .asciz "../z_magic_wind.c"
    .balign 4

glabel D_80B8CDF0
    .asciz "\"表示開始\" = %s\n"
    .balign 4

glabel D_80B8CE04
 .word 0xC9BDBCA8, 0xB3ABBBCF, 0x00000000
glabel D_80B8CE10
    .asciz "../z_magic_wind.c"
    .balign 4

glabel D_80B8CE24
 .word 0x22BEC3CC, 0xC722203D, 0x2025730A, 0x00000000
glabel D_80B8CE34
 .word 0xBEC3CCC7, 0x00000000
glabel D_80B8CE3C
    .asciz "../z_magic_wind.c"
    .balign 4

glabel D_80B8CE50
    .asciz "\"表示開始\" = %s\n"
    .balign 4

glabel D_80B8CE64
 .word 0xC9BDBCA8, 0xB3ABBBCF, 0x00000000
glabel D_80B8CE70
    .asciz "../z_magic_wind.c"
    .balign 4

glabel D_80B8CE84
    .asciz "../z_magic_wind.c"
    .balign 4

glabel D_80B8CE98
    .asciz "../z_magic_wind.c"
    .balign 4

glabel D_80B8CEAC
    .asciz "../z_magic_wind.c"
    .balign 4

glabel D_80B8CEC0
 .word 0x3D088889, 0x00000000, 0x00000000, 0x00000000


