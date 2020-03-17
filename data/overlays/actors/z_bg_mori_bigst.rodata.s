.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_808A1500
    .asciz "Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_808A1540
    .asciz "../z_bg_mori_bigst.c"
    .balign 4

glabel D_808A1558
    .asciz "mori (bigST.鍵型天井)(arg : %04x)(sw %d)(noE %d)(roomC %d)(playerPosY %f)\n"
    .balign 4

glabel D_808A15A4
 .word 0xA1DAA5D3, 0xA5C3A5B0, 0xA5B9A5BF, 0xA5EBA5D5, 0xA5A9A5B9, 0xB8B0B7BF, 0xC5B7B0E6, 0xA1DB20A5, 0xD0A5F3A5, 0xAFB4EDB8, 0xB1A1AA0A, 0x00000000
glabel D_808A15D4
 .word 0x25732025, 0x640A0000
glabel D_808A15DC
    .asciz "../z_bg_mori_bigst.c"
    .balign 4

glabel D_808A15F4
    .asciz "Warning : 第２スタルフォス発生失敗\n"
    .balign 4

glabel D_808A1618
    .asciz "Warning : 第３-1スタルフォス発生失敗\n"
    .balign 4

glabel D_808A1640
    .asciz "Warning : 第３-2スタルフォス発生失敗\n"
    .balign 4

glabel D_808A1668
    .asciz "../z_bg_mori_bigst.c"
    .balign 4

glabel D_808A1680
    .asciz "../z_bg_mori_bigst.c"
    .balign 4

glabel D_808A1698
    .asciz "../z_bg_mori_bigst.c"
    .balign 4

glabel D_808A16B0
 .word 0x444EC000
glabel D_808A16B4
 .word 0xC54F8000
glabel D_808A16B8
 .word 0x444EC000
glabel D_808A16BC
 .word 0xC5537000
glabel D_808A16C0
 .word 0x444EC000
glabel D_808A16C4
 .word 0xC54BC000, 0x00000000, 0x00000000


