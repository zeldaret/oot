.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_809AD500
    .asciz "../z_elf_msg.c"
    .balign 4

glabel D_809AD510
    .asciz "\"共倒れ\" = %s\n"
    .balign 4

glabel D_809AD520
 .word 0xB6A6C5DD, 0xA4EC0000
glabel D_809AD528
    .asciz "../z_elf_msg.c"
    .balign 4

glabel D_809AD538
    .asciz "\"共倒れ\" = %s\n"
    .balign 4

glabel D_809AD548
 .word 0xB6A6C5DD, 0xA4EC0000
glabel D_809AD550
    .asciz "[36m\nエルフ タグ 消える条件 %d[m\n"
    .balign 4

glabel D_809AD574
    .asciz "[36m\nthisx->shape.angle.sy = %d\n[m"
    .balign 4

glabel D_809AD59C
    .asciz "[36m\nエルフ タグ 出現条件 %d[m\n"
    .balign 4

glabel D_809AD5C0
    .asciz "../z_elf_msg.c"
    .balign 4

glabel D_809AD5D0
    .asciz "../z_elf_msg.c"
    .balign 4

glabel D_809AD5E0
    .asciz "../z_elf_msg.c"
    .balign 4

glabel D_809AD5F0
    .float 0.4
    .balign 4

glabel D_809AD5F4
    .float 0.04
    .balign 4

glabel D_809AD5F8
    .float 0.4
    .balign 4

glabel D_809AD5FC
    .float 0.04
    .balign 4



