glabel func_80029B90
/* AA0D30 80029B90 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AA0D34 80029B94 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA0D38 80029B98 AFA40038 */  sw    $a0, 0x38($sp)
/* AA0D3C 80029B9C AFA60040 */  sw    $a2, 0x40($sp)
/* AA0D40 80029BA0 AFA70044 */  sw    $a3, 0x44($sp)
/* AA0D44 80029BA4 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0D48 80029BA8 27A4001C */   addiu $a0, $sp, 0x1c
/* AA0D4C 80029BAC 27A40028 */  addiu $a0, $sp, 0x28
/* AA0D50 80029BB0 0C01E218 */  jal   Color_RGBA8_Copy
/* AA0D54 80029BB4 8FA50040 */   lw    $a1, 0x40($sp)
/* AA0D58 80029BB8 27A4002C */  addiu $a0, $sp, 0x2c
/* AA0D5C 80029BBC 0C01E218 */  jal   Color_RGBA8_Copy
/* AA0D60 80029BC0 8FA50044 */   lw    $a1, 0x44($sp)
/* AA0D64 80029BC4 87AE004A */  lh    $t6, 0x4a($sp)
/* AA0D68 80029BC8 87AF004E */  lh    $t7, 0x4e($sp)
/* AA0D6C 80029BCC 87B80052 */  lh    $t8, 0x52($sp)
/* AA0D70 80029BD0 8FA40038 */  lw    $a0, 0x38($sp)
/* AA0D74 80029BD4 24050013 */  li    $a1, 19
/* AA0D78 80029BD8 24060080 */  li    $a2, 128
/* AA0D7C 80029BDC 27A7001C */  addiu $a3, $sp, 0x1c
/* AA0D80 80029BE0 A7AE0030 */  sh    $t6, 0x30($sp)
/* AA0D84 80029BE4 A7AF0032 */  sh    $t7, 0x32($sp)
/* AA0D88 80029BE8 0C009DE6 */  jal   EffectSs_Spawn
/* AA0D8C 80029BEC A7B80034 */   sh    $t8, 0x34($sp)
/* AA0D90 80029BF0 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0D94 80029BF4 27BD0038 */  addiu $sp, $sp, 0x38
/* AA0D98 80029BF8 03E00008 */  jr    $ra
/* AA0D9C 80029BFC 00000000 */   nop   

