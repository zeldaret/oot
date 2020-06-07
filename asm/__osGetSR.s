.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osGetSR
/* 0052B0 800046B0 40026000 */  mfc0  $v0, $12
/* 0052B4 800046B4 03E00008 */  jr    $ra
/* 0052B8 800046B8 00000000 */   nop   
