.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8088E2A0
    .asciz "../z_bg_hidan_sekizou.c"
    .balign 4

glabel D_8088E2B8
    .asciz "../z_bg_hidan_sekizou.c"
    .balign 4

glabel D_8088E2D0
    .asciz "../z_bg_hidan_sekizou.c"
    .balign 4

glabel D_8088E2E8
    .asciz "../z_bg_hidan_sekizou.c"
    .balign 4

glabel D_8088E300
 .word 0x3E124925
glabel D_8088E304
 .word 0x3F333333
glabel D_8088E308
 .word 0x3F333333, 0x00000000


