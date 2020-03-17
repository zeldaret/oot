.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A23780
    .asciz "[32m☆☆☆☆☆ インデックス ☆☆☆☆☆ %x\n[m"
    .balign 4

glabel D_80A237B0
    .asciz "[33m☆☆☆☆☆ セーブ	     ☆☆☆☆☆ %x\n[m"
    .balign 4

glabel D_80A237E0
 .word 0x0A0A0000
glabel D_80A237E4
    .asciz "[32m☆☆☆☆☆ 親スイッチ発生 ☆☆☆☆☆ %x\n[m"
    .balign 4

.balign 4

glabel D_80A23818
    .asciz "[35m☆☆☆☆☆ 最大チェック数 ☆☆☆☆☆ %d\n[m"
    .balign 4

.balign 4

glabel D_80A2384C
 .word 0x0A0A0000
glabel D_80A23850
    .asciz "[32m☆☆☆☆☆ Ｙｏｕ ａｒｅ Ｓｈｏｃｋ！  ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80A23890
 .word 0x0A0A0000
glabel D_80A23894
    .asciz "[32m☆☆☆☆☆ 子スイッチ発生 ☆☆☆☆☆ %x\n[m"
    .balign 4

.balign 4

glabel D_80A238C8
    .asciz "[32m☆☆☆☆☆ Ｙｏｕ ａｒｅ Ｓｈｏｃｋ！  ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80A23908
 .word 0x0A0A0000
glabel D_80A2390C
    .asciz "[32m☆☆☆☆☆ やぶさめぶち抜き壷 ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A23940
    .asciz "[35m なにみの？ %d\n[m\n"
    .balign 4

.balign 4

glabel D_80A2395C
    .asciz "[36m バンクおかしいしぞ！%d\n[m\n"
    .balign 4

glabel D_80A23980
    .asciz "[32m☆☆☆☆☆ 音？ ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80A239A8
    .asciz "[32m☆☆☆☆☆ 時はまさに世紀末〜  ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80A239E0
    .asciz "[32m☆☆☆☆☆ らすとぉ！          ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A23A14
    .asciz "[33m☆☆☆☆☆ いぇぇーす！ＨＩＴ！！ ☆☆☆☆☆ %d\n[m"
    .balign 4

.balign 4

glabel D_80A23A50
    .asciz "../z_en_g_switch.c"
    .balign 4

glabel D_80A23A64
    .asciz "../z_en_g_switch.c"
    .balign 4

glabel D_80A23A78
    .asciz "../z_en_g_switch.c"
    .balign 4

glabel D_80A23A8C
    .asciz "../z_en_g_switch.c"
    .balign 4

glabel D_80A23AA0
    .asciz "../z_en_g_switch.c"
    .balign 4

glabel D_80A23AB4
    .asciz "../z_en_g_switch.c"
    .balign 4

glabel D_80A23AC8
    .asciz "../z_en_g_switch.c"
    .balign 4

glabel D_80A23ADC
    .asciz "../z_en_g_switch.c"
    .balign 4

glabel D_80A23AF0
    .asciz "../z_en_g_switch.c"
    .balign 4

glabel D_80A23B04
 .word 0x403F5C29
glabel D_80A23B08
 .word 0x3EE66666
glabel D_80A23B0C
 .word 0x3E99999A
glabel D_80A23B10
 .word 0x3E4CCCCD
glabel D_80A23B14
 .word 0x3F19999A
glabel D_80A23B18
 .word 0x464B2000
glabel D_80A23B1C
 .word 0x477FFF00
glabel D_80A23B20
 .word 0x3E99999A
glabel D_80A23B24
 .word 0x461C4000, 0x00000000, 0x00000000


