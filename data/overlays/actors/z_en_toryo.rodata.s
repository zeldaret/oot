.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel jtbl_80B20C80
.word L80B205B8
.word L80B205B8
.word L80B205B8
.word L80B205B8
.word L80B2042C
.word L80B205B8
.word L80B204AC
glabel jtbl_80B20C9C
.word L80B20570
.word L80B205A0
.word L80B205A0
.word L80B205A0
.word L80B205A0
.word L80B20540
glabel jtbl_80B20CB4
.word L80B20620
.word L80B20620
.word L80B20620
.word L80B20620
.word L80B20620
.word L80B20620
.word L80B2060C
glabel D_80B20CD0
 .word 0x46638C00
glabel D_80B20CD4
 .word 0xC6638C00, 0x00000000, 0x00000000


