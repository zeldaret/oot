glabel func_8005BA30
/* AD2BD0 8005BA30 3C0E8012 */  lui   $t6, %hi(D_8011DE54) # $t6, 0x8012
/* AD2BD4 8005BA34 AFA40000 */  sw    $a0, ($sp)
/* AD2BD8 8005BA38 25CEDE54 */  addiu $t6, %lo(D_8011DE54) # addiu $t6, $t6, -0x21ac
/* AD2BDC 8005BA3C 8DD80000 */  lw    $t8, ($t6)
/* AD2BE0 8005BA40 24020001 */  li    $v0, 1
/* AD2BE4 8005BA44 ACB80000 */  sw    $t8, ($a1)
/* AD2BE8 8005BA48 8DCF0004 */  lw    $t7, 4($t6)
/* AD2BEC 8005BA4C ACAF0004 */  sw    $t7, 4($a1)
/* AD2BF0 8005BA50 8DD80008 */  lw    $t8, 8($t6)
/* AD2BF4 8005BA54 ACB80008 */  sw    $t8, 8($a1)
/* AD2BF8 8005BA58 8DCF000C */  lw    $t7, 0xc($t6)
/* AD2BFC 8005BA5C ACAF000C */  sw    $t7, 0xc($a1)
/* AD2C00 8005BA60 8DD80010 */  lw    $t8, 0x10($t6)
/* AD2C04 8005BA64 ACB80010 */  sw    $t8, 0x10($a1)
/* AD2C08 8005BA68 8DCF0014 */  lw    $t7, 0x14($t6)
/* AD2C0C 8005BA6C 03E00008 */  jr    $ra
/* AD2C10 8005BA70 ACAF0014 */   sw    $t7, 0x14($a1)

