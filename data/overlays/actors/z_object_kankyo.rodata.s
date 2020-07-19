.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

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
    .asciz "0"
    .balign 4

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
    .asciz "0"
    .balign 4

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
    .float 0.1

# unused
glabel D_80BA5BFC
    .float 0.1

# unused
glabel D_80BA5C00
    .float 0.1

# unused
glabel D_80BA5C04
    .float 0.1

# unused
glabel D_80BA5C08
    .float 0.1

# unused
glabel D_80BA5C0C
    .float 0.1

glabel D_80BA5C10
    .float 0.1

glabel D_80BA5C14
    .float 0.4

glabel D_80BA5C18
    .float 0.6

glabel D_80BA5C1C
    .float 0.2

glabel D_80BA5C20
    .float 1.6

glabel D_80BA5C24
    .float 65535.0

glabel D_80BA5C28
    .float 0.1

glabel D_80BA5C2C
    .float 0.01

glabel D_80BA5C30
    .float 0.4

glabel D_80BA5C34
    .float 9.99999974738e-06

glabel D_80BA5C38
    .float 0.02

glabel D_80BA5C3C
    .float 0.008

glabel D_80BA5C40
    .float 0.05

glabel D_80BA5C44
    .float 0.0149999996

glabel D_80BA5C48
    .float 0.01

glabel D_80BA5C4C
    .float 0.05

glabel D_80BA5C50
    .float 0.005

glabel D_80BA5C54
    .float 0.01

glabel D_80BA5C58
    .float 0.4

glabel D_80BA5C5C
    .float 0.004

glabel D_80BA5C60
    .double 1.0E-2

glabel D_80BA5C68
    .float 0.08

glabel D_80BA5C6C
    .float 0.05

glabel D_80BA5C70
    .float 1.6

glabel D_80BA5C74
    .float 9.99999974738e-06

glabel D_80BA5C78
    .float 0.1

glabel D_80BA5C7C
    .float 9.99999974738e-06

glabel D_80BA5C80
    .float 0.0002

glabel jtbl_80BA5C84
    .word L80BA3C3C
    .word L80BA3C84
    .word L80BA3C4C
    .word L80BA3C5C
    .word L80BA3C6C
    .word L80BA3C7C

glabel D_80BA5C9C
    .float 0.017453292

# Unused
glabel D_80BA5CA0
    .float 0.05

glabel D_80BA5CA4
    .float 0.049999997

glabel D_80BA5CA8
    .float 0.01

glabel D_80BA5CAC
    .float 0.01

glabel D_80BA5CB0
    .float 0.05

glabel D_80BA5CB4
    .float 0.34906584

glabel D_80BA5CB8
    .float 0.34906584

glabel D_80BA5CBC
    .float 0.01

glabel D_80BA5CC0
    .float 0.142857149

glabel D_80BA5CC4
    .float 0.142857149

glabel D_80BA5CC8
    .float 0.1

glabel D_80BA5CCC
    .float 0.1

glabel D_80BA5CD0
    .float 0.1

glabel D_80BA5CD4
    .float 0.001

glabel D_80BA5CD8
    .float 0.017453292

