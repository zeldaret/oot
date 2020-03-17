glabel func_8002A894
/* AA1A34 8002A894 27BDFFB8 */  addiu $sp, $sp, -0x48
/* AA1A38 8002A898 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA1A3C 8002A89C AFA40048 */  sw    $a0, 0x48($sp)
/* AA1A40 8002A8A0 AFA60050 */  sw    $a2, 0x50($sp)
/* AA1A44 8002A8A4 AFA70054 */  sw    $a3, 0x54($sp)
/* AA1A48 8002A8A8 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1A4C 8002A8AC 27A40018 */   addiu $a0, $sp, 0x18
/* AA1A50 8002A8B0 27A40024 */  addiu $a0, $sp, 0x24
/* AA1A54 8002A8B4 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1A58 8002A8B8 8FA50050 */   lw    $a1, 0x50($sp)
/* AA1A5C 8002A8BC 27A40030 */  addiu $a0, $sp, 0x30
/* AA1A60 8002A8C0 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1A64 8002A8C4 8FA50054 */   lw    $a1, 0x54($sp)
/* AA1A68 8002A8C8 87AE005A */  lh    $t6, 0x5a($sp)
/* AA1A6C 8002A8CC 87AF005E */  lh    $t7, 0x5e($sp)
/* AA1A70 8002A8D0 87B80062 */  lh    $t8, 0x62($sp)
/* AA1A74 8002A8D4 8FB90064 */  lw    $t9, 0x64($sp)
/* AA1A78 8002A8D8 8FA40048 */  lw    $a0, 0x48($sp)
/* AA1A7C 8002A8DC 24050022 */  li    $a1, 34
/* AA1A80 8002A8E0 24060064 */  li    $a2, 100
/* AA1A84 8002A8E4 27A70018 */  addiu $a3, $sp, 0x18
/* AA1A88 8002A8E8 A7AE003C */  sh    $t6, 0x3c($sp)
/* AA1A8C 8002A8EC A7AF003E */  sh    $t7, 0x3e($sp)
/* AA1A90 8002A8F0 A7B80040 */  sh    $t8, 0x40($sp)
/* AA1A94 8002A8F4 0C009DE6 */  jal   func_80027798
/* AA1A98 8002A8F8 AFB90044 */   sw    $t9, 0x44($sp)
/* AA1A9C 8002A8FC 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA1AA0 8002A900 27BD0048 */  addiu $sp, $sp, 0x48
/* AA1AA4 8002A904 03E00008 */  jr    $ra
/* AA1AA8 8002A908 00000000 */   nop   

