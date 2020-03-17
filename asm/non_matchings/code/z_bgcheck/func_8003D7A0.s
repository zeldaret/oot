glabel func_8003D7A0
/* AB4940 8003D7A0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AB4944 8003D7A4 44876000 */  mtc1  $a3, $f12
/* AB4948 8003D7A8 8FAE0038 */  lw    $t6, 0x38($sp)
/* AB494C 8003D7AC 8FAF003C */  lw    $t7, 0x3c($sp)
/* AB4950 8003D7B0 8FB80040 */  lw    $t8, 0x40($sp)
/* AB4954 8003D7B4 AFA60030 */  sw    $a2, 0x30($sp)
/* AB4958 8003D7B8 00A03025 */  move  $a2, $a1
/* AB495C 8003D7BC AFBF0024 */  sw    $ra, 0x24($sp)
/* AB4960 8003D7C0 AFA5002C */  sw    $a1, 0x2c($sp)
/* AB4964 8003D7C4 8FA70030 */  lw    $a3, 0x30($sp)
/* AB4968 8003D7C8 24050002 */  li    $a1, 2
/* AB496C 8003D7CC AFAE0014 */  sw    $t6, 0x14($sp)
/* AB4970 8003D7D0 E7AC0010 */  swc1  $f12, 0x10($sp)
/* AB4974 8003D7D4 AFAF0018 */  sw    $t7, 0x18($sp)
/* AB4978 8003D7D8 0C00F580 */  jal   func_8003D600
/* AB497C 8003D7DC AFB8001C */   sw    $t8, 0x1c($sp)
/* AB4980 8003D7E0 8FBF0024 */  lw    $ra, 0x24($sp)
/* AB4984 8003D7E4 27BD0028 */  addiu $sp, $sp, 0x28
/* AB4988 8003D7E8 03E00008 */  jr    $ra
/* AB498C 8003D7EC 00000000 */   nop   

