.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_8097BF90
    .asciz "Demo_Gj_Search_Boss_Ganon %d:ガノン発見!!!!\n"
    .balign 4

glabel D_8097BFC0
    .asciz "Demo_Gj_Search_Boss_Ganon %d:ガノン発見出来ず\n"
    .balign 4

glabel D_8097BFF0
    .asciz "../z_demo_gj.c"
    .balign 4

glabel D_8097C000
    .asciz "../z_demo_gj.c"
    .balign 4

glabel D_8097C010
    .asciz "../z_demo_gj.c"
    .balign 4

glabel D_8097C020
    .asciz "../z_demo_gj.c"
    .balign 4

glabel D_8097C030
    .asciz "../z_demo_gj.c"
    .balign 4

glabel D_8097C040
    .asciz "../z_demo_gj.c"
    .balign 4

glabel D_8097C050
    .asciz "[31mDemo_Gj_common_Reflect : そんなarg_dataには対応していない = %d\n[m"
    .balign 4

glabel D_8097C098
    .asciz "[31mDemo_Gj_Setup_Move_common : そんなarg_dataには対応していない = %d\n[m"
    .balign 4

glabel D_8097C0E4
    .asciz "[31mメインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_8097C120
    .asciz "[31mDemo_Gj_Actor_ct そんな引数は無い!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_8097C164
    .asciz "[31m描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_8097C19C
 .word 0x3E4CCCCD
glabel D_8097C1A0
 .word 0x3F19999A
glabel D_8097C1A4
 .word 0x3DCCCCCD
glabel D_8097C1A8
 .word 0x3F333333
glabel jtbl_8097C1AC
.word L80979288
.word L80979320
.word L809793B8
.word L80979450
.word L809794E8
.word L80979580
.word L80979618
glabel D_8097C1C8
 .word 0x3C23D70A
glabel D_8097C1CC
 .word 0x3C23D70A
glabel D_8097C1D0
 .word 0x3C23D70A
glabel D_8097C1D4
 .word 0x3C23D70A
glabel D_8097C1D8
 .word 0x3C23D70A
glabel D_8097C1DC
 .word 0x3C23D70A
glabel D_8097C1E0
 .word 0x3C23D70A
glabel D_8097C1E4
 .word 0x4487C000
glabel jtbl_8097C1E8
.word L809798D0
.word L809799A8
.word L80979A80
.word L80979B58
.word L80979C30
.word L80979D08
.word L80979DE0
glabel D_8097C204
 .word 0x3C23D70A
glabel D_8097C208
 .word 0x3C23D70A
glabel D_8097C20C
 .word 0x3C23D70A
glabel D_8097C210
 .word 0x3C23D70A
glabel D_8097C214
 .word 0x3C23D70A
glabel D_8097C218
 .word 0x3C23D70A
glabel D_8097C21C
 .word 0x3C23D70A
glabel D_8097C220
 .word 0x4622F983
glabel D_8097C224
 .word 0x4622F983
glabel D_8097C228
 .word 0x3F4CCCCD
glabel D_8097C22C
 .word 0x3F4CCCCD
glabel D_8097C230
 .word 0x3F4CCCCD
glabel jtbl_8097C234
.word L8097BC98
.word L8097BD48
.word L8097BD48
.word L8097BD48
.word L8097BCA8
.word L8097BCB8
.word L8097BCC8
.word L8097BCD8
.word L8097BCE8
.word L8097BCF8
.word L8097BD08
.word L8097BD48
.word L8097BD18
.word L8097BD28
.word L8097BD48
.word L8097BD48
.word L8097BD48
.word L8097BD48
.word L8097BD38


