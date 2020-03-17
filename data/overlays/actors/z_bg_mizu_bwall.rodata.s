.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8089D870
    .asciz "Error : コリジョンデータセット失敗(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_8089D8AC
    .asciz "../z_bg_mizu_bwall.c"
    .balign 4

glabel D_8089D8C4
    .asciz "Error : コリジョンデータセット失敗(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_8089D900
    .asciz "../z_bg_mizu_bwall.c"
    .balign 4

glabel D_8089D918
    .asciz "Error : コリジョンデータセット失敗(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_8089D954
    .asciz "../z_bg_mizu_bwall.c"
    .balign 4

glabel D_8089D96C
    .asciz "Error : コリジョンデータセット失敗(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_8089D9A8
    .asciz "../z_bg_mizu_bwall.c"
    .balign 4

glabel D_8089D9C0
    .asciz "Error : コリジョンデータセット失敗(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_8089D9FC
    .asciz "../z_bg_mizu_bwall.c"
    .balign 4

glabel D_8089DA14
    .asciz "../z_bg_mizu_bwall.c"
    .balign 4

glabel D_8089DA2C
    .asciz "../z_bg_mizu_bwall.c"
    .balign 4

glabel D_8089DA44
    .asciz "../z_bg_mizu_bwall.c"
    .balign 4

glabel jtbl_8089DA5C
.word L8089C5B0
.word L8089C740
.word L8089C8D4
.word L8089CA5C
.word L8089CBF0
glabel D_8089DA70
 .word 0x43DE8000
glabel D_8089DA74
 .word 0x43DE8000
glabel D_8089DA78
 .word 0x443F4000
glabel D_8089DA7C
 .word 0xC450C000


