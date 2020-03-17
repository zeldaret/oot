.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80BA0B50
    .asciz "時のブロック (<arg> %04xH <type> save:%d color:%d range:%d move:%d)\n"
    .balign 4

glabel D_80BA0B98
    .asciz "◯◯◯◯ Time Block 注目カメラ (frame counter  %d)\n"
    .balign 4

glabel D_80BA0BCC
    .asciz "◯◯◯◯ Time Block 注目カメラ (frame counter  %d)\n"
    .balign 4

glabel D_80BA0C00
    .asciz "../z_obj_timeblock.c"
    .balign 4

glabel D_80BA0C18
    .asciz "../z_obj_timeblock.c"
    .balign 4

glabel D_80BA0C30
 .word 0x2E2E2F7A, 0x5F6F626A, 0x5F74696D, 0x65626C6F, 0x636B2E63, 0x00000000, 0x00000000, 0x00000000


