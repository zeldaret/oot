glabel func_8003C8EC
/* AB3A8C 8003C8EC 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AB3A90 8003C8F0 AFA70044 */  sw    $a3, 0x44($sp)
/* AB3A94 8003C8F4 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AB3A98 8003C8F8 44812000 */  mtc1  $at, $f4
/* AB3A9C 8003C8FC 8FAF0044 */  lw    $t7, 0x44($sp)
/* AB3AA0 8003C900 00C03825 */  move  $a3, $a2
/* AB3AA4 8003C904 AFBF002C */  sw    $ra, 0x2c($sp)
/* AB3AA8 8003C908 AFA60040 */  sw    $a2, 0x40($sp)
/* AB3AAC 8003C90C 27AE0034 */  addiu $t6, $sp, 0x34
/* AB3AB0 8003C910 2418001C */  li    $t8, 28
/* AB3AB4 8003C914 AFB8001C */  sw    $t8, 0x1c($sp)
/* AB3AB8 8003C918 AFAE0010 */  sw    $t6, 0x10($sp)
/* AB3ABC 8003C91C 24060002 */  li    $a2, 2
/* AB3AC0 8003C920 AFA00018 */  sw    $zero, 0x18($sp)
/* AB3AC4 8003C924 AFAF0014 */  sw    $t7, 0x14($sp)
/* AB3AC8 8003C928 0C00F185 */  jal   func_8003C614
/* AB3ACC 8003C92C E7A40020 */   swc1  $f4, 0x20($sp)
/* AB3AD0 8003C930 8FBF002C */  lw    $ra, 0x2c($sp)
/* AB3AD4 8003C934 27BD0038 */  addiu $sp, $sp, 0x38
/* AB3AD8 8003C938 03E00008 */  jr    $ra
/* AB3ADC 8003C93C 00000000 */   nop   

