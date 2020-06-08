.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_8082F420
    .asciz "../z_kaleido_collect.c"
    .balign 4

glabel D_8082F438
    .asciz "000 ccc=%d\n"
    .balign 4

glabel D_8082F444
    .asciz "111 ccc=%d\n"
    .balign 4

glabel D_8082F450
    .asciz "222 ccc=%d (%d, %d, %d)\n"
    .balign 4

glabel D_8082F46C
    .asciz "999 ccc=%d (%d,  %d)\n"
    .balign 4

glabel D_8082F484
    .asciz "888 ccc=%d (%d,  %d,  %x)\n"
    .balign 4

glabel D_8082F4A0
    .asciz "../z_kaleido_collect.c"
    .balign 4
