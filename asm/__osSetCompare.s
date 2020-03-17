.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel __osSetCompare
/* 007B00 80006F00 40845800 */  mtc0  $a0, $11
/* 007B04 80006F04 03E00008 */  jr    $ra
/* 007B08 80006F08 00000000 */   nop   
