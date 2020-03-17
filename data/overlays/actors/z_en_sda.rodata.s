.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80AFA430
 .word 0x53444120, 0x4D4F5645, 0x0A000000
glabel D_80AFA43C
    .asciz "SDA MOVE END\n"
    .balign 4

glabel D_80AFA44C
    .asciz "SDA DRAW \n"
    .balign 4

glabel D_80AFA458
    .asciz "SDA DRAW END\n"
    .balign 4

glabel D_80AFA468
    .asciz "SDA CONT \n"
    .balign 4

glabel D_80AFA474
    .asciz "SDA CONT 2\n"
    .balign 4

glabel D_80AFA480
    .asciz "SDA CONT 3\n"
    .balign 4

glabel D_80AFA48C
    .asciz "SDA CONT 4\n"
    .balign 4

glabel D_80AFA498
    .asciz "../z_en_sda.c"
    .balign 4

glabel D_80AFA4A8
 .word 0x53444120, 0x4420310A, 0x00000000
glabel D_80AFA4B4
    .asciz "../z_en_sda.c"
    .balign 4

glabel D_80AFA4C4
    .asciz "../z_en_sda.c"
    .balign 4

glabel D_80AFA4D4
 .word 0x53444120, 0x4420320A, 0x00000000
glabel D_80AFA4E0
    .asciz "../z_en_sda.c"
    .balign 4

glabel D_80AFA4F0
 .word 0x3F99999A
glabel D_80AFA4F4
 .word 0xBF99999A
glabel D_80AFA4F8
 .word 0x40490FDB
glabel D_80AFA4FC
 .word 0x40490FDB
glabel D_80AFA500
 .word 0x3F19999A, 0x00000000, 0x00000000, 0x00000000

