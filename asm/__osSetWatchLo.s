.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel __osSetWatchLo
/* 009F10 80009310 40849000 */  mtc0  $a0, $18
/* 009F14 80009314 00000000 */  nop   
/* 009F18 80009318 03E00008 */  jr    $ra
/* 009F1C 8000931C 00000000 */   nop   
