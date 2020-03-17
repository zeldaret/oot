.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B9EE00
    .asciz "Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80B9EE40
    .asciz "../z_obj_switch.c"
    .balign 4

glabel D_80B9EE54
 .word 0x1B5B3331, 0x6D000000
glabel D_80B9EE5C
    .asciz "Error : 氷発生失敗 (%s %d)\n"
    .balign 4

glabel D_80B9EE78
    .asciz "../z_obj_switch.c"
    .balign 4

glabel D_80B9EE8C
 .word 0x1B5B6D00
glabel D_80B9EE90
    .asciz "(Dungeon switch)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80B9EEB4
    .asciz "../z_obj_switch.c"
    .balign 4

glabel D_80B9EEC8
    .asciz "../z_obj_switch.c"
    .balign 4

glabel D_80B9EEDC
    .asciz "../z_obj_switch.c"
    .balign 4

glabel D_80B9EEF0
    .asciz "../z_obj_switch.c"
    .balign 4

glabel D_80B9EF04
    .asciz "../z_obj_switch.c"
    .balign 4

glabel D_80B9EF18
    .asciz "../z_obj_switch.c"
    .balign 4

glabel D_80B9EF2C
    .asciz "../z_obj_switch.c"
    .balign 4

glabel D_80B9EF40
    .asciz "../z_obj_switch.c"
    .balign 4

glabel D_80B9EF54
    .asciz "../z_obj_switch.c"
    .balign 4

glabel D_80B9EF68
 .word 0x3E28F5C3
glabel D_80B9EF6C
 .word 0x3D4AC083
glabel D_80B9EF70
 .word 0x3C872B02
glabel D_80B9EF74
 .word 0x3C872B02
glabel D_80B9EF78
 .word 0x3D4AC083
glabel D_80B9EF7C
 .word 0x3E28F5C3
glabel jtbl_80B9EF80
.word L80B9E684
.word L80B9E684
.word L80B9E690
.word L80B9E6C0
.word L80B9E6C0
.word 0x00000000, 0x00000000, 0x00000000


