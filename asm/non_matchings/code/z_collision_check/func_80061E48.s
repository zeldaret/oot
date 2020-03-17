glabel func_80061E48
/* AD8FE8 80061E48 3C0E8012 */  lui   $t6, %hi(D_8011DFEC) # $t6, 0x8012
/* AD8FEC 80061E4C 25CEDFEC */  addiu $t6, %lo(D_8011DFEC) # addiu $t6, $t6, -0x2014
/* AD8FF0 80061E50 8DD80000 */  lw    $t8, ($t6)
/* AD8FF4 80061E54 AC980000 */  sw    $t8, ($a0)
/* AD8FF8 80061E58 8DCF0004 */  lw    $t7, 4($t6)
/* AD8FFC 80061E5C AC8F0004 */  sw    $t7, 4($a0)
/* AD9000 80061E60 8DD80008 */  lw    $t8, 8($t6)
/* AD9004 80061E64 AC980008 */  sw    $t8, 8($a0)
/* AD9008 80061E68 8DCF000C */  lw    $t7, 0xc($t6)
/* AD900C 80061E6C AC8F000C */  sw    $t7, 0xc($a0)
/* AD9010 80061E70 8DD80010 */  lw    $t8, 0x10($t6)
/* AD9014 80061E74 AC980010 */  sw    $t8, 0x10($a0)
/* AD9018 80061E78 8DCF0014 */  lw    $t7, 0x14($t6)
/* AD901C 80061E7C AC8F0014 */  sw    $t7, 0x14($a0)
/* AD9020 80061E80 8DD80018 */  lw    $t8, 0x18($t6)
/* AD9024 80061E84 03E00008 */  jr    $ra
/* AD9028 80061E88 AC980018 */   sw    $t8, 0x18($a0)

