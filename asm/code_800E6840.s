.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800E6840
/* B5D9E0 800E6840 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B5D9E4 800E6844 AFBF0014 */  sw    $ra, 0x14($sp)
/* B5D9E8 800E6848 AFA40020 */  sw    $a0, 0x20($sp)
/* B5D9EC 800E684C AFA50024 */  sw    $a1, 0x24($sp)
/* B5D9F0 800E6850 0C0013D0 */  jal   osSetIntMask
/* B5D9F4 800E6854 24040001 */   li    $a0, 1
/* B5D9F8 800E6858 AFA2001C */  sw    $v0, 0x1c($sp)
/* B5D9FC 800E685C 8FA40020 */  lw    $a0, 0x20($sp)
/* B5DA00 800E6860 0C001880 */  jal   osInvalDCache
/* B5DA04 800E6864 8FA50024 */   lw    $a1, 0x24($sp)
/* B5DA08 800E6868 0C0013D0 */  jal   osSetIntMask
/* B5DA0C 800E686C 8FA4001C */   lw    $a0, 0x1c($sp)
/* B5DA10 800E6870 8FBF0014 */  lw    $ra, 0x14($sp)
/* B5DA14 800E6874 27BD0020 */  addiu $sp, $sp, 0x20
/* B5DA18 800E6878 03E00008 */  jr    $ra
/* B5DA1C 800E687C 00000000 */   nop   

glabel func_800E6880
/* B5DA20 800E6880 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B5DA24 800E6884 AFBF0014 */  sw    $ra, 0x14($sp)
/* B5DA28 800E6888 AFA40020 */  sw    $a0, 0x20($sp)
/* B5DA2C 800E688C AFA50024 */  sw    $a1, 0x24($sp)
/* B5DA30 800E6890 0C0013D0 */  jal   osSetIntMask
/* B5DA34 800E6894 24040001 */   li    $a0, 1
/* B5DA38 800E6898 AFA2001C */  sw    $v0, 0x1c($sp)
/* B5DA3C 800E689C 8FA40020 */  lw    $a0, 0x20($sp)
/* B5DA40 800E68A0 0C0011B0 */  jal   osWritebackDCache
/* B5DA44 800E68A4 8FA50024 */   lw    $a1, 0x24($sp)
/* B5DA48 800E68A8 0C0013D0 */  jal   osSetIntMask
/* B5DA4C 800E68AC 8FA4001C */   lw    $a0, 0x1c($sp)
/* B5DA50 800E68B0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B5DA54 800E68B4 27BD0020 */  addiu $sp, $sp, 0x20
/* B5DA58 800E68B8 03E00008 */  jr    $ra
/* B5DA5C 800E68BC 00000000 */   nop   

glabel func_800E68C0
/* B5DA60 800E68C0 3C0E8013 */  lui   $t6, %hi(D_80130500) # $t6, 0x8013
/* B5DA64 800E68C4 91CE0500 */  lbu   $t6, %lo(D_80130500)($t6)
/* B5DA68 800E68C8 00857821 */  addu  $t7, $a0, $a1
/* B5DA6C 800E68CC 00801825 */  move  $v1, $a0
/* B5DA70 800E68D0 11C00002 */  beqz  $t6, .L800E68DC
/* B5DA74 800E68D4 31F81FFF */   andi  $t8, $t7, 0x1fff
/* B5DA78 800E68D8 2483E000 */  addiu $v1, $a0, -0x2000
.L800E68DC:
/* B5DA7C 800E68DC 17000005 */  bnez  $t8, .L800E68F4
/* B5DA80 800E68E0 3C08A450 */   lui   $t0, %hi(D_A450000C) # $t0, 0xa450
/* B5DA84 800E68E4 24190001 */  li    $t9, 1
/* B5DA88 800E68E8 3C018013 */  lui   $at, %hi(D_80130500) # $at, 0x8013
/* B5DA8C 800E68EC 10000003 */  b     .L800E68FC
/* B5DA90 800E68F0 A0390500 */   sb    $t9, %lo(D_80130500)($at)
.L800E68F4:
/* B5DA94 800E68F4 3C018013 */  lui   $at, %hi(D_80130500) # $at, 0x8013
/* B5DA98 800E68F8 A0200500 */  sb    $zero, %lo(D_80130500)($at)
.L800E68FC:
/* B5DA9C 800E68FC 8D02000C */  lw    $v0, %lo(D_A450000C)($t0)
/* B5DAA0 800E6900 3C018000 */  lui   $at, 0x8000
/* B5DAA4 800E6904 00615021 */  addu  $t2, $v1, $at
/* B5DAA8 800E6908 00024800 */  sll   $t1, $v0, 0
/* B5DAAC 800E690C 05210003 */  bgez  $t1, .L800E691C
/* B5DAB0 800E6910 3C0BA450 */   lui   $t3, 0xa450
/* B5DAB4 800E6914 03E00008 */  jr    $ra
/* B5DAB8 800E6918 2402FFFF */   li    $v0, -1

.L800E691C:
/* B5DABC 800E691C AD6A0000 */  sw    $t2, ($t3)
/* B5DAC0 800E6920 3C0CA450 */  lui   $t4, %hi(D_A4500004) # $t4, 0xa450
/* B5DAC4 800E6924 AD850004 */  sw    $a1, %lo(D_A4500004)($t4)
/* B5DAC8 800E6928 00001025 */  move  $v0, $zero
/* B5DACC 800E692C 03E00008 */  jr    $ra
/* B5DAD0 800E6930 00000000 */   nop   
