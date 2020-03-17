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
 .word 0x3E4CCCCD
glabel D_8089A088
 .word 0x3A83126F
glabel D_8089A08C
 .word 0x44734000


