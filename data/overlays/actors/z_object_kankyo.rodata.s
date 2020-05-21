.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80BA5A40
    .asciz "../z_object_kankyo.c"
    .balign 4

glabel D_80BA5A58
    .asciz "../z_object_kankyo.c"
    .balign 4

glabel D_80BA5A70
    .asciz "../z_object_kankyo.c"
    .balign 4

glabel D_80BA5A88
    .asciz "../z_object_kankyo.c"
    .balign 4

glabel D_80BA5AA0
    .asciz "../z_object_kankyo.c"
    .balign 4

glabel D_80BA5AB8
    .asciz "../z_object_kankyo.c"
    .balign 4

glabel D_80BA5AD0
    .asciz "../z_object_kankyo.c"
    .balign 4

glabel D_80BA5AE8
    .asciz "../z_object_kankyo.c"
    .balign 4

glabel D_80BA5B00
    .asciz "../z_object_kankyo.c"
    .balign 4

glabel D_80BA5B18
 .word 0x30000000
glabel D_80BA5B1C
    .asciz "../z_object_kankyo.c"
    .balign 4

glabel D_80BA5B34
    .asciz "../z_object_kankyo.c"
    .balign 4

glabel D_80BA5B4C
    .asciz "../z_object_kankyo.c"
    .balign 4

glabel D_80BA5B64
    .asciz "../z_object_kankyo.c"
    .balign 4

glabel D_80BA5B7C
 .word 0x30000000
glabel D_80BA5B80
    .asciz "../z_object_kankyo.c"
    .balign 4

glabel D_80BA5B98
    .asciz "../z_object_kankyo.c"
    .balign 4

glabel D_80BA5BB0
    .asciz "../z_object_kankyo.c"
    .balign 4

glabel D_80BA5BC8
    .asciz "../z_object_kankyo.c"
    .balign 4

glabel jtbl_80BA5BE0
.word L80BA2B10
.word L80BA2D98
.word L80BA2B90
.word L80BA2B50
.word L80BA2BA8
.word L80BA2BE4
glabel D_80BA5BF8
 .word 0x3DCCCCCD, 0x3DCCCCCD, 0x3DCCCCCD, 0x3DCCCCCD, 0x3DCCCCCD, 0x3DCCCCCD
glabel D_80BA5C10
    .float 0.1
    .balign 4

glabel D_80BA5C14
    .float 0.4
    .balign 4

glabel D_80BA5C18
    .float 0.6
    .balign 4

glabel D_80BA5C1C
    .float 0.2
    .balign 4

glabel D_80BA5C20
    .float 1.6
    .balign 4

glabel D_80BA5C24
 .word 0x477FFF00
glabel D_80BA5C28
    .float 0.1
    .balign 4

glabel D_80BA5C2C
    .float 0.01
    .balign 4

glabel D_80BA5C30
    .float 0.4
    .balign 4

glabel D_80BA5C34
    .float 9.99999974738e-06
    .balign 4

glabel D_80BA5C38
    .float 0.02
    .balign 4

glabel D_80BA5C3C
    .float 0.008
    .balign 4

glabel D_80BA5C40
    .float 0.05
    .balign 4

glabel D_80BA5C44
 .word 0x3C75C28F
glabel D_80BA5C48
    .float 0.01
    .balign 4

glabel D_80BA5C4C
    .float 0.05
    .balign 4

glabel D_80BA5C50
    .float 0.005
    .balign 4

glabel D_80BA5C54
    .float 0.01
    .balign 4

glabel D_80BA5C58
    .float 0.4
    .balign 4

glabel D_80BA5C5C
 .word 0x3B83126F
glabel D_80BA5C60
 .word 0x3F847AE1, 0x47AE147B
glabel D_80BA5C68
    .float 0.08
    .balign 4

glabel D_80BA5C6C
    .float 0.05
    .balign 4

glabel D_80BA5C70
    .float 1.6
    .balign 4

glabel D_80BA5C74
    .float 9.99999974738e-06
    .balign 4

glabel D_80BA5C78
    .float 0.1
    .balign 4

glabel D_80BA5C7C
    .float 9.99999974738e-06
    .balign 4

glabel D_80BA5C80
 .word 0x3951B717
glabel jtbl_80BA5C84
.word L80BA3C3C
.word L80BA3C84
.word L80BA3C4C
.word L80BA3C5C
.word L80BA3C6C
.word L80BA3C7C
glabel D_80BA5C9C
 .word 0x3C8EFA35, 0x3D4CCCCD
glabel D_80BA5CA4
 .word 0x3D4CCCCC
glabel D_80BA5CA8
    .float 0.01
    .balign 4

glabel D_80BA5CAC
    .float 0.01
    .balign 4

glabel D_80BA5CB0
    .float 0.05
    .balign 4

glabel D_80BA5CB4
 .word 0x3EB2B8C2
glabel D_80BA5CB8
 .word 0x3EB2B8C2
glabel D_80BA5CBC
    .float 0.01
    .balign 4

glabel D_80BA5CC0
 .word 0x3E124925
glabel D_80BA5CC4
 .word 0x3E124925
glabel D_80BA5CC8
    .float 0.1
    .balign 4

glabel D_80BA5CCC
    .float 0.1
    .balign 4

glabel D_80BA5CD0
    .float 0.1
    .balign 4

glabel D_80BA5CD4
    .float 0.001
    .balign 4

glabel D_80BA5CD8
 .word 0x3C8EFA35, 0x00000000


