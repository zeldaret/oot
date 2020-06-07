glabel func_80029CF0
/* AA0E90 80029CF0 27BDFFB8 */  addiu $sp, $sp, -0x48
/* AA0E94 80029CF4 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA0E98 80029CF8 AFA40048 */  sw    $a0, 0x48($sp)
/* AA0E9C 80029CFC AFA60050 */  sw    $a2, 0x50($sp)
/* AA0EA0 80029D00 AFA70054 */  sw    $a3, 0x54($sp)
/* AA0EA4 80029D04 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0EA8 80029D08 27A40018 */   addiu $a0, $sp, 0x18
/* AA0EAC 80029D0C 27A40024 */  addiu $a0, $sp, 0x24
/* AA0EB0 80029D10 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0EB4 80029D14 8FA50050 */   lw    $a1, 0x50($sp)
/* AA0EB8 80029D18 27A40030 */  addiu $a0, $sp, 0x30
/* AA0EBC 80029D1C 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0EC0 80029D20 8FA50054 */   lw    $a1, 0x54($sp)
/* AA0EC4 80029D24 87AE005A */  lh    $t6, 0x5a($sp)
/* AA0EC8 80029D28 93AF005F */  lbu   $t7, 0x5f($sp)
/* AA0ECC 80029D2C A3A00044 */  sb    $zero, 0x44($sp)
/* AA0ED0 80029D30 8FA40048 */  lw    $a0, 0x48($sp)
/* AA0ED4 80029D34 24050016 */  li    $a1, 22
/* AA0ED8 80029D38 24060080 */  li    $a2, 128
/* AA0EDC 80029D3C 27A70018 */  addiu $a3, $sp, 0x18
/* AA0EE0 80029D40 A7AE003C */  sh    $t6, 0x3c($sp)
/* AA0EE4 80029D44 0C009DE6 */  jal   EffectSs_Spawn
/* AA0EE8 80029D48 A3AF003E */   sb    $t7, 0x3e($sp)
/* AA0EEC 80029D4C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0EF0 80029D50 27BD0048 */  addiu $sp, $sp, 0x48
/* AA0EF4 80029D54 03E00008 */  jr    $ra
/* AA0EF8 80029D58 00000000 */   nop   

