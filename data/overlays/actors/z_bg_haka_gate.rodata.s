.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8087CD10
    .asciz "../z_bg_haka_gate.c"
    .balign 4

glabel D_8087CD24
    .asciz "../z_bg_haka_gate.c"
    .balign 4

glabel D_8087CD38
    .asciz "../z_bg_haka_gate.c"
    .balign 4

glabel D_8087CD4C
    .asciz "../z_bg_haka_gate.c"
    .balign 4

glabel D_8087CD60
    .asciz "../z_bg_haka_gate.c"
    .balign 4

glabel D_8087CD74
    .asciz "../z_bg_haka_gate.c"
    .balign 4

glabel D_8087CD88
    .asciz "../z_bg_haka_gate.c"
    .balign 4

glabel D_8087CD9C
 .word 0x3DCCCCCD
glabel D_8087CDA0
 .word 0x43360B61
glabel D_8087CDA4
 .word 0x38C90FDB
glabel D_8087CDA8
 .word 0x3727C5AC
glabel D_8087CDAC
 .word 0x38C90FDB
glabel D_8087CDB0
 .word 0x38C90FDB, 0x00000000, 0x00000000, 0x00000000

