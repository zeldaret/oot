.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808A4420
    .asciz "../z_bg_mori_hineri.c"
    .balign 4

glabel D_808A4438
    .asciz "../z_bg_mori_hineri.c"
    .balign 4

glabel D_808A4450
    .asciz "../z_bg_mori_hineri.c"
    .balign 4

glabel D_808A4468
    .asciz "../z_bg_mori_hineri.c"
    .balign 4

glabel D_808A4480
    .asciz "../z_bg_mori_hineri.c"
    .balign 4

glabel D_808A4498
    .asciz "../z_bg_mori_hineri.c"
    .balign 4

glabel D_808A44B0
 .word 0xC3E28000
glabel D_808A44B4
 .word 0x44898000
glabel D_808A44B8
 .word 0x4183126F
glabel D_808A44BC
 .word 0x44898000
glabel D_808A44C0
 .word 0xC4DC2000
glabel D_808A44C4
 .word 0x449FC000
glabel D_808A44C8
 .word 0x44F9E000
glabel D_808A44CC
 .word 0x449FC000
glabel D_808A44D0
 .word 0x3FC90FDB
glabel D_808A44D4
 .word 0x3C23D70A
glabel D_808A44D8
 .word 0x3FA68121
glabel D_808A44DC
 .word 0x40490FDB
glabel D_808A44E0
 .word 0x3C23D70A, 0x00000000, 0x00000000, 0x00000000


