.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A1FC40
    .asciz "../z_en_fw.c"
    .balign 4

glabel D_80A1FC50
    .asciz "../z_en_fw.c"
    .balign 4

glabel D_80A1FC60
    .asciz "../z_en_fw.c"
    .balign 4

glabel D_80A1FC70
    .float 0.9
    .balign 4

glabel D_80A1FC74
 .word 0x45AAA000
glabel D_80A1FC78
 .word 0x4622F983
glabel D_80A1FC7C
    .float 0.2
    .balign 4

glabel D_80A1FC80
    .float 0.3
    .balign 4

glabel D_80A1FC84
    .float 0.2
    .balign 4

glabel D_80A1FC88
 .word 0x3ECCCCCD, 0x00000000


