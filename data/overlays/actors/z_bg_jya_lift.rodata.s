.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8089A060
    .asciz "女神リフト CT\n"
    .balign 4

glabel D_8089A070
    .asciz "女神リフト DT\n"
    .balign 4

glabel D_8089A080
 .word 0x44C9A000
glabel D_8089A084
    .float 0.2
    .balign 4

glabel D_8089A088
    .float 0.001
    .balign 4

glabel D_8089A08C
 .word 0x44734000


