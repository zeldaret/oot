.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B3A8F0
 .word 0x0A0A0000
glabel D_80B3A8F4
    .asciz "[32m☆☆☆☆☆ 透明メッセージ君 ☆☆☆☆☆ %x\n[m"
    .balign 4

glabel D_80B3A928
 .word 0x0A0A0000
glabel D_80B3A92C
    .asciz "[33m☆☆☆☆☆ 元は？       ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80B3A95C
    .asciz "[35m☆☆☆☆☆ レンジは？   ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80B3A98C
    .asciz "[36m☆☆☆☆☆ は、範囲わ？ ☆☆☆☆☆ %f\n[m"
    .balign 4

glabel D_80B3A9BC
 .word 0x0A0A0000
glabel D_80B3A9C0
 .word 0x0A0A0000
glabel D_80B3A9C4
 .word 0x0A0A0000
glabel D_80B3A9C8
    .asciz "[32m☆☆☆☆☆ Ｙｏｕ ａｒｅ Ｓｈｏｃｋ！  ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80B3AA08
    .asciz "[35m☆☆☆☆☆ セーブしたよ！おもいっきり！ %x\n[m"
    .balign 4

glabel D_80B3AA3C
 .word 0x0A0A0000
glabel D_80B3AA40
    .asciz "[32m☆☆☆☆☆ 透明メッセージ君せっと %x\n[m"
    .balign 4

glabel D_80B3AA70
    .asciz "[33m☆☆☆☆☆ セーブ情報 	           %x\n[m"
    .balign 4

glabel D_80B3AAA0
    .asciz "[35m☆☆☆☆☆ 指定メッセージ種類     %x\n[m"
    .balign 4

glabel D_80B3AAD0
    .asciz "[36m☆☆☆☆☆ 実質メッセージ種類     %x\n[m"
    .balign 4

glabel D_80B3AB00
    .asciz "[32m☆☆☆☆☆ 指定範囲               %d\n[m"
    .balign 4

glabel D_80B3AB30
    .asciz "[33m☆☆☆☆☆ 処理範囲               %f\n[m"
    .balign 4

glabel D_80B3AB60
    .asciz "[35m ☆☆ 通常 ☆☆ \n[m"
    .balign 4

glabel D_80B3AB7C
    .asciz "[35m ☆☆ チェックのみ ☆☆ \n[m"
    .balign 4

glabel D_80B3ABA0
    .asciz "[35m ☆☆ ロックのみ ☆☆ \n[m"
    .balign 4

glabel D_80B3ABC0
    .asciz "[35m☆☆☆☆☆ わー %d\n[m"
    .balign 4

glabel D_80B3ABDC
    .asciz "[35m☆☆☆☆☆ (強制)セーブしたよ！おもいっきり！ %x\n[m"
    .balign 4

glabel D_80B3AC18
    .asciz "[35m☆☆☆☆☆ きょり %f\n[m"
    .balign 4

glabel D_80B3AC38
 .word 0x0A0A0000
glabel D_80B3AC3C
    .asciz "[32m☆☆☆☆☆ 透明メッセージ君せっと %x\n[m"
    .balign 4

glabel D_80B3AC6C
    .asciz "[33m☆☆☆☆☆ セーブ情報 	           %x\n[m"
    .balign 4

glabel D_80B3AC9C
    .asciz "[35m☆☆☆☆☆ 指定メッセージ種類     %x\n[m"
    .balign 4

glabel D_80B3ACCC
    .asciz "[36m☆☆☆☆☆ 実質メッセージ種類     %x\n[m"
    .balign 4

glabel D_80B3ACFC
    .asciz "[32m☆☆☆☆☆ 指定範囲               %d\n[m"
    .balign 4

glabel D_80B3AD2C
    .asciz "[33m☆☆☆☆☆ 処理範囲               %f\n[m"
    .balign 4

glabel D_80B3AD5C
    .asciz "[35m☆☆☆☆☆ レンジは？ 		   %d\n[m"
    .balign 4

glabel D_80B3AD84
 .word 0x0A0A0000
glabel D_80B3AD88
 .word 0x0A0A0000
glabel D_80B3AD8C
    .asciz "[35m ☆☆ 強制 ☆☆ \n[m"
    .balign 4

glabel D_80B3ADA8
    .asciz "[31m ☆☆ ゲルドの修練場強制チェックのみ ☆☆ \n[m"
    .balign 4

glabel D_80B3ADDC
 .word 0x0A0A0000


