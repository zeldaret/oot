.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B116A0
 .word 0x0A0A0000
glabel D_80B116A4
    .asciz "[32m☆☆☆☆☆ 親父登場！！むほほほほほほほーん ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80B116E8
    .asciz "[32m☆☆☆☆☆ Equip_Pachinko ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80B1171C
    .asciz "[32m☆☆☆☆☆ Equip_Bow ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80B11748
    .asciz "[32m☆☆☆☆☆ 正常終了 ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80B11774
 .word 0x1B5B3334, 0x6DBAC6C4, 0xA9C0EFA4, 0xC0A4BCA1, 0xAAA5D9A5, 0xA4A5D3A1, 0xBCA1AA1B, 0x5B6D0A00, 0x00000000, 0x00000000, 0x00000000


