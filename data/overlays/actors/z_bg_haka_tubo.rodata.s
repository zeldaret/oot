.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80881BD0
    .asciz "../z_bg_haka_tubo.c"
    .balign 4

glabel D_80881BE4
    .asciz "../z_bg_haka_tubo.c"
    .balign 4

glabel D_80881BF8
    .asciz "../z_bg_haka_tubo.c"
    .balign 4

glabel D_80881C0C
 .word 0xC5ADB800
glabel D_80881C10
 .word 0xC4C66000
glabel D_80881C14
 .word 0x3E4CCCCD
glabel D_80881C18
 .word 0x3ECCCCCD
glabel D_80881C1C
 .word 0x3F19999A
glabel D_80881C20
 .word 0x3F4CCCCD
glabel D_80881C24
 .word 0x38C90FDB
glabel D_80881C28
 .word 0x3D8F5C29
glabel D_80881C2C
 .word 0x3D23D70A


