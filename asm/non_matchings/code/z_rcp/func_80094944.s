glabel func_80094944
/* B0BAE4 80094944 00801025 */  move  $v0, $a0
/* B0BAE8 80094948 3C0F8012 */  lui   $t7, %hi(D_80126FA0) # $t7, 0x8012
/* B0BAEC 8009494C 25EF6FA0 */  addiu $t7, %lo(D_80126FA0) # addiu $t7, $t7, 0x6fa0
/* B0BAF0 80094950 3C0EDE00 */  lui   $t6, 0xde00
/* B0BAF4 80094954 AC4E0000 */  sw    $t6, ($v0)
/* B0BAF8 80094958 AC4F0004 */  sw    $t7, 4($v0)
/* B0BAFC 8009495C 24840008 */  addiu $a0, $a0, 8
/* B0BB00 80094960 03E00008 */  jr    $ra
/* B0BB04 80094964 00801025 */   move  $v0, $a0

