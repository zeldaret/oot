glabel func_800E5EA4
/* B5D044 800E5EA4 3C038017 */  lui   $v1, %hi(gAudioContext) # $v1, 0x8017
/* B5D048 800E5EA8 2463F180 */  addiu $v1, %lo(gAudioContext) # addiu $v1, $v1, -0xe80
/* B5D04C 800E5EAC 8C6E2844 */  lw    $t6, 0x2844($v1)
/* B5D050 800E5EB0 00041080 */  sll   $v0, $a0, 2
/* B5D054 800E5EB4 00441021 */  addu  $v0, $v0, $a0
/* B5D058 800E5EB8 00021080 */  sll   $v0, $v0, 2
/* B5D05C 800E5EBC 01C27821 */  addu  $t7, $t6, $v0
/* B5D060 800E5EC0 91F80002 */  lbu   $t8, 2($t7)
/* B5D064 800E5EC4 ACB80000 */  sw    $t8, ($a1)
/* B5D068 800E5EC8 8C792844 */  lw    $t9, 0x2844($v1)
/* B5D06C 800E5ECC 03224021 */  addu  $t0, $t9, $v0
/* B5D070 800E5ED0 91090003 */  lbu   $t1, 3($t0)
/* B5D074 800E5ED4 03E00008 */  jr    $ra
/* B5D078 800E5ED8 ACC90000 */   sw    $t1, ($a2)

