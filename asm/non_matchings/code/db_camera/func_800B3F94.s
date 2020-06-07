glabel func_800B3F94
/* B2B134 800B3F94 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B2B138 800B3F98 AFA60038 */  sw    $a2, 0x38($sp)
/* B2B13C 800B3F9C 00A03025 */  move  $a2, $a1
/* B2B140 800B3FA0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B2B144 800B3FA4 AFA40030 */  sw    $a0, 0x30($sp)
/* B2B148 800B3FA8 AFA50034 */  sw    $a1, 0x34($sp)
/* B2B14C 800B3FAC 8FA50030 */  lw    $a1, 0x30($sp)
/* B2B150 800B3FB0 0C01F124 */  jal   OLib_Vec3fDiffToVecSphRot90
/* B2B154 800B3FB4 27A40028 */   addiu $a0, $sp, 0x28
/* B2B158 800B3FB8 8FAF0030 */  lw    $t7, 0x30($sp)
/* B2B15C 800B3FBC 87AE002E */  lh    $t6, 0x2e($sp)
/* B2B160 800B3FC0 27A4001C */  addiu $a0, $sp, 0x1c
/* B2B164 800B3FC4 85F8000E */  lh    $t8, 0xe($t7)
/* B2B168 800B3FC8 27A50028 */  addiu $a1, $sp, 0x28
/* B2B16C 800B3FCC 01D8C823 */  subu  $t9, $t6, $t8
/* B2B170 800B3FD0 0C01F097 */  jal   OLib_VecSphRot90ToVec3f
/* B2B174 800B3FD4 A7B9002E */   sh    $t9, 0x2e($sp)
/* B2B178 800B3FD8 27A4001C */  addiu $a0, $sp, 0x1c
/* B2B17C 800B3FDC 0C02CFBF */  jal   func_800B3EFC
/* B2B180 800B3FE0 8FA50038 */   lw    $a1, 0x38($sp)
/* B2B184 800B3FE4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B2B188 800B3FE8 27BD0030 */  addiu $sp, $sp, 0x30
/* B2B18C 800B3FEC 03E00008 */  jr    $ra
/* B2B190 800B3FF0 00000000 */   nop

