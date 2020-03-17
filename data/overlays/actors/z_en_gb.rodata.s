.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A307A0
    .asciz "../z_en_gb.c"
    .balign 4

glabel D_80A307B0
    .asciz "../z_en_gb.c"
    .balign 4

glabel D_80A307C0
    .asciz "../z_en_gb.c"
    .balign 4

glabel D_80A307D0
    .asciz "../z_en_gb.c"
    .balign 4

glabel D_80A307E0
    .asciz "../z_en_gb.c"
    .balign 4

glabel D_80A307F0
 .word 0x3E4CCCCD
glabel D_80A307F4
 .word 0x3E4CCCCD
glabel D_80A307F8
 .word 0x3C23D70A
glabel D_80A307FC
 .word 0x3C23D70A
glabel D_80A30800
 .word 0x3BE56042, 0x00000000, 0x00000000, 0x00000000


