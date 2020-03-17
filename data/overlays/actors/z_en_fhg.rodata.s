.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B65210
 .word 0x46204454, 0x310A0000
glabel D_80B65218
 .word 0x46204454, 0x320A0000
glabel D_80B65220
    .asciz "TIME %d-------------------------------------------------\n"
    .balign 4

glabel D_80B6525C
    .asciz "KABE NO 1 = %d\n"
    .balign 4

glabel D_80B6526C
    .asciz "KABE NO 2 = %d\n"
    .balign 4

glabel D_80B6527C
    .asciz "XP1  = %f\n"
    .balign 4

glabel D_80B65288
    .asciz "ZP1  = %f\n"
    .balign 4

glabel D_80B65294
    .asciz "STANDBY !!\n"
    .balign 4

glabel D_80B652A0
    .asciz "XP2  = %f\n"
    .balign 4

glabel D_80B652AC
    .asciz "ZP2  = %f\n"
    .balign 4

glabel D_80B652B8
    .asciz "arg_data ------------------------------------>%d\n"
    .balign 4

glabel D_80B652EC
 .word 0x4B414245, 0x204F5554, 0x2021210A, 0x00000000
glabel D_80B652FC
 .word 0x53504420, 0x58202566, 0x0A000000
glabel D_80B65308
 .word 0x53504420, 0x5A202566, 0x0A000000
glabel D_80B65314
 .word 0x583D2566, 0x0A000000
glabel D_80B6531C
 .word 0x5A3D2566, 0x0A000000
glabel D_80B65324
    .asciz "REVISE !!\n"
    .balign 4

glabel D_80B65330
    .asciz "KABE IN !!\n"
    .balign 4

glabel D_80B6533C
    .asciz "ac1 = %x `````````````````````````````````````````````````\n"
    .balign 4

glabel D_80B65378
    .asciz "../z_en_fhg.c"
    .balign 4

glabel D_80B65388
    .asciz "../z_en_fhg.c"
    .balign 4

glabel D_80B65398
 .word 0xC54F3000
glabel jtbl_80B6539C
.word L80B62BD0
.word L80B62CA4
.word L80B62E10
.word L80B62EFC
.word L80B630A4
.word L80B6320C
.word L80B632DC
.word L80B63670
.word L80B63988
.word L80B63C0C
.word L80B63D54
.word L80B63D54
.word L80B63D54
.word L80B63D54
.word L80B63D54
.word L80B62C2C
glabel D_80B653DC
 .word 0xC54F3000
glabel D_80B653E0
 .word 0xC53B8000
glabel D_80B653E4
 .word 0xC53BF000
glabel D_80B653E8
 .word 0x40BFAE14
glabel D_80B653EC
 .word 0xC5458000
glabel D_80B653F0
 .word 0xC5449000
glabel D_80B653F4
 .word 0xC53B8000
glabel D_80B653F8
 .word 0xC53BF000
glabel D_80B653FC
 .word 0xC5485000
glabel D_80B65400
 .word 0xC558E000
glabel D_80B65404
 .word 0xC54DA000
glabel D_80B65408
 .word 0xC5534000
glabel D_80B6540C
 .word 0xC5467000
glabel D_80B65410
 .word 0xC5467000
glabel D_80B65414
 .word 0xC548F000
glabel D_80B65418
 .word 0xC5363800
glabel D_80B6541C
 .word 0xC5363800
glabel D_80B65420
 .word 0xC5363800
glabel D_80B65424
 .word 0xC548F000
glabel D_80B65428
 .word 0x3FA66666
glabel D_80B6542C
 .word 0x454FD000
glabel D_80B65430
 .word 0x3C23D70A
glabel D_80B65434
 .word 0x3FA66666
glabel D_80B65438
 .word 0x454FD000
glabel D_80B6543C
 .word 0x3B03126F
glabel D_80B65440
 .word 0x3A83126F
glabel D_80B65444
 .word 0x3FA66666
glabel D_80B65448
 .word 0x454FD000
glabel D_80B6544C
 .word 0x3A83126F
glabel D_80B65450
 .word 0x40BFAE14
glabel D_80B65454
 .word 0x44BB8000, 0x00000000, 0x00000000


