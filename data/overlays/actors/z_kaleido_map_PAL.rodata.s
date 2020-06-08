.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_8082F9C0
    .asciz "../z_kaleido_map_PAL.c"
    .balign 4

glabel D_8082F9D8
    .asciz "kscope->cursor_point=%d\n"
    .balign 4

glabel D_8082F9F4
    .asciz "kscope->cursor_point====%d\n"
    .balign 4

glabel D_8082FA10
    .asciz "../z_kaleido_map_PAL.c"
    .balign 4

glabel D_8082FA28
    .asciz "../z_kaleido_map_PAL.c"
    .balign 4

glabel D_8082FA40
    .asciz "../z_kaleido_map_PAL.c"
    .balign 4
