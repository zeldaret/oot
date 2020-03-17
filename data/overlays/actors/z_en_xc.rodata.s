.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B41F50
 .word 0xBFE5A4CE, 0xA5BBA5EC, 0xA5CAA1BC, 0xA5C720A5, 0xB7A1BCA5, 0xAFC3C2C0, 0xB8212121, 0x21212121, 0x21212121, 0x21212121, 0x2121210A, 0x00000000
glabel D_80B41F80
 .word 0xBFE5A4CE, 0xA5BBA5EC, 0xA5CAA1BC, 0xA5C720A5, 0xB7A1BCA5, 0xAFBEC3CC, 0xC7212121, 0x21212121, 0x21212121, 0x21212121, 0x2121210A, 0x00000000
glabel D_80B41FB0
 .word 0xA5D6A1BC, 0xA5C4A4F2, 0xBCE8A4C3, 0xA4BF2121, 0x21212121, 0x21212121, 0x21212121, 0x21212121, 0x0A000000
glabel D_80B41FD4
 .word 0xA4CFA4E4, 0xA4AFA5D6, 0xA1BCA5C4, 0xA4F2BCE8, 0xA4EBA4D9, 0xA4B72121, 0x21212121, 0x21212121, 0x21212121, 0x21212121, 0x0A000000
glabel D_80B42000

    .asciz "MAX speed = %f\n"
    .balign 4

glabel D_80B42010

    .asciz "../z_en_oA2_inSpot05.c"
    .balign 4

glabel D_80B42028

    .asciz "../z_en_oA2_inSpot05.c"
    .balign 4

glabel D_80B42040

    .asciz "../z_en_oA2_inSpot05.c"
    .balign 4

glabel D_80B42058

    .asciz "../z_en_oA2_inSpot05.c"
    .balign 4

glabel D_80B42070

    .asciz "../z_en_oA2_inMetamol.c"
    .balign 4

glabel D_80B42088

    .asciz "../z_en_oA2_inMetamol.c"
    .balign 4

glabel D_80B420A0

    .asciz "../z_en_oA2_inMetamol.c"
    .balign 4

glabel D_80B420B8

    .asciz "En_Oa2_Stalker_Check_DemoMode:そんな動作は無い!!!!!!!!\n"
    .balign 4

glabel D_80B420F0

    .asciz "../z_en_oA2_inStalker.c"
    .balign 4

glabel D_80B42108

    .asciz "../z_en_oA2_inStalker.c"
    .balign 4

glabel D_80B42120

    .asciz "[31mメインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_80B4215C

    .asciz "[31m En_Oa2 の arg_data がおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_80B421A0

    .asciz "../z_en_oA2.c"
    .balign 4

glabel D_80B421B0

    .asciz "../z_en_oA2.c"
    .balign 4

glabel D_80B421C0

    .asciz "[31m描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

glabel D_80B421F8
 .word 0xC50B1000
glabel D_80B421FC
 .word 0x43DF8000
glabel D_80B42200
 .word 0x4421C000
glabel D_80B42204
 .word 0x40E1E2B0
glabel D_80B42208
 .word 0x3ECCCCCD
glabel D_80B4220C
 .word 0x3F19999A
glabel D_80B42210
 .word 0x3C23D70A
glabel D_80B42214
 .word 0x3F99999A
glabel D_80B42218
 .word 0x3C23D70A
glabel D_80B4221C
 .word 0x3F99999A
glabel D_80B42220
 .word 0x3C23D70A
glabel D_80B42224
 .word 0x3F99999A
glabel D_80B42228
 .word 0x3C23D70A
glabel D_80B4222C
 .word 0x3C23D70A
glabel D_80B42230
 .word 0x3F99999A
glabel D_80B42234
 .word 0x3C23D70A
glabel D_80B42238
 .word 0x3F99999A
glabel D_80B4223C
 .word 0x3C23D70A
glabel D_80B42240
 .word 0x3F99999A
glabel D_80B42244
 .word 0xC49B6000
glabel D_80B42248
 .word 0x45E91000
glabel D_80B4224C
 .word 0x3DCCCCCD
glabel D_80B42250
 .word 0x3DCCCCCD
glabel D_80B42254
 .word 0x3DCCCCCD
glabel D_80B42258
 .word 0x458B6000
glabel D_80B4225C
 .word 0x4494C000
glabel jtbl_80B42260
.word L80B40F10
.word L80B40FCC
.word L80B40FCC
.word L80B40FCC
.word L80B40FCC
.word L80B40F20
.word L80B40FCC
.word L80B40FCC
.word L80B40FBC
.word L80B40FCC
.word L80B40FCC
.word L80B40FCC
.word L80B40FCC
.word L80B40F58
.word L80B40F80
.word L80B40F94
.word L80B40FA8
.word L80B40F44
.word L80B40F6C
.word L80B40F34
glabel jtbl_80B422B0
.word L80B41A48
.word L80B41994
.word L80B419A8
.word L80B419BC
.word L80B419D0
.word L80B419E4
.word L80B419F8
.word L80B41A0C
.word L80B41A20
.word L80B41A34
.word 0x00000000, 0x00000000

