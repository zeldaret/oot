.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.balign 16

glabel D_80812A60
    .asciz "connect_alpha=%d  decision_alpha[%d]=%d\n"
    .balign 4

# This appears to be a file boundary
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
