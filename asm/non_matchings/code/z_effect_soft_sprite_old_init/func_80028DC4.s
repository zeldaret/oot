glabel func_80028DC4
/* A9FF64 80028DC4 27BDFFC0 */  addiu $sp, $sp, -0x40
/* A9FF68 80028DC8 AFBF0014 */  sw    $ra, 0x14($sp)
/* A9FF6C 80028DCC AFA40040 */  sw    $a0, 0x40($sp)
/* A9FF70 80028DD0 AFA60048 */  sw    $a2, 0x48($sp)
/* A9FF74 80028DD4 AFA7004C */  sw    $a3, 0x4c($sp)
/* A9FF78 80028DD8 0C01DF90 */  jal   Math_Vec3f_Copy
/* A9FF7C 80028DDC 27A4001C */   addiu $a0, $sp, 0x1c
/* A9FF80 80028DE0 27A40028 */  addiu $a0, $sp, 0x28
/* A9FF84 80028DE4 0C01DF90 */  jal   Math_Vec3f_Copy
/* A9FF88 80028DE8 8FA50048 */   lw    $a1, 0x48($sp)
/* A9FF8C 80028DEC 27A40034 */  addiu $a0, $sp, 0x34
/* A9FF90 80028DF0 0C01DF90 */  jal   Math_Vec3f_Copy
/* A9FF94 80028DF4 8FA5004C */   lw    $a1, 0x4c($sp)
/* A9FF98 80028DF8 8FA40040 */  lw    $a0, 0x40($sp)
/* A9FF9C 80028DFC 24050002 */  li    $a1, 2
/* A9FFA0 80028E00 24060080 */  li    $a2, 128
/* A9FFA4 80028E04 0C009DE6 */  jal   func_80027798
/* A9FFA8 80028E08 27A7001C */   addiu $a3, $sp, 0x1c
/* A9FFAC 80028E0C 8FBF0014 */  lw    $ra, 0x14($sp)
/* A9FFB0 80028E10 27BD0040 */  addiu $sp, $sp, 0x40
/* A9FFB4 80028E14 03E00008 */  jr    $ra
/* A9FFB8 80028E18 00000000 */   nop   

