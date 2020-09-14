.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_80B017D0
    .asciz "Player_X : %f\n"
    .balign 4

glabel D_80B017E0
    .asciz "Player_Z : %f\n"
    .balign 4

glabel D_80B017F0
    .asciz "World_X  : %f\n"
    .balign 4

glabel D_80B01800
    .asciz "World_Z  : %f\n"
    .balign 4

glabel D_80B01810
    .asciz "Center_X : %f\n"
    .balign 4

glabel D_80B01820
    .asciz "Center_Z : %f\n\n"
    .balign 4

glabel D_80B01830
    .asciz "../z_en_skj.c"
    .balign 4

glabel D_80B01840
    .asciz "../z_en_skj.c"
    .balign 4

glabel D_80B01850
    .asciz "../z_en_skj.c"
    .balign 4

glabel D_80B01860
    .asciz "../z_en_skj.c"
    .balign 4

glabel D_80B01870
    .asciz "../z_en_skj.c"
    .balign 4

glabel jtbl_80B01880
    .word L80AFE378
    .word L80AFE380
    .word L80AFE380
    .word L80AFE378
    .word L80AFE378
    .word L80AFE380
    .word L80AFE380
    .word L80AFE380
    .word L80AFE380
    .word L80AFE378
    .word L80AFE380
    .word L80AFE380
    .word L80AFE380
    .word L80AFE380
    .word L80AFE380
    .word L80AFE380
    .word L80AFE378
    .word L80AFE378
    .word L80AFE378
    .word L80AFE378
    .word L80AFE378
    .word L80AFE378
    .word L80AFE378
    .word L80AFE378
    .word L80AFE378
    .word L80AFE378
    .word L80AFE378
    .word L80AFE378
    .word L80AFE378

glabel D_80B018F4
    .float 3.14159274101

glabel D_80B018F8
    .float 1230.0

glabel D_80B018FC
    .float 3.14159274101

glabel D_80B01900
    .float 3.14159274101

glabel D_80B01904
    .float 1230.0

