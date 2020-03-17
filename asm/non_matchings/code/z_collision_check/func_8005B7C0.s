glabel func_8005B7C0
/* AD2960 8005B7C0 3C0E8012 */  lui   $t6, %hi(D_8011DE18) # $t6, 0x8012
/* AD2964 8005B7C4 AFA40000 */  sw    $a0, ($sp)
/* AD2968 8005B7C8 25CEDE18 */  addiu $t6, %lo(D_8011DE18) # addiu $t6, $t6, -0x21e8
/* AD296C 8005B7CC 8DD80000 */  lw    $t8, ($t6)
/* AD2970 8005B7D0 24020001 */  li    $v0, 1
/* AD2974 8005B7D4 ACB80000 */  sw    $t8, ($a1)
/* AD2978 8005B7D8 8DCF0004 */  lw    $t7, 4($t6)
/* AD297C 8005B7DC 03E00008 */  jr    $ra
/* AD2980 8005B7E0 ACAF0004 */   sw    $t7, 4($a1)

