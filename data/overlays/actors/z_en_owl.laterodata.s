.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel jtbl_80ACD7FC
.word L80ACA110
.word L80ACA12C
.word L80ACA13C
.word L80ACA160
.word L80ACA1A0
.word L80ACA1E0
.word L80ACA1F0
.word L80ACA244
.word L80ACA264
.word L80ACA274
.word L80ACA284
.word L80ACA294
.word L80ACA2DC
glabel jtbl_80ACD830
.word L80ACBAFC
.word L80ACBB38
.word L80ACBB80
.word L80ACBBC8
.word L80ACBBE4
glabel D_80ACD844
 .word 0x45BB8000
glabel D_80ACD848
 .word 0x3ECCCCCD
glabel D_80ACD84C
 .word 0x3E4CCCCD
glabel D_80ACD850
 .word 0x3E4CCCCD
glabel D_80ACD854
 .word 0x3E99999A
glabel D_80ACD858
 .word 0x459C4000
glabel D_80ACD85C
 .word 0x459C4000
glabel D_80ACD860
 .word 0x459C4000, 0x00000000, 0x00000000, 0x00000000
