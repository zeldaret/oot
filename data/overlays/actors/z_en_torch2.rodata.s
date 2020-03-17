.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B1FA30
    .asciz "../z_en_torch2.c"
    .balign 4

glabel D_80B1FA44
    .asciz "../z_en_torch2.c"
    .balign 4

glabel D_80B1FA58
 .word 0x3E99999A
glabel D_80B1FA5C
 .word 0x44188000
glabel D_80B1FA60
 .word 0x3F99999A
glabel D_80B1FA64
 .word 0x3F19999A
glabel D_80B1FA68
 .word 0x3F99999A
glabel D_80B1FA6C
 .word 0x3F19999A
glabel D_80B1FA70
 .word 0x3C23D70A, 0x00000000, 0x00000000, 0x00000000

