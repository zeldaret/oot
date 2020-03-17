glabel func_80029F44
/* AA10E4 80029F44 27BDFFB8 */  addiu $sp, $sp, -0x48
/* AA10E8 80029F48 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA10EC 80029F4C AFA40048 */  sw    $a0, 0x48($sp)
/* AA10F0 80029F50 AFA60050 */  sw    $a2, 0x50($sp)
/* AA10F4 80029F54 AFA70054 */  sw    $a3, 0x54($sp)
/* AA10F8 80029F58 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA10FC 80029F5C 27A4001C */   addiu $a0, $sp, 0x1c
/* AA1100 80029F60 27A4002C */  addiu $a0, $sp, 0x2c
/* AA1104 80029F64 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1108 80029F68 8FA50054 */   lw    $a1, 0x54($sp)
/* AA110C 80029F6C 27A40038 */  addiu $a0, $sp, 0x38
/* AA1110 80029F70 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1114 80029F74 8FA50058 */   lw    $a1, 0x58($sp)
/* AA1118 80029F78 C7A40050 */  lwc1  $f4, 0x50($sp)
/* AA111C 80029F7C 8FAE005C */  lw    $t6, 0x5c($sp)
/* AA1120 80029F80 8FA40048 */  lw    $a0, 0x48($sp)
/* AA1124 80029F84 2405001A */  li    $a1, 26
/* AA1128 80029F88 24060080 */  li    $a2, 128
/* AA112C 80029F8C 27A7001C */  addiu $a3, $sp, 0x1c
/* AA1130 80029F90 E7A40028 */  swc1  $f4, 0x28($sp)
/* AA1134 80029F94 0C009DE6 */  jal   func_80027798
/* AA1138 80029F98 AFAE0044 */   sw    $t6, 0x44($sp)
/* AA113C 80029F9C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA1140 80029FA0 27BD0048 */  addiu $sp, $sp, 0x48
/* AA1144 80029FA4 03E00008 */  jr    $ra
/* AA1148 80029FA8 00000000 */   nop   

