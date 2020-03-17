glabel func_80028E1C
/* A9FFBC 80028E1C 27BDFFB8 */  addiu $sp, $sp, -0x48
/* A9FFC0 80028E20 AFBF0014 */  sw    $ra, 0x14($sp)
/* A9FFC4 80028E24 AFA40048 */  sw    $a0, 0x48($sp)
/* A9FFC8 80028E28 AFA60050 */  sw    $a2, 0x50($sp)
/* A9FFCC 80028E2C AFA70054 */  sw    $a3, 0x54($sp)
/* A9FFD0 80028E30 0C01DF90 */  jal   Math_Vec3f_Copy
/* A9FFD4 80028E34 27A4001C */   addiu $a0, $sp, 0x1c
/* A9FFD8 80028E38 27A40028 */  addiu $a0, $sp, 0x28
/* A9FFDC 80028E3C 0C01DF90 */  jal   Math_Vec3f_Copy
/* A9FFE0 80028E40 8FA50050 */   lw    $a1, 0x50($sp)
/* A9FFE4 80028E44 27A40034 */  addiu $a0, $sp, 0x34
/* A9FFE8 80028E48 0C01DF90 */  jal   Math_Vec3f_Copy
/* A9FFEC 80028E4C 8FA50054 */   lw    $a1, 0x54($sp)
/* A9FFF0 80028E50 240E0064 */  li    $t6, 100
/* A9FFF4 80028E54 A7AE0040 */  sh    $t6, 0x40($sp)
/* A9FFF8 80028E58 A7A00042 */  sh    $zero, 0x42($sp)
/* A9FFFC 80028E5C A3A00044 */  sb    $zero, 0x44($sp)
/* AA0000 80028E60 8FA40048 */  lw    $a0, 0x48($sp)
/* AA0004 80028E64 24050003 */  li    $a1, 3
/* AA0008 80028E68 2406000A */  li    $a2, 10
/* AA000C 80028E6C 0C009DE6 */  jal   func_80027798
/* AA0010 80028E70 27A7001C */   addiu $a3, $sp, 0x1c
/* AA0014 80028E74 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0018 80028E78 27BD0048 */  addiu $sp, $sp, 0x48
/* AA001C 80028E7C 03E00008 */  jr    $ra
/* AA0020 80028E80 00000000 */   nop   

