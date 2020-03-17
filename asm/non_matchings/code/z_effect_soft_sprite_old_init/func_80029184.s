glabel func_80029184
/* AA0324 80029184 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AA0328 80029188 3C0E8011 */  lui   $t6, %hi(D_801158EC) # $t6, 0x8011
/* AA032C 8002918C AFBF0024 */  sw    $ra, 0x24($sp)
/* AA0330 80029190 25CE58EC */  addiu $t6, %lo(D_801158EC) # addiu $t6, $t6, 0x58ec
/* AA0334 80029194 8DD80000 */  lw    $t8, ($t6)
/* AA0338 80029198 27A2002C */  addiu $v0, $sp, 0x2c
/* AA033C 8002919C 3C198011 */  lui   $t9, %hi(D_801158F0) # $t9, 0x8011
/* AA0340 800291A0 273958F0 */  addiu $t9, %lo(D_801158F0) # addiu $t9, $t9, 0x58f0
/* AA0344 800291A4 AC580000 */  sw    $t8, ($v0)
/* AA0348 800291A8 8F290000 */  lw    $t1, ($t9)
/* AA034C 800291AC 27A30028 */  addiu $v1, $sp, 0x28
/* AA0350 800291B0 AC690000 */  sw    $t1, ($v1)
/* AA0354 800291B4 8FAA0040 */  lw    $t2, 0x40($sp)
/* AA0358 800291B8 AFA30018 */  sw    $v1, 0x18($sp)
/* AA035C 800291BC AFA20014 */  sw    $v0, 0x14($sp)
/* AA0360 800291C0 0C00A4B7 */  jal   func_800292DC
/* AA0364 800291C4 AFAA0010 */   sw    $t2, 0x10($sp)
/* AA0368 800291C8 8FBF0024 */  lw    $ra, 0x24($sp)
/* AA036C 800291CC 27BD0030 */  addiu $sp, $sp, 0x30
/* AA0370 800291D0 03E00008 */  jr    $ra
/* AA0374 800291D4 00000000 */   nop   

