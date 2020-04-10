.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80AE4970
    .asciz "../z_en_rd.c"
    .balign 4

glabel D_80AE4980
    .asciz "../z_en_rd.c"
    .balign 4

glabel D_80AE4990
    .float 0.3
    .balign 4

glabel D_80AE4994
    .float 0.3
    .balign 4

glabel D_80AE4998
    .float 0.3
    .balign 4

glabel D_80AE499C
    .float 0.4
    .balign 4

glabel D_80AE49A0
    .float 0.4
    .balign 4

glabel jtbl_80AE49A4
.word L80AE3508
.word L80AE34B4
.word L80AE3538
.word L80AE3724
.word L80AE3754
glabel D_80AE49B8
    .float 0.15
    .balign 4

glabel D_80AE49BC
 .word 0x389D4952
glabel jtbl_80AE49C0
.word L80AE45B4
.word L80AE45F8
.word L80AE45F8
.word L80AE45E4
.word L80AE45F8
.word L80AE45F4
.word L80AE45F8
.word L80AE45F8
.word L80AE45DC
.word L80AE45F8
.word L80AE45EC
.word L80AE45F8
.word L80AE45F8
.word L80AE45CC
.word L80AE45F8
.word L80AE45F8
.word L80AE45F8
.word L80AE45C4
.word L80AE45F8
.word L80AE45F8
.word L80AE45F8
.word L80AE45BC
.word L80AE45F8
.word L80AE45AC
.word L80AE45D4
.word 0x00000000, 0x00000000, 0x00000000


