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
 .word 0x38C90FDB
glabel D_8089F5CC
 .word 0x38C90FDB
glabel D_8089F5D0
 .word 0x38C90FDB
glabel D_8089F5D4
 .word 0x3DCCCCCD
glabel D_8089F5D8
 .word 0x3DCCCCCD
glabel D_8089F5DC
 .word 0x3DCCCCCD
glabel D_8089F5E0
 .word 0x3DCCCCCD
glabel D_8089F5E4
 .word 0x3DCCCCCD
glabel D_8089F5E8
 .word 0x3DCCCCCD
glabel D_8089F5EC
 .word 0x3DCCCCCD


