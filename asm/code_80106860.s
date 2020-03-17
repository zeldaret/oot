.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_80106860
/* B7DA00 80106860 27BDFFF8 */  addiu $sp, $sp, -8
/* B7DA04 80106864 AFA40004 */  sw    $a0, 4($sp)
/* B7DA08 80106868 00C03825 */  move  $a3, $a2
/* B7DA0C 8010686C 10E00009 */  beqz  $a3, .L80106894
/* B7DA10 80106870 24C6FFFF */   addiu $a2, $a2, -1
.L80106874:
/* B7DA14 80106874 8FAE0004 */  lw    $t6, 4($sp)
/* B7DA18 80106878 A1C50000 */  sb    $a1, ($t6)
/* B7DA1C 8010687C 8FAF0004 */  lw    $t7, 4($sp)
/* B7DA20 80106880 25F80001 */  addiu $t8, $t7, 1
/* B7DA24 80106884 AFB80004 */  sw    $t8, 4($sp)
/* B7DA28 80106888 00C03825 */  move  $a3, $a2
/* B7DA2C 8010688C 14E0FFF9 */  bnez  $a3, .L80106874
/* B7DA30 80106890 24C6FFFF */   addiu $a2, $a2, -1
.L80106894:
/* B7DA34 80106894 10000003 */  b     .L801068A4
/* B7DA38 80106898 00801025 */   move  $v0, $a0
/* B7DA3C 8010689C 10000001 */  b     .L801068A4
/* B7DA40 801068A0 00000000 */   nop   
.L801068A4:
/* B7DA44 801068A4 03E00008 */  jr    $ra
/* B7DA48 801068A8 27BD0008 */   addiu $sp, $sp, 8
