glabel func_800CAFA0
/* B42140 800CAFA0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B42144 800CAFA4 AFA40028 */  sw    $a0, 0x28($sp)
/* B42148 800CAFA8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B4214C 800CAFAC AFA5002C */  sw    $a1, 0x2c($sp)
/* B42150 800CAFB0 AFA60030 */  sw    $a2, 0x30($sp)
/* B42154 800CAFB4 00A02025 */  move  $a0, $a1
/* B42158 800CAFB8 AFA70034 */  sw    $a3, 0x34($sp)
/* B4215C 800CAFBC 8FA50028 */  lw    $a1, 0x28($sp)
/* B42160 800CAFC0 0C01DFB4 */  jal   Math_Vec3f_Diff
/* B42164 800CAFC4 27A6001C */   addiu $a2, $sp, 0x1c
/* B42168 800CAFC8 8FA40028 */  lw    $a0, 0x28($sp)
/* B4216C 800CAFCC 27A5001C */  addiu $a1, $sp, 0x1c
/* B42170 800CAFD0 8FA60030 */  lw    $a2, 0x30($sp)
/* B42174 800CAFD4 0C032BD7 */  jal   func_800CAF5C
/* B42178 800CAFD8 8FA70034 */   lw    $a3, 0x34($sp)
/* B4217C 800CAFDC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B42180 800CAFE0 27BD0028 */  addiu $sp, $sp, 0x28
/* B42184 800CAFE4 03E00008 */  jr    $ra
/* B42188 800CAFE8 00000000 */   nop   

