.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B9CAF0
    .asciz "Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n"
    .balign 4

.balign 4

glabel D_80B9CB30
    .asciz "../z_obj_oshihiki.c"
    .balign 4

glabel D_80B9CB44
    .asciz "Error : タイプが判別できない(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80B9CB7C
    .asciz "../z_obj_oshihiki.c"
    .balign 4

glabel D_80B9CB90
    .asciz "Error : scene_data_ID が判別できない。(%s %d)\n"
    .balign 4

glabel D_80B9CBC0
    .asciz "../z_obj_oshihiki.c"
    .balign 4

glabel D_80B9CBD4
    .asciz "(dungeon keep 押し引きブロック)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80B9CC08
    .asciz "Warning : 押し引きブロック落ちすぎた(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80B9CC48
    .asciz "../z_obj_oshihiki.c"
    .balign 4

glabel D_80B9CC5C
    .asciz "../z_obj_oshihiki.c"
    .balign 4

glabel D_80B9CC70
    .asciz "../z_obj_oshihiki.c"
    .balign 4

glabel D_80B9CC84
    .asciz "../z_obj_oshihiki.c"
    .balign 4

glabel jtbl_80B9CC98
.word L80B9B2AC
.word L80B9B2AC
.word L80B9B2B4
.word L80B9B2BC
.word L80B9B2AC
.word L80B9B2AC
.word L80B9B2B4
.word L80B9B2BC
glabel D_80B9CCB8
    .float 0.001
    .balign 4

glabel jtbl_80B9CCBC
.word L80B9B5B8
.word L80B9B5B8
.word L80B9B5B8
.word L80B9B5B8
.word L80B9B5B8
.word L80B9B5B8
.word L80B9B5B8
.word L80B9B5B8
glabel jtbl_80B9CCDC
.word L80B9B658
.word L80B9B658
.word func_80B9B668
.word func_80B9B678
.word L80B9B658
.word L80B9B658
.word func_80B9B668
.word func_80B9B678
glabel D_80B9CCFC
 .word 0xBA83126F
glabel D_80B9CD00
 .word 0xBA83126F
glabel D_80B9CD04
 .word 0xBA83126F
glabel D_80B9CD08
 .word 0xC6F9EC00
glabel D_80B9CD0C
 .word 0xBA83126F
glabel D_80B9CD10
    .float 0.001
    .balign 4

glabel D_80B9CD14
    .float 0.001
    .balign 4

glabel D_80B9CD18
    .float 0.001
    .balign 4

glabel jtbl_80B9CD1C
.word L80B9C8B8
.word L80B9C8B8
.word L80B9C8F8
.word L80B9C8B8
.word L80B9C8B8
.word L80B9C8B8
.word L80B9C8B8
.word L80B9C8B8
.word L80B9C8F8
.word L80B9C8F8
.word L80B9C8F8
.word L80B9C8B8
.word 0x00000000


