glabel func_8003C940
/* AB3AE0 8003C940 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AB3AE4 8003C944 AFA60038 */  sw    $a2, 0x38($sp)
/* AB3AE8 8003C948 AFA7003C */  sw    $a3, 0x3c($sp)
/* AB3AEC 8003C94C 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AB3AF0 8003C950 44812000 */  mtc1  $at, $f4
/* AB3AF4 8003C954 8FAF003C */  lw    $t7, 0x3c($sp)
/* AB3AF8 8003C958 8FAE0038 */  lw    $t6, 0x38($sp)
/* AB3AFC 8003C95C AFA50034 */  sw    $a1, 0x34($sp)
/* AB3B00 8003C960 00802825 */  move  $a1, $a0
/* AB3B04 8003C964 AFBF002C */  sw    $ra, 0x2c($sp)
/* AB3B08 8003C968 AFA40030 */  sw    $a0, 0x30($sp)
/* AB3B0C 8003C96C 2418001C */  li    $t8, 28
/* AB3B10 8003C970 8FA70034 */  lw    $a3, 0x34($sp)
/* AB3B14 8003C974 AFB8001C */  sw    $t8, 0x1c($sp)
/* AB3B18 8003C978 00002025 */  move  $a0, $zero
/* AB3B1C 8003C97C 24060002 */  li    $a2, 2
/* AB3B20 8003C980 AFA00018 */  sw    $zero, 0x18($sp)
/* AB3B24 8003C984 AFAF0014 */  sw    $t7, 0x14($sp)
/* AB3B28 8003C988 E7A40020 */  swc1  $f4, 0x20($sp)
/* AB3B2C 8003C98C 0C00F185 */  jal   func_8003C614
/* AB3B30 8003C990 AFAE0010 */   sw    $t6, 0x10($sp)
/* AB3B34 8003C994 8FBF002C */  lw    $ra, 0x2c($sp)
/* AB3B38 8003C998 27BD0030 */  addiu $sp, $sp, 0x30
/* AB3B3C 8003C99C 03E00008 */  jr    $ra
/* AB3B40 8003C9A0 00000000 */   nop   

