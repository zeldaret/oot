glabel Audio_SetBGM
/* B711AC 800FA00C 3C038013 */  lui   $v1, %hi(D_80133400) # $v1, 0x8013
/* B711B0 800FA010 24633400 */  addiu $v1, %lo(D_80133400) # addiu $v1, $v1, 0x3400
/* B711B4 800FA014 90620000 */  lbu   $v0, ($v1)
/* B711B8 800FA018 3C018017 */  lui   $at, %hi(D_8016E350)
/* B711BC 800FA01C 00027080 */  sll   $t6, $v0, 2
/* B711C0 800FA020 002E0821 */  addu  $at, $at, $t6
/* B711C4 800FA024 AC24E350 */  sw    $a0, %lo(D_8016E350)($at)
/* B711C8 800FA028 244F0001 */  addiu $t7, $v0, 1
/* B711CC 800FA02C 03E00008 */  jr    $ra
/* B711D0 800FA030 A06F0000 */   sb    $t7, ($v1)

