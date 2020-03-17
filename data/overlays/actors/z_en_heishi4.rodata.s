.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A56F30
 .word 0x0A0A0000
glabel D_80A56F34
    .asciz "[32m ☆☆☆☆☆ 兵士２セット完了！ ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80A56F6C
    .asciz "[33m ☆☆☆☆☆ 識別完了！	    ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80A56FA0
    .asciz "[35m ☆☆☆☆☆ メッセージ完了！   ☆☆☆☆☆ %x\n\n[m"
    .balign 4

glabel D_80A56FD8
 .word 0x0A0A0000
glabel D_80A56FDC
    .asciz "[32m ☆☆☆☆☆ ぎゃぁ！オトナだー ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A57010
    .asciz "[33m ☆☆☆☆☆ マスターソード祝入手！ ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A57048
    .asciz "[33m ☆☆☆☆☆ デモ開始！ ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A57074
    .asciz "[34m ☆☆☆☆☆ 返事なし ☆☆☆☆☆ \n[m"
    .balign 4



