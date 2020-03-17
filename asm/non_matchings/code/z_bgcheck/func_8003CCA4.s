glabel func_8003CCA4
/* AB3E44 8003CCA4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AB3E48 8003CCA8 AFA60038 */  sw    $a2, 0x38($sp)
/* AB3E4C 8003CCAC AFA7003C */  sw    $a3, 0x3c($sp)
/* AB3E50 8003CCB0 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AB3E54 8003CCB4 44812000 */  mtc1  $at, $f4
/* AB3E58 8003CCB8 8FAF003C */  lw    $t7, 0x3c($sp)
/* AB3E5C 8003CCBC 8FAE0038 */  lw    $t6, 0x38($sp)
/* AB3E60 8003CCC0 AFA50034 */  sw    $a1, 0x34($sp)
/* AB3E64 8003CCC4 00802825 */  move  $a1, $a0
/* AB3E68 8003CCC8 AFBF002C */  sw    $ra, 0x2c($sp)
/* AB3E6C 8003CCCC AFA40030 */  sw    $a0, 0x30($sp)
/* AB3E70 8003CCD0 24180006 */  li    $t8, 6
/* AB3E74 8003CCD4 8FA70034 */  lw    $a3, 0x34($sp)
/* AB3E78 8003CCD8 AFB8001C */  sw    $t8, 0x1c($sp)
/* AB3E7C 8003CCDC 00002025 */  move  $a0, $zero
/* AB3E80 8003CCE0 24060001 */  li    $a2, 1
/* AB3E84 8003CCE4 AFA00018 */  sw    $zero, 0x18($sp)
/* AB3E88 8003CCE8 AFAF0014 */  sw    $t7, 0x14($sp)
/* AB3E8C 8003CCEC E7A40020 */  swc1  $f4, 0x20($sp)
/* AB3E90 8003CCF0 0C00F185 */  jal   func_8003C614
/* AB3E94 8003CCF4 AFAE0010 */   sw    $t6, 0x10($sp)
/* AB3E98 8003CCF8 8FBF002C */  lw    $ra, 0x2c($sp)
/* AB3E9C 8003CCFC 27BD0030 */  addiu $sp, $sp, 0x30
/* AB3EA0 8003CD00 03E00008 */  jr    $ra
/* AB3EA4 8003CD04 00000000 */   nop   

/* AB3EA8 8003CD08 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AB3EAC 8003CD0C AFA60038 */  sw    $a2, 0x38($sp)
/* AB3EB0 8003CD10 AFA7003C */  sw    $a3, 0x3c($sp)
/* AB3EB4 8003CD14 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AB3EB8 8003CD18 44812000 */  mtc1  $at, $f4
/* AB3EBC 8003CD1C 8FB8003C */  lw    $t8, 0x3c($sp)
/* AB3EC0 8003CD20 8FAE0038 */  lw    $t6, 0x38($sp)
/* AB3EC4 8003CD24 8FAF0040 */  lw    $t7, 0x40($sp)
/* AB3EC8 8003CD28 AFA50034 */  sw    $a1, 0x34($sp)
/* AB3ECC 8003CD2C 00802825 */  move  $a1, $a0
/* AB3ED0 8003CD30 AFBF002C */  sw    $ra, 0x2c($sp)
/* AB3ED4 8003CD34 AFA40030 */  sw    $a0, 0x30($sp)
/* AB3ED8 8003CD38 24190002 */  li    $t9, 2
/* AB3EDC 8003CD3C 8FA70034 */  lw    $a3, 0x34($sp)
/* AB3EE0 8003CD40 AFB9001C */  sw    $t9, 0x1c($sp)
/* AB3EE4 8003CD44 00002025 */  move  $a0, $zero
/* AB3EE8 8003CD48 24060002 */  li    $a2, 2
/* AB3EEC 8003CD4C AFB80018 */  sw    $t8, 0x18($sp)
/* AB3EF0 8003CD50 E7A40020 */  swc1  $f4, 0x20($sp)
/* AB3EF4 8003CD54 AFAE0010 */  sw    $t6, 0x10($sp)
/* AB3EF8 8003CD58 0C00F185 */  jal   func_8003C614
/* AB3EFC 8003CD5C AFAF0014 */   sw    $t7, 0x14($sp)
/* AB3F00 8003CD60 8FBF002C */  lw    $ra, 0x2c($sp)
/* AB3F04 8003CD64 27BD0030 */  addiu $sp, $sp, 0x30
/* AB3F08 8003CD68 03E00008 */  jr    $ra
/* AB3F0C 8003CD6C 00000000 */   nop   

/* AB3F10 8003CD70 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AB3F14 8003CD74 AFA60038 */  sw    $a2, 0x38($sp)
/* AB3F18 8003CD78 AFA7003C */  sw    $a3, 0x3c($sp)
/* AB3F1C 8003CD7C 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AB3F20 8003CD80 44812000 */  mtc1  $at, $f4
/* AB3F24 8003CD84 8FAF003C */  lw    $t7, 0x3c($sp)
/* AB3F28 8003CD88 8FAE0038 */  lw    $t6, 0x38($sp)
/* AB3F2C 8003CD8C AFA50034 */  sw    $a1, 0x34($sp)
/* AB3F30 8003CD90 00802825 */  move  $a1, $a0
/* AB3F34 8003CD94 AFBF002C */  sw    $ra, 0x2c($sp)
/* AB3F38 8003CD98 AFA40030 */  sw    $a0, 0x30($sp)
/* AB3F3C 8003CD9C 24180006 */  li    $t8, 6
/* AB3F40 8003CDA0 8FA70034 */  lw    $a3, 0x34($sp)
/* AB3F44 8003CDA4 AFB8001C */  sw    $t8, 0x1c($sp)
/* AB3F48 8003CDA8 00002025 */  move  $a0, $zero
/* AB3F4C 8003CDAC 24060002 */  li    $a2, 2
/* AB3F50 8003CDB0 AFA00018 */  sw    $zero, 0x18($sp)
/* AB3F54 8003CDB4 AFAF0014 */  sw    $t7, 0x14($sp)
/* AB3F58 8003CDB8 E7A40020 */  swc1  $f4, 0x20($sp)
/* AB3F5C 8003CDBC 0C00F185 */  jal   func_8003C614
/* AB3F60 8003CDC0 AFAE0010 */   sw    $t6, 0x10($sp)
/* AB3F64 8003CDC4 8FBF002C */  lw    $ra, 0x2c($sp)
/* AB3F68 8003CDC8 27BD0030 */  addiu $sp, $sp, 0x30
/* AB3F6C 8003CDCC 03E00008 */  jr    $ra
/* AB3F70 8003CDD0 00000000 */   nop   

