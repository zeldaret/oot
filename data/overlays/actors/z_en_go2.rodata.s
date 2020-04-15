.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80A48590
    .asciz "../z_en_go2_eff.c"
    .balign 4

glabel D_80A485A4
    .asciz "../z_en_go2_eff.c"
    .balign 4

glabel D_80A485B8
    .asciz "../z_en_go2_eff.c"
    .balign 4

glabel D_80A485CC
    .asciz "../z_en_go2.c"
    .balign 4

glabel D_80A485DC
    .asciz "../z_en_go2.c"
    .balign 4

glabel D_80A485EC
    .asciz "../z_en_go2.c"
    .balign 4

glabel D_80A485FC
    .asciz "../z_en_go2.c"
    .balign 4

glabel D_80A4860C
    .asciz "../z_en_go2.c"
    .balign 4

glabel D_80A4861C
    .asciz "../z_en_go2.c"
    .balign 4

glabel D_80A4862C
    .asciz "../z_en_go2.c"
    .balign 4

glabel D_80A4863C
    .asciz "../z_en_go2.c"
    .balign 4

glabel D_80A4864C
    .float 0.2
    .balign 4

glabel D_80A48650
    .float 0.4
    .balign 4

glabel jtbl_80A48654
.word L80A43550
.word L80A43530
.word L80A43518
.word L80A43528
.word L80A43520
.word L80A43558
.word L80A43558
.word L80A43540
.word L80A43558
.word L80A43538
.word L80A43548
glabel jtbl_80A48680
.word L80A44590
.word L80A445A0
.word L80A445B0
.word L80A445C0
.word L80A445D0
.word L80A445E0
.word L80A445F0
.word L80A44600
.word L80A44610
.word L80A44620
.word L80A44630
.word L80A44640
.word L80A44650
.word L80A44660
glabel jtbl_80A486B8
.word L80A446A8
.word L80A446B8
.word L80A446C8
.word L80A446D8
.word L80A446E8
.word L80A446F8
.word L80A44708
.word L80A44718
.word L80A44728
.word L80A44738
.word L80A44748
.word L80A44758
.word L80A44768
.word L80A44778
glabel jtbl_80A486F0
.word L80A45500
.word L80A4555C
.word L80A4551C
.word L80A4555C
.word L80A4555C
.word L80A4555C
.word L80A45500
.word L80A45500
.word L80A4555C
.word L80A4555C
.word L80A45500
.word L80A4555C
.word L80A45500
glabel D_80A48724
 .word 0x40666667
glabel D_80A48728
 .word 0x40666667
glabel jtbl_80A4872C
.word L80A46594
.word L80A46594
.word L80A46594
.word L80A46594
.word L80A46594
.word L80A46594
.word L80A46594
.word L80A46594
.word L80A46594
.word L80A46594
.word L80A46594
glabel jtbl_80A48758
.word L80A46810
.word L80A46704
.word L80A4689C
.word L80A46860
.word L80A468FC
.word L80A46810
.word L80A46940
.word L80A46678
.word L80A46678
.word L80A46678
.word L80A46678
.word L80A46678
.word L80A46940
.word L80A466BC
glabel D_80A48790
    .float 0.6
    .balign 4

glabel D_80A48794
    .float 0.6
    .balign 4

glabel D_80A48798
    .float 0.6
    .balign 4

glabel D_80A4879C
    .float 0.4
    .balign 4

glabel D_80A487A0
    .float 0.6
    .balign 4

glabel D_80A487A4
    .float 0.4
    .balign 4

glabel D_80A487A8
    .float 0.6
    .balign 4

glabel jtbl_80A487AC
.word L80A475D4
.word L80A4788C
.word L80A47728
.word L80A477EC
.word L80A47860
glabel D_80A487C0
    .float 0.6
    .balign 4

glabel D_80A487C4
    .float 3.14159274101
    .balign 4

glabel D_80A487C8
    .float 3.14159274101
    .balign 4

glabel D_80A487CC
    .float 3.14159274101
    .balign 4

glabel D_80A487D0
 .word 0x40490FDB, 0x00000000, 0x00000000, 0x00000000


