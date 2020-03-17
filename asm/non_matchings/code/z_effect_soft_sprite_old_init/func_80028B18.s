glabel func_80028B18
/* A9FCB8 80028B18 27BDFFD0 */  addiu $sp, $sp, -0x30
/* A9FCBC 80028B1C 3C0E8011 */  lui   $t6, %hi(D_801158D4) # $t6, 0x8011
/* A9FCC0 80028B20 AFBF0024 */  sw    $ra, 0x24($sp)
/* A9FCC4 80028B24 25CE58D4 */  addiu $t6, %lo(D_801158D4) # addiu $t6, $t6, 0x58d4
/* A9FCC8 80028B28 8DD80000 */  lw    $t8, ($t6)
/* A9FCCC 80028B2C 27A2002C */  addiu $v0, $sp, 0x2c
/* A9FCD0 80028B30 3C198011 */  lui   $t9, %hi(D_801158D8) # $t9, 0x8011
/* A9FCD4 80028B34 273958D8 */  addiu $t9, %lo(D_801158D8) # addiu $t9, $t9, 0x58d8
/* A9FCD8 80028B38 AC580000 */  sw    $t8, ($v0)
/* A9FCDC 80028B3C 8F290000 */  lw    $t1, ($t9)
/* A9FCE0 80028B40 27A30028 */  addiu $v1, $sp, 0x28
/* A9FCE4 80028B44 240A03E8 */  li    $t2, 1000
/* A9FCE8 80028B48 AC690000 */  sw    $t1, ($v1)
/* A9FCEC 80028B4C 240B0010 */  li    $t3, 16
/* A9FCF0 80028B50 AFAB001C */  sw    $t3, 0x1c($sp)
/* A9FCF4 80028B54 AFAA0018 */  sw    $t2, 0x18($sp)
/* A9FCF8 80028B58 AFA30014 */  sw    $v1, 0x14($sp)
/* A9FCFC 80028B5C 0C00A2EC */  jal   func_80028BB0
/* A9FD00 80028B60 AFA20010 */   sw    $v0, 0x10($sp)
/* A9FD04 80028B64 8FBF0024 */  lw    $ra, 0x24($sp)
/* A9FD08 80028B68 27BD0030 */  addiu $sp, $sp, 0x30
/* A9FD0C 80028B6C 03E00008 */  jr    $ra
/* A9FD10 80028B70 00000000 */   nop   

