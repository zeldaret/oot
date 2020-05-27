.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16
  
glabel osGetCount
/* 007AA0 80006EA0 40024800 */  mfc0  $v0, $9
/* 007AA4 80006EA4 03E00008 */  jr    $ra
/* 007AA8 80006EA8 00000000 */   nop   
