.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8089EBC0
    .asciz "../z_bg_mizu_movebg.c"
    .balign 4

glabel D_8089EBD8
    .asciz "../z_bg_mizu_movebg.c"
    .balign 4

glabel D_8089EBF0
    .asciz "../z_bg_mizu_movebg.c"
    .balign 4

glabel jtbl_8089EC08
.word L8089DD64
.word L8089DDC8
.word L8089DE2C
.word L8089DE90
.word L8089DED0
.word L8089DED0
.word L8089DED0
.word L8089DF24
glabel D_8089EC28
 .word 0x44318000, 0x00000000
glabel D_8089EC30
 .word 0x405CCCCC, 0xCCCCCCCC
glabel D_8089EC38
 .word 0x38C90FDB
glabel jtbl_8089EC3C
.word L8089E0AC
.word L8089E0AC
.word L8089E0AC
.word L8089E0AC
.word L8089E0D4
glabel D_8089EC50
 .word 0x43DE8000
glabel D_8089EC54
 .word 0x43DE8000
glabel D_8089EC58
 .word 0x443F4000
glabel D_8089EC5C
 .word 0xC450C000
glabel jtbl_8089EC60
.word L8089E36C
.word L8089E3C0
.word L8089E36C
.word L8089E414
.word L8089E4D8
.word L8089E4D8
.word L8089E4D8
glabel D_8089EC7C
 .word 0x44318000
glabel D_8089EC80
 .word 0x42E66667
glabel D_8089EC84
 .word 0x38C90FDB
glabel D_8089EC88
 .word 0x3DCCCCCD, 0x00000000

