glabel func_8009411C
/* B0B2BC 8009411C 00801025 */  move  $v0, $a0
/* B0B2C0 80094120 3C0F8012 */  lui   $t7, %hi(D_801267C0) # $t7, 0x8012
/* B0B2C4 80094124 25EF67C0 */  addiu $t7, %lo(D_801267C0) # addiu $t7, $t7, 0x67c0
/* B0B2C8 80094128 3C0EDE00 */  lui   $t6, 0xde00
/* B0B2CC 8009412C AC4E0000 */  sw    $t6, ($v0)
/* B0B2D0 80094130 AC4F0004 */  sw    $t7, 4($v0)
/* B0B2D4 80094134 24840008 */  addiu $a0, $a0, 8
/* B0B2D8 80094138 03E00008 */  jr    $ra
/* B0B2DC 8009413C 00801025 */   move  $v0, $a0

