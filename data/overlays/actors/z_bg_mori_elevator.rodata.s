.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808A2250
    .asciz "Error : 森の神殿 obj elevator バンク危険！(%s %d)\n"
    .balign 4

glabel D_808A2284
    .asciz "../z_bg_mori_elevator.c"
    .balign 4

glabel D_808A229C
    .asciz "森の神殿 elevator CT\n"
    .balign 4

glabel D_808A22B4
    .asciz "森の神殿 elevator DT\n"
    .balign 4

glabel D_808A22CC
    .asciz "Error : 森の神殿 obj elevator 部屋設定が危険(%s %d)\n"
    .balign 4

glabel D_808A2304
    .asciz "../z_bg_mori_elevator.c"
    .balign 4

glabel D_808A231C
    .asciz "Error : 森の神殿 obj elevator 部屋設定が危険(%s %d)\n"
    .balign 4

glabel D_808A2354
    .asciz "../z_bg_mori_elevator.c"
    .balign 4

glabel D_808A236C
    .asciz "../z_bg_mori_elevator.c"
    .balign 4

glabel D_808A2384
    .asciz "../z_bg_mori_elevator.c"
    .balign 4

glabel D_808A239C
    .asciz "../z_bg_mori_elevator.c"
    .balign 4

glabel D_808A23B4
 .word 0x3DB851EC
glabel D_808A23B8
 .word 0x3A83126F
glabel D_808A23BC
 .word 0x3A83126F
glabel D_808A23C0
 .word 0xC442C000
glabel D_808A23C4
 .word 0xC3898000
glabel D_808A23C8
 .word 0xC3898000
glabel D_808A23CC
 .word 0xC442C000
glabel D_808A23D0
 .word 0x3E99999A
glabel D_808A23D4
 .word 0x3A83126F, 0x00000000, 0x00000000


