.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel __osGetCause
/* 008790 80007B90 40026800 */  mfc0  $v0, $13
/* 008794 80007B94 03E00008 */  jr    $ra
/* 008798 80007B98 00000000 */   nop   
