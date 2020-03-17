glabel func_80029C50
/* AA0DF0 80029C50 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AA0DF4 80029C54 AFA60038 */  sw    $a2, 0x38($sp)
/* AA0DF8 80029C58 00063400 */  sll   $a2, $a2, 0x10
/* AA0DFC 80029C5C 00063403 */  sra   $a2, $a2, 0x10
/* AA0E00 80029C60 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA0E04 80029C64 AFA40030 */  sw    $a0, 0x30($sp)
/* AA0E08 80029C68 AFA50034 */  sw    $a1, 0x34($sp)
/* AA0E0C 80029C6C AFA5001C */  sw    $a1, 0x1c($sp)
/* AA0E10 80029C70 A7A60020 */  sh    $a2, 0x20($sp)
/* AA0E14 80029C74 00E02825 */  move  $a1, $a3
/* AA0E18 80029C78 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA0E1C 80029C7C 27A40024 */   addiu $a0, $sp, 0x24
/* AA0E20 80029C80 8FA40030 */  lw    $a0, 0x30($sp)
/* AA0E24 80029C84 24050015 */  li    $a1, 21
/* AA0E28 80029C88 24060080 */  li    $a2, 128
/* AA0E2C 80029C8C 0C009DE6 */  jal   func_80027798
/* AA0E30 80029C90 27A7001C */   addiu $a3, $sp, 0x1c
/* AA0E34 80029C94 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA0E38 80029C98 27BD0030 */  addiu $sp, $sp, 0x30
/* AA0E3C 80029C9C 03E00008 */  jr    $ra
/* AA0E40 80029CA0 00000000 */   nop   

