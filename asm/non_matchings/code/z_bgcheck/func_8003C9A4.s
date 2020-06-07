glabel func_8003C9A4
/* AB3B44 8003C9A4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AB3B48 8003C9A8 AFA60038 */  sw    $a2, 0x38($sp)
/* AB3B4C 8003C9AC AFA7003C */  sw    $a3, 0x3c($sp)
/* AB3B50 8003C9B0 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AB3B54 8003C9B4 44812000 */  mtc1  $at, $f4
/* AB3B58 8003C9B8 8FB8003C */  lw    $t8, 0x3c($sp)
/* AB3B5C 8003C9BC 8FAE0038 */  lw    $t6, 0x38($sp)
/* AB3B60 8003C9C0 8FAF0040 */  lw    $t7, 0x40($sp)
/* AB3B64 8003C9C4 AFA50034 */  sw    $a1, 0x34($sp)
/* AB3B68 8003C9C8 00802825 */  move  $a1, $a0
/* AB3B6C 8003C9CC AFBF002C */  sw    $ra, 0x2c($sp)
/* AB3B70 8003C9D0 AFA40030 */  sw    $a0, 0x30($sp)
/* AB3B74 8003C9D4 2419001C */  li    $t9, 28
/* AB3B78 8003C9D8 8FA70034 */  lw    $a3, 0x34($sp)
/* AB3B7C 8003C9DC AFB9001C */  sw    $t9, 0x1c($sp)
/* AB3B80 8003C9E0 00002025 */  move  $a0, $zero
/* AB3B84 8003C9E4 24060002 */  li    $a2, 2
/* AB3B88 8003C9E8 AFB80018 */  sw    $t8, 0x18($sp)
/* AB3B8C 8003C9EC E7A40020 */  swc1  $f4, 0x20($sp)
/* AB3B90 8003C9F0 AFAE0010 */  sw    $t6, 0x10($sp)
/* AB3B94 8003C9F4 0C00F185 */  jal   func_8003C614
/* AB3B98 8003C9F8 AFAF0014 */   sw    $t7, 0x14($sp)
/* AB3B9C 8003C9FC 8FBF002C */  lw    $ra, 0x2c($sp)
/* AB3BA0 8003CA00 27BD0030 */  addiu $sp, $sp, 0x30
/* AB3BA4 8003CA04 03E00008 */  jr    $ra
/* AB3BA8 8003CA08 00000000 */   nop   

