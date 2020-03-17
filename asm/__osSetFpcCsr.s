.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4
 
glabel __osSetFpcCsr
/* 008670 80007A70 4442F800 */  cfc1  $v0, $31
/* 008674 80007A74 44C4F800 */  ctc1  $a0, $31
/* 008678 80007A78 03E00008 */  jr    $ra
/* 00867C 80007A7C 00000000 */   nop   
