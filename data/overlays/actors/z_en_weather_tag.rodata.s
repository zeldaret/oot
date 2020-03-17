.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80B31E40
 .word 0x0A0A0000
glabel D_80B31E44
    .asciz "[33m☆☆☆☆☆ （;o;) くらいよー ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80B31E78
 .word 0x0A0A0000
glabel D_80B31E7C
    .asciz "[33m☆☆☆☆☆ くもり (._.) あーあ 憂鬱 ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80B31EB8
 .word 0x0A0A0000
glabel D_80B31EBC
    .asciz "[33m☆☆☆☆☆ ゆきがふるー あなたはこないー (._.) ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80B31F00
 .word 0x0A0A0000
glabel D_80B31F04
    .asciz "[33m☆☆☆☆☆ わわわわー なーがーさーきーはー (^o^) ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80B31F4C
 .word 0x0A0A0000
glabel D_80B31F50
    .asciz "[33m☆☆☆☆☆ くもり (._.) あーあ 憂鬱 ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80B31F8C
 .word 0x0A0A0000
glabel D_80B31F90
    .asciz "[33m☆☆☆☆☆ くもり雨雷 (;O;) うおお 憂鬱 ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80B31FD0
 .word 0x0A0A0000
glabel D_80B31FD4
    .asciz "[33m☆☆☆☆☆ 砂漠が濃くなります ☆☆☆☆☆ \n[m"
    .balign 4

glabel D_80B32008
 .word 0x0A0A0000
glabel D_80B3200C
    .asciz "[33m☆☆☆☆☆ わわわわー なーがーさーきーはー (^o^) ☆☆☆☆☆ \n[m"
    .balign 4

glabel jtbl_80B32054
.word L80B31080
.word L80B310B0
.word L80B310F8
.word L80B31148
.word L80B31198
.word L80B311E8
.word L80B3125C
.word L80B3128C
.word 0x00000000, 0x00000000, 0x00000000


