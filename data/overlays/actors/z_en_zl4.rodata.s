.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B5FB80
    .asciz "../z_en_zl4.c"
    .balign 4

glabel D_80B5FB90
    .asciz "../z_en_zl4.c"
    .balign 4

glabel jtbl_80B5FBA0
.word L80B5BA48
.word L80B5BA68
.word L80B5BA7C
.word L80B5BA94
.word L80B5BAAC
.word L80B5BAC0
.word L80B5BAD4
glabel jtbl_80B5FBBC
.word L80B5C19C
.word L80B5C200
.word L80B5C254
.word L80B5C2F0
.word L80B5C330
.word L80B5C384
.word L80B5C3C4
glabel jtbl_80B5FBD8
.word L80B5C494
.word L80B5C4B4
.word L80B5C508
.word L80B5C550
.word L80B5C628
.word L80B5C670
.word L80B5C6D4
.word L80B5C7F0
.word L80B5C838
.word L80B5C8A4
.word L80B5C8F4
.word L80B5C958
.word L80B5C704
.word L80B5C71C
glabel jtbl_80B5FC10
.word L80B5C9C0
.word L80B5C9E4
.word L80B5CA68
.word L80B5CA88
.word L80B5CAE0
.word L80B5CB10
.word L80B5CB70
.word L80B5CBAC
.word L80B5CC08
.word L80B5CC28
.word L80B5CC64
.word L80B5CD18
.word L80B5CD84
.word L80B5CDCC
.word L80B5CE30
.word L80B5CE5C
.word L80B5CE98
.word L80B5CED4
glabel jtbl_80B5FC58
.word L80B5CFBC
.word L80B5CFFC
.word L80B5D04C
.word L80B5D09C
.word L80B5D0CC
.word L80B5D178
.word L80B5D198
.word L80B5D1F4
.word L80B5D238
.word L80B5D278
.word L80B5D2D0
.word L80B5D2F0
.word L80B5D364
glabel jtbl_80B5FC8C
.word L80B5D650
.word L80B5D704
.word L80B5D734
.word L80B5D788
.word L80B5D7C8
.word L80B5D83C
.word L80B5D870
.word L80B5D8B4
.word L80B5D980
.word L80B5D9C8
.word L80B5DA20
.word L80B5DA50
.word L80B5DA70
glabel jtbl_80B5FCC0
.word L80B5DB14
.word L80B5DB54
.word L80B5DB94
.word L80B5DC08
.word L80B5DC28
.word L80B5DC94
.word L80B5DCB4
.word L80B5DD7C
glabel jtbl_80B5FCE0
.word L80B5DE5C
.word L80B5DE84
.word L80B5DEE0
.word L80B5DF08
.word L80B5DF30
.word L80B5DF58
.word L80B5DF80
.word L80B5DFA8
.word L80B5DFD0
glabel D_80B5FD04
 .word 0x40490FDB
glabel D_80B5FD08
 .word 0x40490FDB
glabel D_80B5FD0C
 .word 0x40490FDB
glabel D_80B5FD10
 .word 0x40490FDB, 0x00000000, 0x00000000, 0x00000000


