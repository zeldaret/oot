.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A1A500
    .asciz "../z_en_floormas.c"
    .balign 4

glabel D_80A1A514
    .asciz "../z_en_floormas.c"
    .balign 4

glabel D_80A1A528
    .asciz "../z_en_floormas.c"
    .balign 4

glabel D_80A1A53C
    .asciz "../z_en_floormas.c"
    .balign 4

glabel D_80A1A550
    .asciz "../z_en_floormas.c"
    .balign 4

glabel D_80A1A564
 .word 0x3B83126F
glabel D_80A1A568
 .word 0x3D888889
glabel D_80A1A56C
 .word 0x3E088889
glabel D_80A1A570
 .word 0xBE19999A
glabel D_80A1A574
 .word 0x3F19999A
glabel D_80A1A578
 .word 0x3DCCCCCD
glabel D_80A1A57C
 .word 0x3B83126F
glabel D_80A1A580
 .word 0x3B83126F
glabel D_80A1A584
 .word 0x3B83126F
glabel D_80A1A588
 .word 0x3B83126F
glabel D_80A1A58C
 .word 0x4528C000
glabel D_80A1A590
 .word 0x4528C000
glabel D_80A1A594
 .word 0x3EAAAAAB
glabel D_80A1A598
 .word 0x3B83126F
glabel D_80A1A59C
 .word 0x3DCCCCCD
glabel D_80A1A5A0
 .word 0x3BE56042
glabel D_80A1A5A4
 .word 0x3B83126F
glabel D_80A1A5A8
 .word 0x3C23D70A
glabel D_80A1A5AC
 .word 0x3B83126F
glabel D_80A1A5B0
 .word 0x3C23D70A
glabel D_80A1A5B4
 .word 0x453B8000
glabel D_80A1A5B8
 .word 0x451C4000
glabel D_80A1A5BC
 .word 0x3F860A92
glabel D_80A1A5C0
 .word 0x3E860A92, 0x00000000, 0x00000000, 0x00000000


