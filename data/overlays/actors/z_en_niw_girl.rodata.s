.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80AB99F0
    .asciz "[32m☆☆☆☆☆ シツレイしちゃうわね！プンプン ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80AB9A34
    .asciz "[33m☆☆☆☆☆ きゃははははは、まてー ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80AB9A70
 .word 0x0A0A0000
glabel D_80AB9A74
 .word 0x0A0A0000
glabel D_80AB9A78
    .asciz "[32m☆☆☆☆☆ なぜか、セットできむぅあせん ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80AB9AB8
    .asciz "[33m☆☆☆☆☆ んんがくく ☆☆☆☆☆ %d\n[m"
    .balign 4

glabel D_80AB9AE8
 .word 0x0A0A0000
glabel D_80AB9AEC
    .asciz "../z_en_niw_girl.c"
    .balign 4

glabel D_80AB9B00
    .asciz "../z_en_niw_girl.c"
    .balign 4

glabel D_80AB9B14
 .word 0x40490FDB
glabel D_80AB9B18
 .word 0x4622F983
glabel jtbl_80AB9B1C
.word L80AB947C
.word L80AB94A0
.word L80AB9488
.word L80AB9494
.word L80AB94A0
.word L80AB9494
.word L80AB9494
.word L80AB94A0
.word 0x00000000


