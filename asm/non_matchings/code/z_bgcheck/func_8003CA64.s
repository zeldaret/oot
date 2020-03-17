glabel func_8003CA64
/* AB3C04 8003CA64 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AB3C08 8003CA68 AFA60038 */  sw    $a2, 0x38($sp)
/* AB3C0C 8003CA6C AFA7003C */  sw    $a3, 0x3c($sp)
/* AB3C10 8003CA70 8FB8003C */  lw    $t8, 0x3c($sp)
/* AB3C14 8003CA74 8FAE0038 */  lw    $t6, 0x38($sp)
/* AB3C18 8003CA78 8FAF0040 */  lw    $t7, 0x40($sp)
/* AB3C1C 8003CA7C C7A40044 */  lwc1  $f4, 0x44($sp)
/* AB3C20 8003CA80 AFA50034 */  sw    $a1, 0x34($sp)
/* AB3C24 8003CA84 00802825 */  move  $a1, $a0
/* AB3C28 8003CA88 AFBF002C */  sw    $ra, 0x2c($sp)
/* AB3C2C 8003CA8C AFA40030 */  sw    $a0, 0x30($sp)
/* AB3C30 8003CA90 2419001C */  li    $t9, 28
/* AB3C34 8003CA94 8FA70034 */  lw    $a3, 0x34($sp)
/* AB3C38 8003CA98 AFB9001C */  sw    $t9, 0x1c($sp)
/* AB3C3C 8003CA9C 00002025 */  move  $a0, $zero
/* AB3C40 8003CAA0 24060002 */  li    $a2, 2
/* AB3C44 8003CAA4 AFB80018 */  sw    $t8, 0x18($sp)
/* AB3C48 8003CAA8 AFAE0010 */  sw    $t6, 0x10($sp)
/* AB3C4C 8003CAAC AFAF0014 */  sw    $t7, 0x14($sp)
/* AB3C50 8003CAB0 0C00F185 */  jal   func_8003C614
/* AB3C54 8003CAB4 E7A40020 */   swc1  $f4, 0x20($sp)
/* AB3C58 8003CAB8 8FBF002C */  lw    $ra, 0x2c($sp)
/* AB3C5C 8003CABC 27BD0030 */  addiu $sp, $sp, 0x30
/* AB3C60 8003CAC0 03E00008 */  jr    $ra
/* AB3C64 8003CAC4 00000000 */   nop   

/* AB3C68 8003CAC8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AB3C6C 8003CACC AFA60038 */  sw    $a2, 0x38($sp)
/* AB3C70 8003CAD0 AFA7003C */  sw    $a3, 0x3c($sp)
/* AB3C74 8003CAD4 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AB3C78 8003CAD8 44812000 */  mtc1  $at, $f4
/* AB3C7C 8003CADC 8FB8003C */  lw    $t8, 0x3c($sp)
/* AB3C80 8003CAE0 8FAE0038 */  lw    $t6, 0x38($sp)
/* AB3C84 8003CAE4 8FAF0040 */  lw    $t7, 0x40($sp)
/* AB3C88 8003CAE8 AFA50034 */  sw    $a1, 0x34($sp)
/* AB3C8C 8003CAEC 00802825 */  move  $a1, $a0
/* AB3C90 8003CAF0 AFBF002C */  sw    $ra, 0x2c($sp)
/* AB3C94 8003CAF4 AFA40030 */  sw    $a0, 0x30($sp)
/* AB3C98 8003CAF8 24190006 */  li    $t9, 6
/* AB3C9C 8003CAFC 8FA70034 */  lw    $a3, 0x34($sp)
/* AB3CA0 8003CB00 AFB9001C */  sw    $t9, 0x1c($sp)
/* AB3CA4 8003CB04 00002025 */  move  $a0, $zero
/* AB3CA8 8003CB08 24060002 */  li    $a2, 2
/* AB3CAC 8003CB0C AFB80018 */  sw    $t8, 0x18($sp)
/* AB3CB0 8003CB10 E7A40020 */  swc1  $f4, 0x20($sp)
/* AB3CB4 8003CB14 AFAE0010 */  sw    $t6, 0x10($sp)
/* AB3CB8 8003CB18 0C00F185 */  jal   func_8003C614
/* AB3CBC 8003CB1C AFAF0014 */   sw    $t7, 0x14($sp)
/* AB3CC0 8003CB20 8FBF002C */  lw    $ra, 0x2c($sp)
/* AB3CC4 8003CB24 27BD0030 */  addiu $sp, $sp, 0x30
/* AB3CC8 8003CB28 03E00008 */  jr    $ra
/* AB3CCC 8003CB2C 00000000 */   nop   

