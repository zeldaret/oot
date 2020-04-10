.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B90EC0
    .asciz "Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80B90F00
    .asciz "../z_obj_bean.c"
    .balign 4

glabel D_80B90F10
    .asciz "[41;37m"
    .balign 4

glabel D_80B90F1C
    .asciz "パスデータが無い？(%s %d)(arg_data %xH)\n"
    .balign 4

glabel D_80B90F48
    .asciz "../z_obj_bean.c"
    .balign 4

glabel D_80B90F58
    .asciz "\x1b[m"
    .balign 4

glabel D_80B90F5C
    .asciz "[41;37m"
    .balign 4

glabel D_80B90F68
    .asciz "パスデータ数が不正(%s %d)(arg_data %xH)\n"
    .balign 4

glabel D_80B90F94
    .asciz "../z_obj_bean.c"
    .balign 4

glabel D_80B90FA4
    .asciz "\x1b[m"
    .balign 4

glabel D_80B90FA8
    .asciz "(魔法の豆の木リフト)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80B90FD0
    .asciz "[36m"
    .balign 4

glabel D_80B90FD8
 .word 0xC7CFA4C8, 0xC6A6A4CE, 0xCCDAA5EA, 0xA5D5A5C8, 0xBED7C6CD, 0xA1AAA1AA, 0xA1AA0A00
glabel D_80B90FF4
    .asciz "\x1b[m"
    .balign 4

glabel D_80B90FF8
 .word 0x41EFFFFF
glabel D_80B90FFC
    .float 0.01
    .balign 4

glabel D_80B91000
 .word 0x3D75C28F
glabel D_80B91004
 .word 0x3F88F5C3
glabel D_80B91008
    .float 0.1
    .balign 4

glabel D_80B9100C
    .float 0.2
    .balign 4

glabel D_80B91010
    .float 0.1
    .balign 4

glabel D_80B91014
    .float 2100.0
    .balign 4

glabel D_80B91018
 .word 0x3E2DC750
glabel D_80B9101C
 .word 0x3DDB22D2
glabel D_80B91020
    .float 10000.0
    .balign 4

glabel D_80B91024
    .float 0.1
    .balign 4

glabel D_80B91028
 .word 0x45C72000
glabel D_80B9102C
 .word 0x3E328769
glabel D_80B91030
 .word 0x3DFA03BF
glabel D_80B91034
    .float 0.1
    .balign 4

glabel D_80B91038
 .word 0x3E328769
glabel D_80B9103C
 .word 0x3DFA03BF
glabel D_80B91040
 .word 0x3E328769
glabel D_80B91044
 .word 0x3DFA03BF
glabel D_80B91048
 .word 0x3E328769
glabel D_80B9104C
 .word 0x3DFA03BF
glabel D_80B91050
 .word 0x45C72000
glabel D_80B91054
 .word 0x3E328769
glabel D_80B91058
 .word 0x3DFA03BF
glabel D_80B9105C
    .float 0.001
    .balign 4

glabel D_80B91060
 .word 0x492AE600
glabel D_80B91064
    .float 0.1
    .balign 4

glabel D_80B91068
    .float 0.001
    .balign 4

glabel D_80B9106C
 .word 0x492AE600
glabel D_80B91070
    .float 9.58738019108e-05
    .balign 4

glabel D_80B91074
    .float 0.1
    .balign 4

glabel D_80B91078
    .float 9.58738019108e-05
    .balign 4

glabel D_80B9107C
    .float 0.1
    .balign 4



