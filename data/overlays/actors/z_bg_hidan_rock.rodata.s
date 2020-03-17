.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8088BFF0
    .asciz "../z_bg_hidan_rock.c"
    .balign 4

glabel D_8088C008
    .asciz "../z_bg_hidan_rock.c"
    .balign 4

glabel D_8088C020
    .asciz "../z_bg_hidan_rock.c"
    .balign 4

glabel D_8088C038
 .word 0x3C23D70A
glabel D_8088C03C
 .word 0x3C23D70A
glabel D_8088C040
 .word 0x3D4CCCCD
glabel D_8088C044
 .word 0x3C4DE32F
glabel D_8088C048
 .word 0x44E38000
glabel D_8088C04C
 .word 0x3DCCCCCD
glabel D_8088C050
 .word 0x3DCCCCCD, 0x00000000, 0x00000000, 0x00000000


