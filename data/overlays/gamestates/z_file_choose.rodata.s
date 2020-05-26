.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_80812A60
    .asciz "connect_alpha=%d  decision_alpha[%d]=%d\n"
    .balign 4

.balign 16

glabel D_80812A90
    .asciz "../z_file_nameset_PAL.c"
    .balign 4

glabel D_80812AA8
    .asciz "../z_file_nameset_PAL.c"
    .balign 4

glabel D_80812AC0
    .asciz "../z_file_nameset_PAL.c"
    .balign 4

glabel D_80812AD8
    .asciz "../z_file_nameset_PAL.c"
    .balign 4

glabel D_80812AF0
    .asciz "../z_file_nameset_PAL.c"
    .balign 4

glabel D_80812B08
    .asciz "../z_file_nameset_PAL.c"
    .balign 4

glabel D_80812B20
    .asciz "../z_file_nameset_PAL.c"
    .balign 4

glabel D_80812B38
    .asciz "014 xpos=%d  contents=%d\n"
    .balign 4

glabel D_80812B54
    .asciz "23 xpos=%d  contents=%d\n"
    .balign 4

glabel D_80812B70
    .asciz "mjp=%d  xpos=%d  ypos=%d  name_contents=%d\n"
    .balign 4

glabel D_80812B9C
    .asciz "../z_file_nameset_PAL.c"
    .balign 4

glabel D_80812BB4
 .word 0xA3D3A3C1, 0xA3D6A3C5, 0x00000000
glabel D_80812BC0
    .asciz "[33m"
    .balign 4

glabel D_80812BC8
    .asciz "sram->read_buff[2] = J_N = %x\n"
    .balign 4

glabel D_80812BE8
    .asciz "sram->read_buff[2] = J_N = %x\n"
    .balign 4

glabel D_80812C08
    .asciz "Na_SetSoundOutputMode = %d\n"
    .balign 4

glabel D_80812C24
    .asciz "Na_SetSoundOutputMode = %d\n"
    .balign 4

glabel D_80812C40
    .asciz "Na_SetSoundOutputMode = %d\n"
    .balign 4

glabel D_80812C5C
    .asciz "\x1b[m"
    .balign 4

glabel D_80812C60
 .word 0xBDAACEBB, 0x0A000000
glabel D_80812C68
    .asciz "../z_file_nameset_PAL.c"
    .balign 4

glabel D_80812C80
    .asciz "../z_file_nameset_PAL.c"
    .balign 4

glabel D_80812C98
    .asciz "../z_file_nameset_PAL.c"
    .balign 4

glabel D_80812CB0
    .asciz "../z_file_nameset_PAL.c"
    .balign 4

glabel D_80812CC8
    .asciz "../z_file_nameset_PAL.c"
    .balign 4

glabel D_80812CE0
    .float 0.1
    .balign 4

glabel D_80812CE4
    .float 0.2
    .balign 4

glabel D_80812CE8
    .float 0.4
    .balign 4

.balign 16

glabel D_80812CF0
 .word 0xA3D3A3F2, 0xA3E1A3ED, 0x20A3D3A3, 0xF4A3E1A3, 0xF2A3F4A8, 0xA1A3CCA3, 0xEFA3E1A3, 0xE42020A1, 0xD5A1D5A1, 0xD5A1D5A1, 0xD5202000
glabel D_80812D1C
 .word 0xBDAACEBB, 0xA1AAA1AA, 0xA1AA0A00
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
    .asciz "[32m"
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
 .word 0x3F47AE14
glabel D_8081300C
 .word 0x3F47AE14
glabel D_80813010
 .word 0x3F47AE14
glabel D_80813014
 .word 0x3F47AE14
glabel D_80813018
 .word 0x3F47AE14, 0x00000000

