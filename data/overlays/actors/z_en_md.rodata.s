.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80AAC4B0
    .asciz "../z_en_md.c"
    .balign 4

glabel D_80AAC4C0
    .asciz "../z_en_md.c"
    .balign 4

glabel jtbl_80AAC4D0
.word L80AAA96C
.word L80AAA97C
.word L80AAA98C
.word L80AAA99C
.word L80AAA9AC
.word L80AAA9BC
.word L80AAA9CC
.word L80AAA9DC
.word L80AAA9EC
.word L80AAA9FC
.word L80AAAA0C
glabel jtbl_80AAC4FC
.word L80AAAA68
.word L80AAABCC
.word L80AAAC5C
.word L80AAAC5C
.word L80AAAB18
.word L80AAABCC
.word L80AAAC5C
.word L80AAAC5C
.word L80AAAC5C
.word L80AAAC5C
.word L80AAAC5C
.word L80AAAC5C
.word L80AAAC5C
.word L80AAAC5C
.word L80AAAC5C
.word L80AAAC5C
.word L80AAAC5C
.word L80AAAC5C
.word L80AAAC5C
.word L80AAAC5C
.word L80AAAC5C
.word L80AAAC5C
.word L80AAABCC
.word L80AAABFC
glabel jtbl_80AAC55C
.word L80AAAF40
.word L80AAAF40
.word L80AAAF48
.word L80AAAF40
.word L80AAAF40
.word L80AAB010
.word L80AAAF40
.word L80AAAF40
.word L80AAAF40
.word L80AAAF40
glabel D_80AAC584
 .word 0x4622F983
glabel D_80AAC588
 .word 0x3A83126F
glabel D_80AAC58C
 .word 0x40490FDB
glabel D_80AAC590
 .word 0x40490FDB
glabel D_80AAC594
 .word 0x40490FDB
glabel D_80AAC598
 .word 0x40490FDB, 0x00000000


