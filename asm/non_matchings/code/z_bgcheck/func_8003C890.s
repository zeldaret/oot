glabel func_8003C890
/* AB3A30 8003C890 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AB3A34 8003C894 AFA60040 */  sw    $a2, 0x40($sp)
/* AB3A38 8003C898 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AB3A3C 8003C89C 44812000 */  mtc1  $at, $f4
/* AB3A40 8003C8A0 8FAF0040 */  lw    $t7, 0x40($sp)
/* AB3A44 8003C8A4 00A03825 */  move  $a3, $a1
/* AB3A48 8003C8A8 00802825 */  move  $a1, $a0
/* AB3A4C 8003C8AC AFBF002C */  sw    $ra, 0x2c($sp)
/* AB3A50 8003C8B0 AFA40038 */  sw    $a0, 0x38($sp)
/* AB3A54 8003C8B4 27AE0034 */  addiu $t6, $sp, 0x34
/* AB3A58 8003C8B8 2418001C */  li    $t8, 28
/* AB3A5C 8003C8BC AFB8001C */  sw    $t8, 0x1c($sp)
/* AB3A60 8003C8C0 AFAE0010 */  sw    $t6, 0x10($sp)
/* AB3A64 8003C8C4 00002025 */  move  $a0, $zero
/* AB3A68 8003C8C8 24060002 */  li    $a2, 2
/* AB3A6C 8003C8CC AFA00018 */  sw    $zero, 0x18($sp)
/* AB3A70 8003C8D0 AFAF0014 */  sw    $t7, 0x14($sp)
/* AB3A74 8003C8D4 0C00F185 */  jal   func_8003C614
/* AB3A78 8003C8D8 E7A40020 */   swc1  $f4, 0x20($sp)
/* AB3A7C 8003C8DC 8FBF002C */  lw    $ra, 0x2c($sp)
/* AB3A80 8003C8E0 27BD0038 */  addiu $sp, $sp, 0x38
/* AB3A84 8003C8E4 03E00008 */  jr    $ra
/* AB3A88 8003C8E8 00000000 */   nop   

