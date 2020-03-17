.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80AD2890
    .asciz "../z_en_peehat.c"
    .balign 4

glabel D_80AD28A4
    .asciz "../z_en_peehat.c"
    .balign 4

glabel D_80AD28B8
    .asciz "../z_en_peehat.c"
    .balign 4

glabel D_80AD28CC
    .asciz "../z_en_peehat.c"
    .balign 4

glabel D_80AD28E0
    .asciz "../z_en_peehat.c"
    .balign 4

glabel D_80AD28F4
    .asciz "../z_en_peehat.c"
    .balign 4

glabel D_80AD2908
 .word 0x45834000
glabel D_80AD290C
 .word 0x3BC49BA6
glabel D_80AD2910
 .word 0x3B449BA6
glabel D_80AD2914
 .word 0x40C8F5C3
glabel D_80AD2918
 .word 0x477FFF00
glabel D_80AD291C
 .word 0x477FFF00
glabel D_80AD2920
 .word 0x3F866666
glabel D_80AD2924
 .word 0x3F866666
glabel D_80AD2928
 .word 0x40A9999A
glabel D_80AD292C
 .word 0x3A03126F
glabel D_80AD2930
 .word 0x3F866666
glabel D_80AD2934
 .word 0x3F866666
glabel D_80AD2938
 .word 0x3FB33333
glabel D_80AD293C
 .word 0x3E3851EC
glabel D_80AD2940
 .word 0x3D8F5C29
glabel D_80AD2944
 .word 0x3FB33333
glabel D_80AD2948
 .word 0x3E3851EC
glabel D_80AD294C
 .word 0x3D8F5C29
glabel D_80AD2950
 .word 0x3AC49BA6
glabel D_80AD2954
 .word 0x3F866666
glabel D_80AD2958
 .word 0x3F866666
glabel D_80AD295C
 .word 0x3DEB851F
glabel D_80AD2960
 .word 0x3E051EB8
glabel D_80AD2964
 .word 0x3DCCCCCD
glabel D_80AD2968
 .word 0x3DCCCCCD
glabel D_80AD296C
 .word 0x3E051EB8
glabel D_80AD2970
 .word 0x3DEB851F
glabel D_80AD2974
 .word 0x3EB33333
glabel D_80AD2978
 .word 0x404CCCCD
glabel D_80AD297C
 .word 0x3E4CCCCD
glabel D_80AD2980
 .word 0x3E99999A, 0x00000000, 0x00000000, 0x00000000


