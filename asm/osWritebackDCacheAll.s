.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel osWritebackDCacheAll
/* B7D630 80106490 3C088000 */  lui   $t0, %hi(D_80000010) # $t0, 0x8000
/* B7D634 80106494 240A2000 */  li    $t2, 8192
/* B7D638 80106498 010A4821 */  addu  $t1, $t0, $t2
/* B7D63C 8010649C 2529FFF0 */  addiu $t1, $t1, -0x10
.L801064A0:
/* B7D640 801064A0 BD010000 */  cache 1, ($t0)
/* B7D644 801064A4 0109082B */  sltu  $at, $t0, $t1
/* B7D648 801064A8 1420FFFD */  bnez  $at, .L801064A0
/* B7D64C 801064AC 25080010 */   addiu $t0, %lo(D_80000010) # addiu $t0, $t0, 0x10
/* B7D650 801064B0 03E00008 */  jr    $ra
/* B7D654 801064B4 00000000 */   nop   
