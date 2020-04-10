.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A0E120
    .asciz "../z_en_fd.c"
    .balign 4

glabel D_80A0E130
    .asciz "../z_en_fd.c"
    .balign 4

glabel D_80A0E140
    .asciz "../z_en_fd.c"
    .balign 4

glabel D_80A0E150
    .asciz "../z_en_fd.c"
    .balign 4

glabel D_80A0E160
    .asciz "../z_en_fd.c"
    .balign 4

glabel D_80A0E170
    .asciz "../z_en_fd.c"
    .balign 4

glabel D_80A0E180
    .asciz "../z_en_fd.c"
    .balign 4

glabel D_80A0E190
    .asciz "../z_en_fd.c"
    .balign 4

glabel D_80A0E1A0
 .word 0x43360B61
glabel D_80A0E1A4
    .float 0.2
    .balign 4

glabel D_80A0E1A8
    .float 0.3
    .balign 4

glabel D_80A0E1AC
    .float 0.6
    .balign 4

glabel D_80A0E1B0
    .float 0.2
    .balign 4

glabel D_80A0E1B4
    .float 0.9
    .balign 4

glabel D_80A0E1B8
    .float 0.01
    .balign 4

glabel D_80A0E1BC
    .float 0.01
    .balign 4

glabel D_80A0E1C0
 .word 0x4622F983
glabel D_80A0E1C4
 .word 0x4622F983
glabel D_80A0E1C8
    .float 0.6
    .balign 4

glabel D_80A0E1CC
    .float 0.2
    .balign 4

glabel D_80A0E1D0
    .float 0.4
    .balign 4

glabel D_80A0E1D4
 .word 0x3BC49BA6
glabel D_80A0E1D8
    .float 0.9
    .balign 4

glabel D_80A0E1DC
    .float 0.2
    .balign 4

glabel D_80A0E1E0
 .word 0x3ECCCCCD, 0x00000000, 0x00000000, 0x00000000


