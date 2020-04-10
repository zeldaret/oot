.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8089F580
    .asciz "../z_bg_mizu_shutter.c"
    .balign 4

glabel D_8089F598
    .asciz "../z_bg_mizu_shutter.c"
    .balign 4

glabel D_8089F5B0
    .asciz "../z_bg_mizu_shutter.c"
    .balign 4

glabel D_8089F5C8
    .float 9.58738019108e-05
    .balign 4

glabel D_8089F5CC
    .float 9.58738019108e-05
    .balign 4

glabel D_8089F5D0
    .float 9.58738019108e-05
    .balign 4

glabel D_8089F5D4
    .float 0.1
    .balign 4

glabel D_8089F5D8
    .float 0.1
    .balign 4

glabel D_8089F5DC
    .float 0.1
    .balign 4

glabel D_8089F5E0
    .float 0.1
    .balign 4

glabel D_8089F5E4
    .float 0.1
    .balign 4

glabel D_8089F5E8
    .float 0.1
    .balign 4

glabel D_8089F5EC
    .float 0.1
    .balign 4



