.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_8087A790
    .asciz "../z_bg_gnd_iceblock.c"
    .balign 4

glabel D_8087A7A8
    .asciz "thisx->world.position.x = %f\n"
    .balign 4

glabel D_8087A7C8
 .word 0x30000000
glabel D_8087A7CC
    .asciz "../z_bg_gnd_iceblock.c"
    .balign 4

glabel D_8087A7E4
 .word 0x452E8000
glabel D_8087A7E8
 .word 0x453D8000
glabel D_8087A7EC
 .word 0x451F8000
glabel jtbl_8087A7F0
.word L80879D7C
.word L80879D7C
.word L80879D8C
.word L80879D8C
.word L80879D8C
.word L80879D7C
.word L80879D8C
.word L80879D8C
.word L80879D84
.word L80879D8C
.word L80879D8C
.word L80879D8C
.word L80879D8C
.word L80879D7C
.word L80879D8C
.word L80879D8C
.word L80879D7C
.word L80879D8C
.word L80879D8C
.word L80879D8C
.word L80879D7C
.word L80879D7C
glabel jtbl_8087A848
.word L80879DE8
.word L80879DE8
.word L8087A0B8
.word L8087A0B8
.word L80879DFC
.word L8087A0B8
.word L8087A0B8
.word L8087A0B8
.word L80879E38
.word L8087A0B8
.word L8087A0B8
.word L80879E4C
.word L8087A0B8
.word L8087A0B8
.word L8087A0B8
.word L80879E60
.word L80879E60
glabel jtbl_8087A88C
.word L80879EB0
.word L80879EB0
.word L8087A0B8
.word L8087A0B8
.word L8087A0B8
.word L80879EC4
.word L8087A0B8
.word L80879EC4
.word L8087A0B8
.word L80879ED8
.word L8087A0B8
.word L8087A0B8
.word L80879EEC
.word L80879EEC
.word L8087A0B8
.word L80879F00
.word L80879F14
glabel jtbl_8087A8D0
.word L80879F7C
.word L80879F90
.word L8087A0B8
.word L80879FA4
.word L8087A0B8
.word L8087A0B8
.word L80879FB8
.word L8087A0B8
.word L80879FCC
.word L80879FE0
glabel jtbl_8087A8F8
.word L8087A034
.word L8087A048
.word L8087A0B8
.word L8087A05C
.word L8087A0B8
.word L8087A05C
.word L8087A0B8
.word L8087A0B8
.word L8087A070
.word L8087A084

