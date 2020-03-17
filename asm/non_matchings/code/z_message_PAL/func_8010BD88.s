glabel func_8010BD88
/* B82F28 8010BD88 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B82F2C 8010BD8C 3C010001 */  lui   $at, 1
/* B82F30 8010BD90 AFBF0014 */  sw    $ra, 0x14($sp)
/* B82F34 8010BD94 AFA5001C */  sw    $a1, 0x1c($sp)
/* B82F38 8010BD98 00240821 */  addu  $at, $at, $a0
/* B82F3C 8010BD9C 240E0001 */  li    $t6, 1
/* B82F40 8010BDA0 30A5FFFF */  andi  $a1, $a1, 0xffff
/* B82F44 8010BDA4 0C042E08 */  jal   func_8010B820
/* B82F48 8010BDA8 A42E04E6 */   sh    $t6, 0x4e6($at)
/* B82F4C 8010BDAC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B82F50 8010BDB0 27BD0018 */  addiu $sp, $sp, 0x18
/* B82F54 8010BDB4 03E00008 */  jr    $ra
/* B82F58 8010BDB8 00000000 */   nop   

