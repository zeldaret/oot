.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80AAEC00
    .asciz "../z_en_mm.c"
    .balign 4

glabel D_80AAEC10
    .asciz "../z_en_mm.c"
    .balign 4

glabel D_80AAEC20
    .asciz "../z_en_mm.c"
    .balign 4

glabel D_80AAEC30
    .asciz "../z_en_mm.c"
    .balign 4

glabel D_80AAEC40
    .asciz "../z_en_mm.c"
    .balign 4

glabel jtbl_80AAEC50
.word L80AADC20
.word L80AADC20
.word L80AADC20
.word L80AADC20
.word L80AADAF0
.word L80AADB78
.word L80AADBD0
glabel D_80AAEC6C
 .word 0x4622F983
glabel D_80AAEC70
 .word 0x41270A3D
glabel D_80AAEC74
 .word 0x4622F983
glabel D_80AAEC78
 .word 0x41270A3D
glabel D_80AAEC7C
 .word 0x38000100
glabel D_80AAEC80
 .word 0x3F7C1BDA
glabel D_80AAEC84
 .word 0xBF7C1BDA
glabel D_80AAEC88
 .word 0xC4966000
glabel D_80AAEC8C
 .word 0xC4966000
glabel D_80AAEC90
 .word 0x4020D97C, 0x00000000, 0x00000000, 0x00000000


