.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_80144A20
    .asciz "this"
    .balign 4

glabel D_80144A28
    .asciz "../PreRender.c"
    .balign 4

glabel D_80144A38
    .asciz "glistpp"
    .balign 4

glabel D_80144A40
    .asciz "../PreRender.c"
    .balign 4

glabel D_80144A50
    .asciz "glistp"
    .balign 4

glabel D_80144A58
    .asciz "../PreRender.c"
    .balign 4

glabel D_80144A68
    .asciz "this"
    .balign 4

glabel D_80144A70
    .asciz "../PreRender.c"
    .balign 4

glabel D_80144A80
    .asciz "glistpp"
    .balign 4

glabel D_80144A88
    .asciz "../PreRender.c"
    .balign 4

glabel D_80144A98
    .asciz "glistp"
    .balign 4

glabel D_80144AA0
    .asciz "../PreRender.c"
    .balign 4

glabel D_80144AB0
    .asciz "this"
    .balign 4

glabel D_80144AB8
    .asciz "../PreRender.c"
    .balign 4

glabel D_80144AC8
    .asciz "glistpp"
    .balign 4

glabel D_80144AD0
    .asciz "../PreRender.c"
    .balign 4

glabel D_80144AE0
    .asciz "glistp"
    .balign 4

glabel D_80144AE8
    .asciz "../PreRender.c"
    .balign 4

glabel D_80144AF8
    .asciz "this"
    .balign 4

glabel D_80144B00
    .asciz "../PreRender.c"
    .balign 4

glabel D_80144B10
    .asciz "glistpp"
    .balign 4

glabel D_80144B18
    .asciz "../PreRender.c"
    .balign 4

glabel D_80144B28
    .asciz "glistp"
    .balign 4

glabel D_80144B30
    .asciz "../PreRender.c"
    .balign 4

glabel D_80144B40
    .asciz "this->zbuf_save"
    .balign 4

glabel D_80144B50
    .asciz "../PreRender.c"
    .balign 4

glabel D_80144B60
    .asciz "this->zbuf"
    .balign 4

glabel D_80144B6C
    .asciz "../PreRender.c"
    .balign 4

glabel D_80144B7C
    .asciz "this->fbuf_save"
    .balign 4

glabel D_80144B8C
    .asciz "../PreRender.c"
    .balign 4

glabel D_80144B9C
    .asciz "this->fbuf"
    .balign 4

glabel D_80144BA8
    .asciz "../PreRender.c"
    .balign 4

glabel D_80144BB8
    .asciz "this->cvg_save"
    .balign 4

glabel D_80144BC8
    .asciz "../PreRender.c"
    .balign 4

glabel D_80144BD8
    .asciz "this"
    .balign 4

glabel D_80144BE0
    .asciz "../PreRender.c"
    .balign 4

glabel D_80144BF0
    .asciz "glistpp"
    .balign 4

glabel D_80144BF8
    .asciz "../PreRender.c"
    .balign 4

glabel D_80144C08
    .asciz "glistp"
    .balign 4

glabel D_80144C10
    .asciz "../PreRender.c"
    .balign 4

glabel D_80144C20
    .asciz "Error, should not be in here \n"
    .balign 4

glabel D_80144C40
    .asciz "red=%3d %3d %3d %3d grn=%3d %3d %3d %3d blu=%3d %3d %3d %3d \n"
    .balign 4
