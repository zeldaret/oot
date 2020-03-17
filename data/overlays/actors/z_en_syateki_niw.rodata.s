.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B136E0
 .word 0x0A0A0000
glabel D_80B136E4
    .asciz "[32m☆☆☆☆☆ 射的場鶏 ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80B13710
 .word 0x0A0A0000
glabel D_80B13714
    .asciz "[32m☆☆☆☆☆ ボムにわ！ ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80B13740
    .asciz "../z_en_syateki_niw.c"
    .balign 4

glabel D_80B13758
    .asciz "../z_en_syateki_niw.c"
    .balign 4

glabel D_80B13770
    .asciz "../z_en_syateki_niw.c"
    .balign 4

glabel D_80B13788
 .word 0xC61C4000
glabel jtbl_80B1378C
.word L80B11B74
.word L80B11B80
.word L80B11BB4
.word L80B11C14
.word L80B11C48
.word L80B11C5C
glabel D_80B137A4
 .word 0x45DAC000
glabel D_80B137A8
 .word 0x45DAC000
glabel D_80B137AC
 .word 0x46C35000
glabel D_80B137B0
 .word 0x45BB8000
glabel D_80B137B4
 .word 0xC61C4000
glabel D_80B137B8
 .word 0xC61C4000
glabel D_80B137BC
 .word 0x461C4000
glabel D_80B137C0
 .word 0x453B8000
glabel D_80B137C4
 .word 0x465AC000
glabel D_80B137C8
 .word 0x461C4000
glabel D_80B137CC
 .word 0x407F5C29
glabel D_80B137D0
 .word 0x4622F983
glabel D_80B137D4
 .word 0x3E4CCCCD
glabel D_80B137D8
 .word 0xC61C4000
glabel D_80B137DC
 .word 0x45BB8000
glabel D_80B137E0
 .word 0x461C4000
glabel jtbl_80B137E4
.word L80B124AC
.word L80B124C4
.word L80B1257C
.word L80B12620
.word L80B12670
.word L80B126E8
.word L80B12798
glabel D_80B13800
 .word 0x459C4000
glabel D_80B13804
 .word 0xC59C4000
glabel D_80B13808
 .word 0xBE99999A
glabel D_80B1380C
 .word 0x461C4000
glabel D_80B13810
 .word 0x465AC000
glabel D_80B13814
 .word 0x459C4000
glabel D_80B13818
 .word 0x4622F983
glabel D_80B1381C
 .word 0x3FFEB852
glabel D_80B13820
 .word 0xC61C4000
glabel D_80B13824
 .word 0x459C4000
glabel D_80B13828
 .word 0xC59C4000
glabel D_80B1382C
 .word 0xBE19999A
glabel D_80B13830
 .word 0x40490FDB
glabel D_80B13834
 .word 0x3D4CCCCD
glabel D_80B13838
 .word 0x3E4CCCCD, 0x00000000


