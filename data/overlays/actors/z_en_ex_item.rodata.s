.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A09E10
 .word 0x0A0A0000
glabel D_80A09E14
    .asciz "[32m☆☆☆☆☆ なにがでるかな？ ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80A09E48
    .asciz "[33m☆☆☆☆☆ なにがでるかな？ ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80A09E7C
    .asciz "なにみの？ %d\n"
    .balign 4

glabel D_80A09E8C
    .asciz "[35m バンクおかしいしぞ！%d\n[m\n"
    .balign 4

glabel D_80A09EB0
    .asciz "[32m☆☆☆☆☆ 転送終了 ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80A09EDC
    .asciz "[33m☆☆☆☆☆ 転送終了 ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80A09F08
    .asciz "[34m☆☆☆☆☆ 転送終了 ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80A09F34
    .asciz "[35m☆☆☆☆☆ 転送終了 ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80A09F60
    .asciz "[36m☆☆☆☆☆ 転送終了 ☆☆☆☆☆ %d\n\n[m"
    .balign 4

glabel D_80A09F8C
    .asciz "[32m ☆☆☆☆☆ 母親ー？     ☆☆☆☆☆ %x\n[m"
    .balign 4

glabel D_80A09FBC
    .asciz "[32m ☆☆☆☆☆ 動いてねー？ ☆☆☆☆☆ %x\n[m"
    .balign 4

glabel D_80A09FEC
    .asciz "[32m ☆☆☆☆☆ さぁきえるぞ！ ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A0A01C
    .asciz "[32m☆☆☆☆☆ 正常終了 ☆☆☆☆☆ \n[m"
    .balign 4

.balign 4

glabel D_80A0A048
    .asciz "../z_en_ex_item.c"
    .balign 4

glabel D_80A0A05C
    .asciz "../z_en_ex_item.c"
    .balign 4

glabel D_80A0A070
    .asciz "../z_en_ex_item.c"
    .balign 4

glabel jtbl_80A0A084
.word L80A08F58
.word L80A08F64
.word L80A08F70
.word L80A08F7C
.word L80A08F88
.word L80A08F58
.word L80A08F64
.word L80A08F70
.word L80A08F7C
.word L80A08F88
.word L80A08F88
.word L80A08F88
.word L80A08F88
.word L80A08F88
.word L80A08F88
.word L80A08F94
.word L80A08FC4
.word L80A08FC4
.word L80A08FC4
.word L80A08FD0
glabel D_80A0A0D4
 .word 0x3D4CCCCD
glabel jtbl_80A0A0D8
.word L80A0912C
.word L80A09190
.word L80A091FC
.word L80A09250
.word L80A092B8
.word L80A09128
.word L80A0918C
.word L80A091F8
.word L80A09250
.word L80A092B8
.word L80A0932C
.word L80A0932C
.word L80A0932C
.word L80A0932C
.word L80A0932C
.word L80A09424
.word L80A093CC
.word L80A093CC
.word L80A093CC
.word L80A093E8
glabel D_80A0A128
 .word 0x3EB33333
glabel D_80A0A12C
 .word 0x3DCCCCCD
glabel jtbl_80A0A130
.word L80A09B04
.word L80A09B14
.word L80A09B04
.word L80A09B04
.word L80A09B24
.word L80A09B04
.word L80A09B14
.word L80A09B04
.word L80A09B04
.word L80A09B24
.word L80A09B24
.word L80A09B24
.word L80A09B24
.word L80A09B24
.word L80A09B24
.word L80A09B34
.word L80A09B48
.word L80A09B48
.word L80A09B48
.word L80A09B04


