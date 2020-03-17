glabel func_80062CD4
/* AD9E74 80062CD4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD9E78 80062CD8 AFBF001C */  sw    $ra, 0x1c($sp)
/* AD9E7C 80062CDC AFA5002C */  sw    $a1, 0x2c($sp)
/* AD9E80 80062CE0 C4A40000 */  lwc1  $f4, ($a1)
/* AD9E84 80062CE4 3C018012 */  lui   $at, %hi(D_8011E02E) # $at, 0x8012
/* AD9E88 80062CE8 3C188012 */  lui   $t8, %hi(D_8011E028) # $t8, 0x8012
/* AD9E8C 80062CEC 4600218D */  trunc.w.s $f6, $f4
/* AD9E90 80062CF0 2718E028 */  addiu $t8, %lo(D_8011E028) # addiu $t8, $t8, -0x1fd8
/* AD9E94 80062CF4 24090001 */  li    $t1, 1
/* AD9E98 80062CF8 24060003 */  li    $a2, 3
/* AD9E9C 80062CFC 440C3000 */  mfc1  $t4, $f6
/* AD9EA0 80062D00 00003825 */  move  $a3, $zero
/* AD9EA4 80062D04 A42CE02A */  sh    $t4, %lo(D_8011E02A)($at)
/* AD9EA8 80062D08 C4A80004 */  lwc1  $f8, 4($a1)
/* AD9EAC 80062D0C 4600428D */  trunc.w.s $f10, $f8
/* AD9EB0 80062D10 440F5000 */  mfc1  $t7, $f10
/* AD9EB4 80062D14 00000000 */  nop   
/* AD9EB8 80062D18 A42FE02C */  sh    $t7, %lo(D_8011E02C)($at)
/* AD9EBC 80062D1C C4B00008 */  lwc1  $f16, 8($a1)
/* AD9EC0 80062D20 AFB80014 */  sw    $t8, 0x14($sp)
/* AD9EC4 80062D24 AFA90010 */  sw    $t1, 0x10($sp)
/* AD9EC8 80062D28 4600848D */  trunc.w.s $f18, $f16
/* AD9ECC 80062D2C 27A50024 */  addiu $a1, $sp, 0x24
/* AD9ED0 80062D30 440E9000 */  mfc1  $t6, $f18
/* AD9ED4 80062D34 00000000 */  nop   
/* AD9ED8 80062D38 A42EE02E */  sh    $t6, %lo(D_8011E02E)($at)
/* AD9EDC 80062D3C 3C018012 */  lui   $at, %hi(D_8011E05A) # $at, 0x8012
/* AD9EE0 80062D40 A42CE056 */  sh    $t4, %lo(D_8011E056)($at)
/* AD9EE4 80062D44 A42FE058 */  sh    $t7, %lo(D_8011E058)($at)
/* AD9EE8 80062D48 0C009B35 */  jal   Effect_Add
/* AD9EEC 80062D4C A42EE05A */   sh    $t6, %lo(D_8011E05A)($at)
/* AD9EF0 80062D50 8FBF001C */  lw    $ra, 0x1c($sp)
/* AD9EF4 80062D54 27BD0028 */  addiu $sp, $sp, 0x28
/* AD9EF8 80062D58 03E00008 */  jr    $ra
/* AD9EFC 80062D5C 00000000 */   nop   

