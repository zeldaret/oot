glabel Audio_AudioListPushBack
/* B60DC8 800E9C28 8CAE0000 */  lw    $t6, ($a1)
/* B60DCC 800E9C2C 15C0000C */  bnez  $t6, .L800E9C60
/* B60DD0 800E9C30 00000000 */   nop   
/* B60DD4 800E9C34 8C8F0000 */  lw    $t7, ($a0)
/* B60DD8 800E9C38 ADE50004 */  sw    $a1, 4($t7)
/* B60DDC 800E9C3C 8C980000 */  lw    $t8, ($a0)
/* B60DE0 800E9C40 ACA40004 */  sw    $a0, 4($a1)
/* B60DE4 800E9C44 ACB80000 */  sw    $t8, ($a1)
/* B60DE8 800E9C48 8C990008 */  lw    $t9, 8($a0)
/* B60DEC 800E9C4C 8C89000C */  lw    $t1, 0xc($a0)
/* B60DF0 800E9C50 AC850000 */  sw    $a1, ($a0)
/* B60DF4 800E9C54 27280001 */  addiu $t0, $t9, 1
/* B60DF8 800E9C58 AC880008 */  sw    $t0, 8($a0)
/* B60DFC 800E9C5C ACA9000C */  sw    $t1, 0xc($a1)
.L800E9C60:
/* B60E00 800E9C60 03E00008 */  jr    $ra
/* B60E04 800E9C64 00000000 */   nop   

