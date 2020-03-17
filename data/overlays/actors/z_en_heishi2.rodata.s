.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A54F40
 .word 0x0A0A0000
glabel D_80A54F44
    .asciz "[35m ☆☆☆☆☆ いやー ついうっかり ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A54F7C
 .word 0x0A0A0000
glabel D_80A54F80
    .asciz "[32m ☆☆☆☆☆ 覗き穴奥兵士ふぃ〜 ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A54FB4
 .word 0x0A0A0000
glabel D_80A54FB8
    .asciz "[32m ☆☆☆☆☆ 兵士２セット完了！ ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80A54FF0
    .asciz "[33m ☆☆☆☆☆ 識別完了！         ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80A55028
    .asciz "[35m ☆☆☆☆☆ メッセージ完了！   ☆☆☆☆☆ %x\n\n[m"
    .balign 4

glabel D_80A55060
    .asciz "[32m ☆☆☆☆☆ 全部の精霊石GET！ ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A55094
    .asciz "[33m ☆☆☆☆☆ 子供ははやくネロ！ ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A550C8
    .asciz "[34m ☆☆☆☆☆ なんでも通るよ ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A550F8
    .asciz "[35m ☆☆☆☆☆ １回目袖の下開始！ ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A5512C
    .asciz "[35m ☆☆☆☆☆ ２回目袖の下開始！ ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A55160
    .asciz "[36m ☆☆☆☆☆ それはとおらんよぉ ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A55194
    .asciz "[35m☆☆☆ きたきたきたぁ！ ☆☆☆ %x\n[m"
    .balign 4

glabel D_80A551C0
    .asciz "[35m ☆☆☆☆☆ とおしゃしねぇちゅーの ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A551F8
    .asciz "[35m☆☆☆ きたきたきたぁ！ ☆☆☆ %x\n[m"
    .balign 4

glabel D_80A55224
    .asciz "[33m ☆☆☆☆☆ これでダウンだ！ ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80A55258
    .asciz "../z_en_heishi2.c"
    .balign 4

glabel D_80A5526C
    .asciz "../z_en_heishi2.c"
    .balign 4

glabel D_80A55280
    .asciz "../z_en_heishi2.c"
    .balign 4

glabel D_80A55294
    .asciz "../z_en_heishi2.c"
    .balign 4

glabel D_80A552A8
    .asciz "../z_en_heishi2.c"
    .balign 4

glabel D_80A552BC
    .asciz "../z_en_heishi2.c"
    .balign 4

glabel D_80A552D0
 .word 0x446CC000
glabel D_80A552D4
 .word 0x44956000
glabel D_80A552D8
 .word 0x4527A000
glabel D_80A552DC
 .word 0x44918000
glabel D_80A552E0
 .word 0x448F2000
glabel D_80A552E4
 .word 0x453C6000
glabel D_80A552E8
 .word 0x440EC000
glabel D_80A552EC
 .word 0xC4B9E000
glabel D_80A552F0
 .word 0x43D08000
glabel D_80A552F4
 .word 0xC486E000
glabel D_80A552F8
 .word 0x45DAC000
glabel D_80A552FC
 .word 0xC40E8000
glabel D_80A55300
 .word 0x3F9C61AA, 0x00000000, 0x00000000, 0x00000000


