.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808B4620
    .asciz "Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n"
    .balign 4

.balign 4

glabel D_808B4660
    .asciz "../z_bg_spot15_rrbox.c"
    .balign 4

glabel D_808B4678
    .asciz "(spot15 ロンロン木箱)(arg_data 0x%04x)\n"
    .balign 4

glabel D_808B46A0
    .asciz "Warning : ロンロン木箱落ちすぎた(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_808B46DC
    .asciz "../z_bg_spot15_rrbox.c"
    .balign 4

glabel D_808B46F4
 .word 0x3C23D70A
glabel D_808B46F8
 .word 0x44688000
glabel D_808B46FC
 .word 0xBA83126F
glabel D_808B4700
 .word 0x3A83126F
glabel D_808B4704
 .word 0x3A83126F
glabel D_808B4708
 .word 0xC6F9EC00
glabel D_808B470C
 .word 0xBA83126F


