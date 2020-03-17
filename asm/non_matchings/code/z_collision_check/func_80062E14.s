glabel func_80062E14
/* AD9FB4 80062E14 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD9FB8 80062E18 AFBF001C */  sw    $ra, 0x1c($sp)
/* AD9FBC 80062E1C AFA5002C */  sw    $a1, 0x2c($sp)
/* AD9FC0 80062E20 AFA60030 */  sw    $a2, 0x30($sp)
/* AD9FC4 80062E24 C4A40000 */  lwc1  $f4, ($a1)
/* AD9FC8 80062E28 3C018012 */  lui   $at, %hi(D_8011E06E) # $at, 0x8012
/* AD9FCC 80062E2C 3C188012 */  lui   $t8, %hi(D_8011E068) # $t8, 0x8012
/* AD9FD0 80062E30 4600218D */  trunc.w.s $f6, $f4
/* AD9FD4 80062E34 2718E068 */  addiu $t8, %lo(D_8011E068) # addiu $t8, $t8, -0x1f98
/* AD9FD8 80062E38 24090001 */  li    $t1, 1
/* AD9FDC 80062E3C 24060003 */  li    $a2, 3
/* AD9FE0 80062E40 440C3000 */  mfc1  $t4, $f6
/* AD9FE4 80062E44 00003825 */  move  $a3, $zero
/* AD9FE8 80062E48 A42CE06A */  sh    $t4, %lo(D_8011E06A)($at)
/* AD9FEC 80062E4C C4A80004 */  lwc1  $f8, 4($a1)
/* AD9FF0 80062E50 4600428D */  trunc.w.s $f10, $f8
/* AD9FF4 80062E54 440F5000 */  mfc1  $t7, $f10
/* AD9FF8 80062E58 00000000 */  nop   
/* AD9FFC 80062E5C A42FE06C */  sh    $t7, %lo(D_8011E06C)($at)
/* ADA000 80062E60 C4B00008 */  lwc1  $f16, 8($a1)
/* ADA004 80062E64 AFB80014 */  sw    $t8, 0x14($sp)
/* ADA008 80062E68 AFA90010 */  sw    $t1, 0x10($sp)
/* ADA00C 80062E6C 4600848D */  trunc.w.s $f18, $f16
/* ADA010 80062E70 27A50024 */  addiu $a1, $sp, 0x24
/* ADA014 80062E74 440E9000 */  mfc1  $t6, $f18
/* ADA018 80062E78 00000000 */  nop   
/* ADA01C 80062E7C A42EE06E */  sh    $t6, %lo(D_8011E06E)($at)
/* ADA020 80062E80 3C018012 */  lui   $at, %hi(D_8011E09A) # $at, 0x8012
/* ADA024 80062E84 A42CE096 */  sh    $t4, %lo(D_8011E096)($at)
/* ADA028 80062E88 A42FE098 */  sh    $t7, %lo(D_8011E098)($at)
/* ADA02C 80062E8C 0C009B35 */  jal   Effect_Add
/* ADA030 80062E90 A42EE09A */   sh    $t6, %lo(D_8011E09A)($at)
/* ADA034 80062E94 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* ADA038 80062E98 3C0B8013 */  lui   $t3, %hi(D_801333E8) # $t3, 0x8013
/* ADA03C 80062E9C 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* ADA040 80062EA0 256B33E8 */  addiu $t3, %lo(D_801333E8) # addiu $t3, $t3, 0x33e8
/* ADA044 80062EA4 AFAB0014 */  sw    $t3, 0x14($sp)
/* ADA048 80062EA8 AFA70010 */  sw    $a3, 0x10($sp)
/* ADA04C 80062EAC 24041837 */  li    $a0, 6199
/* ADA050 80062EB0 8FA50030 */  lw    $a1, 0x30($sp)
/* ADA054 80062EB4 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* ADA058 80062EB8 24060004 */   li    $a2, 4
/* ADA05C 80062EBC 8FBF001C */  lw    $ra, 0x1c($sp)
/* ADA060 80062EC0 27BD0028 */  addiu $sp, $sp, 0x28
/* ADA064 80062EC4 03E00008 */  jr    $ra
/* ADA068 80062EC8 00000000 */   nop   

