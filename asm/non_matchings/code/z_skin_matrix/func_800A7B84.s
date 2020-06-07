glabel func_800A7B84
/* B1ED24 800A7B84 27BDFF68 */  addiu $sp, $sp, -0x98
/* B1ED28 800A7B88 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1ED2C 800A7B8C AFA40098 */  sw    $a0, 0x98($sp)
/* B1ED30 800A7B90 AFA5009C */  sw    $a1, 0x9c($sp)
/* B1ED34 800A7B94 AFA600A0 */  sw    $a2, 0xa0($sp)
/* B1ED38 800A7B98 AFA700A4 */  sw    $a3, 0xa4($sp)
/* B1ED3C 800A7B9C 8FA700B0 */  lw    $a3, 0xb0($sp)
/* B1ED40 800A7BA0 8FA600AC */  lw    $a2, 0xac($sp)
/* B1ED44 800A7BA4 8FA500A8 */  lw    $a1, 0xa8($sp)
/* B1ED48 800A7BA8 0C029E89 */  jal   func_800A7A24
/* B1ED4C 800A7BAC 27A40018 */   addiu $a0, $sp, 0x18
/* B1ED50 800A7BB0 27A40058 */  addiu $a0, $sp, 0x58
/* B1ED54 800A7BB4 87A5009E */  lh    $a1, 0x9e($sp)
/* B1ED58 800A7BB8 87A600A2 */  lh    $a2, 0xa2($sp)
/* B1ED5C 800A7BBC 0C029DC1 */  jal   func_800A7704
/* B1ED60 800A7BC0 87A700A6 */   lh    $a3, 0xa6($sp)
/* B1ED64 800A7BC4 27A40018 */  addiu $a0, $sp, 0x18
/* B1ED68 800A7BC8 27A50058 */  addiu $a1, $sp, 0x58
/* B1ED6C 800A7BCC 0C029BE8 */  jal   func_800A6FA0
/* B1ED70 800A7BD0 8FA60098 */   lw    $a2, 0x98($sp)
/* B1ED74 800A7BD4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1ED78 800A7BD8 27BD0098 */  addiu $sp, $sp, 0x98
/* B1ED7C 800A7BDC 03E00008 */  jr    $ra
/* B1ED80 800A7BE0 00000000 */   nop   

