glabel func_80029DBC
/* AA0F5C 80029DBC 27BDFFC0 */  addiu $sp, $sp, -0x40
/* AA0F60 80029DC0 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA0F64 80029DC4 AFA40040 */  sw    $a0, 0x40($sp)
/* AA0F68 80029DC8 AFA60048 */  sw    $a2, 0x48($sp)
/* AA0F6C 80029DCC AFA7004C */  sw    $a3, 0x4c($sp)
/* AA0F70 80029DD0 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0F74 80029DD4 27A40018 */   addiu $a0, $sp, 0x18
/* AA0F78 80029DD8 27A40024 */  addiu $a0, $sp, 0x24
/* AA0F7C 80029DDC 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0F80 80029DE0 8FA50048 */   lw    $a1, 0x48($sp)
/* AA0F84 80029DE4 27A40030 */  addiu $a0, $sp, 0x30
/* AA0F88 80029DE8 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0F8C 80029DEC 8FA5004C */   lw    $a1, 0x4c($sp)
/* AA0F90 80029DF0 87AE0052 */  lh    $t6, 0x52($sp)
/* AA0F94 80029DF4 93AF0057 */  lbu   $t7, 0x57($sp)
/* AA0F98 80029DF8 8FA40040 */  lw    $a0, 0x40($sp)
/* AA0F9C 80029DFC 24050017 */  li    $a1, 23
/* AA0FA0 80029E00 24060080 */  li    $a2, 128
/* AA0FA4 80029E04 27A70018 */  addiu $a3, $sp, 0x18
/* AA0FA8 80029E08 A7AE003C */  sh    $t6, 0x3c($sp)
/* AA0FAC 80029E0C 0C009DE6 */  jal   func_80027798
/* AA0FB0 80029E10 A3AF003E */   sb    $t7, 0x3e($sp)
/* AA0FB4 80029E14 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0FB8 80029E18 27BD0040 */  addiu $sp, $sp, 0x40
/* AA0FBC 80029E1C 03E00008 */  jr    $ra
/* AA0FC0 80029E20 00000000 */   nop   

