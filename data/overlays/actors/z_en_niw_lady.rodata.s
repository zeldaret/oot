.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80ABB420
    .asciz "[32m☆☆☆☆☆ ねぇちゃんうっふん ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80ABB458
 .word 0x0A0A0000
glabel D_80ABB45C
    .asciz "[32m☆ 鶏柵内ＧＥＴ！☆ %x\n[m"
    .balign 4

glabel D_80ABB47C
 .word 0x0A0A0000
glabel D_80ABB480
    .asciz "[33m☆☆☆☆☆ ねぇちゃん選択	 ☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80ABB4B0
    .asciz "[33m☆☆☆☆☆ ねぇちゃんハート     ☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80ABB4E8
    .asciz "[33m☆☆☆☆☆ ねぇちゃん保存       ☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80ABB520
    .asciz "[33m☆☆☆☆☆ ねぇちゃん今	 ☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80ABB550
    .asciz "[32m☆☆☆☆☆ this->actor.talk_message ☆☆ %x\n[m"
    .balign 4

glabel D_80ABB588
    .asciz "[32m☆☆☆☆☆ this->message_end_code   ☆☆ %d\n[m"
    .balign 4

glabel D_80ABB5C0
 .word 0x0A0A0000
glabel D_80ABB5C4
    .asciz "[36m☆☆☆☆☆ 柵内BIT変更前 ☆☆ %x\n[m"
    .balign 4

glabel D_80ABB5F0
    .asciz "[36m☆☆☆☆☆ 柵内BIT変更後 ☆☆ %x\n[m"
    .balign 4

glabel D_80ABB61C
 .word 0x0A0A0000
glabel D_80ABB620
    .asciz "[32m☆☆☆☆☆ ハート ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80ABB64C
    .asciz "[33m☆☆☆☆☆ 爆弾   ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80ABB678
 .word 0x0A0A0000
glabel D_80ABB67C
    .asciz "[32m☆☆☆☆☆ アダルトメッセージチェック ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80ABB6B8
    .asciz "[32m☆☆☆☆☆ 正常終了 ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80ABB6E4
    .asciz "[32m☆☆☆☆☆ 通常メッセージチェック ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80ABB71C
    .asciz "../z_en_niw_lady.c"
    .balign 4

glabel D_80ABB730
    .asciz "../z_en_niw_lady.c"
    .balign 4

glabel jtbl_80ABB744
.word L80AB9E34
.word L80AB9E34
.word L80AB9E34
.word L80AB9E34
.word L80AB9E34
.word L80AB9E34
.word L80AB9E34
.word L80AB9E80
.word L80AB9E34
.word L80AB9DE8
.word L80AB9DE4
.word L80AB9F14
.word L80AB9F14
.word L80AB9F14
.word L80AB9F14
.word L80AB9F14
.word L80AB9F14
.word L80AB9F14
.word L80AB9F14
.word L80AB9F14
.word L80AB9E80
.word L80AB9E34
.word L80AB9E34
.word L80AB9E80
.word L80AB9E34
.word L80AB9E80
.word L80AB9E80
.word L80AB9E80
.word L80AB9E80
.word L80AB9E34
glabel D_80ABB7BC
 .word 0x44C94000


