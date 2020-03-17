glabel func_800937E4
/* B0A984 800937E4 00801025 */  move  $v0, $a0
/* B0A988 800937E8 3C0F8012 */  lui   $t7, %hi(D_80126D30) # $t7, 0x8012
/* B0A98C 800937EC 25EF6D30 */  addiu $t7, %lo(D_80126D30) # addiu $t7, $t7, 0x6d30
/* B0A990 800937F0 3C0EDE00 */  lui   $t6, 0xde00
/* B0A994 800937F4 AC4E0000 */  sw    $t6, ($v0)
/* B0A998 800937F8 AC4F0004 */  sw    $t7, 4($v0)
/* B0A99C 800937FC 24840008 */  addiu $a0, $a0, 8
/* B0A9A0 80093800 03E00008 */  jr    $ra
/* B0A9A4 80093804 00801025 */   move  $v0, $a0

