.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A3CCD0
    .asciz "デクの実×5   " # Deku Fruit * 5
    .balign 4

glabel D_80A3CCE0
    .asciz "矢×30        " # Arrow * 30
    .balign 4

glabel D_80A3CCF0
    .asciz "矢×50        " # Arrow * 50
    .balign 4

glabel D_80A3CD00
    .asciz "爆弾×5       " # Bomb * 5
    .balign 4

glabel D_80A3CD10
    .asciz "デクの実×10  " # Deku fruit * 10
    .balign 4

glabel D_80A3CD20
    .asciz "デクの棒      " # Deku stick
    .balign 4

glabel D_80A3CD30
    .asciz "爆弾×10      " # Bomb * 10
    .balign 4

glabel D_80A3CD40
    .asciz "さかな        " # Fish
    .balign 4

glabel D_80A3CD50
    .asciz "赤クスリ      " # Red potion
    .balign 4

glabel D_80A3CD60
    .asciz "緑クスリ      " # Green potion
    .balign 4

glabel D_80A3CD70
    .asciz "青クスリ      " # Blue potion
    .balign 4

glabel D_80A3CD80
    .asciz "巨人のナイフ  " # Giant knife
    .balign 4

glabel D_80A3CD90
    .asciz "ハイリアの盾  " # Hylian Shield
    .balign 4

glabel D_80A3CDA0
    .asciz "デクの盾      " # Deku shield
    .balign 4

glabel D_80A3CDB0
    .asciz "ゴロンの服    " # Goron tunic
    .balign 4

glabel D_80A3CDC0
    .asciz "ゾ─ラの服    " # Zora's Tunic
    .balign 4

glabel D_80A3CDD0
    .asciz "回復のハート  " # Healing heart
    .balign 4

glabel D_80A3CDE0
    .asciz "ロンロン牛乳  " # Lonlon milk
    .balign 4

glabel D_80A3CDF0
    .asciz "鶏の卵        " # Chicken eggs
    .balign 4

glabel D_80A3CE00
    .asciz "インゴー牛乳  " # Ingo milk
    .balign 4

glabel D_80A3CE10
    .asciz "インゴー卵    " # Ingo egg
    .balign 4

glabel D_80A3CE20
    .asciz "もだえ石      " # Stone of agony
    .balign 4

glabel D_80A3CE30
    .asciz "大人の財布    " # Adult wallet
    .balign 4

glabel D_80A3CE40
    .asciz "ハートの欠片  " # Piece of heart
    .balign 4

glabel D_80A3CE50
    .asciz "ボムチュウ    " # Bombchu
    .balign 4

glabel D_80A3CE60
    .asciz "ボムチュウ    " # Bombchu
    .balign 4

glabel D_80A3CE70
    .asciz "ボムチュウ    " # Bombchu
    .balign 4

glabel D_80A3CE80
    .asciz "ボムチュウ    " # Bombchu
    .balign 4

glabel D_80A3CE90
    .asciz "ボムチュウ    " # Bombchu
    .balign 4
glabel D_80A3CEA0
    .asciz "デクのタネ    " # Deku seed
    .balign 4

glabel D_80A3CEB0
    .asciz "キータンのお面" # Mask of Keaton
    .balign 4

glabel D_80A3CEC0
    .asciz "こわそなお面  " # Spooky mask
    .balign 4

glabel D_80A3CED0
    .asciz "ドクロのお面  " # Skull mask
    .balign 4

glabel D_80A3CEE0
    .asciz "ウサギずきん  " # Bunny hood
    .balign 4

glabel D_80A3CEF0
    .asciz "まことの仮面  " # Makoto's Mask / Mask of Truth
    .balign 4

glabel D_80A3CF00
    .asciz "ゾーラのお面  " # Zora Mask
    .balign 4

glabel D_80A3CF10
    .asciz "ゴロンのお面  " # Goron Mask
    .balign 4

glabel D_80A3CF20
    .asciz "ゲルドのお面  " # Gerudo Mask
    .balign 4
glabel D_80A3CF30
    .asciz "ＳＯＬＤＯＵＴ"
    .balign 4

glabel D_80A3CF40
    .asciz "炎            " # Fire
    .balign 4

glabel D_80A3CF50
    .asciz "虫            " # Bug
    .balign 4

glabel D_80A3CF60
    .asciz "チョウチョ    " # Butterfly
    .balign 4

glabel D_80A3CF70
    .asciz "ポウ          " # Poe
    .balign 4

glabel D_80A3CF80
    .asciz "妖精の魂      " # Fairy spirit
    .balign 4

glabel D_80A3CF90
    .asciz "矢×10        " # Arrows * 10
    .balign 4

glabel D_80A3CFA0
    .asciz "爆弾×20      " # Bombs * 20
    .balign 4

glabel D_80A3CFB0
    .asciz "爆弾×30      " # Bombs * 30
    .balign 4

glabel D_80A3CFC0
    .asciz "爆弾×5       " # Bombs * 5
    .balign 4

glabel D_80A3CFD0
    .asciz "赤クスリ      " # Red potion
    .balign 4

glabel D_80A3CFE0
    .asciz "赤クスリ      " # Red potion
    .balign 4

glabel D_80A3CFF0
    .asciz "%s(%2d)初期設定\n" # %s(%2d) Default Settings
    .balign 4

glabel D_80A3D004
    .asciz "\x1b[41;37m"
    .balign 4

glabel D_80A3D010
    .asciz "引数がおかしいよ(arg_data=%d)！！\n" # Something's off with the argument (arg_data=%d)!!
    .balign 4

glabel D_80A3D034
    .asciz "\x1b[m"
    .balign 4

glabel D_80A3D038
    .asciz "0"
    .balign 4

glabel D_80A3D03C
    .asciz "../z_en_girlA.c"
    .balign 4

glabel D_80A3D04C
    .asciz "\x1b[41;37m"
    .balign 4

glabel D_80A3D058
    .asciz "バンクが無いよ！！(%s)\n" # No such bank!! (%s)
    .balign 4

glabel D_80A3D070
    .asciz "\x1b[m"
    .balign 4

glabel D_80A3D074
    .asciz "0"
    .balign 4

glabel D_80A3D078
    .asciz "../z_en_girlA.c"
    .balign 4

glabel D_80A3D088
    .asciz "%s(%2d)初期設定\n" # %s(%2d) Default Settings
    .balign 4

glabel D_80A3D09C
    .asciz "%s(%2d)\n" # %s(%2d)
    .balign 4

glabel jtbl_80A3D0A8
.word L80A3A780
.word L80A3A8C4
.word L80A3A8C4
.word L80A3A8C4
.word func_80A3A858
.word func_80A3A87C
.word func_80A3A8A0
.word func_80A3A7A4
.word func_80A3A7C8
.word func_80A3A7EC
.word func_80A3A810
.word func_80A3A834
glabel jtbl_80A3D0D8
.word L80A3BAFC
.word L80A3BB0C
.word L80A3BB1C
.word L80A3BB2C
.word L80A3BB3C
glabel D_80A3D0EC
    .float 7.9
glabel jtbl_80A3D0F0
.word L80A3BD18
.word L80A3BD30
.word L80A3BD48
.word L80A3BCA0
.word L80A3BCB8
.word L80A3BCD0
.word L80A3BCE8
.word L80A3BD00
glabel jtbl_80A3D110
.word L80A3BDE0
.word L80A3BDFC
.word L80A3BE18
.word L80A3BE34
.word L80A3BE50
glabel jtbl_80A3D124
.word L80A3C05C
.word L80A3C0AC
.word L80A3C0FC
.word L80A3C14C
.word L80A3C19C
.word L80A3C1F4
.word L80A3C218
.word L80A3C23C
glabel D_80A3D144
    .float 0.017453292


