glabel func_80029E24
/* AA0FC4 80029E24 27BDFFB8 */  addiu $sp, $sp, -0x48
/* AA0FC8 80029E28 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA0FCC 80029E2C AFA40048 */  sw    $a0, 0x48($sp)
/* AA0FD0 80029E30 AFA60050 */  sw    $a2, 0x50($sp)
/* AA0FD4 80029E34 AFA70054 */  sw    $a3, 0x54($sp)
/* AA0FD8 80029E38 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0FDC 80029E3C 27A4001C */   addiu $a0, $sp, 0x1c
/* AA0FE0 80029E40 27A40028 */  addiu $a0, $sp, 0x28
/* AA0FE4 80029E44 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0FE8 80029E48 8FA50050 */   lw    $a1, 0x50($sp)
/* AA0FEC 80029E4C 27A40034 */  addiu $a0, $sp, 0x34
/* AA0FF0 80029E50 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0FF4 80029E54 8FA50054 */   lw    $a1, 0x54($sp)
/* AA0FF8 80029E58 87AE005A */  lh    $t6, 0x5a($sp)
/* AA0FFC 80029E5C 8FAF005C */  lw    $t7, 0x5c($sp)
/* AA1000 80029E60 8FA40048 */  lw    $a0, 0x48($sp)
/* AA1004 80029E64 24050018 */  li    $a1, 24
/* AA1008 80029E68 24060080 */  li    $a2, 128
/* AA100C 80029E6C 27A7001C */  addiu $a3, $sp, 0x1c
/* AA1010 80029E70 A7AE0040 */  sh    $t6, 0x40($sp)
/* AA1014 80029E74 0C009DE6 */  jal   EffectSs_Spawn
/* AA1018 80029E78 AFAF0044 */   sw    $t7, 0x44($sp)
/* AA101C 80029E7C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA1020 80029E80 27BD0048 */  addiu $sp, $sp, 0x48
/* AA1024 80029E84 03E00008 */  jr    $ra
/* AA1028 80029E88 00000000 */   nop   

