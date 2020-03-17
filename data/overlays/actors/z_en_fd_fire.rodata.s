.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A0F0F0
    .asciz "../z_en_fd_fire.c"
    .balign 4

glabel D_80A0F104
    .asciz "../z_en_fd_fire.c"
    .balign 4

glabel D_80A0F118
    .asciz "../z_en_fd_fire.c"
    .balign 4

glabel D_80A0F12C
 .word 0xBF19999A
glabel D_80A0F130
 .word 0x3DCCCCCD
glabel D_80A0F134
 .word 0x3C23D70A
glabel D_80A0F138
 .word 0x38C90FDB
glabel D_80A0F13C
 .word 0x3C8EFA35
glabel D_80A0F140
 .word 0x3A83126F
glabel D_80A0F144
 .word 0x3DCCCCCD
glabel D_80A0F148
 .word 0xBE199999, 0x00000000


