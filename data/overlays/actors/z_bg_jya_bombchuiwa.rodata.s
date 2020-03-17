.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80894FA0
    .asciz "Ｅｒｒｏｒ : Mir_Ray 発生失敗(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80894FD8
    .asciz "../z_bg_jya_bombchuiwa.c"
    .balign 4

glabel D_80894FF4
    .asciz "../z_bg_jya_bombchuiwa.c"
    .balign 4

glabel D_80895010
    .asciz "../z_bg_jya_bombchuiwa.c"
    .balign 4

glabel D_8089502C
    .asciz "../z_bg_jya_bombchuiwa.c"
    .balign 4

glabel D_80895048
    .asciz "../z_bg_jya_bombchuiwa.c"
    .balign 4

glabel D_80895064
    .asciz "../z_bg_jya_bombchuiwa.c"
    .balign 4

glabel D_80895080
    .asciz "../z_bg_jya_bombchuiwa.c"
    .balign 4

glabel D_8089509C
 .word 0x3E99999A
glabel D_808950A0
 .word 0x3ECCCCCD
glabel D_808950A4
 .word 0x3E99999A, 0x00000000, 0x00000000


