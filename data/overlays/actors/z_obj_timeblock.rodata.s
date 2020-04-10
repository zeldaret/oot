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
    .asciz "../z_obj_timeblock.c"
    .balign 4

.align 4

