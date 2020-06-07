glabel func_800286CC
/* A9F86C 800286CC 27BDFFC8 */  addiu $sp, $sp, -0x38
/* A9F870 800286D0 AFA70044 */  sw    $a3, 0x44($sp)
/* A9F874 800286D4 8FAE0044 */  lw    $t6, 0x44($sp)
/* A9F878 800286D8 87B9004A */  lh    $t9, 0x4a($sp)
/* A9F87C 800286DC 87A8004E */  lh    $t0, 0x4e($sp)
/* A9F880 800286E0 AFA60040 */  sw    $a2, 0x40($sp)
/* A9F884 800286E4 3C0F8011 */  lui   $t7, %hi(D_801158CC) # $t7, 0x8011
/* A9F888 800286E8 3C188011 */  lui   $t8, %hi(D_801158D0) # $t8, 0x8011
/* A9F88C 800286EC 00A03025 */  move  $a2, $a1
/* A9F890 800286F0 AFBF0034 */  sw    $ra, 0x34($sp)
/* A9F894 800286F4 AFA5003C */  sw    $a1, 0x3c($sp)
/* A9F898 800286F8 271858D0 */  addiu $t8, %lo(D_801158D0) # addiu $t8, $t8, 0x58d0
/* A9F89C 800286FC 25EF58CC */  addiu $t7, %lo(D_801158CC) # addiu $t7, $t7, 0x58cc
/* A9F8A0 80028700 2409000A */  li    $t1, 10
/* A9F8A4 80028704 8FA70040 */  lw    $a3, 0x40($sp)
/* A9F8A8 80028708 AFA90024 */  sw    $t1, 0x24($sp)
/* A9F8AC 8002870C AFAF0014 */  sw    $t7, 0x14($sp)
/* A9F8B0 80028710 AFB80018 */  sw    $t8, 0x18($sp)
/* A9F8B4 80028714 24050005 */  li    $a1, 5
/* A9F8B8 80028718 AFA00028 */  sw    $zero, 0x28($sp)
/* A9F8BC 8002871C AFAE0010 */  sw    $t6, 0x10($sp)
/* A9F8C0 80028720 AFB9001C */  sw    $t9, 0x1c($sp)
/* A9F8C4 80028724 0C00A07A */  jal   func_800281E8
/* A9F8C8 80028728 AFA80020 */   sw    $t0, 0x20($sp)
/* A9F8CC 8002872C 8FBF0034 */  lw    $ra, 0x34($sp)
/* A9F8D0 80028730 27BD0038 */  addiu $sp, $sp, 0x38
/* A9F8D4 80028734 03E00008 */  jr    $ra
/* A9F8D8 80028738 00000000 */   nop   

