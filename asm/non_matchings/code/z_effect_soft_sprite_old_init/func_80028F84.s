glabel func_80028F84
/* AA0124 80028F84 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AA0128 80028F88 87B80042 */  lh    $t8, 0x42($sp)
/* AA012C 80028F8C 87B90046 */  lh    $t9, 0x46($sp)
/* AA0130 80028F90 87A9004A */  lh    $t1, 0x4a($sp)
/* AA0134 80028F94 3C0E8011 */  lui   $t6, %hi(D_801158DC) # $t6, 0x8011
/* AA0138 80028F98 3C0F8011 */  lui   $t7, %hi(D_801158E0) # $t7, 0x8011
/* AA013C 80028F9C AFBF002C */  sw    $ra, 0x2c($sp)
/* AA0140 80028FA0 25EF58E0 */  addiu $t7, %lo(D_801158E0) # addiu $t7, $t7, 0x58e0
/* AA0144 80028FA4 25CE58DC */  addiu $t6, %lo(D_801158DC) # addiu $t6, $t6, 0x58dc
/* AA0148 80028FA8 24080023 */  li    $t0, 35
/* AA014C 80028FAC AFA80020 */  sw    $t0, 0x20($sp)
/* AA0150 80028FB0 AFAE0010 */  sw    $t6, 0x10($sp)
/* AA0154 80028FB4 AFAF0014 */  sw    $t7, 0x14($sp)
/* AA0158 80028FB8 AFB80018 */  sw    $t8, 0x18($sp)
/* AA015C 80028FBC AFB9001C */  sw    $t9, 0x1c($sp)
/* AA0160 80028FC0 0C00A3BD */  jal   func_80028EF4
/* AA0164 80028FC4 AFA90024 */   sw    $t1, 0x24($sp)
/* AA0168 80028FC8 8FBF002C */  lw    $ra, 0x2c($sp)
/* AA016C 80028FCC 27BD0030 */  addiu $sp, $sp, 0x30
/* AA0170 80028FD0 03E00008 */  jr    $ra
/* AA0174 80028FD4 00000000 */   nop   

