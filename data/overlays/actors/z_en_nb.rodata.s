.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80AB4F90
    .asciz "En_Nb_Get_path_info レールデータをゲットだぜ = %d!!!!!!!!!!!!!!\n"
    .balign 4

glabel D_80AB4FD4
    .asciz "En_Nb_Get_path_info レールデータが無い!!!!!!!!!!!!!!!!!!!!\n"
    .balign 4

glabel D_80AB5010
    .asciz "../z_en_nb_inKenjyanomaDemo02.c"
    .balign 4

glabel D_80AB5030
    .asciz "../z_en_nb_inKenjyanomaDemo02.c"
    .balign 4

glabel D_80AB5050
    .asciz "En_Nb_Kidnap_Check_DemoMode:そんな動作は無い!!!!!!!!\n"
    .balign 4

glabel D_80AB5088
    .asciz "En_Nb_Confrontion_Check_DemoMode:そんな動作は無い!!!!!!!!\n"
    .balign 4

glabel D_80AB50C4
    .asciz "../z_en_nb_inConfrontion.c"
    .balign 4

glabel D_80AB50E0
    .asciz "../z_en_nb_inConfrontion.c"
    .balign 4

glabel D_80AB50FC
    .asciz "../z_en_nb_inConfrontion.c"
    .balign 4

glabel D_80AB5118
    .asciz "../z_en_nb_inConfrontion.c"
    .balign 4

glabel D_80AB5134
    .asciz "En_Nb_inEnding_Check_DemoMode:そんな動作は無い!!!!!!!!\n"
    .balign 4

glabel D_80AB516C
    .asciz "[31mメインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_80AB51A8
    .asciz "../z_en_nb.c"
    .balign 4

glabel D_80AB51B8
    .asciz "../z_en_nb.c"
    .balign 4

glabel D_80AB51C8
    .asciz "[31m描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_80AB5200
 .word 0x4622F983
glabel D_80AB5204
 .word 0xC61C4000
glabel D_80AB5208
 .word 0x42A6AAAB
glabel jtbl_80AB520C
.word L80AB2B5C
.word L80AB2BD0
.word L80AB2BD0
.word L80AB2BD0
.word L80AB2BD0
.word L80AB2BD0
.word L80AB2BD0
.word L80AB2BD0
.word L80AB2BC0
.word L80AB2B6C
.word L80AB2B80
.word L80AB2B90
.word L80AB2BA0
.word L80AB2BB0
glabel jtbl_80AB5244
.word L80AB3F64
.word L80AB3F78
.word L80AB3F8C
.word L80AB3FA0
.word L80AB3FB4
.word 0x00000000, 0x00000000


