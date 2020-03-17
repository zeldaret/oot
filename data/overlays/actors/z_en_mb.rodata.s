.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80AA9E70
 .word 0x44DAC000
glabel D_80AA9E74
 .word 0x44318000
glabel D_80AA9E78
 .word 0x44DAC000
glabel D_80AA9E7C
 .word 0x3F199999
glabel D_80AA9E80
 .word 0x3F199999
glabel D_80AA9E84
 .word 0x44228000
glabel D_80AA9E88
 .word 0x3D23D70A
glabel D_80AA9E8C
 .word 0x3F333333
glabel D_80AA9E90
 .word 0x3DCCCCCD
glabel D_80AA9E94
 .word 0x458CA000
glabel D_80AA9E98
 .word 0xC5898000
glabel D_80AA9E9C
 .word 0xC5898000
glabel jtbl_80AA9EA0
.word L80AA996C
.word L80AA9944
.word L80AA9990
.word L80AA995C
.word L80AA9990
.word L80AA9990
.word L80AA994C
.word L80AA9990
.word L80AA9964
.word L80AA9990
.word L80AA9990
.word L80AA9954
.word L80AA9990
.word L80AA9990
.word L80AA9974
.word L80AA9990
.word L80AA9984
.word L80AA9990
.word L80AA9990
.word L80AA997C
.word L80AA9990
.word L80AA998C
.word 0x00000000, 0x00000000


