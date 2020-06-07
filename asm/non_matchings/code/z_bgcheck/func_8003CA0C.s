glabel func_8003CA0C
/* AB3BAC 8003CA0C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AB3BB0 8003CA10 AFA7003C */  sw    $a3, 0x3c($sp)
/* AB3BB4 8003CA14 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AB3BB8 8003CA18 44812000 */  mtc1  $at, $f4
/* AB3BBC 8003CA1C 8FAE003C */  lw    $t6, 0x3c($sp)
/* AB3BC0 8003CA20 8FAF0044 */  lw    $t7, 0x44($sp)
/* AB3BC4 8003CA24 8FB80040 */  lw    $t8, 0x40($sp)
/* AB3BC8 8003CA28 00C03825 */  move  $a3, $a2
/* AB3BCC 8003CA2C AFBF002C */  sw    $ra, 0x2c($sp)
/* AB3BD0 8003CA30 AFA60038 */  sw    $a2, 0x38($sp)
/* AB3BD4 8003CA34 2419001C */  li    $t9, 28
/* AB3BD8 8003CA38 AFB9001C */  sw    $t9, 0x1c($sp)
/* AB3BDC 8003CA3C 24060002 */  li    $a2, 2
/* AB3BE0 8003CA40 AFAE0010 */  sw    $t6, 0x10($sp)
/* AB3BE4 8003CA44 E7A40020 */  swc1  $f4, 0x20($sp)
/* AB3BE8 8003CA48 AFAF0014 */  sw    $t7, 0x14($sp)
/* AB3BEC 8003CA4C 0C00F185 */  jal   func_8003C614
/* AB3BF0 8003CA50 AFB80018 */   sw    $t8, 0x18($sp)
/* AB3BF4 8003CA54 8FBF002C */  lw    $ra, 0x2c($sp)
/* AB3BF8 8003CA58 27BD0030 */  addiu $sp, $sp, 0x30
/* AB3BFC 8003CA5C 03E00008 */  jr    $ra
/* AB3C00 8003CA60 00000000 */   nop   

