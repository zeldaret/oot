glabel func_80094D28
/* B0BEC8 80094D28 8C830000 */  lw    $v1, ($a0)
/* B0BECC 80094D2C 3C0F8012 */  lui   $t7, %hi(D_80126D00) # $t7, 0x8012
/* B0BED0 80094D30 25EF6D00 */  addiu $t7, %lo(D_80126D00) # addiu $t7, $t7, 0x6d00
/* B0BED4 80094D34 3C0EDE00 */  lui   $t6, 0xde00
/* B0BED8 80094D38 AC6E0000 */  sw    $t6, ($v1)
/* B0BEDC 80094D3C AC6F0004 */  sw    $t7, 4($v1)
/* B0BEE0 80094D40 24620008 */  addiu $v0, $v1, 8
/* B0BEE4 80094D44 03E00008 */  jr    $ra
/* B0BEE8 80094D48 AC820000 */   sw    $v0, ($a0)

