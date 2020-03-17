.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_801067D0
/* B7D970 801067D0 46206004 */  sqrt.d $f0, $f12
/* B7D974 801067D4 03E00008 */  jr    $ra
/* B7D978 801067D8 00000000 */   nop   
