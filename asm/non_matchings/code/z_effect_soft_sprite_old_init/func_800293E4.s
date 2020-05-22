glabel func_800293E4
/* AA0584 800293E4 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AA0588 800293E8 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA058C 800293EC AFA40038 */  sw    $a0, 0x38($sp)
/* AA0590 800293F0 AFA60040 */  sw    $a2, 0x40($sp)
/* AA0594 800293F4 AFA70044 */  sw    $a3, 0x44($sp)
/* AA0598 800293F8 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA059C 800293FC 27A4001C */   addiu $a0, $sp, 0x1c
/* AA05A0 80029400 C7A40040 */  lwc1  $f4, 0x40($sp)
/* AA05A4 80029404 C7A60044 */  lwc1  $f6, 0x44($sp)
/* AA05A8 80029408 C7A80048 */  lwc1  $f8, 0x48($sp)
/* AA05AC 8002940C C7AA004C */  lwc1  $f10, 0x4c($sp)
/* AA05B0 80029410 8FA40038 */  lw    $a0, 0x38($sp)
/* AA05B4 80029414 24050007 */  li    $a1, 7
/* AA05B8 80029418 24060080 */  li    $a2, 128
/* AA05BC 8002941C 27A7001C */  addiu $a3, $sp, 0x1c
/* AA05C0 80029420 E7A40028 */  swc1  $f4, 0x28($sp)
/* AA05C4 80029424 E7A6002C */  swc1  $f6, 0x2c($sp)
/* AA05C8 80029428 E7A80030 */  swc1  $f8, 0x30($sp)
/* AA05CC 8002942C 0C009DE6 */  jal   EffectSs_Spawn
/* AA05D0 80029430 E7AA0034 */   swc1  $f10, 0x34($sp)
/* AA05D4 80029434 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA05D8 80029438 27BD0038 */  addiu $sp, $sp, 0x38
/* AA05DC 8002943C 03E00008 */  jr    $ra
/* AA05E0 80029440 00000000 */   nop   

