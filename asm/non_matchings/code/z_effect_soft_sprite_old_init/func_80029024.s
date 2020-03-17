glabel func_80029024
/* AA01C4 80029024 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AA01C8 80029028 3C0E8011 */  lui   $t6, %hi(D_801158E4) # $t6, 0x8011
/* AA01CC 8002902C 3C0F8011 */  lui   $t7, %hi(D_801158E8) # $t7, 0x8011
/* AA01D0 80029030 AFBF0024 */  sw    $ra, 0x24($sp)
/* AA01D4 80029034 25EF58E8 */  addiu $t7, %lo(D_801158E8) # addiu $t7, $t7, 0x58e8
/* AA01D8 80029038 25CE58E4 */  addiu $t6, %lo(D_801158E4) # addiu $t6, $t6, 0x58e4
/* AA01DC 8002903C 2418000A */  li    $t8, 10
/* AA01E0 80029040 AFB80018 */  sw    $t8, 0x18($sp)
/* AA01E4 80029044 AFAE0010 */  sw    $t6, 0x10($sp)
/* AA01E8 80029048 0C00A3F6 */  jal   func_80028FD8
/* AA01EC 8002904C AFAF0014 */   sw    $t7, 0x14($sp)
/* AA01F0 80029050 8FBF0024 */  lw    $ra, 0x24($sp)
/* AA01F4 80029054 27BD0028 */  addiu $sp, $sp, 0x28
/* AA01F8 80029058 03E00008 */  jr    $ra
/* AA01FC 8002905C 00000000 */   nop   

