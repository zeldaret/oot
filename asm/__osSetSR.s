.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osSetSR
/* 0052A0 800046A0 40846000 */  mtc0  $a0, $12
/* 0052A4 800046A4 00000000 */  nop   
/* 0052A8 800046A8 03E00008 */  jr    $ra
/* 0052AC 800046AC 00000000 */   nop   
