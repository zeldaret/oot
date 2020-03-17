.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B625C0
    .asciz "../z_en_zo_eff.c"
    .balign 4

glabel D_80B625D4
    .asciz "../z_en_zo_eff.c"
    .balign 4

glabel D_80B625E8
    .asciz "../z_en_zo_eff.c"
    .balign 4

glabel D_80B625FC
    .asciz "../z_en_zo_eff.c"
    .balign 4

glabel D_80B62610
    .asciz "../z_en_zo_eff.c"
    .balign 4

glabel D_80B62624
    .asciz "../z_en_zo_eff.c"
    .balign 4

glabel D_80B62638
    .asciz "../z_en_zo_eff.c"
    .balign 4

glabel D_80B6264C
    .asciz "../z_en_zo_eff.c"
    .balign 4

glabel D_80B62660
    .asciz "../z_en_zo_eff.c"
    .balign 4

glabel D_80B62674
    .asciz "../z_en_zo.c"
    .balign 4

glabel D_80B62684
    .asciz "../z_en_zo.c"
    .balign 4

glabel D_80B62694
 .word 0x3CA3D70A
glabel D_80B62698
 .word 0x3DF5C28F
glabel D_80B6269C
 .word 0x3F4CCCCD
glabel D_80B626A0
 .word 0x3E4CCCCD
glabel D_80B626A4
 .word 0x3DF5C28F
glabel D_80B626A8
 .word 0x3D75C28F
glabel D_80B626AC
 .word 0x3DF5C28F
glabel D_80B626B0
 .word 0x3D75C28F
glabel D_80B626B4
 .word 0x40C8F5C3
glabel jtbl_80B626B8
.word L80B610A4
.word L80B610E4
.word L80B61144
.word L80B611B4
.word L80B611F4
.word L80B61244
.word L80B61094
.word L80B6109C
.word L80B61074
glabel jtbl_80B626DC
.word L80B612DC
.word L80B612DC
.word L80B612E4
.word L80B612DC
.word L80B6135C
.word L80B613C4
.word L80B612DC
.word L80B612DC
.word L80B612DC
.word L80B612DC
glabel D_80B62704
 .word 0xBF19999A
glabel D_80B62708
 .word 0x3F19999A
glabel D_80B6270C
 .word 0x3E4CCCCD
glabel D_80B62710
 .word 0x40490FDB
glabel D_80B62714
 .word 0x40490FDB
glabel D_80B62718
 .word 0x40490FDB
glabel D_80B6271C
 .word 0x40490FDB


