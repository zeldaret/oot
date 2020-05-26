.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_80A9A780
    .asciz "[44m  アングルＺ->(%d)\n[m"
    .balign 4

glabel D_80A9A79C
    .asciz "../z_en_ko.c"
    .balign 4

glabel D_80A9A7AC
    .asciz "../z_en_ko.c"
    .balign 4

glabel jtbl_80A9A7BC
 .word L80A97068
.word L80A970B0
.word L80A97110
.word L80A97138
.word L80A97198
.word L80A971F8
.word L80A97258
.word L80A972B8
.word L80A972C0
.word L80A972C8
.word L80A972F8
.word L80A97328
.word L80A97000
glabel jtbl_80A9A7F0
 .word L80A97378
.word L80A973C0
.word L80A973F0
.word L80A97438
.word L80A97468
.word L80A97498
.word L80A974A0
.word L80A974E8
.word L80A97518
.word L80A97560
.word L80A97590
.word L80A975C0
.word L80A97368
glabel jtbl_80A9A824
.word L80A97890
.word L80A97818
.word L80A97818
.word L80A97818
.word L80A978AC
.word L80A97818
.word L80A978C8
.word L80A97818
.word L80A97818
.word L80A978E4
.word L80A97818
.word L80A97818
.word L80A97818
.word L80A97818
.word L80A97900
glabel jtbl_80A9A860
.word L80A97804
.word L80A97818
.word L80A97818
.word L80A97820
.word L80A97818
.word L80A9783C
.word L80A97818
.word L80A97858
.word L80A97818
.word L80A97874
glabel jtbl_80A9A888
.word L80A98284
.word L80A98294
.word L80A982A4
.word L80A982B4
.word L80A982C4
.word L80A982D4
.word L80A982E4
.word L80A982F4
.word L80A98304
.word L80A98314
.word L80A98324
.word L80A98334
.word L80A98344
glabel jtbl_80A9A8BC
.word L80A9838C
.word L80A9839C
.word L80A983AC
.word L80A983BC
.word L80A983CC
.word L80A983DC
.word L80A983EC
.word L80A983FC
.word L80A9840C
.word L80A9841C
.word L80A9842C
.word L80A9843C
.word L80A9844C
glabel jtbl_80A9A8F0
.word L80A98494
.word L80A984A4
.word L80A984B4
.word L80A984C4
.word L80A984D4
.word L80A984E4
.word L80A984F4
.word L80A98504
.word L80A98514
.word L80A98524
.word L80A98534
.word L80A98544
.word L80A98554
glabel jtbl_80A9A924
.word L80A9859C
.word L80A985AC
.word L80A985BC
.word L80A985CC
.word L80A985DC
.word L80A985EC
.word L80A985FC
.word L80A9860C
.word L80A9861C
.word L80A9862C
.word L80A9863C
.word L80A9864C
.word L80A9865C
glabel jtbl_80A9A958
.word L80A986A4
.word L80A986B4
.word L80A986C4
.word L80A986D4
.word L80A986E4
.word L80A986F4
.word L80A98704
.word L80A98714
.word L80A98724
.word L80A98734
.word L80A98744
.word L80A98754
.word L80A98764
glabel jtbl_80A9A98C
 .word L80A989F4
.word L80A98A28
.word L80A98AA4
.word L80A98B04
.word L80A98C0C
.word L80A98C0C
.word L80A98C0C
.word L80A98B5C
glabel jtbl_80A9A9AC
.word L80A98F3C
.word L80A98F4C
.word L80A98F5C
.word L80A98F6C
.word L80A98F7C
glabel D_80A9A9C0
    .float 0.001
    .balign 4

glabel D_80A9A9C4
    .float 3.14159274101
    .balign 4

glabel D_80A9A9C8
    .float 3.14159274101
    .balign 4

glabel D_80A9A9CC
    .float 3.14159274101
    .balign 4

glabel D_80A9A9D0
 .word 0x40490FDB, 0x00000000, 0x00000000, 0x00000000


