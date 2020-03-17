.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80891800
    .asciz "Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80891840
    .asciz "../z_bg_ice_shelter.c"
    .balign 4

glabel D_80891858
    .asciz "(ice shelter)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80891878
    .asciz "../z_bg_ice_shelter.c"
    .balign 4

glabel D_80891890
    .asciz "../z_bg_ice_shelter.c"
    .balign 4

glabel D_808918A8
    .asciz "../z_bg_ice_shelter.c"
    .balign 4

glabel jtbl_808918C0
.word L80890B5C
.word L80890B5C
.word L80890B40
.word L80890B40
.word L80890B5C
glabel D_808918D4
 .word 0x3D8F5C29
glabel D_808918D8
 .word 0x3F4CCCCD
glabel D_808918DC
 .word 0x3D8F5C29
glabel D_808918E0
 .word 0x3E0F5C29
glabel D_808918E4
 .word 0x3E4CCCCD
glabel D_808918E8
 .word 0x3F4CCCCD
glabel D_808918EC
 .word 0x38D1B717
glabel jtbl_808918F0
.word L808914C8
.word L808914C8
.word L80891568
.word L80891680
.word L808914C8
.word 0x00000000, 0x00000000, 0x00000000


