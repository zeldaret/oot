glabel func_800937C0
/* B0A960 800937C0 00801025 */  move  $v0, $a0
/* B0A964 800937C4 3C0F8012 */  lui   $t7, %hi(D_80126D30) # $t7, 0x8012
/* B0A968 800937C8 25EF6D30 */  addiu $t7, %lo(D_80126D30) # addiu $t7, $t7, 0x6d30
/* B0A96C 800937CC 3C0EDE00 */  lui   $t6, 0xde00
/* B0A970 800937D0 AC4E0000 */  sw    $t6, ($v0)
/* B0A974 800937D4 AC4F0004 */  sw    $t7, 4($v0)
/* B0A978 800937D8 24840008 */  addiu $a0, $a0, 8
/* B0A97C 800937DC 03E00008 */  jr    $ra
/* B0A980 800937E0 00801025 */   move  $v0, $a0

