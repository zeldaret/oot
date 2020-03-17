.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel __osGetFpcCsr
/* 008680 80007A80 4442F800 */  cfc1  $v0, $31
/* 008684 80007A84 03E00008 */  jr    $ra
/* 008688 80007A88 00000000 */   nop   
