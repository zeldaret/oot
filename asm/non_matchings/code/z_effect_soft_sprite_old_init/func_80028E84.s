glabel func_80028E84
/* AA0024 80028E84 27BDFFB8 */  addiu $sp, $sp, -0x48
/* AA0028 80028E88 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA002C 80028E8C AFA40048 */  sw    $a0, 0x48($sp)
/* AA0030 80028E90 AFA60050 */  sw    $a2, 0x50($sp)
/* AA0034 80028E94 AFA70054 */  sw    $a3, 0x54($sp)
/* AA0038 80028E98 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA003C 80028E9C 27A4001C */   addiu $a0, $sp, 0x1c
/* AA0040 80028EA0 27A40028 */  addiu $a0, $sp, 0x28
/* AA0044 80028EA4 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0048 80028EA8 8FA50050 */   lw    $a1, 0x50($sp)
/* AA004C 80028EAC 27A40034 */  addiu $a0, $sp, 0x34
/* AA0050 80028EB0 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0054 80028EB4 8FA50054 */   lw    $a1, 0x54($sp)
/* AA0058 80028EB8 87AE005A */  lh    $t6, 0x5a($sp)
/* AA005C 80028EBC 87AF005E */  lh    $t7, 0x5e($sp)
/* AA0060 80028EC0 24180001 */  li    $t8, 1
/* AA0064 80028EC4 A3B80044 */  sb    $t8, 0x44($sp)
/* AA0068 80028EC8 8FA40048 */  lw    $a0, 0x48($sp)
/* AA006C 80028ECC 24050003 */  li    $a1, 3
/* AA0070 80028ED0 2406000A */  li    $a2, 10
/* AA0074 80028ED4 27A7001C */  addiu $a3, $sp, 0x1c
/* AA0078 80028ED8 A7AE0040 */  sh    $t6, 0x40($sp)
/* AA007C 80028EDC 0C009DE6 */  jal   EffectSs_Spawn
/* AA0080 80028EE0 A7AF0042 */   sh    $t7, 0x42($sp)
/* AA0084 80028EE4 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0088 80028EE8 27BD0048 */  addiu $sp, $sp, 0x48
/* AA008C 80028EEC 03E00008 */  jr    $ra
/* AA0090 80028EF0 00000000 */   nop   

