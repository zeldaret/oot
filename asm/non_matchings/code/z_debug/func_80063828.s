.rdata
glabel D_8013AD50
    .asciz "%s"
    .balign 4

.text
glabel func_80063828
/* ADA9C8 80063828 27BDFFC0 */  addiu $sp, $sp, -0x40
/* ADA9CC 8006382C AFB60038 */  sw    $s6, 0x38($sp)
/* ADA9D0 80063830 3C168012 */  lui   $s6, %hi(D_8011E0B0) # $s6, 0x8012
/* ADA9D4 80063834 26D6E0B0 */  addiu $s6, %lo(D_8011E0B0) # addiu $s6, $s6, -0x1f50
/* ADA9D8 80063838 86CE0000 */  lh    $t6, ($s6)
/* ADA9DC 8006383C AFB3002C */  sw    $s3, 0x2c($sp)
/* ADA9E0 80063840 AFB20028 */  sw    $s2, 0x28($sp)
/* ADA9E4 80063844 00809825 */  move  $s3, $a0
/* ADA9E8 80063848 AFBF003C */  sw    $ra, 0x3c($sp)
/* ADA9EC 8006384C AFB50034 */  sw    $s5, 0x34($sp)
/* ADA9F0 80063850 AFB40030 */  sw    $s4, 0x30($sp)
/* ADA9F4 80063854 AFB10024 */  sw    $s1, 0x24($sp)
/* ADA9F8 80063858 AFB00020 */  sw    $s0, 0x20($sp)
/* ADA9FC 8006385C 19C00021 */  blez  $t6, .L800638E4
/* ADAA00 80063860 00009025 */   move  $s2, $zero
/* ADAA04 80063864 3C108016 */  lui   $s0, %hi(D_8015FA98) # $s0, 0x8016
/* ADAA08 80063868 3C118016 */  lui   $s1, %hi(D_8015FA9B) # $s1, 0x8016
/* ADAA0C 8006386C 3C158014 */  lui   $s5, %hi(D_8013AD50) # $s5, 0x8014
/* ADAA10 80063870 3C148012 */  lui   $s4, %hi(D_8011E0B4) # $s4, 0x8012
/* ADAA14 80063874 2694E0B4 */  addiu $s4, %lo(D_8011E0B4) # addiu $s4, $s4, -0x1f4c
/* ADAA18 80063878 26B5AD50 */  addiu $s5, %lo(D_8013AD50) # addiu $s5, $s5, -0x52b0
/* ADAA1C 8006387C 2631FA9B */  addiu $s1, %lo(D_8015FA9B) # addiu $s1, $s1, -0x565
/* ADAA20 80063880 2610FA98 */  addiu $s0, %lo(D_8015FA98) # addiu $s0, $s0, -0x568
.L80063884:
/* ADAA24 80063884 920F0002 */  lbu   $t7, 2($s0)
/* ADAA28 80063888 02602025 */  move  $a0, $s3
/* ADAA2C 8006388C 000FC080 */  sll   $t8, $t7, 2
/* ADAA30 80063890 02981021 */  addu  $v0, $s4, $t8
/* ADAA34 80063894 90590003 */  lbu   $t9, 3($v0)
/* ADAA38 80063898 90450000 */  lbu   $a1, ($v0)
/* ADAA3C 8006389C 90460001 */  lbu   $a2, 1($v0)
/* ADAA40 800638A0 90470002 */  lbu   $a3, 2($v0)
/* ADAA44 800638A4 0C03ECEB */  jal   GfxPrint_SetColor
/* ADAA48 800638A8 AFB90010 */   sw    $t9, 0x10($sp)
/* ADAA4C 800638AC 02602025 */  move  $a0, $s3
/* ADAA50 800638B0 92050000 */  lbu   $a1, ($s0)
/* ADAA54 800638B4 0C03ED07 */  jal   GfxPrint_SetPos
/* ADAA58 800638B8 92060001 */   lbu   $a2, 1($s0)
/* ADAA5C 800638BC 02602025 */  move  $a0, $s3
/* ADAA60 800638C0 02A02825 */  move  $a1, $s5
/* ADAA64 800638C4 0C03EF2D */  jal   GfxPrint_Printf
/* ADAA68 800638C8 02203025 */   move  $a2, $s1
/* ADAA6C 800638CC 86C80000 */  lh    $t0, ($s6)
/* ADAA70 800638D0 26520001 */  addiu $s2, $s2, 1
/* ADAA74 800638D4 26100018 */  addiu $s0, $s0, 0x18
/* ADAA78 800638D8 0248082A */  slt   $at, $s2, $t0
/* ADAA7C 800638DC 1420FFE9 */  bnez  $at, .L80063884
/* ADAA80 800638E0 26310018 */   addiu $s1, $s1, 0x18
.L800638E4:
/* ADAA84 800638E4 8FBF003C */  lw    $ra, 0x3c($sp)
/* ADAA88 800638E8 8FB00020 */  lw    $s0, 0x20($sp)
/* ADAA8C 800638EC 8FB10024 */  lw    $s1, 0x24($sp)
/* ADAA90 800638F0 8FB20028 */  lw    $s2, 0x28($sp)
/* ADAA94 800638F4 8FB3002C */  lw    $s3, 0x2c($sp)
/* ADAA98 800638F8 8FB40030 */  lw    $s4, 0x30($sp)
/* ADAA9C 800638FC 8FB50034 */  lw    $s5, 0x34($sp)
/* ADAAA0 80063900 8FB60038 */  lw    $s6, 0x38($sp)
/* ADAAA4 80063904 03E00008 */  jr    $ra
/* ADAAA8 80063908 27BD0040 */   addiu $sp, $sp, 0x40

