glabel func_80029B30
/* AA0CD0 80029B30 27BDFFC0 */  addiu $sp, $sp, -0x40
/* AA0CD4 80029B34 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA0CD8 80029B38 AFA40040 */  sw    $a0, 0x40($sp)
/* AA0CDC 80029B3C AFA60048 */  sw    $a2, 0x48($sp)
/* AA0CE0 80029B40 AFA7004C */  sw    $a3, 0x4c($sp)
/* AA0CE4 80029B44 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0CE8 80029B48 27A40018 */   addiu $a0, $sp, 0x18
/* AA0CEC 80029B4C 27A40024 */  addiu $a0, $sp, 0x24
/* AA0CF0 80029B50 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0CF4 80029B54 8FA50048 */   lw    $a1, 0x48($sp)
/* AA0CF8 80029B58 27A40030 */  addiu $a0, $sp, 0x30
/* AA0CFC 80029B5C 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0D00 80029B60 8FA5004C */   lw    $a1, 0x4c($sp)
/* AA0D04 80029B64 87AE0052 */  lh    $t6, 0x52($sp)
/* AA0D08 80029B68 8FA40040 */  lw    $a0, 0x40($sp)
/* AA0D0C 80029B6C 24050012 */  li    $a1, 18
/* AA0D10 80029B70 24060080 */  li    $a2, 128
/* AA0D14 80029B74 27A70018 */  addiu $a3, $sp, 0x18
/* AA0D18 80029B78 0C009DE6 */  jal   EffectSs_Spawn
/* AA0D1C 80029B7C A7AE003C */   sh    $t6, 0x3c($sp)
/* AA0D20 80029B80 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0D24 80029B84 27BD0040 */  addiu $sp, $sp, 0x40
/* AA0D28 80029B88 03E00008 */  jr    $ra
/* AA0D2C 80029B8C 00000000 */   nop   

