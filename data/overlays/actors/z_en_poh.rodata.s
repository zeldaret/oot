.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80AE1B80
    .asciz "../z_en_poh.c"
    .balign 4

glabel D_80AE1B90
    .asciz "../z_en_poh.c"
    .balign 4

glabel D_80AE1BA0
    .asciz "../z_en_poh.c"
    .balign 4

glabel D_80AE1BB0
    .asciz "../z_en_poh.c"
    .balign 4

glabel D_80AE1BC0
    .asciz "../z_en_poh.c"
    .balign 4

glabel D_80AE1BD0
    .asciz "../z_en_poh.c"
    .balign 4

glabel D_80AE1BE0
    .asciz "../z_en_poh.c"
    .balign 4

glabel D_80AE1BF0
    .asciz "../z_en_poh.c"
    .balign 4

glabel D_80AE1C00
    .asciz "../z_en_poh.c"
    .balign 4

glabel D_80AE1C10
    .asciz "../z_en_poh.c"
    .balign 4

glabel D_80AE1C20
    .asciz "../z_en_poh.c"
    .balign 4

glabel D_80AE1C30
 .word 0x44BB8000
glabel D_80AE1C34
 .word 0x3DCCCCCD
glabel D_80AE1C38
 .word 0x3D4CCCCD
glabel D_80AE1C3C
 .word 0x3A83126F
glabel D_80AE1C40
 .word 0x3BE56042
glabel D_80AE1C44
 .word 0x3B808081
glabel D_80AE1C48
 .word 0x3BB78035
glabel D_80AE1C4C
 .word 0x3AB78035
glabel D_80AE1C50
 .word 0x37E64689
glabel D_80AE1C54
 .word 0x3D70F0F1
glabel D_80AE1C58
 .word 0x3F48C8C9
glabel D_80AE1C5C
 .word 0x3F48C8C9
glabel D_80AE1C60
 .word 0x418547AE
glabel D_80AE1C64
 .word 0x41855555
glabel D_80AE1C68
 .word 0x3C23D70A
glabel D_80AE1C6C
 .word 0x3F48C8C9
glabel D_80AE1C70
 .word 0x38C90FDB, 0x00000000, 0x00000000, 0x00000000


