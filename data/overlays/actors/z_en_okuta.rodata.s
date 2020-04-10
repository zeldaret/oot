.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80AC28D0
    .asciz "../z_en_okuta.c"
    .balign 4

glabel D_80AC28E0
    .asciz "../z_en_okuta.c"
    .balign 4

glabel D_80AC28F0
    .asciz "../z_en_okuta.c"
    .balign 4

glabel D_80AC2900
    .float 0.01
    .balign 4

glabel D_80AC2904
    .float 0.01
    .balign 4

glabel D_80AC2908
 .word 0x3E860932
glabel D_80AC290C
    .float 0.01
    .balign 4

glabel D_80AC2910
 .word 0x3E6EE632
glabel D_80AC2914
    .float 0.01
    .balign 4

glabel D_80AC2918
    .float 0.04
    .balign 4

glabel D_80AC291C
    .float 0.8
    .balign 4

glabel D_80AC2920
    .float 0.01
    .balign 4

glabel D_80AC2924
    .float 0.2
    .balign 4

glabel D_80AC2928
    .float 1.9
    .balign 4

glabel D_80AC292C
    .float 0.1
    .balign 4

glabel D_80AC2930
    .float 0.4
    .balign 4

glabel D_80AC2934
    .float 0.075
    .balign 4

glabel D_80AC2938
 .word 0x3FE66666
glabel D_80AC293C
    .float 0.8
    .balign 4

glabel D_80AC2940
    .float 1.3
    .balign 4

glabel D_80AC2944
    .float 0.05
    .balign 4

glabel D_80AC2948
 .word 0x3D086595
glabel D_80AC294C
 .word 0x3EAA7EFA
glabel D_80AC2950
 .word 0x3EB33333
glabel D_80AC2954
    .float 0.8
    .balign 4

glabel D_80AC2958
    .float 0.05
    .balign 4

glabel D_80AC295C
    .float 0.8
    .balign 4

glabel D_80AC2960
    .float 1.3
    .balign 4

glabel D_80AC2964
    .float 0.1
    .balign 4

glabel D_80AC2968
 .word 0x3D886595
glabel D_80AC296C
 .word 0x3E490FDB
glabel D_80AC2970
    .float 0.2
    .balign 4

glabel D_80AC2974
 .word 0x3E490FDB
glabel D_80AC2978
    .float 0.4
    .balign 4

glabel D_80AC297C
 .word 0x3D9D7DBF
glabel D_80AC2980
 .word 0x3EAA7EFA
glabel D_80AC2984
    .float 0.2
    .balign 4

glabel D_80AC2988
 .word 0x38C90FDB, 0x00000000


