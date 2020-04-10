.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A4FE50
    .asciz "../z_en_gs.c"
    .balign 4

glabel D_80A4FE60
    .asciz "../z_en_gs.c"
    .balign 4

glabel D_80A4FE70
    .asciz "../z_en_gs.c"
    .balign 4

glabel D_80A4FE80
    .asciz "../z_en_gs.c"
    .balign 4

glabel D_80A4FE90
 .word 0x3C8EFA35
glabel D_80A4FE94
 .word 0x3C8EFA35
glabel D_80A4FE98
    .float 0.8
    .balign 4

glabel D_80A4FE9C
 .word 0x3BE56042
glabel D_80A4FEA0
    .float 0.001
    .balign 4

glabel D_80A4FEA4
    .float 0.3
    .balign 4

glabel D_80A4FEA8
 .word 0x43360B61
glabel D_80A4FEAC
    .float 0.8
    .balign 4

glabel D_80A4FEB0
    .float 0.005
    .balign 4

glabel D_80A4FEB4
    .float 0.001
    .balign 4

glabel D_80A4FEB8
    .float -0.8
    .balign 4

glabel D_80A4FEBC
    .float 0.001
    .balign 4

glabel D_80A4FEC0
    .float 0.001
    .balign 4

glabel D_80A4FEC4
    .float 0.03
    .balign 4

glabel D_80A4FEC8
    .float 0.001
    .balign 4

glabel D_80A4FECC
 .word 0x463B8000
glabel D_80A4FED0
    .float 0.3
    .balign 4

glabel D_80A4FED4
 .word 0xC63B8000
glabel D_80A4FED8
    .float 0.1
    .balign 4

glabel D_80A4FEDC
    .float 0.001
    .balign 4

glabel D_80A4FEE0
    .float 0.001
    .balign 4

glabel D_80A4FEE4
 .word 0x43360B61
glabel D_80A4FEE8
 .word 0x43360B61
glabel D_80A4FEEC
 .word 0xBE99999A
glabel D_80A4FEF0
    .float 0.001
    .balign 4

glabel D_80A4FEF4
    .float 0.001
    .balign 4

glabel D_80A4FEF8
 .word 0x3F32B8C2
glabel D_80A4FEFC
 .word 0x3EB2B8C2
glabel D_80A4FF00
 .word 0x45638000
glabel D_80A4FF04
    .float 0.001
    .balign 4

glabel D_80A4FF08
    .float 0.001
    .balign 4

glabel D_80A4FF0C
    .float 0.001
    .balign 4

glabel D_80A4FF10
    .float 0.001
    .balign 4

glabel D_80A4FF14
    .float 0.1
    .balign 4

glabel D_80A4FF18
 .word 0x3C8EFA35
glabel D_80A4FF1C
    .float 0.1
    .balign 4

glabel D_80A4FF20
 .word 0x3C8EFA35
glabel jtbl_80A4FF24
.word L80A4F8F8
.word L80A4F8D4
.word L80A4F8B0
.word L80A4F88C
.word L80A4F868
glabel D_80A4FF38
    .float 9.58738019108e-05
    .balign 4

glabel D_80A4FF3C
    .float 9.58738019108e-05
    .balign 4

glabel D_80A4FF40
    .float 9.58738019108e-05
    .balign 4

glabel D_80A4FF44
    .float 9.58738019108e-05
    .balign 4

glabel D_80A4FF48
    .float 9.58738019108e-05
    .balign 4

glabel D_80A4FF4C
    .float 9.58738019108e-05
    .balign 4

glabel D_80A4FF50
    .float 0.05
    .balign 4

glabel D_80A4FF54
 .word 0xBD4CCCCD, 0x00000000, 0x00000000


