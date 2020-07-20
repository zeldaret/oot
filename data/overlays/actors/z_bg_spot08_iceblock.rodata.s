.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_808B1710
    .asciz "Warning : move BG 登録失敗(%s %d)(name %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_808B1750
    .asciz "../z_bg_spot08_iceblock.c"
    .balign 4

glabel D_808B176C
    .asciz "Error : arg_data 設定ミスです。(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_808B17A8
    .asciz "../z_bg_spot08_iceblock.c"
    .balign 4

glabel D_808B17C4
    .asciz "(spot08 流氷)(arg_data 0x%04x)\n"
    .balign 4

glabel jtbl_808B17E4
    .word L808B0A74
    .word L808B0A50
    .word L808B0A50
    .word L808B0A74
    .word L808B0A50
    .word L808B0A50
    .word L808B0A50
    .word L808B0A50
    .word L808B0A50
    .word L808B0A50
    .word L808B0A50
    .word L808B0A50
    .word L808B0A50
    .word L808B0A50
    .word L808B0A50
    .word L808B0A74
    .word L808B0A74
    .word L808B0A74
    .word L808B0A50
    .word L808B0A74
    .word L808B0A50
    .word L808B0A50
    .word L808B0A50
    .word L808B0A50
    .word L808B0A50
    .word L808B0A50
    .word L808B0A50
    .word L808B0A50
    .word L808B0A50
    .word L808B0A50
    .word L808B0A50
    .word L808B0A74
    .word L808B0A50
    .word L808B0A50
    .word L808B0A74
    .word L808B0A74

glabel D_808B1874
    .float 0.15

glabel D_808B1878
    .float 0.2

glabel D_808B187C
    .float 0.4

glabel D_808B1880
    .float 0.001

glabel D_808B1884
    .float 0.0016

glabel D_808B1888
    .float 0.0016

glabel D_808B188C
    .float 9.58738019108e-05

glabel D_808B1890
    .float 65535.5

glabel D_808B1894
    .float 65535.5

glabel jtbl_808B1898
    .word L808B1308
    .word L808B1308
    .word L808B1318
    .word L808B1328
    .word L808B133C

glabel D_808B18AC
    .float 0.05

