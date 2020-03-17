.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel absf 
/* B7D980 801067E0 46006005 */  abs.s $f0, $f12
/* B7D984 801067E4 03E00008 */  jr    $ra
/* B7D988 801067E8 00000000 */   nop   
