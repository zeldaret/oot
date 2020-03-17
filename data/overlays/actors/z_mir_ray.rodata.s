.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B8E850
 .word 0xC8BFBCCD, 0xCDD120B8, 0xF7A4CEC8, 0xAFC0B821, 0x21212121, 0x21212121, 0x21212121, 0x21212121, 0x21212121, 0x21212121, 0x21212121, 0x210A0000
glabel D_80B8E880
    .asciz "../z_mir_ray.c"
    .balign 4

glabel D_80B8E890
    .asciz "this->actor.arg_data = %d\n"
    .balign 4

glabel D_80B8E8AC
    .asciz "../z_mir_ray.c"
    .balign 4

glabel D_80B8E8BC
    .asciz "\"反射光 発生失敗\" = %s\n"
    .balign 4

glabel D_80B8E8D4
 .word 0xC8BFBCCD, 0xB8F720C8, 0xAFC0B8BC, 0xBAC7D400
glabel D_80B8E8E4
    .asciz "../z_mir_ray.c"
    .balign 4

glabel D_80B8E8F4
    .asciz "../z_mir_ray.c"
    .balign 4

glabel D_80B8E904
    .asciz "../z_mir_ray.c"
    .balign 4

glabel D_80B8E914
    .asciz "../z_mir_ray.c"
    .balign 4

glabel D_80B8E924
 .word 0x443D8000
glabel D_80B8E928
 .word 0xC46AC000
glabel D_80B8E92C
 .word 0xC4D34000
glabel D_80B8E930
 .word 0x446A8000
glabel D_80B8E934
 .word 0x44664000
glabel D_80B8E938
 .word 0x38000100
glabel D_80B8E93C
 .word 0x3C23D70A


