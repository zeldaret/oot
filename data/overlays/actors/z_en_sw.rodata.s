.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B0F1A0
    .asciz "../z_en_sw.c"
    .balign 4

glabel D_80B0F1B0
    .asciz "../z_en_sw.c"
    .balign 4

glabel D_80B0F1C0
    .asciz "../z_en_sw.c"
    .balign 4

glabel D_80B0F1D0
    .asciz "../z_en_sw.c"
    .balign 4

glabel D_80B0F1E0
    .asciz "../z_en_sw.c"
    .balign 4

glabel D_80B0F1F0
    .asciz "../z_en_sw.c"
    .balign 4

glabel D_80B0F200
 .word 0x38000100
glabel D_80B0F204
 .word 0x3A83126F
glabel D_80B0F208
 .word 0x3CA3D70A
glabel D_80B0F20C
 .word 0x481C4000
glabel D_80B0F210
 .word 0x3DCCCCCD
glabel D_80B0F214
 .word 0xBDCCCCCD
glabel D_80B0F218
 .word 0x38000100
glabel D_80B0F21C
 .word 0x3A83126F
glabel D_80B0F220
 .word 0x3C656041
glabel D_80B0F224
 .word 0x3CA3D70A
glabel D_80B0F228
 .word 0x3C656041
glabel D_80B0F22C
 .word 0x3CA3D70A
glabel D_80B0F230
 .word 0x3DCCCCCD
glabel D_80B0F234
 .word 0xBDCCCCCD
glabel D_80B0F238
 .word 0x4622F983
glabel D_80B0F23C
 .word 0x3DCCCCCD
glabel D_80B0F240
 .word 0x3C23D70A
glabel D_80B0F244
 .word 0x3C23D70A
glabel D_80B0F248
 .word 0x469C4000
glabel jtbl_80B0F24C
.word L80B0ECAC
.word L80B0EC9C
.word L80B0ECB8
.word L80B0ECB8
.word L80B0EC2C
.word L80B0ECB8
.word L80B0ECB8
.word L80B0EC4C
.word L80B0ECB8
.word L80B0ECB8
.word L80B0EC3C
.word L80B0ECB8
.word L80B0ECB8
.word L80B0EC7C
.word L80B0ECB8
.word L80B0ECB8
.word L80B0EC6C
.word L80B0ECB8
.word L80B0ECB8
.word L80B0EC1C
.word L80B0ECB8
.word L80B0ECB8
.word L80B0EC5C
.word L80B0ECB8
.word L80B0ECB8
.word L80B0EC8C
glabel D_80B0F2B4
 .word 0x4633B000
glabel D_80B0F2B8
 .word 0x4633B000
glabel D_80B0F2BC
 .word 0xBFB2B8C2


